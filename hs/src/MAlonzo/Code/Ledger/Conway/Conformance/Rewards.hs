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

module MAlonzo.Code.Ledger.Conway.Conformance.Rewards where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Properties
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Rewards
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Prelude.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base

-- Ledger.Conway.Conformance.Rewards._.LState
d_LState_2278 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.LState.certState
d_certState_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.govSt
d_govSt_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2500 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_govSt_2510 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.LState.utxoSt
d_utxoSt_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2508
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.BlocksMade
d_BlocksMade_2394 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  ()
d_BlocksMade_2394 = erased
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshot
d_HasCast'45'Snapshot_2396 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshot_2396 ~v0 ~v1 = du_HasCast'45'Snapshot_2396
du_HasCast'45'Snapshot_2396 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshot_2396
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshot_2868
-- Ledger.Conway.Conformance.Rewards._.HasCast-Snapshots
d_HasCast'45'Snapshots_2398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'Snapshots_2398 ~v0 ~v1 = du_HasCast'45'Snapshots_2398
du_HasCast'45'Snapshots_2398 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'Snapshots_2398
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasCast'45'Snapshots_2946
-- Ledger.Conway.Conformance.Rewards._.HasFees-Snapshots
d_HasFees'45'Snapshots_2400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
d_HasFees'45'Snapshots_2400 ~v0 ~v1 = du_HasFees'45'Snapshots_2400
du_HasFees'45'Snapshots_2400 ::
  MAlonzo.Code.Ledger.Prelude.Base.T_HasFees_40
du_HasFees'45'Snapshots_2400
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasFees'45'Snapshots_2944
-- Ledger.Conway.Conformance.Rewards._.HasPools-Snapshot
d_HasPools'45'Snapshot_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
d_HasPools'45'Snapshot_2402 ~v0 ~v1 = du_HasPools'45'Snapshot_2402
du_HasPools'45'Snapshot_2402 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasPools_1148
du_HasPools'45'Snapshot_2402
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasPools'45'Snapshot_2866
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots
d_HasSnapshots_2404 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Rewards._.HasStake-Snapshot
d_HasStake'45'Snapshot_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1196
d_HasStake'45'Snapshot_2408 ~v0 ~v1 = du_HasStake'45'Snapshot_2408
du_HasStake'45'Snapshot_2408 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStake_1196
du_HasStake'45'Snapshot_2408
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStake'45'Snapshot_2862
-- Ledger.Conway.Conformance.Rewards._.HasStakeDelegs-Snapshot
d_HasStakeDelegs'45'Snapshot_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1212
d_HasStakeDelegs'45'Snapshot_2410 ~v0 ~v1
  = du_HasStakeDelegs'45'Snapshot_2410
du_HasStakeDelegs'45'Snapshot_2410 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_HasStakeDelegs_1212
du_HasStakeDelegs'45'Snapshot_2410
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_HasStakeDelegs'45'Snapshot_2864
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate
d_RewardUpdate_2412 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshot
d_Snapshot_2418 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.Snapshots
d_Snapshots_2422 a0 a1 = ()
-- Ledger.Conway.Conformance.Rewards._.SnapshotsOf
d_SnapshotsOf_2426 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2928 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904
d_SnapshotsOf_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2936
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.maxPool
d_maxPool_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_maxPool_2428 ~v0 ~v1 = du_maxPool_2428
du_maxPool_2428 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_maxPool_2428
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_maxPool_2540
-- Ledger.Conway.Conformance.Rewards._.mkApparentPerformance
d_mkApparentPerformance_2430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_mkApparentPerformance_2430 ~v0 ~v1
  = du_mkApparentPerformance_2430
du_mkApparentPerformance_2430 ::
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> Integer -> MAlonzo.Code.Data.Rational.Base.T_ℚ_6
du_mkApparentPerformance_2430
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_mkApparentPerformance_2576
-- Ledger.Conway.Conformance.Rewards._.nonZero-1+max0-x
d_nonZero'45'1'43'max0'45'x_2432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'43'max0'45'x_2432 ~v0 ~v1
  = du_nonZero'45'1'43'max0'45'x_2432
du_nonZero'45'1'43'max0'45'x_2432 ::
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'43'max0'45'x_2432
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'1'43'max0'45'x_2536
-- Ledger.Conway.Conformance.Rewards._.nonZero-1/n
d_nonZero'45'1'47'n_2434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'1'47'n_2434 ~v0 v1 = du_nonZero'45'1'47'n_2434 v1
du_nonZero'45'1'47'n_2434 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'1'47'n_2434 v0 v1
  = coe
      MAlonzo.Code.Data.Rational.Properties.du_pos'8658'nonZero_3004
      (coe
         MAlonzo.Code.Data.Rational.Base.du__'47'__156 (coe (1 :: Integer))
         (coe v0))
-- Ledger.Conway.Conformance.Rewards._.nonZero-max-1
d_nonZero'45'max'45'1_2436 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_nonZero'45'max'45'1_2436 ~v0 ~v1 = du_nonZero'45'max'45'1_2436
du_nonZero'45'max'45'1_2436 ::
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112
du_nonZero'45'max'45'1_2436
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_nonZero'45'max'45'1_2520
-- Ledger.Conway.Conformance.Rewards._.poolStake
d_poolStake_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_poolStake_2438 v0 ~v1 = du_poolStake_2438 v0
du_poolStake_2438 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_poolStake_2438 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_poolStake_2684
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.reward
d_reward_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reward_2440 v0 ~v1 = du_reward_2440 v0
du_reward_2440 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reward_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_reward_2740
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardMember
d_rewardMember_2442 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardMember_2442 ~v0 ~v1 = du_rewardMember_2442
du_rewardMember_2442 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardMember_2442
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardMember_2614
-- Ledger.Conway.Conformance.Rewards._.rewardOnePool
d_rewardOnePool_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewardOnePool_2444 v0 ~v1 = du_rewardOnePool_2444 v0
du_rewardOnePool_2444 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewardOnePool_2444 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOnePool_2634
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.rewardOwners
d_rewardOwners_2446 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
d_rewardOwners_2446 ~v0 ~v1 = du_rewardOwners_2446
du_rewardOwners_2446 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28 -> Integer
du_rewardOwners_2446
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_rewardOwners_2594
-- Ledger.Conway.Conformance.Rewards._.stakeDistr
d_stakeDistr_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_stakeDistr_2448 v0 ~v1 = du_stakeDistr_2448 v0
du_stakeDistr_2448 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DState_1312 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
du_stakeDistr_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_stakeDistr_2874
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.uncurryᵐ
d_uncurry'7504'_2450 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncurry'7504'_2450 ~v0 ~v1 = du_uncurry'7504'_2450
du_uncurry'7504'_2450 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncurry'7504'_2450 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.du_uncurry'7504'_2704
      v3 v4 v5
-- Ledger.Conway.Conformance.Rewards._.HasSnapshots.SnapshotsOf
d_SnapshotsOf_2454 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_HasSnapshots_2928 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904
d_SnapshotsOf_2454 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_SnapshotsOf_2936
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.flowConservation
d_flowConservation_2458 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_flowConservation_2458 = erased
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.rs
d_rs_2460 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rs_2460 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_rs_2834 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf
d_Δf_2462 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  Integer
d_Δf_2462 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf_2832 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δf-nonpositive
d_Δf'45'nonpositive_2464 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δf'45'nonpositive_2464 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δf'45'nonpositive_2842
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δr
d_Δr_2466 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  Integer
d_Δr_2466 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δr_2830 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt
d_Δt_2468 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  Integer
d_Δt_2468 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt_2828 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.RewardUpdate.Δt-nonnegative
d_Δt'45'nonnegative_2470 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_RewardUpdate_2810 ->
  MAlonzo.Code.Data.Integer.Base.T__'8804'__26
d_Δt'45'nonnegative_2470 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_Δt'45'nonnegative_2840
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.delegations
d_delegations_2474 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_delegations_2474 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_delegations_2856
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.pools
d_pools_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2476 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_pools_2858
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshot.stake
d_stake_2478 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stake_2478 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_stake_2854
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.feeSS
d_feeSS_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904 ->
  Integer
d_feeSS_2482 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_feeSS_2920
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.go
d_go_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_go_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_go_2918 (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.mark
d_mark_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_mark_2486 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_mark_2914
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._.Snapshots.set
d_set_2488 ::
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshots_2904 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_set_2488 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Rewards.d_set_2916
      (coe v0)
-- Ledger.Conway.Conformance.Rewards._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__2500 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'SNAP'10632'__2500 = C_SNAP_2542
-- Ledger.Conway.Conformance.Rewards._.certState
d_certState_2504 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2504 ~v0 ~v1 v2 = du_certState_2504 v2
du_certState_2504 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
du_certState_2504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
      (coe d_'46'generalizedField'45'lstate_6693 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.utxoSt
d_utxoSt_2508 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2508 ~v0 ~v1 v2 = du_utxoSt_2508 v2
du_utxoSt_2508 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
du_utxoSt_2508 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2508
      (coe d_'46'generalizedField'45'lstate_6693 (coe v0))
-- Ledger.Conway.Conformance.Rewards._.fees
d_fees_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 -> Integer
d_fees_2516 ~v0 ~v1 v2 = du_fees_2516 v2
du_fees_2516 :: T_GeneralizeTel_6703 -> Integer
du_fees_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2364
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2508
         (coe d_'46'generalizedField'45'lstate_6693 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.utxo
d_utxo_2518 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2518 ~v0 ~v1 v2 = du_utxo_2518 v2
du_utxo_2518 ::
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_utxo_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_utxoSt_2508
         (coe d_'46'generalizedField'45'lstate_6693 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.dState
d_dState_2522 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
d_dState_2522 ~v0 ~v1 v2 = du_dState_2522 v2
du_dState_2522 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
du_dState_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
         (coe d_'46'generalizedField'45'lstate_6693 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.pState
d_pState_2526 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2526 ~v0 ~v1 v2 = du_pState_2526 v2
du_pState_2526 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
du_pState_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1508
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
         (coe d_'46'generalizedField'45'lstate_6693 (coe v0)))
-- Ledger.Conway.Conformance.Rewards._.rewards
d_rewards_2536 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2536 ~v0 ~v1 v2 = du_rewards_2536 v2
du_rewards_2536 ::
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
            (coe d_'46'generalizedField'45'lstate_6693 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.stakeDelegs
d_stakeDelegs_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2538 ~v0 ~v1 v2 = du_stakeDelegs_2538 v2
du_stakeDelegs_2538 ::
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_stakeDelegs_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_1474
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
            (coe d_'46'generalizedField'45'lstate_6693 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._.voteDelegs
d_voteDelegs_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2540 ~v0 ~v1 v2 = du_voteDelegs_2540 v2
du_voteDelegs_2540 ::
  T_GeneralizeTel_6703 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_voteDelegs_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_1472
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Ledger.d_certState_2512
            (coe d_'46'generalizedField'45'lstate_6693 (coe v0))))
-- Ledger.Conway.Conformance.Rewards._._⊢_⇀⦇_,SNAP⦈_
d__'8866'_'8640''10631'_'44'SNAP'10632'__5215 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Rewards..generalizedField-lstate
d_'46'generalizedField'45'lstate_6693 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2500
d_'46'generalizedField'45'lstate_6693 v0
  = case coe v0 of
      C_mkGeneralizeTel_6705 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-mark
d_'46'generalizedField'45'mark_6695 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_'46'generalizedField'45'mark_6695 v0
  = case coe v0 of
      C_mkGeneralizeTel_6705 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-set
d_'46'generalizedField'45'set_6697 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_'46'generalizedField'45'set_6697 v0
  = case coe v0 of
      C_mkGeneralizeTel_6705 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-go
d_'46'generalizedField'45'go_6699 ::
  T_GeneralizeTel_6703 ->
  MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
d_'46'generalizedField'45'go_6699 v0
  = case coe v0 of
      C_mkGeneralizeTel_6705 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards..generalizedField-feeSS
d_'46'generalizedField'45'feeSS_6701 ::
  T_GeneralizeTel_6703 -> Integer
d_'46'generalizedField'45'feeSS_6701 v0
  = case coe v0 of
      C_mkGeneralizeTel_6705 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Rewards.GeneralizeTel
d_GeneralizeTel_6703 a0 a1 = ()
data T_GeneralizeTel_6703
  = C_mkGeneralizeTel_6705 MAlonzo.Code.Ledger.Conway.Conformance.Ledger.T_LState_2500
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
                           MAlonzo.Code.Ledger.Conway.Specification.Rewards.T_Snapshot_2846
                           Integer
