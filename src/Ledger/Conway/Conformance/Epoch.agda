{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude hiding (iterate; _/_; _*_; _⊓_; _≟_; ≢-nonZero)
open import Data.Integer using () renaming (+_ to pos)
import Data.Integer as ℤ
open import Data.Nat.GeneralisedArithmetic using (iterate)

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)

open import Agda.Builtin.FromNat

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Conformance.PoolReap txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Rewards txs abs
open import Ledger.Conway.Specification.Epoch txs abs
  using (getStakeCred; mkStakeDistrs; toRwdAddr) public

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

PoolDelegatedStake : Type
PoolDelegatedStake = KeyHash ⇀ Coin

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    bprev       : BlocksMade
    bcur        : BlocksMade
    epochState  : EpochState
    ru          : Maybe RewardUpdate
    pd          : PoolDelegatedStake

instance
  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate
  ⟦ ⟦ treasury , reserves ⟧ᵃ
  , ss
  , ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits' ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut
  ⟧ᵉ' =
  ⟦ ⟦ posPart (pos treasury + Δt + pos unregRU')
    , posPart (pos reserves + Δr) ⟧
  , ss
  , ⟦ ⟦ utxo , posPart (pos fees + Δf) , deposits , donations ⟧
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU , deposits' ⟧ , pState , gState ⟧ ⟧
  , es
  , fut ⟧
  where
    open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
    regRU     = rs ∣ dom rewards
    unregRU   = rs ∣ dom rewards ᶜ
    unregRU'  = ∑[ x ← unregRU ] x

opaque
  calculatePoolDelegatedStake : Snapshot → PoolDelegatedStake
  calculatePoolDelegatedStake ss =
      -- Shelley spec: the output map must contain keys appearing in both
      -- sd and the pool parameters.
      sd ∣ dom (ss .pools)
    where
      open Snapshot

      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ

      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)


getOrphans : EnactState → GovState → GovState
getOrphans es govSt = proj₁ $ iterate step ([] , govSt) (length govSt)
  where
    step : GovState × GovState → GovState × GovState
    step (orps , govSt) =
      let
        isOrphan? a prev = ¬? (hasParent? es govSt a prev)
        (orps' , govSt') = partition
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? (a .gaType) prev)
          govSt
      in
        (orps ++ orps' , govSt')

record EPOCH-Updates0 : Type where
  constructor EPOCHUpdates0
  field
    es             : EnactState
    govSt'         : GovState
    payout         : Withdrawals
    gState'        : GState
    utxoSt'        : UTxOState
    totWithdrawals : Coin

EPOCH-updates0 : RatifyState → LState → EPOCH-Updates0
EPOCH-updates0 fut ls =
    EPOCHUpdates0 es govSt' payout gState' utxoSt' totWithdrawals
  where
    open LState ls public
    open CertState certState using (gState) public
    open RatifyState fut renaming (es to esW)
    open GovActionState using (returnAddr)
    open UTxOState
    open GState

    es : EnactState
    es = record esW { withdrawals = ∅ }

    tmpGovSt : GovState
    tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

    orphans : ℙ (GovActionID × GovActionState)
    orphans  = fromList (getOrphans es tmpGovSt)

    removed' : ℙ (GovActionID × GovActionState)
    removed' = removed ∪ orphans

    govSt' : GovState
    govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed' ¿) govSt

    removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
    removedGovActions =
      flip concatMapˢ removed' λ (gaid , gaSt) →
        mapˢ
          (returnAddr gaSt ,_)
          ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)

    govActionReturns : RwdAddr ⇀ Coin
    govActionReturns =
      aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

    payout : RwdAddr ⇀ Coin
    payout = govActionReturns ∪⁺ WithdrawalsOf esW

    gState' : GState
    gState' =
      ⟦ (if null govSt' then mapValues (1 +_) (gState .dreps) else gState .dreps)
      , gState .ccHotKeys ∣ ccCreds (EnactState.cc es)
      , gState .deposits
      ⟧

    utxoSt' : UTxOState
    utxoSt' = record utxoSt
      { deposits = utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ
      ; donations = 0
      }

    totWithdrawals : Coin
    totWithdrawals = ∑[ x ← WithdrawalsOf esW ] x

record EPOCH-Updates : Type where
  constructor EPOCHUpdates
  field
    es             : EnactState
    govSt'         : GovState
    dState''       : DState
    gState'        : GState
    utxoSt'        : UTxOState
    acnt''         : Acnt

EPOCH-updates
  : RatifyState → LState → DState → Acnt → EPOCH-Updates
EPOCH-updates fut ls dState' acnt' =
    EPOCHUpdates (u0 .es) (u0 .govSt') dState'' (u0 .gState') (u0 .utxoSt') acnt''
  where
    open LState
    open DState
    open UTxOState
    open EPOCH-Updates0

    u0 = EPOCH-updates0 fut ls

    refunds : Credential ⇀ Coin
    refunds = pullbackMap (u0 .payout) toRwdAddr (dom (dState' .rewards))

    dState'' : DState
    dState'' = record dState' { rewards = dState' .rewards ∪⁺ refunds }

    unclaimed : Coin
    unclaimed = getCoin (u0 .payout) - getCoin refunds

    acnt'' : Acnt
    acnt'' = record acnt'
      { treasury =
          TreasuryOf acnt' ∸ u0 .totWithdrawals + ls .utxoSt .donations + unclaimed
      }

private variable
  nes nes' : NewEpochState
  e lastEpoch : Epoch
  fut fut' : RatifyState
  eps eps' eps'' : EpochState
  ls : LState
  acnt : Acnt
  es₀ : EnactState
  mark set go : Snapshot
  feeSS : Coin
  lstate : LState
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate
  certState' : CertState

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

  EPOCH :
    ∀ {acnt : Acnt} {utxoSt'' : UTxOState} {acnt' dState' pState'} →
    let
      open LState ls
      open CertState certState
      open Acnt
      open DState
      open GState
      open PState

      EPOCHUpdates es govSt' dState'' gState' utxoSt' acnt'' =
        EPOCH-updates fut ls dState' acnt'

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs
                      (Snapshots.mark ss')
                      e
                      utxoSt'
                      govSt'
                      (record { GState gState })
                      (record { DState dState })

      Γ : RatifyEnv
      Γ = ⟦ stakeDistrs
          , e
          , gState .dreps
          , gState .ccHotKeys
          , acnt .treasury
          , pState .pools
          , dState .voteDelegs
          ⟧

    in
        ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ∙ Γ  ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      ∙ _  ⊢ ⟦ utxoSt' , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt'' , acnt' , dState' , pState' ⟧
      ────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈ ⟦ acnt'' , ss' , ⟦ utxoSt'' , govSt' , ⟦ dState'' , pState' , gState' ⟧ᶜˢ ⟧ , es , fut' ⟧


data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type where

  NEWEPOCH-New :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
       eps' = applyRUpd ru eps
       ss   = EpochState.ss eps''
       pd'  = calculatePoolDelegatedStake (Snapshots.set ss)
     in
       ∙ e ≡ lastEpoch + 1
       ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
       ────────────────────────────────
       _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , just ru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ  , eps'' , nothing , pd' ⟧

  NEWEPOCH-Not-New : ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    ∙ e ≢ lastEpoch + 1
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧

  NEWEPOCH-No-Reward-Update :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
      ss  = EpochState.ss eps'
      pd' = calculatePoolDelegatedStake (Snapshots.set ss)
    in
      ∙ e ≡ lastEpoch + 1
      ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , nothing , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ , eps' , nothing , pd' ⟧
