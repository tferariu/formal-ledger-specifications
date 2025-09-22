{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.Ledger.Conway.Specification.Epoch.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.PoolReap
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Crypto
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.Ledger.Prelude
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.Ledger.Prelude.Instances
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Epoch
d_Epoch_164 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  ()
d_Epoch_164 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.CertState
d_CertState_1844 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.CertState.dState
d_dState_2106 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState_2106 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1360
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.CertState.gState
d_gState_2108 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_GState_1340
d_gState_2108 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_gState_1364
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.CertState.pState
d_pState_2110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2110 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1362
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._._⊢_⇀⦇_,EPOCH⦈_
d__'8866'_'8640''10631'_'44'EPOCH'10632'__2230 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch.Properties._._⊢_⇀⦇_,NEWEPOCH⦈_
d__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__2232 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState
d_EpochState_2252 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState.acnt
d_acnt_2388 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt_2388 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3016 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState.es
d_es_2390 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_2390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3022 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState.fut
d_fut_2392 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546
d_fut_2392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState.ls
d_ls_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722
d_ls_2394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.EpochState.ss
d_ss_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894
d_ss_2396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.LState
d_LState_2476 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.LState.certState
d_certState_2514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_certState_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.LState.govSt
d_govSt_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2732
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.LState.utxoSt
d_utxoSt_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._._⊢_⇀⦇_,POOLREAP⦈_
d__'8866'_'8640''10631'_'44'POOLREAP'10632'__2522 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch.Properties._.PoolReapState
d_PoolReapState_2528 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.PoolReapState.acnt
d_acnt_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164
d_acnt_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.PoolReapState.dState
d_dState_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312
d_dState_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.PoolReapState.pState
d_pState_2544 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.PoolReapState.utxoSt
d_utxoSt_2546 ::
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv
d_RatifyEnv_2576 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyState
d_RatifyState_2580 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.ccHotKeys
d_ccHotKeys_2644 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_ccHotKeys_2536
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.currentEpoch
d_currentEpoch_2646 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  AgdaAny
d_currentEpoch_2646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_currentEpoch_2532
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.delegatees
d_delegatees_2648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegatees_2648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delegatees_2542
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.dreps
d_dreps_2650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_dreps_2534
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.pools
d_pools_2652 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_pools_2540
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.stakeDistrs
d_stakeDistrs_2654 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_StakeDistrs_2502
d_stakeDistrs_2654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_stakeDistrs_2530
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyEnv.treasury
d_treasury_2656 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyEnv_2514 ->
  Integer
d_treasury_2656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_treasury_2538
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyState.delay
d_delay_2660 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  Bool
d_delay_2660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_delay_2558
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyState.es
d_es_2662 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_es_2662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_es_2554 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.RatifyState.removed
d_removed_2664 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_removed_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ratify.d_removed_2556
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2692 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Specification.Epoch.Properties._.Snapshots
d_Snapshots_2722 a0 a1 = ()
-- Ledger.Conway.Specification.Epoch.Properties._.Snapshots.feeSS
d_feeSS_2786 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  Integer
d_feeSS_2786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2910
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.Snapshots.go
d_go_2788 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_go_2788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2908 (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.Snapshots.mark
d_mark_2790 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_mark_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.Snapshots.set
d_set_2792 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2836
d_set_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.completeness
d_completeness_2796 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_2796 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.computeProof
d_computeProof_2802 ::
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Interface.ComputationalRelation.T_ComputationResult_34
d_computeProof_2802 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.d_computeProof_272
      (coe v0)
-- Ledger.Conway.Specification.Epoch.Properties._.SNAP-total
d_SNAP'45'total_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_SNAP'45'total_2824 v0 ~v1 v2 v3 = du_SNAP'45'total_2824 v0 v2 v3
du_SNAP'45'total_2824 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_SNAP'45'total_2824 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2936)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2864
               (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_UTxOOf_3194
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasUTxO'45'LState_2760)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2772)
                  v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PStateOf_1416
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPState'45'LState_2774)
                  v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
                  (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
                     (coe v2))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.Base.d_FeesOf_48
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasFees'45'LState_2780)
                     v1)))))
      (coe MAlonzo.Code.Ledger.Conway.Specification.Rewards.C_SNAP_2952)
-- Ledger.Conway.Specification.Epoch.Properties._.SNAP-complete
d_SNAP'45'complete_2828 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'complete_2828 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.SNAP-deterministic
d_SNAP'45'deterministic_2836 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_SNAP'45'deterministic_2836 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.POOLREAP-total
d_POOLREAP'45'total_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_POOLREAP'45'total_2848 v0 ~v1 v2 v3
  = du_POOLREAP'45'total_2848 v0 v2 v3
du_POOLREAP'45'total_2848 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_POOLREAP'45'total_2848 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.du_HasCast'45'PoolReapState_2426)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2360
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                           (coe v3)))))
               (let v3
                      = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                             (coe v0)) in
                coe
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v3)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                        (let v4
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                   (coe v2) (coe v1) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                 (coe v4)))))
                     (let v4
                            = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.du_map_400
                           (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v4))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                           (let v5
                                  = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v5)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                    (let v6
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v6)))))
                                 (coe v1)))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2358
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                             (coe v2) (coe v1) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                           (coe v3))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                  (coe
                     addInt
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                        (coe
                           MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                           (coe
                              MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                        (coe (\ v3 -> v3))
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))))
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                 (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                    (let v4
                                           = \ v4 v5 ->
                                               coe
                                                 MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                 v4 in
                                     coe
                                       (let v5
                                              = let v5
                                                      = coe
                                                          MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             (\ v5 ->
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                  (coe v5))) in
                                                coe
                                                  (let v6
                                                         = let v6
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                           (coe v0))) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   erased v6)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                   (let v7
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                              (coe v2) (coe v1) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                            (coe v7)))))
                                                                (let v7
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                              (coe v0)) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v7)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                         (let v8
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                    (coe v2)
                                                                                    (coe v1) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                  (coe v8)))))
                                                                      (coe v1)))) in
                                                   coe (coe v5 v6)) in
                                        coe (coe v4 v5 erased))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v4))))))
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                   (coe v2) (coe v1) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                 (coe v3))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                     (let v3
                            = coe
                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                (coe v2) (coe v1) in
                      coe
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                              (coe v3))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                           (let v3
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                      (coe v2) (coe v1) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe v2) (coe v1) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                          (let v5
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v5)))))
                                       (coe v1)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe v2) (coe v1) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v3)))))
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v3)
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v4
                                                 = \ v4 v5 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                       v4 in
                                           coe
                                             (let v5
                                                    = let v5
                                                            = coe
                                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   (\ v5 ->
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                        (coe v5))) in
                                                      coe
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v6)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                         (let v7
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                    (coe v2)
                                                                                    (coe v1) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                  (coe v7)))))
                                                                      (let v7
                                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                    (coe v0)) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                               (let v8
                                                                                      = coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                          (coe v2)
                                                                                          (coe
                                                                                             v1) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                        (coe v8)))))
                                                                            (coe v1)))) in
                                                         coe (coe v5 v6)) in
                                              coe (coe v4 v5 erased))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe v2) (coe v1) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v4))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1510)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (let v3
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe v2) (coe v1) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v4)))))
                              (let v4
                                     = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v4)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe v2) (coe v1) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v5)))))
                                    (coe v1)))))
                        (let v3
                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0))) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v3)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe v2) (coe v1) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v4)))))
                              (let v4
                                     = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                            (coe v0)) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v4)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                       (let v5
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe v2) (coe v1) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v5)))))
                                    (coe v1)))))))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_POOLREAP_2468
         v2)
-- Ledger.Conway.Specification.Epoch.Properties._.POOLREAP-complete
d_POOLREAP'45'complete_2852 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_POOLREAP'45'complete_2852 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.POOLREAP-deterministic
d_POOLREAP'45'deterministic_2860 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_POOLREAP'45'deterministic_2860 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.prs
d_prs_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406
d_prs_2880 v0 ~v1 v2 ~v3 = du_prs_2880 v0 v2
du_prs_2880 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406
du_prs_2880 v0 v1
  = coe
      MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
      (coe
         MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
         (coe
            MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
            (coe
               MAlonzo.Code.Data.List.Base.du_length_268
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (2406 :: Integer) (5811529314862483242 :: Integer)
                                    "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                           (coe ("r" :: Data.Text.Text))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                              (coe
                                 (MAlonzo.RTE.QName
                                    (1848 :: Integer) (5811529314862483242 :: Integer)
                                    "Ledger.Conway.Specification.PoolReap._.UTxOState"
                                    (MAlonzo.RTE.Fixity
                                       MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                 (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (2406 :: Integer) (5811529314862483242 :: Integer)
                                       "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                              (coe ("r" :: Data.Text.Text))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                 (coe
                                    (MAlonzo.RTE.QName
                                       (28 :: Integer) (5811529314862483242 :: Integer) "_.Acnt"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2406 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                 (coe ("r" :: Data.Text.Text))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                    (coe
                                       (MAlonzo.RTE.QName
                                          (2044 :: Integer) (5811529314862483242 :: Integer)
                                          "Ledger.Conway.Specification.PoolReap._.DState"
                                          (MAlonzo.RTE.Fixity
                                             MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2406 :: Integer) (5811529314862483242 :: Integer)
                                             "Ledger.Conway.Specification.PoolReap.PoolReapState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                    (coe ("r" :: Data.Text.Text))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                       (coe
                                          (MAlonzo.RTE.QName
                                             (2176 :: Integer) (5811529314862483242 :: Integer)
                                             "Ledger.Conway.Specification.PoolReap._.PState"
                                             (MAlonzo.RTE.Fixity
                                                MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_'10214'_'44'_'44'_'44'_'10215''7510'_2424)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3562
            (coe du_u0_2888 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3016
               (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_dState_1360
                  (coe du_cs_2886 (coe v1)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pState_1362
                  (coe du_cs_2886 (coe v1))))))
-- Ledger.Conway.Specification.Epoch.Properties._._.cs
d_cs_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_cs_2886 ~v0 ~v1 v2 ~v3 = du_cs_2886 v2
du_cs_2886 ::
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
du_cs_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v0))
-- Ledger.Conway.Specification.Epoch.Properties._._.u0
d_u0_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EPOCH'45'Updates0_3540
d_u0_2888 v0 ~v1 v2 ~v3 = du_u0_2888 v0 v2
du_u0_2888 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EPOCH'45'Updates0_3540
du_u0_2888 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates0_3568
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-total
d_EPOCH'45'total_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total_2892 v0 ~v1 v2 v3
  = du_EPOCH'45'total_2892 v0 v2 v3
du_EPOCH'45'total_2892 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total_2892 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'EpochState_3156)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3666
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                  (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                           (let v3
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                      (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                    (coe v3)))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (let v3
                                  = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                               (coe v0)) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                          erased v4)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                          (let v5
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v5)))))
                                       (coe v2)))))
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0))))
                              (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v3)))))
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                            (coe
                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                  (coe v0))))
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                               (coe v0))) in
                               coe
                                 (coe
                                    MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       erased v3)
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                             (coe v0)))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v4
                                                 = \ v4 v5 ->
                                                     coe
                                                       MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                       v4 in
                                           coe
                                             (let v5
                                                    = let v5
                                                            = coe
                                                                MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   (\ v5 ->
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                        (coe v5))) in
                                                      coe
                                                        (let v6
                                                               = let v6
                                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                 (coe v0))) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                         erased v6)
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                         (let v7
                                                                                = coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                    (coe
                                                                                       du_prs_2880
                                                                                       (coe v0)
                                                                                       (coe v1))
                                                                                    (coe v2) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                  (coe v7)))))
                                                                      (let v7
                                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                    (coe v0)) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased v7)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                               (let v8
                                                                                      = coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                          (coe
                                                                                             du_prs_2880
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             v2) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                        (coe v8)))))
                                                                            (coe v2)))) in
                                                         coe (coe v5 v6)) in
                                              coe (coe v4 v5 erased))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v4))))))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                          (let v4
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v4))))))))))))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                     (coe
                        addInt
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                              (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                           (coe
                              MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                              (coe
                                 MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                           (coe (\ v3 -> v3))
                           (let v3
                                  = coe
                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                         (coe
                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                               (coe v0))))
                                      (coe
                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                            (coe v0))) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                          (coe v0)))
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                    (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                       (let v4
                                              = \ v4 v5 ->
                                                  coe
                                                    MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                    v4 in
                                        coe
                                          (let v5
                                                 = let v5
                                                         = coe
                                                             MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                (\ v5 ->
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                     (coe v5))) in
                                                   coe
                                                     (let v6
                                                            = let v6
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                           (coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                              (coe v0))) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased v6)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                      (let v7
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                 (coe
                                                                                    du_prs_2880
                                                                                    (coe v0)
                                                                                    (coe v1))
                                                                                 (coe v2) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                               (coe v7)))))
                                                                   (let v7
                                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                 (coe v0)) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased v7)
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                            (let v8
                                                                                   = coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                       (coe
                                                                                          du_prs_2880
                                                                                          (coe v0)
                                                                                          (coe v1))
                                                                                       (coe v2) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                     (coe v8)))))
                                                                         (coe v2)))) in
                                                      coe (coe v5 v6)) in
                                           coe (coe v4 v5 erased))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                       (let v4
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v4))))))
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_562
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                       (let v4
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v4)))))))))
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                           (let v3
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                      (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                    (coe v3))))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                   (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                 (coe v3))))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_SNAP'45'total_2824 (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                        (coe v1))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (coe
                     MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LState_2788)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'10214'_'44'_'44'_'44'_'10215''7512'_2360
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2352
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                         (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                       (coe v3)))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2354
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                         (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                       (coe v3)))))
                           (let v3
                                  = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                         (coe v0)) in
                            coe
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                    erased v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                    (let v4
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v4)))))
                                 (let v4
                                        = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                  coe
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_map_400
                                       (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v4))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                       (let v5
                                              = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                     (coe v0)) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v5)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                (let v6
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v6)))))
                                             (coe v2)))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2358
                              (let v3
                                     = coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                         (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                       (coe v3))))))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4)))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                         (let v5
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v5)))))
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3)))))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                    (coe
                                       addInt
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe (\ v3 -> v3))
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v4
                                                             = \ v4 v5 ->
                                                                 coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                   v4 in
                                                       coe
                                                         (let v5
                                                                = let v5
                                                                        = coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                    (coe v5))) in
                                                                  coe
                                                                    (let v6
                                                                           = let v6
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased v6)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                     (let v7
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                (coe
                                                                                                   du_prs_2880
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   v2) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                              (coe
                                                                                                 v7)))))
                                                                                  (let v7
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v7)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                           (let v8
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v8)))))
                                                                                        (coe
                                                                                           v2)))) in
                                                                     coe (coe v5 v6)) in
                                                          coe (coe v4 v5 erased))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                       (let v3
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1366
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3660
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                            (let v5
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v5)))))
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                            (let v4
                                                                   = \ v4 v5 ->
                                                                       coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                         v4 in
                                                             coe
                                                               (let v5
                                                                      = let v5
                                                                              = coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     (\ v5 ->
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                          (coe
                                                                                             v5))) in
                                                                        coe
                                                                          (let v6
                                                                                 = let v6
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v6)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                           (let v7
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v7)))))
                                                                                        (let v7
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v7)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                 (let v8
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v8)))))
                                                                                              (coe
                                                                                                 v2)))) in
                                                                           coe (coe v5 v6)) in
                                                                coe (coe v4 v5 erased))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                       (coe
                                          addInt
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe (\ v3 -> v3))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4)))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'PState_1510)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                             (let v4
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v4)))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                   (let v5
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v5)))))
                                                (coe v2)))))
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                             (let v4
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v4)))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                   (let v5
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v5)))))
                                                (coe v2)))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3662
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                            (let v5
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v5)))))
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                            (let v4
                                                                   = \ v4 v5 ->
                                                                       coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                         v4 in
                                                             coe
                                                               (let v5
                                                                      = let v5
                                                                              = coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     (\ v5 ->
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                          (coe
                                                                                             v5))) in
                                                                        coe
                                                                          (let v6
                                                                                 = let v6
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v6)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                           (let v7
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v7)))))
                                                                                        (let v7
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v7)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                 (let v8
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v8)))))
                                                                                              (coe
                                                                                                 v2)))) in
                                                                           coe (coe v5 v6)) in
                                                                coe (coe v4 v5 erased))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                       (coe
                                          addInt
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe (\ v3 -> v3))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4)))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))))))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3656
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                             (let v4
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v4)))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                   (let v5
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v5)))))
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3)))))
                                       (let v3
                                              = coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v3)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v4
                                                          = \ v4 v5 ->
                                                              coe
                                                                MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                v4 in
                                                    coe
                                                      (let v5
                                                             = let v5
                                                                     = coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            (\ v5 ->
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                 (coe v5))) in
                                                               coe
                                                                 (let v6
                                                                        = let v6
                                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                          (coe
                                                                                             v0))) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                  erased v6)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                  (let v7
                                                                                         = coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                             (coe
                                                                                                du_prs_2880
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                v2) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                           (coe
                                                                                              v7)))))
                                                                               (let v7
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v7)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                        (let v8
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v8)))))
                                                                                     (coe v2)))) in
                                                                  coe (coe v5 v6)) in
                                                       coe (coe v4 v5 erased))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4))))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_dom_562
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                              (coe
                                 addInt
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                    (coe
                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                    (coe (\ v3 -> v3))
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                (let v4
                                                       = \ v4 v5 ->
                                                           coe
                                                             MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                             v4 in
                                                 coe
                                                   (let v5
                                                          = let v5
                                                                  = coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                              (coe v5))) in
                                                            coe
                                                              (let v6
                                                                     = let v6
                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                       (coe v0))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased v6)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                               (let v7
                                                                                      = coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                          (coe
                                                                                             du_prs_2880
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             v2) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                        (coe v7)))))
                                                                            (let v7
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                          (coe
                                                                                             v0)) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased v7)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                     (let v8
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                (coe
                                                                                                   du_prs_2880
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   v2) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                              (coe
                                                                                                 v8)))))
                                                                                  (coe v2)))) in
                                                               coe (coe v5 v6)) in
                                                    coe (coe v4 v5 erased))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                (let v4
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v4))))))
                                          (coe
                                             MAlonzo.Code.Class.IsSet.du_dom_562
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                (let v4
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v4)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v3))))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total''_2348
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_2588)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3442
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             du_SNAP'45'total_2824 (coe v0)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                                                (coe v1)))))
                                    (coe v2)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3664
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4)))))
                                                         (let v4
                                                                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                       (coe v0)) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                  (let v5
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v5)))))
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v3
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v3)))))
                                                      (let v3
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                       (coe v0))) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v3)
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                  (let v4
                                                                         = \ v4 v5 ->
                                                                             coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                               v4 in
                                                                   coe
                                                                     (let v5
                                                                            = let v5
                                                                                    = coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           (\ v5 ->
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                                (coe
                                                                                                   v5))) in
                                                                              coe
                                                                                (let v6
                                                                                       = let v6
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                         (coe
                                                                                                            v0))) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v6)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                                 (let v7
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v7)))))
                                                                                              (let v7
                                                                                                     = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                            (coe
                                                                                                               v0)) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       v7)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                       (let v8
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                                  (coe
                                                                                                                     du_prs_2880
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     v2) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                                (coe
                                                                                                                   v8)))))
                                                                                                    (coe
                                                                                                       v2)))) in
                                                                                 coe (coe v5 v6)) in
                                                                      coe (coe v4 v5 erased))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                                  (let v4
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v4))))))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_dom_562
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                                  (let v4
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v4))))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                             (coe
                                                addInt
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                   (coe
                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                   (coe (\ v3 -> v3))
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                               (let v4
                                                                      = \ v4 v5 ->
                                                                          coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                            v4 in
                                                                coe
                                                                  (let v5
                                                                         = let v5
                                                                                 = coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        (\ v5 ->
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                             (coe
                                                                                                v5))) in
                                                                           coe
                                                                             (let v6
                                                                                    = let v6
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v6)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                              (let v7
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v7)))))
                                                                                           (let v7
                                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                         (coe
                                                                                                            v0)) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    v7)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                    (let v8
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                               (coe
                                                                                                                  du_prs_2880
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  v2) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                             (coe
                                                                                                                v8)))))
                                                                                                 (coe
                                                                                                    v2)))) in
                                                                              coe (coe v5 v6)) in
                                                                   coe (coe v4 v5 erased))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4))))))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4)))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                          (coe v0)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                             (coe v1))
                                          (coe
                                             MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (let v3
                                                          = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4)))))
                                                         (let v4
                                                                = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                       (coe v0)) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                  erased v4)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                  (let v5
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v5)))))
                                                               (coe v2)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v3
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v3)))))
                                                      (let v3
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                          (coe v0))))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                       (coe v0))) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v3)
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                     (coe v0)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                           (coe v0))))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                               (coe
                                                                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                  (let v4
                                                                         = \ v4 v5 ->
                                                                             coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                               v4 in
                                                                   coe
                                                                     (let v5
                                                                            = let v5
                                                                                    = coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           (\ v5 ->
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                                (coe
                                                                                                   v5))) in
                                                                              coe
                                                                                (let v6
                                                                                       = let v6
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                         (coe
                                                                                                            v0))) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v6)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                                 (let v7
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v7)))))
                                                                                              (let v7
                                                                                                     = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                         (coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                            (coe
                                                                                                               v0)) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                       (coe
                                                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                       erased
                                                                                                       v7)
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                       (let v8
                                                                                                              = coe
                                                                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                                  (coe
                                                                                                                     du_prs_2880
                                                                                                                     (coe
                                                                                                                        v0)
                                                                                                                     (coe
                                                                                                                        v1))
                                                                                                                  (coe
                                                                                                                     v2) in
                                                                                                        coe
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                                (coe
                                                                                                                   v8)))))
                                                                                                    (coe
                                                                                                       v2)))) in
                                                                                 coe (coe v5 v6)) in
                                                                      coe (coe v4 v5 erased))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                                  (let v4
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v4))))))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_dom_562
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                               (coe
                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                                  (let v4
                                                                         = coe
                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                             (coe
                                                                                du_prs_2880 (coe v0)
                                                                                (coe v1))
                                                                             (coe v2) in
                                                                   coe
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                           (coe v4))))))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                             (coe
                                                addInt
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                   (coe
                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                      (coe
                                                         MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                   (coe (\ v3 -> v3))
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                               (let v4
                                                                      = \ v4 v5 ->
                                                                          coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                            v4 in
                                                                coe
                                                                  (let v5
                                                                         = let v5
                                                                                 = coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        (\ v5 ->
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                             (coe
                                                                                                v5))) in
                                                                           coe
                                                                             (let v6
                                                                                    = let v6
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v6)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                              (let v7
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v7)))))
                                                                                           (let v7
                                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                         (coe
                                                                                                            v0)) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    v7)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                    (let v8
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                               (coe
                                                                                                                  du_prs_2880
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  v2) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                             (coe
                                                                                                                v8)))))
                                                                                                 (coe
                                                                                                    v2)))) in
                                                                              coe (coe v5 v6)) in
                                                                   coe (coe v4 v5 erased))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4))))))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4)))))))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2770)
                                       (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2772)
                                       (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                          (coe v1))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDReps'45'LState_2784)
                                          (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1124
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCCHotKeys'45'LState_2782)
                                             (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_176)
                                                (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3016
                                                   (coe v1)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1156
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPools'45'LState_2768)
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_854
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasVoteDelegs'45'LState_2776)
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                      (coe v1))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2590)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3656
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                       (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (let v3
                                                       = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4)))))
                                                      (let v4
                                                             = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                    (coe v0)) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v4)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                               (let v5
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v5)))))
                                                            (coe v2)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                      (let v3
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v3)))))
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                       (coe v0))))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v3)
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                  (coe v0)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                            (coe
                                                               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                               (let v4
                                                                      = \ v4 v5 ->
                                                                          coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                            v4 in
                                                                coe
                                                                  (let v5
                                                                         = let v5
                                                                                 = coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        (\ v5 ->
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                             (coe
                                                                                                v5))) in
                                                                           coe
                                                                             (let v6
                                                                                    = let v6
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                      (coe
                                                                                                         v0))) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v6)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                              (let v7
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v7)))))
                                                                                           (let v7
                                                                                                  = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                         (coe
                                                                                                            v0)) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                    (coe
                                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                    erased
                                                                                                    v7)
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                    (let v8
                                                                                                           = coe
                                                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                               (coe
                                                                                                                  du_prs_2880
                                                                                                                  (coe
                                                                                                                     v0)
                                                                                                                  (coe
                                                                                                                     v1))
                                                                                                               (coe
                                                                                                                  v2) in
                                                                                                     coe
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                             (coe
                                                                                                                v8)))))
                                                                                                 (coe
                                                                                                    v2)))) in
                                                                              coe (coe v5 v6)) in
                                                                   coe (coe v4 v5 erased))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4))))))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                            (coe
                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                               (let v4
                                                                      = coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                          (coe
                                                                             du_prs_2880 (coe v0)
                                                                             (coe v1))
                                                                          (coe v2) in
                                                                coe
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                        (coe v4))))))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                          (coe
                                             addInt
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                                (coe
                                                   MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                (coe (\ v3 -> v3))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                            (let v4
                                                                   = \ v4 v5 ->
                                                                       coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                         v4 in
                                                             coe
                                                               (let v5
                                                                      = let v5
                                                                              = coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     (\ v5 ->
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                          (coe
                                                                                             v5))) in
                                                                        coe
                                                                          (let v6
                                                                                 = let v6
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v6)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                           (let v7
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v7)))))
                                                                                        (let v7
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v7)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                 (let v8
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v8)))))
                                                                                              (coe
                                                                                                 v2)))) in
                                                                           coe (coe v5 v6)) in
                                                                coe (coe v4 v5 erased))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4)))))))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3))))))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Class.HasEmptySet.d_'8709'_314
                                       (coe
                                          MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_324
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4)))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                         (let v5
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v5)))))
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3)))))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                    (coe
                                       addInt
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe (\ v3 -> v3))
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v4
                                                             = \ v4 v5 ->
                                                                 coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                   v4 in
                                                       coe
                                                         (let v5
                                                                = let v5
                                                                        = coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                    (coe v5))) in
                                                                  coe
                                                                    (let v6
                                                                           = let v6
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased v6)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                     (let v7
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                (coe
                                                                                                   du_prs_2880
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   v2) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                              (coe
                                                                                                 v7)))))
                                                                                  (let v7
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v7)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                           (let v8
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v8)))))
                                                                                        (coe
                                                                                           v2)))) in
                                                                     coe (coe v5 v6)) in
                                                          coe (coe v4 v5 erased))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                       (let v3
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v3)))))))))))))))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_EPOCH_3722
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
            (coe
               addInt
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                  (coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                              (coe v0))))
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                           (coe v0))))
                  (coe
                     MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                     (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                     (coe
                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                  (coe (\ v3 -> v3))
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                      (coe v0))))
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                   (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                 (coe v0)))
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                    (coe v0))))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                           (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                              (let v4
                                     = \ v4 v5 ->
                                         coe
                                           MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                           v4 in
                               coe
                                 (let v5
                                        = let v5
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    (coe
                                                       (\ v5 ->
                                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                            (coe v5))) in
                                          coe
                                            (let v6
                                                   = let v6
                                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))) in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                             erased v6)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                             (let v7
                                                                    = coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                        (coe
                                                                           du_prs_2880 (coe v0)
                                                                           (coe v1))
                                                                        (coe v2) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                      (coe v7)))))
                                                          (let v7
                                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                        (coe v0)) in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                   erased v7)
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                   (let v8
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                              (coe
                                                                                 du_prs_2880
                                                                                 (coe v0) (coe v1))
                                                                              (coe v2) in
                                                                    coe
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                            (coe v8)))))
                                                                (coe v2)))) in
                                             coe (coe v5 v6)) in
                                  coe (coe v4 v5 erased))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                         (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                       (coe v4))))))
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                              (let v4
                                     = coe
                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                         (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                               coe
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                       (coe v4)))))))))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                             (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                           (coe v3))))))
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
               (let v3
                      = coe
                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                          (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                coe
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                        (coe v3))))))
         (coe
            MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                  (let v3
                         = coe
                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                             (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                   coe
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                           (coe v3)))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                  (let v3
                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                             (coe
                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                   (coe v0))) in
                   coe
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v3)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                           (let v4
                                  = coe
                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                      (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                            coe
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                    (coe v4)))))
                        (let v4
                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                      (coe v0)) in
                         coe
                           (coe
                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                 erased v4)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                 (let v5
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v5)))))
                              (coe v2)))))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                     MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                     (coe
                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                           (coe
                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                 (coe v0))))
                        (coe
                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                              (coe v0))))
                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                        (let v3
                               = coe
                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                   (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                         coe
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                 (coe v3)))))
                     (let v3
                            = coe
                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                   (coe
                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                         (coe v0))))
                                (coe
                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                      (coe v0))) in
                      coe
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                              erased v3)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0)))
                              (coe
                                 MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                          (coe v0))))
                                 (coe
                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                       (coe v0))))
                              (coe
                                 MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                              (coe
                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                 (let v4
                                        = \ v4 v5 ->
                                            coe
                                              MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                              v4 in
                                  coe
                                    (let v5
                                           = let v5
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          (\ v5 ->
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                               (coe v5))) in
                                             coe
                                               (let v6
                                                      = let v6
                                                              = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                        (coe v0))) in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased v6)
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                (let v7
                                                                       = coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                           (coe
                                                                              du_prs_2880 (coe v0)
                                                                              (coe v1))
                                                                           (coe v2) in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                         (coe v7)))))
                                                             (let v7
                                                                    = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                           (coe v0)) in
                                                              coe
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased v7)
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                      (let v8
                                                                             = coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                 (coe
                                                                                    du_prs_2880
                                                                                    (coe v0)
                                                                                    (coe v1))
                                                                                 (coe v2) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                               (coe v8)))))
                                                                   (coe v2)))) in
                                                coe (coe v5 v6)) in
                                     coe (coe v4 v5 erased))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v4))))))
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                 (let v4
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v4))))))))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_SNAP'45'total_2824 (coe v0)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                     (coe v1))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Ratify.Properties.d_RATIFIES'45'total''_2348
                     (coe v0)
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyEnv_2588)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_mkStakeDistrs_3442
                              (coe v0)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2904
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       du_SNAP'45'total_2824 (coe v0)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                          (coe v1))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                                          (coe v1)))))
                              (coe v2)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_utxoSt''_3664
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                            (let v5
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v5)))))
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                            (let v4
                                                                   = \ v4 v5 ->
                                                                       coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                         v4 in
                                                             coe
                                                               (let v5
                                                                      = let v5
                                                                              = coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     (\ v5 ->
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                          (coe
                                                                                             v5))) in
                                                                        coe
                                                                          (let v6
                                                                                 = let v6
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v6)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                           (let v7
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v7)))))
                                                                                        (let v7
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v7)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                 (let v8
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v8)))))
                                                                                              (coe
                                                                                                 v2)))) in
                                                                           coe (coe v5 v6)) in
                                                                coe (coe v4 v5 erased))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                       (coe
                                          addInt
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe (\ v3 -> v3))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4)))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                    (coe v0)
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                       (coe v1))
                                    (coe
                                       MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (let v3
                                                    = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))
                                                   (let v4
                                                          = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                 (coe v0)) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v4)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                            (let v5
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v5)))))
                                                         (coe v2)))))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v3
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v3)))))
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                    (coe v0))))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v3)
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                     (coe v0))))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                         (coe
                                                            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                            (let v4
                                                                   = \ v4 v5 ->
                                                                       coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                         v4 in
                                                             coe
                                                               (let v5
                                                                      = let v5
                                                                              = coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     (\ v5 ->
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                          (coe
                                                                                             v5))) in
                                                                        coe
                                                                          (let v6
                                                                                 = let v6
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                   (coe
                                                                                                      v0))) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v6)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                           (let v7
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v7)))))
                                                                                        (let v7
                                                                                               = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                      (coe
                                                                                                         v0)) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                 (coe
                                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                                 erased
                                                                                                 v7)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                                 (let v8
                                                                                                        = coe
                                                                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                            (coe
                                                                                                               du_prs_2880
                                                                                                               (coe
                                                                                                                  v0)
                                                                                                               (coe
                                                                                                                  v1))
                                                                                                            (coe
                                                                                                               v2) in
                                                                                                  coe
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                          (coe
                                                                                                             v8)))))
                                                                                              (coe
                                                                                                 v2)))) in
                                                                           coe (coe v5 v6)) in
                                                                coe (coe v4 v5 erased))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                         (coe
                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                            (let v4
                                                                   = coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                       (coe
                                                                          du_prs_2880 (coe v0)
                                                                          (coe v1))
                                                                       (coe v2) in
                                                             coe
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                     (coe v4))))))))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                       (coe
                                          addInt
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe (\ v3 -> v3))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4)))))))))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v3))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_GStateOf_1436
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasGState'45'LState_2770)
                                 (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                    (coe v1)))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DStateOf_1396
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDState'45'LState_2772)
                                 (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                    (coe v1))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DRepsOf_1140
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasDReps'45'LState_2784)
                                    (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                       (coe v1)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_CCHotKeysOf_1124
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCCHotKeys'45'LState_2782)
                                       (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                          (coe v1)))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Prelude.Base.d_TreasuryOf_88
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.du_HasTreasury'45'Acnt_176)
                                          (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt_3016
                                             (coe v1)))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_PoolsOf_1156
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasPools'45'LState_2768)
                                             (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.d_VoteDelegsOf_854
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasVoteDelegs'45'LState_2776)
                                             (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                                (coe v1))))))))))
                     (coe
                        MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Ratify.du_HasCast'45'RatifyState_2590)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3656
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020
                                    (coe v1))
                                 (coe
                                    MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (let v3
                                                 = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4)))))
                                                (let v4
                                                       = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                              (coe v0)) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased v4)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                         (let v5
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v5)))))
                                                      (coe v2)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                (let v3
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v3)))))
                                             (let v3
                                                    = coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                           (coe
                                                              MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                 (coe v0))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      erased v3)
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                            (coe
                                                               MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                  (coe v0))))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                      (coe
                                                         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                         (let v4
                                                                = \ v4 v5 ->
                                                                    coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                      v4 in
                                                          coe
                                                            (let v5
                                                                   = let v5
                                                                           = coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  (\ v5 ->
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                       (coe v5))) in
                                                                     coe
                                                                       (let v6
                                                                              = let v6
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                                (coe
                                                                                                   v0))) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v6)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                        (let v7
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v7)))))
                                                                                     (let v7
                                                                                            = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                                (coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                   (coe
                                                                                                      v0)) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                              erased
                                                                                              v7)
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                              (let v8
                                                                                                     = coe
                                                                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                         (coe
                                                                                                            du_prs_2880
                                                                                                            (coe
                                                                                                               v0)
                                                                                                            (coe
                                                                                                               v1))
                                                                                                         (coe
                                                                                                            v2) in
                                                                                               coe
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                       (coe
                                                                                                          v8)))))
                                                                                           (coe
                                                                                              v2)))) in
                                                                        coe (coe v5 v6)) in
                                                             coe (coe v4 v5 erased))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                         (let v4
                                                                = coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                    (coe
                                                                       du_prs_2880 (coe v0)
                                                                       (coe v1))
                                                                    (coe v2) in
                                                          coe
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                  (coe v4))))))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                                    (coe
                                       addInt
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe (\ v3 -> v3))
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                        (coe
                                                           MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                              (coe v0))))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v3)
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                         (coe
                                                            MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                               (coe v0))))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                   (coe
                                                      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v4
                                                             = \ v4 v5 ->
                                                                 coe
                                                                   MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                   v4 in
                                                       coe
                                                         (let v5
                                                                = let v5
                                                                        = coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               (\ v5 ->
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                    (coe v5))) in
                                                                  coe
                                                                    (let v6
                                                                           = let v6
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                             (coe
                                                                                                v0))) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased v6)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                     (let v7
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                (coe
                                                                                                   du_prs_2880
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   v2) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                              (coe
                                                                                                 v7)))))
                                                                                  (let v7
                                                                                         = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                             (coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                                (coe
                                                                                                   v0)) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                           (coe
                                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                           erased
                                                                                           v7)
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                           (let v8
                                                                                                  = coe
                                                                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                      (coe
                                                                                                         du_prs_2880
                                                                                                         (coe
                                                                                                            v0)
                                                                                                         (coe
                                                                                                            v1))
                                                                                                      (coe
                                                                                                         v2) in
                                                                                            coe
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                                 (coe
                                                                                                    MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                    (coe
                                                                                                       v8)))))
                                                                                        (coe
                                                                                           v2)))) in
                                                                     coe (coe v5 v6)) in
                                                          coe (coe v4 v5 erased))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4))))))
                                                (coe
                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                      (let v4
                                                             = coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                 (coe du_prs_2880 (coe v0) (coe v1))
                                                                 (coe v2) in
                                                       coe
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                               (coe v4)))))))))
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3))))))
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                       (let v3
                                              = coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                  (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                (coe v3))))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 MAlonzo.Code.Class.HasEmptySet.d_'8709'_314
                                 (coe
                                    MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_324
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
                              (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))))
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                           (coe
                              MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'DState_1508)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_voteDelegs_1320
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (let v3
                                           = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_stakeDelegs_1322
                                             (let v4
                                                    = coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                        (coe du_prs_2880 (coe v0) (coe v1))
                                                        (coe v2) in
                                              coe
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                      (coe v4)))))
                                          (let v4
                                                 = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                        (coe v0)) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased v4)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                   (let v5
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v5)))))
                                                (coe v2)))))
                                    (coe
                                       MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                       MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                   (coe v0))))
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                          (let v3
                                                 = coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                     (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                           coe
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                   (coe v3)))))
                                       (let v3
                                              = coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                     (coe
                                                        MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                           (coe v0))))
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                        (coe v0))) in
                                        coe
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v3)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                      (coe
                                                         MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                            (coe v0))))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                                (coe
                                                   MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v4
                                                          = \ v4 v5 ->
                                                              coe
                                                                MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                                v4 in
                                                    coe
                                                      (let v5
                                                             = let v5
                                                                     = coe
                                                                         MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            (\ v5 ->
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                                 (coe v5))) in
                                                               coe
                                                                 (let v6
                                                                        = let v6
                                                                                = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                          (coe
                                                                                             v0))) in
                                                                          coe
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                  erased v6)
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                                  (let v7
                                                                                         = coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                             (coe
                                                                                                du_prs_2880
                                                                                                (coe
                                                                                                   v0)
                                                                                                (coe
                                                                                                   v1))
                                                                                             (coe
                                                                                                v2) in
                                                                                   coe
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                           (coe
                                                                                              v7)))))
                                                                               (let v7
                                                                                      = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                          (coe
                                                                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                             (coe
                                                                                                v0)) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                        (coe
                                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                     (coe
                                                                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                        erased v7)
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                        (let v8
                                                                                               = coe
                                                                                                   MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                   (coe
                                                                                                      du_prs_2880
                                                                                                      (coe
                                                                                                         v0)
                                                                                                      (coe
                                                                                                         v1))
                                                                                                   (coe
                                                                                                      v2) in
                                                                                         coe
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                              (coe
                                                                                                 MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                                 (coe
                                                                                                    v8)))))
                                                                                     (coe v2)))) in
                                                                  coe (coe v5 v6)) in
                                                       coe (coe v4 v5 erased))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4))))))
                                             (coe
                                                MAlonzo.Code.Class.IsSet.du_dom_562
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                   (let v4
                                                          = coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                              (coe du_prs_2880 (coe v0) (coe v1))
                                                              (coe v2) in
                                                    coe
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                            (coe v4))))))))))))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.C_'10214'_'44'_'10215''7491'_174
                              (coe
                                 addInt
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_indexedSum'7515'''_1222
                                    (coe
                                       MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                          (coe
                                             MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                (coe v0))))
                                       (coe
                                          MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                             (coe v0))))
                                    (coe
                                       MAlonzo.Code.Class.DecEq.Core.C_constructor_32
                                       (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796))
                                    (coe
                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                       (coe
                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                    (coe (\ v3 -> v3))
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                  (coe
                                                     MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                        (coe v0))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                     (coe v0))) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v3)
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_aggregateBy_1250
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_222
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                   (coe
                                                      MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                         (coe v0))))
                                                (coe
                                                   MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'ScriptHash_210
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                      (coe v0))))
                                             (coe
                                                MAlonzo.Code.Ledger.Prelude.Instances.d_CommMonoid'45'ℕ'45''43'_6)
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                (let v4
                                                       = \ v4 v5 ->
                                                           coe
                                                             MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066)
                                                             v4 in
                                                 coe
                                                   (let v5
                                                          = let v5
                                                                  = coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         (\ v5 ->
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewardAccount_1058
                                                                              (coe v5))) in
                                                            coe
                                                              (let v6
                                                                     = let v6
                                                                             = MAlonzo.Code.Ledger.Core.Specification.Crypto.d_DecEq'45'THash_26
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Core.Specification.Crypto.d_khs_206
                                                                                    (coe
                                                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_cryptoStructure_1318
                                                                                       (coe v0))) in
                                                                       coe
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                               erased v6)
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_pools_1334
                                                                               (let v7
                                                                                      = coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                          (coe
                                                                                             du_prs_2880
                                                                                             (coe
                                                                                                v0)
                                                                                             (coe
                                                                                                v1))
                                                                                          (coe
                                                                                             v2) in
                                                                                coe
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                     (coe
                                                                                        MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                        (coe v7)))))
                                                                            (let v7
                                                                                   = MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                                                                                       (coe
                                                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                                                                                          (coe
                                                                                             v0)) in
                                                                             coe
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                     (coe
                                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                  (coe
                                                                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                     erased v7)
                                                                                  (coe
                                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_retiring_1336
                                                                                     (let v8
                                                                                            = coe
                                                                                                MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                                                                (coe
                                                                                                   du_prs_2880
                                                                                                   (coe
                                                                                                      v0)
                                                                                                   (coe
                                                                                                      v1))
                                                                                                (coe
                                                                                                   v2) in
                                                                                      coe
                                                                                        (coe
                                                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_pState_2422
                                                                                           (coe
                                                                                              MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                                                              (coe
                                                                                                 v8)))))
                                                                                  (coe v2)))) in
                                                               coe (coe v5 v6)) in
                                                    coe (coe v4 v5 erased))))
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
                                                (let v4
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_utxoSt_2416
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v4))))))
                                          (coe
                                             MAlonzo.Code.Class.IsSet.du_dom_562
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_rewards_1324
                                                (let v4
                                                       = coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                                           (coe du_prs_2880 (coe v0) (coe v1))
                                                           (coe v2) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_dState_2420
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                                         (coe v4)))))))))
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasury_170
                                    (let v3
                                           = coe
                                               MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                               (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                     coe
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                             (coe v3))))))
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_reserves_172
                                 (let v3
                                        = coe
                                            MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_mkGeneralizeTel_10991
                                            (coe du_prs_2880 (coe v0) (coe v1)) (coe v2) in
                                  coe
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_acnt_2418
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Specification.PoolReap.d_'46'generalizedField'45'poolReapState_10985
                                          (coe v3))))))))))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                  (coe
                     du_POOLREAP'45'total_2848 (coe v0) (coe v2)
                     (coe du_prs_2880 (coe v0) (coe v1)))))))
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-state
d_EPOCH'45'state_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004
d_EPOCH'45'state_2894 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_EPOCH'45'state_2894 v0 v2 v4 v5 v6
du_EPOCH'45'state_2894 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T_PoolReapState_2406 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004
du_EPOCH'45'state_2894 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.PoolReap.C_'10214'_'44'_'44'_'44'_'10215''7510'_2424 v5 v6 v7 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_'10214'_'44'_'44'_'44'_'44'_'10215''7497'''_3026
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_acnt''''_3666
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                   (coe v0)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                   (coe v7) (coe v6)))
             (coe v2)
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Ledger.C_'10214'_'44'_'44'_'10215''737'_2736
                (coe v5)
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_govSt''_3658
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                      (coe v0)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                      (coe v7) (coe v6)))
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_'10214'_'44'_'44'_'10215''7580''738'_1366
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_dState''''_3660
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                         (coe v0)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                         (coe v7) (coe v6)))
                   (coe v8)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_gState''_3662
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                         (coe v0)
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                         (coe v7) (coe v6)))))
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_es_3656
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_EPOCH'45'updates_3670
                   (coe v0)
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_fut_3024 (coe v1))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ls_3020 (coe v1))
                   (coe v7) (coe v6)))
             (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-deterministic
d_EPOCH'45'deterministic_2924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3694 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3694 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'deterministic_2924 = erased
-- Ledger.Conway.Specification.Epoch.Properties._._.ss'≡ss''
d_ss'''8801'ss''''_2962 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ss'''8801'ss''''_2962 = erased
-- Ledger.Conway.Specification.Epoch.Properties._._.fut'≡fut''
d_fut'''8801'fut''''_2964 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fut'''8801'fut''''_2964 = erased
-- Ledger.Conway.Specification.Epoch.Properties._._.prs'≡prs''
d_prs'''8801'prs''''_2968 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2894 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ratify.T_RatifyState_2546 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_Acnt_164 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T__'8866'_'8640''10631'_'44'SNAP'10632'__2948 ->
  MAlonzo.Code.Interface.STS.T__'8866'_'8640''10214'_'10215''42'__38 ->
  MAlonzo.Code.Ledger.Conway.Specification.PoolReap.T__'8866'_'8640''10631'_'44'POOLREAP'10632'__2434 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_prs'''8801'prs''''_2968 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-complete
d_EPOCH'45'complete_2972 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3694 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete_2972 = erased
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-total'
d_EPOCH'45'total''_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_EPOCH'45'total''_2980 v0 ~v1 v2 v3
  = du_EPOCH'45'total''_2980 v0 v2 v3
du_EPOCH'45'total''_2980 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_EPOCH'45'total''_2980 v0 v1 v2
  = coe du_EPOCH'45'total_2892 (coe v0) (coe v1) (coe v2)
-- Ledger.Conway.Specification.Epoch.Properties._.EPOCH-complete'
d_EPOCH'45'complete''_2984 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_EpochState_3004 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'EPOCH'10632'__3694 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_EPOCH'45'complete''_2984 = erased
-- Ledger.Conway.Specification.Epoch.Properties.Computational-EPOCH
d_Computational'45'EPOCH_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'EPOCH_2986 v0 ~v1
  = du_Computational'45'EPOCH_2986 v0
du_Computational'45'EPOCH_2986 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'EPOCH_2986 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_EPOCH'45'total''_2980 (coe v0) (coe v2) (coe v3)))
-- Ledger.Conway.Specification.Epoch.Properties._.NEWEPOCH-total
d_NEWEPOCH'45'total_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_NEWEPOCH'45'total_3014 v0 ~v1 v2 v3
  = du_NEWEPOCH'45'total_3014 v0 v2 v3
du_NEWEPOCH'45'total_3014 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3068 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_NEWEPOCH'45'total_3014 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_DecEq'45'Epoch_62
                 (coe
                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                    (coe v0)))
              v1
              (coe
                 MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
                 (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                    (coe v0))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d__'43'__2380
                    (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_Slot'691'_58
                       (coe
                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0))
                       (MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3082
                          (coe v2)))
                    (coe
                       MAlonzo.Code.Ledger.Core.Specification.Epoch.d_firstSlot_74
                       (MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                          (coe v0))
                       (MAlonzo.Code.Ledger.Core.Specification.Epoch.d_ℕtoEpoch_246
                          (coe
                             MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
                             (coe v0))
                          (coe (1 :: Integer)))))) in
    coe
      (let v4
             = MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3090
                 (coe v2) in
       coe
         (case coe v3 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then case coe v6 of
                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                            -> case coe v4 of
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v8
                                   -> case coe v2 of
                                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3094 v9 v10 v11 v12 v13 v14
                                          -> coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (3068 :: Integer)
                                                                                (4112555248803407823 ::
                                                                                   Integer)
                                                                                "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                       (coe ("r" :: Data.Text.Text))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (168 :: Integer)
                                                                                (4112555248803407823 ::
                                                                                   Integer)
                                                                                "_.Epoch"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (3068 :: Integer)
                                                                                   (4112555248803407823 ::
                                                                                      Integer)
                                                                                   "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("r"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (2712 :: Integer)
                                                                                   (4112555248803407823 ::
                                                                                      Integer)
                                                                                   "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (3068 ::
                                                                                         Integer)
                                                                                      (4112555248803407823 ::
                                                                                         Integer)
                                                                                      "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                             (coe
                                                                                ("r"
                                                                                 ::
                                                                                 Data.Text.Text))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (2712 ::
                                                                                         Integer)
                                                                                      (4112555248803407823 ::
                                                                                         Integer)
                                                                                      "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (3068 ::
                                                                                            Integer)
                                                                                         (4112555248803407823 ::
                                                                                            Integer)
                                                                                         "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("r"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (3004 ::
                                                                                            Integer)
                                                                                         (4112555248803407823 ::
                                                                                            Integer)
                                                                                         "Ledger.Conway.Specification.Epoch.EpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (3068 ::
                                                                                               Integer)
                                                                                            (4112555248803407823 ::
                                                                                               Integer)
                                                                                            "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                   (coe
                                                                                      ("r"
                                                                                       ::
                                                                                       Data.Text.Text))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (10 ::
                                                                                               Integer)
                                                                                            (15412666033012224255 ::
                                                                                               Integer)
                                                                                            "Agda.Builtin.Maybe.Maybe"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (20 ::
                                                                                                        Integer)
                                                                                                     (10880583612240331187 ::
                                                                                                        Integer)
                                                                                                     "Agda.Primitive.lzero"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (2730 ::
                                                                                                           Integer)
                                                                                                        (4112555248803407823 ::
                                                                                                           Integer)
                                                                                                        "Ledger.Conway.Specification.Epoch._.RewardUpdate"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (3068 ::
                                                                                                  Integer)
                                                                                               (4112555248803407823 ::
                                                                                                  Integer)
                                                                                               "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                      (coe
                                                                                         ("r"
                                                                                          ::
                                                                                          Data.Text.Text))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (3066 ::
                                                                                                  Integer)
                                                                                               (4112555248803407823 ::
                                                                                                  Integer)
                                                                                               "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3094)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v1)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v11)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    du_EPOCH'45'total''_2980
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3300
                                                                       (coe v0) (coe v8) (coe v12))
                                                                    (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3356
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_2980
                                                                                (coe v0)
                                                                                (coe
                                                                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3300
                                                                                   (coe v0) (coe v8)
                                                                                   (coe v12))
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_NEWEPOCH'45'New_3736
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_2980 (coe v0)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_applyRUpd_3300
                                                              (coe v0) (coe v8) (coe v12))
                                                           (coe v1)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                                   -> case coe v2 of
                                        MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3094 v8 v9 v10 v11 v12 v13
                                          -> coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                                  (coe
                                                     MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.C_constructor_30
                                                     (coe
                                                        MAlonzo.Code.Data.Product.Nary.NonDependent.du_uncurry'8345'_170
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_length_268
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                              (coe
                                                                 MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (3068 :: Integer)
                                                                                (4112555248803407823 ::
                                                                                   Integer)
                                                                                "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                       (coe ("r" :: Data.Text.Text))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                          (coe
                                                                             (MAlonzo.RTE.QName
                                                                                (168 :: Integer)
                                                                                (4112555248803407823 ::
                                                                                   Integer)
                                                                                "_.Epoch"
                                                                                (MAlonzo.RTE.Fixity
                                                                                   MAlonzo.RTE.NonAssoc
                                                                                   MAlonzo.RTE.Unrelated)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                 (coe
                                                                    MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (3068 :: Integer)
                                                                                   (4112555248803407823 ::
                                                                                      Integer)
                                                                                   "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                          (coe
                                                                             ("r"
                                                                              ::
                                                                              Data.Text.Text))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                             (coe
                                                                                (MAlonzo.RTE.QName
                                                                                   (2712 :: Integer)
                                                                                   (4112555248803407823 ::
                                                                                      Integer)
                                                                                   "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                                                                   (MAlonzo.RTE.Fixity
                                                                                      MAlonzo.RTE.NonAssoc
                                                                                      MAlonzo.RTE.Unrelated)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                    (coe
                                                                       MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (3068 ::
                                                                                         Integer)
                                                                                      (4112555248803407823 ::
                                                                                         Integer)
                                                                                      "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                             (coe
                                                                                ("r"
                                                                                 ::
                                                                                 Data.Text.Text))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                (coe
                                                                                   (MAlonzo.RTE.QName
                                                                                      (2712 ::
                                                                                         Integer)
                                                                                      (4112555248803407823 ::
                                                                                         Integer)
                                                                                      "Ledger.Conway.Specification.Epoch._.BlocksMade"
                                                                                      (MAlonzo.RTE.Fixity
                                                                                         MAlonzo.RTE.NonAssoc
                                                                                         MAlonzo.RTE.Unrelated)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                       (coe
                                                                          MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (3068 ::
                                                                                            Integer)
                                                                                         (4112555248803407823 ::
                                                                                            Integer)
                                                                                         "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                (coe
                                                                                   ("r"
                                                                                    ::
                                                                                    Data.Text.Text))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                   (coe
                                                                                      (MAlonzo.RTE.QName
                                                                                         (3004 ::
                                                                                            Integer)
                                                                                         (4112555248803407823 ::
                                                                                            Integer)
                                                                                         "Ledger.Conway.Specification.Epoch.EpochState"
                                                                                         (MAlonzo.RTE.Fixity
                                                                                            MAlonzo.RTE.NonAssoc
                                                                                            MAlonzo.RTE.Unrelated)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (3068 ::
                                                                                               Integer)
                                                                                            (4112555248803407823 ::
                                                                                               Integer)
                                                                                            "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                   (coe
                                                                                      ("r"
                                                                                       ::
                                                                                       Data.Text.Text))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                      (coe
                                                                                         (MAlonzo.RTE.QName
                                                                                            (10 ::
                                                                                               Integer)
                                                                                            (15412666033012224255 ::
                                                                                               Integer)
                                                                                            "Agda.Builtin.Maybe.Maybe"
                                                                                            (MAlonzo.RTE.Fixity
                                                                                               MAlonzo.RTE.NonAssoc
                                                                                               MAlonzo.RTE.Unrelated)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_hidden_52)
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                               (coe
                                                                                                  (MAlonzo.RTE.QName
                                                                                                     (20 ::
                                                                                                        Integer)
                                                                                                     (10880583612240331187 ::
                                                                                                        Integer)
                                                                                                     "Agda.Primitive.lzero"
                                                                                                     (MAlonzo.RTE.Fixity
                                                                                                        MAlonzo.RTE.NonAssoc
                                                                                                        MAlonzo.RTE.Unrelated)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                                  (coe
                                                                                                     (MAlonzo.RTE.QName
                                                                                                        (2730 ::
                                                                                                           Integer)
                                                                                                        (4112555248803407823 ::
                                                                                                           Integer)
                                                                                                        "Ledger.Conway.Specification.Epoch._.RewardUpdate"
                                                                                                        (MAlonzo.RTE.Fixity
                                                                                                           MAlonzo.RTE.NonAssoc
                                                                                                           MAlonzo.RTE.Unrelated)))
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive.d_getCodPi_8
                                                                                (coe
                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_pi_202
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                                                                            (coe
                                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (3068 ::
                                                                                                  Integer)
                                                                                               (4112555248803407823 ::
                                                                                                  Integer)
                                                                                               "Ledger.Conway.Specification.Epoch.NewEpochState"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                                                                                      (coe
                                                                                         ("r"
                                                                                          ::
                                                                                          Data.Text.Text))
                                                                                      (coe
                                                                                         MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                                                                                         (coe
                                                                                            (MAlonzo.RTE.QName
                                                                                               (3066 ::
                                                                                                  Integer)
                                                                                               (4112555248803407823 ::
                                                                                                  Integer)
                                                                                               "Ledger.Conway.Specification.Epoch.PoolDelegatedStake"
                                                                                               (MAlonzo.RTE.Fixity
                                                                                                  MAlonzo.RTE.NonAssoc
                                                                                                  MAlonzo.RTE.Unrelated)))
                                                                                         (coe
                                                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_constructor_3094)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v1)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v10)
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe
                                                                    du_EPOCH'45'total''_2980
                                                                    (coe v0) (coe v11) (coe v1)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe v4)
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_calculatePoolDelegatedStake_3356
                                                                    (coe v0)
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2906
                                                                       (coe
                                                                          MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ss_3018
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                             (coe
                                                                                du_EPOCH'45'total''_2980
                                                                                (coe v0) (coe v11)
                                                                                (coe v1))))))))))))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_NEWEPOCH'45'No'45'Reward'45'Update_3752
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v7)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_EPOCH'45'total''_2980 (coe v0)
                                                           (coe v11) (coe v1)))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else coe
                          seq (coe v6)
                          (coe
                             MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                             (coe
                                MAlonzo.Code.Ledger.Prelude.du_'10214'_'10215'_72
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Specification.Epoch.du_HasCast'45'NewEpochState_3158)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_lastEpoch_3082
                                      (coe v2))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bprev_3084
                                         (coe v2))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_bcur_3086
                                            (coe v2))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_epochState_3088
                                               (coe v2))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_ru_3090
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Epoch.d_pd_3092
                                                  (coe v2))))))))
                             (coe
                                MAlonzo.Code.Ledger.Conway.Specification.Epoch.C_NEWEPOCH'45'Not'45'New_3742))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Specification.Epoch.Properties._.NEWEPOCH-complete
d_NEWEPOCH'45'complete_3040 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3068 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T_NewEpochState_3068 ->
  MAlonzo.Code.Ledger.Conway.Specification.Epoch.T__'8866'_'8640''10631'_'44'NEWEPOCH'10632'__3724 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_NEWEPOCH'45'complete_3040 = erased
-- Ledger.Conway.Specification.Epoch.Properties.Computational-NEWEPOCH
d_Computational'45'NEWEPOCH_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
d_Computational'45'NEWEPOCH_3136 v0 ~v1
  = du_Computational'45'NEWEPOCH_3136 v0
du_Computational'45'NEWEPOCH_3136 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Interface.ComputationalRelation.T_Computational_232
du_Computational'45'NEWEPOCH_3136 v0
  = coe
      MAlonzo.Code.Interface.ComputationalRelation.C_MkComputational_412
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Interface.ComputationalRelation.C_success_42
           (coe du_NEWEPOCH'45'total_3014 (coe v0) (coe v3) (coe v2)))
