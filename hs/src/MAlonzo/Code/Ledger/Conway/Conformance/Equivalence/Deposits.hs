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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Deposits where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Refinement.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- _.PParams
d_PParams_390 a0 = ()
-- _.Tx
d_Tx_530 a0 = ()
-- _.PParams.Emax
d_Emax_1232 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_Emax_1232 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_Emax_388
      (coe v0)
-- _.PParams.a
d_a_1234 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_a_1234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a_360 (coe v0)
-- _.PParams.a0
d_a0_1236 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1236 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_a0_392 (coe v0)
-- _.PParams.b
d_b_1238 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_b_1238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_b_362 (coe v0)
-- _.PParams.ccMaxTermLength
d_ccMaxTermLength_1240 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMaxTermLength_1240 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMaxTermLength_404
      (coe v0)
-- _.PParams.ccMinSize
d_ccMinSize_1242 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_ccMinSize_1242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_ccMinSize_402
      (coe v0)
-- _.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_coinsPerUTxOByte_1244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_coinsPerUTxOByte_372
      (coe v0)
-- _.PParams.collateralPercentage
d_collateralPercentage_1246 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_collateralPercentage_1246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_collateralPercentage_394
      (coe v0)
-- _.PParams.costmdls
d_costmdls_1248 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_costmdls_1248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_costmdls_396
      (coe v0)
-- _.PParams.drepActivity
d_drepActivity_1250 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_drepActivity_1250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepActivity_412
      (coe v0)
-- _.PParams.drepDeposit
d_drepDeposit_1252 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_drepDeposit_1252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepDeposit_410
      (coe v0)
-- _.PParams.drepThresholds
d_drepThresholds_1254 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_DrepThresholds_204
d_drepThresholds_1254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_drepThresholds_400
      (coe v0)
-- _.PParams.govActionDeposit
d_govActionDeposit_1256 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionDeposit_1256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
      (coe v0)
-- _.PParams.govActionLifetime
d_govActionLifetime_1258 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_govActionLifetime_1258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionLifetime_406
      (coe v0)
-- _.PParams.keyDeposit
d_keyDeposit_1260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_keyDeposit_1260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
      (coe v0)
-- _.PParams.maxBlockExUnits
d_maxBlockExUnits_1262 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxBlockExUnits_1262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockExUnits_352
      (coe v0)
-- _.PParams.maxBlockSize
d_maxBlockSize_1264 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxBlockSize_1264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxBlockSize_344
      (coe v0)
-- _.PParams.maxCollateralInputs
d_maxCollateralInputs_1266 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxCollateralInputs_1266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxCollateralInputs_356
      (coe v0)
-- _.PParams.maxHeaderSize
d_maxHeaderSize_1268 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxHeaderSize_1268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxHeaderSize_348
      (coe v0)
-- _.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1270 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerBlock_1270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerBlock_380
      (coe v0)
-- _.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1272 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxRefScriptSizePerTx_1272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxRefScriptSizePerTx_378
      (coe v0)
-- _.PParams.maxTxExUnits
d_maxTxExUnits_1274 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_maxTxExUnits_1274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxExUnits_350
      (coe v0)
-- _.PParams.maxTxSize
d_maxTxSize_1276 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxTxSize_1276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxTxSize_346
      (coe v0)
-- _.PParams.maxValSize
d_maxValSize_1278 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_maxValSize_1278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_maxValSize_354
      (coe v0)
-- _.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1280 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minFeeRefScriptCoinsPerByte_376
      (coe v0)
-- _.PParams.minUTxOValue
d_minUTxOValue_1282 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_minUTxOValue_1282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_minUTxOValue_386
      (coe v0)
-- _.PParams.monetaryExpansion
d_monetaryExpansion_1284 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_monetaryExpansion_1284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_monetaryExpansion_368
      (coe v0)
-- _.PParams.nopt
d_nopt_1286 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_nopt_1286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_nopt_390
      (coe v0)
-- _.PParams.poolDeposit
d_poolDeposit_1288 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  Integer
d_poolDeposit_1288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
      (coe v0)
-- _.PParams.poolThresholds
d_poolThresholds_1290 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PoolThresholds_248
d_poolThresholds_1290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolThresholds_398
      (coe v0)
-- _.PParams.prices
d_prices_1292 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny
d_prices_1292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_prices_374
      (coe v0)
-- _.PParams.pv
d_pv_1294 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_pv_358 (coe v0)
-- _.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1296 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostMultiplier_384
      (coe v0)
-- _.PParams.refScriptCostStride
d_refScriptCostStride_1298 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_refScriptCostStride_1298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_refScriptCostStride_382
      (coe v0)
-- _.PParams.treasuryCut
d_treasuryCut_1300 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Data.Refinement.Base.T_Refinement_28
d_treasuryCut_1300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_treasuryCut_370
      (coe v0)
-- _.Tx.body
d_body_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202
d_body_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
      (coe v0)
-- _.Tx.isValid
d_isValid_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Bool
d_isValid_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3400
      (coe v0)
-- _.Tx.txAD
d_txAD_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Maybe AgdaAny
d_txAD_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3402
      (coe v0)
-- _.Tx.txsize
d_txsize_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  Integer
d_txsize_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3398
      (coe v0)
-- _.Tx.wits
d_wits_1730 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3360
d_wits_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3396
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState
d_LState_1868 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.certState
d_certState_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352
d_certState_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_certState_2734
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.govSt
d_govSt_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_govSt_2732
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.LState.utxoSt
d_utxoSt_1910 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2342
d_utxoSt_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.ValidCertDeposits
d_ValidCertDeposits_1966 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateCertDeposits
d_updateCertDeposits_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposits_2028 v0 ~v1 = du_updateCertDeposits_2028 v0
du_updateCertDeposits_2028 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposits_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateCertDeposits_2726
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateDeposits
d_updateDeposits_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_2030 v0 ~v1 = du_updateDeposits_2030 v0
du_updateDeposits_2030 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3202 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.updateProposalDeposits
d_updateProposalDeposits_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProposalDeposits_2032 v0 ~v1
  = du_updateProposalDeposits_2032 v0
du_updateProposalDeposits_2032 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProposalDeposits_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DCert
d_DCert_2142 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.DepositPurpose
d_DepositPurpose_2168 a0 a1 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits.L._.Deposits
d_Deposits_2170 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  ()
d_Deposits_2170 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.C._.updateCertDeposit
d_updateCertDeposit_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_2918 v0 ~v1 = du_updateCertDeposit_2918 v0
du_updateCertDeposit_2918 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateCertDeposit_2918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*
d_CertDeps'42'_3122 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵈ
d_ValidDeps'7496'_3150 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.ValidDepsᵍ
d_ValidDeps'7501'_3152 a0 a1 a2 a3 a4 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateCertDeps*
d_updateCertDeps'42'_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908
d_updateCertDeps'42'_3194 v0 ~v1 = du_updateCertDeps'42'_3194 v0
du_updateCertDeps'42'_3194 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908
du_updateCertDeps'42'_3194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.du_updateCertDeps'42'_3038
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵈ
d_deps'7496'_3200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7496'_3200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7496'_2922
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.depsᵍ
d_deps'7501'_3202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps'7501'_3202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_deps'7501'_2924
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵈ
d_valid'7496'_3204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742
d_valid'7496'_3204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7496'_2926
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.CertDeps*.validᵍ
d_valid'7501'_3206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826
d_valid'7501'_3206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.d_valid'7501'_2928
      (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_3256 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.comm
d_comm_3264 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_3264 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_3274 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_3274 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_576 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Deposits.Coin-Semigroup
d_Coin'45'Semigroup_3292 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
d_Coin'45'Semigroup_3292 ~v0 = du_Coin'45'Semigroup_3292
du_Coin'45'Semigroup_3292 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568
du_Coin'45'Semigroup_3292
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'43''45'isCommutativeSemigroup_3462
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDep
d_updateDDep_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDep_3294 v0 ~v1 v2 v3 v4 = du_updateDDep_3294 v0 v2 v3 v4
du_updateDDep_3294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDep_3294 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v4 v5 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateDDeps
d_updateDDeps_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDDeps_3320 v0 ~v1 v2 v3 v4
  = du_updateDDeps_3320 v0 v2 v3 v4
du_updateDDeps_3320 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDDeps_3320 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateDDeps_3320 (coe v0) (coe v1) (coe v5)
             (coe du_updateDDep_3294 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDep
d_updateGDep_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDep_3334 v0 ~v1 v2 v3 v4 = du_updateGDep_3334 v0 v2 v3 v4
du_updateGDep_3334 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDep_3334 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v4 v5 v6
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v4 v5
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                (coe v0))
             (coe v1) (coe v2) (coe v3)
      _ -> coe v3
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateGDeps
d_updateGDeps_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateGDeps_3354 v0 ~v1 v2 v3 v4
  = du_updateGDeps_3354 v0 v2 v3 v4
du_updateGDeps_3354 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateGDeps_3354 v0 v1 v2 v3
  = case coe v2 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             du_updateGDeps_3354 (coe v0) (coe v1) (coe v5)
             (coe du_updateGDep_3334 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.updateLedgerDeps
d_updateLedgerDeps_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateLedgerDeps_3368 v0 ~v1 v2 v3 v4
  = du_updateLedgerDeps_3368 v0 v2 v3 v4
du_updateLedgerDeps_3368 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateLedgerDeps_3368 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_updateDDeps_3320 (coe v0) (coe v1) (coe du_certs_3384 (coe v2))
                (coe v4))
             (coe
                du_updateGDeps_3354 (coe v0) (coe v1) (coe du_certs_3384 (coe v2))
                (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.certs
d_certs_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_certs_3384 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_certs_3384 v3
du_certs_3384 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_certs_3384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.DPurpose
d_DPurpose_3386 a0 a1 a2 = ()
data T_DPurpose_3386 = C_CredentialDeposit_3390
-- Ledger.Conway.Conformance.Equivalence.Deposits.GPurpose
d_GPurpose_3392 a0 a1 a2 = ()
data T_GPurpose_3392 = C_DRepDeposit_3396
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-DPurpose?
d_Dec'45'DPurpose'63'_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'DPurpose'63'_3400 ~v0 ~v1 v2
  = du_Dec'45'DPurpose'63'_3400 v2
du_Dec'45'DPurpose'63'_3400 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'DPurpose'63'_3400 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_CredentialDeposit_3390)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.Dec-GPurpose?
d_Dec'45'GPurpose'63'_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'GPurpose'63'_3404 ~v0 ~v1 v2
  = du_Dec'45'GPurpose'63'_3404 v2
du_Dec'45'GPurpose'63'_3404 ::
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'GPurpose'63'_3404 v0
  = case coe v0 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_DRepDeposit_3396)))
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDDeps
d_certDDeps_3406 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDDeps_3406 ~v0 ~v1 v2 = du_certDDeps_3406 v2
du_certDDeps_3406 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDDeps_3406 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v1 ->
         coe
           du_Dec'45'DPurpose'63'_3400
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.certGDeps
d_certGDeps_3414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certGDeps_3414 ~v0 ~v1 v2 = du_certGDeps_3414 v2
du_certGDeps_3414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certGDeps_3414 v0
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v1 ->
         coe
           du_Dec'45'GPurpose'63'_3404
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateCertDeposit
d_cong'45'updateCertDeposit_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateCertDeposit_3430 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateCertDeposit_3430 v0 v2 v3 v4 v5 v6
du_cong'45'updateCertDeposit_3430 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateCertDeposit_3430 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v6 v7 v8 v9
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3814
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_218
                      (MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                               (coe v6))
                            (coe v9)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                            (coe v6))
                         (coe v9)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4046
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3814
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_218
                      (MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                               (coe v1))))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v6 v7 v8
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3814
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_218
                      (MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                               (coe v6))
                            (coe v7)))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                            (coe v6))
                         (coe v7)))))
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_restrict'45'cong_4046
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe v3) (coe v4)
             (coe
                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                (MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                erased
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                   (coe v6)))
             (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v6 v7
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45'r_3814
             (coe
                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                (coe
                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                   (coe v0)))
             (coe
                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                (coe
                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Axiom.Set.d_listing_218
                      (MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      erased
                      (coe
                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                               (coe v6))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                               (coe v1))))))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                            (coe v6))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                            (coe v1))))))
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certDDeps
d_cong'45'certDDeps_3514 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certDDeps_3514 ~v0 ~v1 = du_cong'45'certDDeps_3514
du_cong'45'certDDeps_3514 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certDDeps_3514
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4182
      (coe du_Dec'45'DPurpose'63'_3400)
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-certGDeps
d_cong'45'certGDeps_3520 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'certGDeps_3520 ~v0 ~v1 = du_cong'45'certGDeps_3520
du_cong'45'certGDeps_3520 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'certGDeps_3520
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_cong'45'filter'7504'_4182
      (coe du_Dec'45'GPurpose'63'_3404)
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵈ
d_castValidDeps'7496'_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742
d_castValidDeps'7496'_3530 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7496'_3530 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7496'_3530 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742
du_castValidDeps'7496'_3530 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2748
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2760 v12
        -> case coe v4 of
             (:) v13 v14
               -> case coe v13 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v15 v16 v17 v18
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2760
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_210
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v19 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v19))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v20 -> v20)) (coe (\ v20 -> v20))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v15))
                                                        (coe v18)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v19))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v19)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                         (coe v15))
                                                      (coe v18))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v13) (coe v3))
                              (coe v14)
                              (coe
                                 du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v13)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2770 v9 v11 v12 v13
        -> case coe v4 of
             (:) v14 v15
               -> case coe v14 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v16 v17
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2770
                           v9
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v16))
                                 (coe v9))
                              v11)
                           v12
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                          (MAlonzo.Code.Axiom.Set.d_sp_164
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          erased erased erased
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v16)))))
                                          (\ v18 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v18)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v14) (coe v3))
                              (coe v15)
                              (coe
                                 du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v14)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v13))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2780 v11
        -> case coe v4 of
             (:) v12 v13
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2780
                    (coe
                       du_castValidDeps'7496'_3530 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v13) (coe v5) (coe v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2788 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2788
                    (coe
                       du_castValidDeps'7496'_3530 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2796 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2796
                    (coe
                       du_castValidDeps'7496'_3530 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2804 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2804
                    (coe
                       du_castValidDeps'7496'_3530 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2812 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2812
                    (coe
                       du_castValidDeps'7496'_3530 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2820 v10
        -> case coe v4 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2820
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_210
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v15 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v15))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v13))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                           (coe v1))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v15)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                         (coe v13))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                         (coe v1)))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v11) (coe v3))
                              (coe v12)
                              (coe
                                 du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v11)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.castValidDepsᵍ
d_castValidDeps'7501'_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826
d_castValidDeps'7501'_3594 v0 ~v1 v2 v3 v4 v5 v6 v7
  = du_castValidDeps'7501'_3594 v0 v2 v3 v4 v5 v6 v7
du_castValidDeps'7501'_3594 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826
du_castValidDeps'7501'_3594 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2832
        -> coe v6
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2842 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2842
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_replacement_210
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (\ v17 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v17))
                                            (coe
                                               MAlonzo.Code.Data.These.Base.du_fold_92
                                               (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                               (coe addInt)
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe v2)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                           (coe v14))
                                                        (coe v15)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe v17)))))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                         (coe v14))
                                                      (coe v15))))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2850 v10 v11
        -> case coe v4 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2850
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                    (coe v14))
                                 (coe v15))
                              v10)
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                          (MAlonzo.Code.Axiom.Set.d_sp_164
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                          erased erased erased
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased
                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                      (coe v0)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                      (coe v14)))))
                                          (\ v16 ->
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v12) (coe v3))
                              (coe v13)
                              (coe
                                 du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v12)
                                 (coe v2) (coe v3) (coe v5))
                              (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2862 v12
        -> case coe v4 of
             (:) v13 v14
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2862
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v14) (coe v5) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2870 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2870
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2878 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2878
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2886 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2886
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2894 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2894
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2902 v10
        -> case coe v4 of
             (:) v11 v12
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2902
                    (coe
                       du_castValidDeps'7501'_3594 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v12) (coe v5) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validDDeps
d_validDDeps_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742
d_validDDeps_3650 v0 ~v1 v2 v3 v4 v5
  = du_validDDeps_3650 v0 v2 v3 v4 v5
du_validDDeps_3650 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7496'_2742
du_validDDeps_3650 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2472
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2748
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2484 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2760
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v11) (coe du_certDDeps_3406 (coe v3)))
                              (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3400)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v13))
                                 (coe v3) (coe v16) (coe C_CredentialDeposit_3390))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v12)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v17 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v17))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v13))
                                                           (coe v16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v17))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v17)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2492 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2796
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certDDeps_3406 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3400)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                    (coe v1)))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2502 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2780
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe du_certDDeps_3406 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3400)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                    (coe v12))
                                 (coe v3) (coe v13))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v15 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v15))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                              (coe v12))
                                                           (coe v13)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v15))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v15)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2510 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2820
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v9) (coe du_certDDeps_3406 (coe v3)))
                              (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'DPurpose'63'_3400)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                    (coe v1))
                                 (coe C_CredentialDeposit_3390))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2520 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2770
                           v7
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4174
                              (coe du_Dec'45'DPurpose'63'_3400) v3
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                 (coe v14))
                              v7 (coe C_CredentialDeposit_3390) v9)
                           v10
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v16
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
                                                   erased v16)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v12) (coe du_certDDeps_3406 (coe v3)))
                              (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe du_Dec'45'DPurpose'63'_3400) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                       (coe v14))))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v13)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_188
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                (MAlonzo.Code.Axiom.Set.d_sp_164
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2528 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2788
                           (coe
                              du_castValidDeps'7496'_3530 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v14
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
                                                   erased v14)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'DPurpose'63'_3400
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe du_certDDeps_3406 (coe v3)) (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe du_Dec'45'DPurpose'63'_3400)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                    (coe v12))
                                 (coe v3))
                              (coe
                                 du_validDDeps_3650 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_188
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                (MAlonzo.Code.Axiom.Set.d_sp_164
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2536 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2812
                    (coe
                       du_validDDeps_3650 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2544 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2804
                    (coe
                       du_validDDeps_3650 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.validGDeps
d_validGDeps_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826
d_validGDeps_3684 v0 ~v1 v2 v3 v4 v5
  = du_validGDeps_3684 v0 v2 v3 v4 v5
du_validGDeps_3684 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_ValidCertDeposits_2466 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_ValidDeps'7501'_2826
du_validGDeps_3684 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_'91''93'_2472
        -> coe
             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_'91''93'_2832
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_delegate_2484 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v11 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v13 v14 v15 v16
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_delegate_2862
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v13))
                                                   (coe v16)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v17 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v17)))))))
                                 erased)
                              (coe du_certGDeps_3414 (coe v3)) (coe v12)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3404)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v13))
                                 (coe v3) (coe v16))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v12)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v17 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v17))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v18 -> v18)) (coe (\ v18 -> v18))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v13))
                                                           (coe v16)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v17))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v17)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                            (coe v13))
                                                         (coe v16))))))))
                                    erased)
                                 (coe v10)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regpool_2492 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regpool_2878
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3414 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3404)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                    (coe v1)))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_regdrep_2502 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v12 v13 v14
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_regdrep_2842
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                      (coe v12))
                                                   (coe v13)))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v15 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v15)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3414 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3404)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                    (coe v12))
                                 (coe v3) (coe v13) (coe C_DRepDeposit_3396))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v15 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v15))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v16 -> v16)) (coe (\ v16 -> v16))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                              (coe v12))
                                                           (coe v13)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v15))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v15)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                            (coe v12))
                                                         (coe v13))))))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_reg_2510 v8
        -> case coe v2 of
             (:) v9 v10
               -> case coe v9 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v11 v12
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_reg_2902
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             v3
                                             (coe
                                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v11))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                      (coe v1))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v13 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v13)))))))
                                 erased)
                              (coe du_certGDeps_3414 (coe v3)) (coe v10)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe
                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                    (coe
                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                 (coe du_Dec'45'GPurpose'63'_3404)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v11))
                                 (coe v3)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                    (coe v1)))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v10)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (\ v13 ->
                                             coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v13))
                                               (coe
                                                  MAlonzo.Code.Data.These.Base.du_fold_92
                                                  (coe (\ v14 -> v14)) (coe (\ v14 -> v14))
                                                  (coe addInt)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                           (coe v0)))
                                                     (coe v3)
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                              (coe v1))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v13))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v13)))))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v3))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                            (coe v11))
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                            (coe v1)))))))))
                                    erased)
                                 (coe v8)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_dereg_2520 v7 v9 v10 v11
        -> case coe v2 of
             (:) v12 v13
               -> case coe v12 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v14 v15
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_dereg_2870
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v16
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
                                                   erased v16)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                      (coe v14))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v16 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v16)))))))
                                 erased)
                              (coe du_certGDeps_3414 (coe v3)) (coe v13)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe du_Dec'45'GPurpose'63'_3404)
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                    (coe v14))
                                 (coe v3))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v13)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_188
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                (MAlonzo.Code.Axiom.Set.d_sp_164
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                         (coe v14)))))
                                             (\ v16 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v16)))))
                                    erased)
                                 (coe v11)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_deregdrep_2528 v8 v9
        -> case coe v2 of
             (:) v10 v11
               -> case coe v10 of
                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v12 v13
                      -> coe
                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_deregdrep_2850
                           (coe
                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45''8712'_4174
                              (coe du_Dec'45'GPurpose'63'_3404) v3
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                 (coe v12))
                              v13 (coe C_DRepDeposit_3396) v8)
                           (coe
                              du_castValidDeps'7501'_3594 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_specification_188
                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       erased erased
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                          (let v14
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
                                                   erased v14)
                                                (coe v3)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                      (coe v12))))))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v14 ->
                                                coe
                                                  du_Dec'45'GPurpose'63'_3404
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v14)))))))
                                 erased)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_updateCertDeposit_1532
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                    (coe v0))
                                 (coe v1) (coe v10) (coe du_certGDeps_3414 (coe v3)))
                              (coe v11)
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                 (coe
                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                       (coe v0)))
                                 (coe du_Dec'45'GPurpose'63'_3404) (coe v3)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    erased
                                    (coe
                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                       (coe v12))))
                              (coe
                                 du_validGDeps_3684 (coe v0) (coe v1) (coe v11)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_specification_188
                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          erased erased
                                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v3))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                             (MAlonzo.Code.Axiom.Set.d_sp_164
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             erased erased erased
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                (MAlonzo.Code.Axiom.Set.d_sp_164
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                   erased
                                                   (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      erased
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                         (coe v12)))))
                                             (\ v14 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v14)))))
                                    erased)
                                 (coe v9)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_ccreghot_2536 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_ccreghot_2894
                    (coe
                       du_validGDeps_3684 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.C_retirepool_2544 v8
        -> case coe v2 of
             (:) v9 v10
               -> coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.C_retirepool_2886
                    (coe
                       du_validGDeps_3684 (coe v0) (coe v1) (coe v10) (coe v3) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-ddeps
d_lem'45'upd'45'prop'45'ddeps_3716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'ddeps_3716 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'ddeps_3716 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'ddeps_3716 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'ddeps_3716 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
             (coe (\ v5 v6 -> v6))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                (coe du_certDDeps_3406 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                (coe
                   du_certDDeps_3406
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                            (coe v2))))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v7 v8 v9 v10 v11 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe du_certDDeps_3406 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe
                      du_certDDeps_3406
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe
                      du_certDDeps_3406
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                     (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                               (coe v2))))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v7 v8 v9 v10 v11 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                   (\ v7 v8 v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11) (coe v10)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certDDeps_3406
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certDDeps_3406
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certDDeps_3406
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v8 v9 -> v9))
                                 (coe (\ v8 v9 -> v9)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                         (coe
                            du_certDDeps_3406
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                                  (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'DPurpose'63'_3400)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe v2)))
                (coe
                   du_lem'45'upd'45'prop'45'ddeps_3716 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-prop-gdeps
d_lem'45'upd'45'prop'45'gdeps_3782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'prop'45'gdeps_3782 v0 ~v1 v2 v3 v4 v5
  = du_lem'45'upd'45'prop'45'gdeps_3782 v0 v2 v3 v4 v5
du_lem'45'upd'45'prop'45'gdeps_3782 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovProposal_956] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'prop'45'gdeps_3782 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
             (coe (\ v5 v6 -> v6))
      (:) v5 v6
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v7 v8 v9 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                (coe du_certGDeps_3414 (coe v4)))
             (coe
                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                (coe
                   du_certGDeps_3414
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                  (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                            (coe v2))))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v7 v8 v9 v10 v11 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                           (coe
                              (\ v12 v13 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe du_certGDeps_3414 (coe v4)))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe
                      du_certGDeps_3414
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                (coe
                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                   (coe
                      du_certGDeps_3414
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         (coe
                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                            (coe
                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                               (coe v0)))
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                     (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                               (coe v2))))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v7 v8 v9 v10 v11 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12 v13))))))
                   (\ v7 v8 v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11) (coe v10)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certGDeps_3414
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                            (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certGDeps_3414
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                      (coe
                         du_certGDeps_3414
                         (coe
                            MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                            (coe
                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                               (coe
                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                  (coe v0)))
                            (coe
                               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                               (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                        (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                  (coe v2))))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v8 v9 -> v9))
                                 (coe (\ v8 v9 -> v9)))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                         (coe
                            du_certGDeps_3414
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               (coe
                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                  (coe
                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                               (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                  (coe
                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                     (coe v0)))
                               (coe
                                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                                  (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                           (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                                     (coe v2)))))))
                   (coe
                      MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                         (coe
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                            (coe v0)))
                      (coe
                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                         (coe
                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                      (coe du_Dec'45'GPurpose'63'_3404)
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_GovActionDeposit_1070
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                            (coe MAlonzo.Code.Data.List.Base.du_length_268 v6)))
                      (coe
                         MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                         (coe v0) (coe v6) (coe v1) (coe v2) (coe v4))
                      (coe v2)))
                (coe
                   du_lem'45'upd'45'prop'45'gdeps_3782 (coe v0) (coe v1) (coe v2)
                   (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-ddeps
d_lem'45'ddeps_3846 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'ddeps_3846 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-gdeps
d_lem'45'gdeps_3924 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Certs.T_CertDeps'42'_2908 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'45'gdeps_3924 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.certDeposits
d_certDeposits_3996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposits_3996 ~v0 ~v1 v2 = du_certDeposits_3996 v2
du_certDeposits_3996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_certDeposits_3996 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_certDDeps_3406 (coe du_deps_4004 (coe v0)))
      (coe du_certGDeps_3414 (coe du_deps_4004 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.deps
d_deps_4004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deps_4004 ~v0 ~v1 v2 = du_deps_4004 v2
du_deps_4004 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LState_2722 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_deps_4004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2356
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_utxoSt_2730
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._≡ᵈ_
d__'8801''7496'__4010 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7496'__4010 = erased
-- Ledger.Conway.Conformance.Equivalence.Deposits.≡ᵈ-isEquivalence
d_'8801''7496''45'isEquivalence_4012 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7496''45'isEquivalence_4012 ~v0 ~v1
  = du_'8801''7496''45'isEquivalence_4012
du_'8801''7496''45'isEquivalence_4012 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'8801''7496''45'isEquivalence_4012
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_46
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                 (coe (\ v1 v2 -> v2)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                 (coe (\ v1 v2 -> v2)))))
      (coe
         (\ v0 v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (case coe v3 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                        _ -> MAlonzo.RTE.mazUnreachableError)
                     (case coe v4 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                          -> coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                        _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v9 v10)))
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                               v10))))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v9 v10)))
                                    (coe
                                       (\ v9 v10 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v9
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9
                                               v10))))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateDDep
d_cong'45'updateDDep_4034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDep_4034 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDep_4034 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDep_4034 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDep_4034 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v6 v7 v8 v9
        -> coe
             du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v6 v7 v8
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateDDeps
d_cong'45'updateDDeps_4092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateDDeps_4092 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateDDeps_4092 v0 v2 v3 v4 v5 v6
du_cong'45'updateDDeps_4092 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateDDeps_4092 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v7)
             (coe du_updateDDep_3294 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateDDep_3294 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateDDep_4034 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDep
d_cong'45'updateGDep_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDep_4110 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDep_4110 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDep_4110 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDep_4110 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v6 v7 v8 v9
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v6 v7 v8
        -> coe
             du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v6 v7
        -> coe
             du_cong'45'updateCertDeposit_3430 (coe v0) (coe v1) (coe v2)
             (coe v3) (coe v4) (coe v5)
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v6 v7
        -> coe v5
      MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v6 v7
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.cong-updateGDeps
d_cong'45'updateGDeps_4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'updateGDeps_4148 v0 ~v1 v2 v3 v4 v5 v6
  = du_cong'45'updateGDeps_4148 v0 v2 v3 v4 v5 v6
du_cong'45'updateGDeps_4148 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'updateGDeps_4148 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      [] -> coe v5
      (:) v6 v7
        -> coe
             du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v7)
             (coe du_updateGDep_3334 (coe v0) (coe v1) (coe v6) (coe v3))
             (coe du_updateGDep_3334 (coe v0) (coe v1) (coe v6) (coe v4))
             (coe
                du_cong'45'updateGDep_4110 (coe v0) (coe v1) (coe v6) (coe v3)
                (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-ddeps
d_lem'45'upd'45'cert'45'ddeps_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'ddeps_4190 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'ddeps_4190 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'ddeps_4190 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'ddeps_4190 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4212 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_210
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v12 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v12))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v13 -> v13)) (coe (\ v13 -> v13))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                 (\ v13 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v13)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                       (coe v6))
                                                                    (coe v9)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v12)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                               (\ v12 ->
                                                                  coe
                                                                    du_Dec'45'DPurpose'63'_3400
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v12)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                     (coe v6))
                                                                  (coe v9))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3400)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                (coe v6))
                                             (coe v2) (coe v9) (coe C_CredentialDeposit_3390)) in
                                coe
                                  (case coe v12 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                            (coe v13)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v10 v11)))
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v12
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_210
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v12 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v13 -> v13)) (coe (\ v13 -> v13))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                              (\ v13 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v13)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                    (coe v6))
                                                                 (coe v9)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                            (\ v12 ->
                                                               coe
                                                                 du_Dec'45'DPurpose'63'_3400
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v12)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe v9))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3400)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                             (coe v6))
                                          (coe v2) (coe v9) (coe C_CredentialDeposit_3390)) in
                             coe
                               (case coe v12 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                         (coe v13)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4212 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4228 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v10
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
                                                               erased v10)
                                                            (coe v2) (coe du_cs_4228 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))
                                                         v2))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                      (MAlonzo.Code.Axiom.Set.d_sp_164
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                         (MAlonzo.Code.Axiom.Set.d_sp_164
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         erased erased
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                  (coe v0)))
                                                            (coe du_cs_4228 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3400) (coe v2)
                                             (coe du_cs_4228 (coe v6))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v10
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
                                                            erased v10)
                                                         (coe v2) (coe du_cs_4228 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))
                                                      v2))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_164
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   erased erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                      (MAlonzo.Code.Axiom.Set.d_sp_164
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe du_cs_4228 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3400) (coe v2)
                                          (coe du_cs_4228 (coe v6))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4228 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4260 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3400)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                (coe v1))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3400)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                             (coe v1))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4260 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4278 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3400)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                (coe v6))
                                             (coe v2) (coe v7)) in
                                coe
                                  (case coe v11 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                            (coe v12)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v11
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3400)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                             (coe v6))
                                          (coe v2) (coe v7)) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                         (coe v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4278 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4294 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v10
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
                                                               erased v10)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe du_Dec'45'DPurpose'63'_3400)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                (coe v6))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v10
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
                                                            erased v10)
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe du_Dec'45'DPurpose'63'_3400)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                             (coe v6))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4294 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4244 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'DPurpose'63'_3400
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_210
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v10 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v11 -> v11)) (coe (\ v11 -> v11))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                 (\ v11 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v11)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                       (coe v6))
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                       (coe v1))))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v10)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                               (\ v10 ->
                                                                  coe
                                                                    du_Dec'45'DPurpose'63'_3400
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v10)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                     (coe v6))
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                     (coe v1)))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'DPurpose'63'_3400)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                (coe v1))
                                             (coe C_CredentialDeposit_3390)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateDDeps_4092 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'DPurpose'63'_3400
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_210
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v10 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v11 -> v11)) (coe (\ v11 -> v11))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                              (\ v11 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v11)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                    (coe v6))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                    (coe v1))))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v10)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                            (\ v10 ->
                                                               coe
                                                                 du_Dec'45'DPurpose'63'_3400
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v10)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                  (coe v1)))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'DPurpose'63'_3400)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                             (coe v1))
                                          (coe C_CredentialDeposit_3390)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4244 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4212 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_802 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4212 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4212 v4 v7
du_dep_4212 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4212 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4228 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
d_cs_4228 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4228 v4
du_cs_4228 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
du_cs_4228 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4244 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4244 v2 v4
du_dep_4244 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4244 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4260 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4260 v2 v4
du_dep_4260 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4260 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4278 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4278 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4278 v4 v5
du_dep_4278 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4278 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4294 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
d_cs_4294 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4294 v4
du_cs_4294 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
du_cs_4294 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-cert-gdeps
d_lem'45'upd'45'cert'45'gdeps_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'cert'45'gdeps_4310 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'cert'45'gdeps_4310 v0 v2 v3 v4
du_lem'45'upd'45'cert'45'gdeps_4310 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'cert'45'gdeps_4310 v0 v1 v2 v3
  = case coe v3 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
             (coe (\ v4 v5 -> v5))
      (:) v4 v5
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v6 v7 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4332 (coe v6) (coe v9)))
                               (coe v5))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v12
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe v9)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3404)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                (coe v6))
                                             (coe v2) (coe v9)) in
                                coe
                                  (case coe v12 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                            (coe v13)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v10 v11)))
                    (coe
                       (\ v10 v11 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v12
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                               (coe v6))
                                                            (coe v9)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v12 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3404)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                             (coe v6))
                                          (coe v2) (coe v9)) in
                             coe
                               (case coe v12 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v14)
                                         (coe v13)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v10
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4332 (coe v6) (coe v9)))
                                  (coe v5))
                               v10 v11)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4348 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v10
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
                                                               erased v10)
                                                            (coe v2)
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3404)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                (coe v6))
                                             (coe v2)) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v10
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
                                                            erased v10)
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                               (coe v6))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3404)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                             (coe v6))
                                          (coe v2)) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4348 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4380 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3404)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                (coe v1))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3404)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                             (coe v1))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4380 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v6 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4398 (coe v6) (coe v7)))
                               (coe v5))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v11
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                  (coe v6))
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v11 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_replacement_210
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (\ v11 ->
                                                      coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v11))
                                                        (coe
                                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                                           (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                                           (coe addInt)
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                    (coe v0)))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                 (\ v12 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3404
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v12)))
                                                                 v2)
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                                 (coe
                                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                    (coe
                                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                       (coe v6))
                                                                    (coe v7)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v11))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe v11)))))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                               (\ v11 ->
                                                                  coe
                                                                    du_Dec'45'GPurpose'63'_3404
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v11)))
                                                               v2))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                               (coe
                                                                  MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                     (coe v6))
                                                                  (coe v7))))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3404)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                (coe v6))
                                             (coe v2) (coe v7) (coe C_DRepDeposit_3396)) in
                                coe
                                  (case coe v11 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                            (coe v12)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v11
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                               (coe v6))
                                                            (coe v7)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_replacement_210
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (\ v11 ->
                                                   coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Data.These.Base.du_fold_92
                                                        (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                                        (coe addInt)
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                 (coe v0)))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                              (\ v12 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3404
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12)))
                                                              v2)
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                              (coe
                                                                 MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                    (coe
                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                    (coe v6))
                                                                 (coe v7)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v11)))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe
                                                      MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                      (coe
                                                         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                         (coe v0)))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                            (\ v11 ->
                                                               coe
                                                                 du_Dec'45'GPurpose'63'_3404
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v11)))
                                                            v2))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                  (coe v6))
                                                               (coe v7))))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3404)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                             (coe v6))
                                          (coe v2) (coe v7) (coe C_DRepDeposit_3396)) in
                             coe
                               (case coe v11 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                         (coe v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v9
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4398 (coe v6) (coe v7)))
                                  (coe v5))
                               v9 v10)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     erased
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0))))
                                  (coe v2) (coe du_cs_4414 (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (let v10
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
                                                               erased v10)
                                                            (coe v2) (coe du_cs_4414 (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))
                                                         v2))
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                      (MAlonzo.Code.Axiom.Set.d_sp_164
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                         (MAlonzo.Code.Axiom.Set.d_sp_164
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         erased erased
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased
                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                  (coe v0)))
                                                            (coe du_cs_4414 (coe v6))))
                                                      (\ v10 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v10)))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe du_Dec'45'GPurpose'63'_3404) (coe v2)
                                             (coe du_cs_4414 (coe v6))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (let v10
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
                                                            erased v10)
                                                         (coe v2) (coe du_cs_4414 (coe v6)))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))
                                                      v2))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_164
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   erased erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                      (MAlonzo.Code.Axiom.Set.d_sp_164
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                            (coe
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                      erased erased
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         erased
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         (coe du_cs_4414 (coe v6))))
                                                   (\ v10 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v10)))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe du_Dec'45'GPurpose'63'_3404) (coe v2)
                                          (coe du_cs_4414 (coe v6))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        erased
                                        (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                           (coe
                                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                              (coe v0))))
                                     (coe v2) (coe du_cs_4414 (coe v6)))
                                  (coe v5))
                               v8 v9)))
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v6 v7
               -> coe
                    du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1) (coe v2)
                    (coe v5)
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                     (coe
                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                  (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                     (coe
                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                        (coe v0)))
                                  v2 (coe du_dep_4364 (coe v1) (coe v6)))
                               (coe v5))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (let v10
                                      = coe
                                          du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                         (coe
                                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                            (coe
                                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                         (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                               (coe v0)))
                                                         v2
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                            (coe
                                                               MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                  (coe
                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                  (coe v6))
                                                               (coe
                                                                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                  (coe v1))))))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_specification_188
                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                      (coe v2))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v10 ->
                                                            coe
                                                              du_Dec'45'GPurpose'63'_3404
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v10)))))))
                                             erased)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                (coe
                                                   MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                   (coe v0)))
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                             (coe du_Dec'45'GPurpose'63'_3404)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                (coe v6))
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                (coe v1))) in
                                coe
                                  (case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v11)
                                     _ -> MAlonzo.RTE.mazUnreachableError))
                               v8 v9)))
                    (coe
                       (\ v8 v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (let v10
                                   = coe
                                       du_cong'45'updateGDeps_4148 (coe v0) (coe v1) (coe v5)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                      (coe
                                                         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                         (coe
                                                            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                         (coe
                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                            (coe v0)))
                                                      v2
                                                      (coe
                                                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                         (coe
                                                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                               (coe
                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                               (coe v6))
                                                            (coe
                                                               MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                               (coe v1))))))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_specification_188
                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                erased erased
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v10 ->
                                                         coe
                                                           du_Dec'45'GPurpose'63'_3404
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v10)))))))
                                          erased)
                                       (coe
                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                             (coe
                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                (coe v0)))
                                          (coe
                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                             (coe
                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                          (coe du_Dec'45'GPurpose'63'_3404)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                             (coe v6))
                                          (coe v2)
                                          (coe
                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                             (coe v1))) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                         (coe v11)
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                            v8
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                     (coe
                                        MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                        (coe
                                           MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                     (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                        (coe
                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                           (coe v0)))
                                     v2 (coe du_dep_4364 (coe v1) (coe v6)))
                                  (coe v5))
                               v8 v9)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4332 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_VDeleg_802 ->
  Maybe AgdaAny ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4332 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 v7 ~v8 = du_dep_4332 v4 v7
du_dep_4332 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4332 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4348 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
d_cs_4348 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4348 v4
du_cs_4348 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
du_cs_4348 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4364 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4364 v2 v4
du_dep_4364 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4364 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_StakePoolParams_1038 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4380 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 = du_dep_4380 v2 v4
du_dep_4380 ::
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4380 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
            (coe v1))
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
            (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.dep
d_dep_4398 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_Anchor_814 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dep_4398 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 = du_dep_4398 v4 v5
du_dep_4398 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dep_4398 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
            (coe v0))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.cs
d_cs_4414 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Integer ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
d_cs_4414 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 = du_cs_4414 v4
du_cs_4414 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DepositPurpose_1062]
du_cs_4414 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      erased
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_4432 ~v0 ~v1 ~v2 v3 = du_txCerts_4432 v3
du_txCerts_4432 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_4432 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-ddeps
d_lem'45'upd'45'ddeps_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'ddeps_4434 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'ddeps_4434 v0 v2 v3 v4
du_lem'45'upd'45'ddeps_4434 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'ddeps_4434 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            du_updateDDeps_3320 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3)))
            (coe du_certDDeps_3406 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            du_certDDeps_3406
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3))
               (coe v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_updateDDeps_3320 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe du_certDDeps_3406 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_updateDDeps_3320 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe du_certDDeps_3406 (coe du_updateProp_4528 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_certDDeps_3406
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3))
                  (coe v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_updateDDeps_3320 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3)))
                  (coe du_certDDeps_3406 (coe du_updateProp_4528 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_certDDeps_3406
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_certDDeps_3406
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                          (coe (\ v5 v6 -> v6)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                  (coe
                     du_certDDeps_3406
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'ddeps_4190 (coe v0) (coe v1)
               (coe du_updateProp_4528 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))))
         (coe
            du_cong'45'updateDDeps_4092 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_188
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'DPurpose'63'_3400
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_188
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'DPurpose'63'_3400
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'ddeps_3716 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4528 v0 ~v1 v2 ~v3 v4 = du_updateProp_4528 v0 v2 v4
du_updateProp_4528 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4528 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.txCerts
d_txCerts_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_4538 ~v0 ~v1 ~v2 v3 = du_txCerts_4538 v3
du_txCerts_4538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_4538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
         (coe v0))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lem-upd-gdeps
d_lem'45'upd'45'gdeps_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'upd'45'gdeps_4540 v0 ~v1 v2 v3 v4
  = du_lem'45'upd'45'gdeps_4540 v0 v2 v3 v4
du_lem'45'upd'45'gdeps_4540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'upd'45'gdeps_4540 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            du_updateGDeps_3354 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3)))
            (coe du_certGDeps_3414 (coe v2))))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du__'738'_554
         (coe
            du_certGDeps_3414
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
               (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3))
               (coe v2))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_updateGDeps_3354 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe du_certGDeps_3414 (coe v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_updateGDeps_3354 (coe v0) (coe v1)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe du_certGDeps_3414 (coe du_updateProp_4634 v0 v1 v3 v2))))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               du_certGDeps_3414
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                  (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3))
                  (coe v2))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_updateGDeps_3354 (coe v0) (coe v1)
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3)))
                  (coe du_certGDeps_3414 (coe du_updateProp_4634 v0 v1 v3 v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_certGDeps_3414
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  du_certGDeps_3414
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                        (coe v3))
                     (coe v2))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v4 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                          (coe (\ v5 v6 -> v6)))))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                  (coe
                     du_certGDeps_3414
                     (coe
                        MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2816
                        (coe v0) (coe v1)
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                           (coe v3))
                        (coe v2)))))
            (coe
               du_lem'45'upd'45'cert'45'gdeps_4310 (coe v0) (coe v1)
               (coe du_updateProp_4634 v0 v1 v3 v2)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))))
         (coe
            du_cong'45'updateGDeps_4148 (coe v0) (coe v1)
            (coe
               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3250
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                  (coe v3)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_188
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'GPurpose'63'_3404
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_specification_188
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                        (coe
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
                           (coe v0)
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
                              (coe
                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                                 (coe v3)))
                           (coe
                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
                              (coe v1))
                           (coe v2)))
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                        (coe
                           (\ v4 ->
                              coe
                                du_Dec'45'GPurpose'63'_3404
                                (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))))
               erased)
            (coe
               du_lem'45'upd'45'prop'45'gdeps_3782 (coe v0)
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
                  (coe v1))
               (coe
                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
                  (coe
                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
                     (coe v3)))
               (coe v2))))
-- Ledger.Conway.Conformance.Equivalence.Deposits._.updateProp
d_updateProp_4634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateProp_4634 v0 ~v1 v2 ~v3 v4 = du_updateProp_4634 v0 v2 v4
du_updateProp_4634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3382 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateProp_4634 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateProposalDeposits_2804
      (coe v0)
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovProposals_3264
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3248
         (coe
            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3394
            (coe v2)))
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.PParams.d_govActionDeposit_408
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Deposits.lemUpdCert
d_lemUpdCert_4648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2240 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemUpdCert_4648 v0 ~v1 v2 v3 v4 v5 v6
  = du_lemUpdCert_4648 v0 v2 v3 v4 v5 v6
du_lemUpdCert_4648 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemUpdCert_4648 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v4 of
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_delegate_1254 v8 v9 v10 v11
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v16
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3400)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8))
                                                 (coe v3) (coe v11)
                                                 (coe C_CredentialDeposit_3390) in
                                       coe
                                         (case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v18) (coe v17)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v14
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v16 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3400
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v16 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v16)))))))
                                                     (coe
                                                        (\ v16 v17 v18 v19 v20 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v16 v17 v18
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v17)))
                                                                (\ v21 v22 -> v21) v19 v20)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v21 v22 -> v22)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v18)))
                                                                v19 v20)))))))
                                         v14
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe v11)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v6)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v16 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3400
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v16)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v16 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v16)))))))
                                                     (coe
                                                        (\ v16 v17 v18 v19 v20 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v16 v17 v18
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v17)))
                                                                (\ v21 v22 -> v21) v19 v20)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v21 v22 -> v22)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v21 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v21)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v16) (coe v18)))
                                                                v19 v20))))))
                                            (coe v12)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v6)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_218
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                    (coe v8))
                                                                 (coe v11)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                 (coe v8))
                                                              (coe v11))))))
                                               v14 v15)))))
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                        (coe v8))
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                                      v14
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe v11)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                        (coe v8))
                                                     (coe v11)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_188
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                     (coe
                                                        (\ v16 ->
                                                           coe
                                                             du_Dec'45'DPurpose'63'_3400
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v16)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v16 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v16)))))))
                                                  (coe
                                                     (\ v16 v17 v18 v19 v20 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v16 v17 v18
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v21 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3400
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v21)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v16) (coe v17)))
                                                             (\ v21 v22 -> v21) v19 v20)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v21 v22 -> v22)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v21 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3400
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v21)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v16) (coe v18)))
                                                             v19 v20))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v16 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v16)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_188
                                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                 (coe
                                                                    (\ v16 ->
                                                                       coe
                                                                         du_Dec'45'DPurpose'63'_3400
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v16)))))))
                                                        (coe
                                                           (\ v16 v17 v18 v19 v20 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v16 v17 v18
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v21 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3400
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v21)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v16) (coe v17)))
                                                                   (\ v21 v22 -> v21) v19 v20)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v21 v22 -> v22)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v21 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3400
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v21)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v16) (coe v18)))
                                                                   v19 v20))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_218
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                 (coe v8))
                                                              (coe v11)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe v11))))))
                                            v14
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v16
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3400)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                             (coe v8))
                                                          (coe v3) (coe v11)
                                                          (coe C_CredentialDeposit_3390) in
                                                coe
                                                  (case coe v16 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v18) (coe v17)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v14 v15))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v16
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3404)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8))
                                                 (coe v3) (coe v11) in
                                       coe
                                         (case coe v16 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v18) (coe v17)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v14
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v13 v14 v15)))
                              (coe
                                 (\ v14 v15 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v13 v14
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v16
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3404)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                       (coe v8))
                                                    (coe v3) (coe v11) in
                                          coe
                                            (case coe v16 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v18) (coe v17)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v14 v15))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_dereg_1256 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3400) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                       (coe v8))) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (let v14
                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                    (coe v0)) in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certDDeps_3406 (coe v3) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v10) in
                                                coe
                                                  (let v18
                                                         = coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                (coe v6))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                   (coe v8)))
                                                             v12 v13 in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                      (coe v6))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                         (coe v8)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased
                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                            (coe v6))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                               (coe v8))))
                                                                      (coe v12) (coe v13))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3288
                                                           (coe v14) (coe v16) (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v17 v12 v18) (coe v19)))))))))))
                              (coe
                                 (\ v12 v13 ->
                                    let v14
                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                 (coe v0)) in
                                    coe
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8)) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe v10) in
                                          coe
                                            (let v17
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                          (coe du_certDDeps_3406 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'DPurpose'63'_3400)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                           (coe v8))) in
                                                           coe
                                                             (case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v19) (coe v18)
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                          v12 v13) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                (coe du_certDDeps_3406 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v12))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                      (coe
                                                                         du_certDDeps_3406
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'DPurpose'63'_3400)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                                    (coe v8))) in
                                                                    coe
                                                                      (case coe v18 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                           -> coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v20) (coe v19)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   v12 v13))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3288
                                                     (coe v14) (coe v6) (coe v15)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v16 v12 v17) (coe v18))))))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3404)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe du_Dec'45'GPurpose'63'_3404)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                       (coe v8))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regpool_1258 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3400)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                    (coe v1)) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3400)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                       (coe v8))
                                                    (coe v3)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                       (coe v1)) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3404)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                    (coe v1)) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3404)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_PoolDeposit_1066
                                                       (coe v8))
                                                    (coe v3)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_poolDeposit_366
                                                       (coe v1)) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_retirepool_1260 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_regdrep_1262 v8 v9 v10
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3400)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                    (coe v8))
                                                 (coe v3) (coe v9) in
                                       coe
                                         (case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v17) (coe v16)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v13
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v13 v14)))
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v13
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'DPurpose'63'_3400)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                       (coe v8))
                                                    (coe v3) (coe v9) in
                                          coe
                                            (case coe v15 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v17) (coe v16)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v13 v14))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3404)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                    (coe v8))
                                                 (coe v3) (coe v9) (coe C_DRepDeposit_3396) in
                                       coe
                                         (case coe v15 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v17) (coe v16)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v13
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                              (coe v8))
                                                           (coe v9)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v15 ->
                                                              coe
                                                                du_Dec'45'GPurpose'63'_3404
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v15)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v15 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3404
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v15)))))))
                                                     (coe
                                                        (\ v15 v16 v17 v18 v19 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v15 v16 v17
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3404
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v16)))
                                                                (\ v20 v21 -> v20) v18 v19)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v20 v21 -> v21)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3404
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v17)))
                                                                v18 v19)))))))
                                         v13
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                              (coe v8))
                                                           (coe v9)))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v7)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v15 ->
                                                              coe
                                                                du_Dec'45'GPurpose'63'_3404
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v15)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v15 ->
                                                                    coe
                                                                      du_Dec'45'GPurpose'63'_3404
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v15)))))))
                                                     (coe
                                                        (\ v15 v16 v17 v18 v19 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v15 v16 v17
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3404
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v16)))
                                                                (\ v20 v21 -> v20) v18 v19)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v20 v21 -> v21)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v20 ->
                                                                            coe
                                                                              du_Dec'45'GPurpose'63'_3404
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v20)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v15) (coe v17)))
                                                                v18 v19))))))
                                            (coe v12)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v7))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v7)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_218
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                    (coe v8))
                                                                 (coe v9)))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                 (coe v8))
                                                              (coe v9))))))
                                               v13 v14)))))
                              (coe
                                 (\ v13 v14 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                        (coe v8))
                                                     (coe v9)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
                                      v13
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                           (coe v8))
                                                        (coe v9)))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                        (coe v8))
                                                     (coe v9)))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_188
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                     (coe
                                                        (\ v15 ->
                                                           coe
                                                             du_Dec'45'GPurpose'63'_3404
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v15)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v15 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3404
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v15)))))))
                                                  (coe
                                                     (\ v15 v16 v17 v18 v19 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v15 v16 v17
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v20 ->
                                                                         coe
                                                                           du_Dec'45'GPurpose'63'_3404
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v20)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v15) (coe v16)))
                                                             (\ v20 v21 -> v20) v18 v19)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v20 v21 -> v21)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v20 ->
                                                                         coe
                                                                           du_Dec'45'GPurpose'63'_3404
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v20)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v15) (coe v17)))
                                                             v18 v19))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v15 ->
                                                                 coe
                                                                   du_Dec'45'GPurpose'63'_3404
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v15)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_188
                                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                 (coe
                                                                    (\ v15 ->
                                                                       coe
                                                                         du_Dec'45'GPurpose'63'_3404
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v15)))))))
                                                        (coe
                                                           (\ v15 v16 v17 v18 v19 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v15 v16 v17
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v20 ->
                                                                               coe
                                                                                 du_Dec'45'GPurpose'63'_3404
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v20)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15) (coe v16)))
                                                                   (\ v20 v21 -> v20) v18 v19)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v20 v21 -> v21)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v20 ->
                                                                               coe
                                                                                 du_Dec'45'GPurpose'63'_3404
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v20)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v15) (coe v17)))
                                                                   v18 v19))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_218
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                 (coe v8))
                                                              (coe v9)))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                              (coe v8))
                                                           (coe v9))))))
                                            v13
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v15
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'GPurpose'63'_3404)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                             (coe v8))
                                                          (coe v3) (coe v9)
                                                          (coe C_DRepDeposit_3396) in
                                                coe
                                                  (case coe v15 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v16 v17
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v17) (coe v16)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v13 v14))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_deregdrep_1264 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe du_Dec'45'DPurpose'63'_3400)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                    (coe v8))
                                                 (coe v3) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v10 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v10 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'del'45'excluded_5178
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe du_Dec'45'DPurpose'63'_3400)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                       (coe v8))
                                                    (coe v3) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe du_Dec'45'GPurpose'63'_3404) (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                       (coe v8))) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (let v14
                                             = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                    (coe v0)) in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                       (coe v8)) in
                                          coe
                                            (let v16 = coe du_certGDeps_3414 (coe v3) in
                                             coe
                                               (let v17
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v11) in
                                                coe
                                                  (let v18
                                                         = coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                (coe v7))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                   (coe v8)))
                                                             v12 v13 in
                                                   coe
                                                     (let v19
                                                            = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                      (coe v7))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                         (coe v8)))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v12))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                            erased
                                                                            (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                               (coe
                                                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                                  (coe v0))))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                            (coe v7))
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            erased
                                                                            (coe
                                                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                               (coe v8))))
                                                                      (coe v12) (coe v13))) in
                                                      coe
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3288
                                                           (coe v14) (coe v16) (coe v15)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                              (coe v12))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v17 v12 v18) (coe v19)))))))))))
                              (coe
                                 (\ v12 v13 ->
                                    let v14
                                          = MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                              (coe
                                                 MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                 (coe v0)) in
                                    coe
                                      (let v15
                                             = coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 erased
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                    (coe v8)) in
                                       coe
                                         (let v16
                                                = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe v11) in
                                          coe
                                            (let v17
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                          erased
                                                          (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                (coe v0))))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                          (coe du_certGDeps_3414 (coe v3)))
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                             (coe v8)))
                                                       v12
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (let v17
                                                                 = coe
                                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                                     (coe
                                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                           (coe v0)))
                                                                     (coe
                                                                        du_Dec'45'GPurpose'63'_3404)
                                                                     (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe
                                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                        erased
                                                                        (coe
                                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                           (coe v8))) in
                                                           coe
                                                             (case coe v17 of
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                  -> coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                       (coe v19) (coe v18)
                                                                _ -> MAlonzo.RTE.mazUnreachableError))
                                                          v12 v13) in
                                             coe
                                               (let v18
                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                erased
                                                                (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                   (coe
                                                                      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                      (coe v0))))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                (coe du_certGDeps_3414 (coe v3)))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (coe
                                                                   MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                   (coe v8)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v12))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                      erased
                                                                      (MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                         (coe
                                                                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                            (coe v0))))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                      (coe
                                                                         du_certGDeps_3414
                                                                         (coe v3)))
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      erased
                                                                      (coe
                                                                         MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                         (coe v8))))
                                                                (coe v12)
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (let v18
                                                                          = coe
                                                                              MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_filter'7504''45'restrict_4988
                                                                              (coe
                                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                                    (coe v0)))
                                                                              (coe
                                                                                 du_Dec'45'GPurpose'63'_3404)
                                                                              (coe v3)
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_DRepDeposit_1068
                                                                                    (coe v8))) in
                                                                    coe
                                                                      (case coe v18 of
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v19 v20
                                                                           -> coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                (coe v20) (coe v19)
                                                                         _ -> MAlonzo.RTE.mazUnreachableError))
                                                                   v12 v13))) in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_res'7580''45'dom'8713''8314'_3288
                                                     (coe v14) (coe v7) (coe v15)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v12))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v16 v12 v17) (coe v18))))))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_ccreghot_1266 v8 v9
               -> coe v5
             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_reg_1268 v8 v9
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'DPurpose'63'_3400)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                    (coe v1))
                                                 (coe C_CredentialDeposit_3390) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                              (coe v1))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v14 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3400
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v14)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v14 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)))))))
                                                     (coe
                                                        (\ v14 v15 v16 v17 v18 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v14 v15 v16
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v15)))
                                                                (\ v19 v20 -> v19) v17 v18)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v19 v20 -> v20)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v16)))
                                                                v17 v18)))))))
                                         v12
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                  (coe v0)))
                                            (coe
                                               MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                               (coe
                                                  MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                              (coe v1))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe v6)))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_specification_188
                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     erased erased
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                        (coe v3))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v14 ->
                                                              coe
                                                                du_Dec'45'DPurpose'63'_3400
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v14)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_specification_188
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased erased
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                              (coe v3))
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                              (coe
                                                                 (\ v14 ->
                                                                    coe
                                                                      du_Dec'45'DPurpose'63'_3400
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v14)))))))
                                                     (coe
                                                        (\ v14 v15 v16 v17 v18 ->
                                                           coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                             v3 v14 v15 v16
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v15)))
                                                                (\ v19 v20 -> v19) v17 v18)
                                                             (coe
                                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                (\ v19 v20 -> v20)
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                      (coe
                                                                         (\ v19 ->
                                                                            coe
                                                                              du_Dec'45'DPurpose'63'_3400
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v19)))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                      (coe v14) (coe v16)))
                                                                v17 v18))))))
                                            (coe v10)
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                        (coe v0)))
                                                  (coe
                                                     MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                     (coe
                                                        MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe v6)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_listing_218
                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           erased
                                                           (coe
                                                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                    (coe v8))
                                                                 (coe
                                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                    (coe v1))))))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                           (coe
                                                              MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                 (coe v1)))))))
                                               v12 v13)))))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                        (coe v1))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                                      v12
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'cong'45''8838''737'_3736
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                               (coe v0)))
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                            (coe
                                               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_listing_218
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased
                                                  (coe
                                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                           (coe v8))
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                           (coe v1))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                  (coe
                                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                        (coe v8))
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                        (coe v1))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_specification_188
                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  erased erased
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                     (coe
                                                        (\ v14 ->
                                                           coe
                                                             du_Dec'45'DPurpose'63'_3400
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v14)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v14 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v14)))))))
                                                  (coe
                                                     (\ v14 v15 v16 v17 v18 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          v3 v14 v15 v16
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3400
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v14) (coe v15)))
                                                             (\ v19 v20 -> v19) v17 v18)
                                                          (coe
                                                             MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                             (\ v19 v20 -> v20)
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                   (coe
                                                                      (\ v19 ->
                                                                         coe
                                                                           du_Dec'45'DPurpose'63'_3400
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v19)))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v3))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v14) (coe v16)))
                                                             v17 v18))))))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v12))
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v12))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_'8746''8314''45'comm_3696
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                     (coe v0)))
                                               (coe
                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                  (coe
                                                     MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased erased
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                           (coe
                                                              (\ v14 ->
                                                                 coe
                                                                   du_Dec'45'DPurpose'63'_3400
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe v14)))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_specification_188
                                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              erased erased
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                                 (coe v3))
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                 (coe
                                                                    (\ v14 ->
                                                                       coe
                                                                         du_Dec'45'DPurpose'63'_3400
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v14)))))))
                                                        (coe
                                                           (\ v14 v15 v16 v17 v18 ->
                                                              coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                v3 v14 v15 v16
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v19 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3400
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v19)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v14) (coe v15)))
                                                                   (\ v19 v20 -> v19) v17 v18)
                                                                (coe
                                                                   MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                                   (\ v19 v20 -> v20)
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                         (coe
                                                                            (\ v19 ->
                                                                               coe
                                                                                 du_Dec'45'DPurpose'63'_3400
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v19)))))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                         (coe v3))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                         (coe v14) (coe v16)))
                                                                   v17 v18))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_listing_218
                                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        erased
                                                        (coe
                                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                                 (coe v8))
                                                              (coe
                                                                 MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                                 (coe v1))))))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                     (coe
                                                        MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                        (coe
                                                           MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                              (coe v8))
                                                           (coe
                                                              MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                              (coe v1)))))))
                                            v12
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (let v14
                                                      = coe
                                                          MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'included_5168
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                             (coe
                                                                MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                                (coe v0)))
                                                          (coe
                                                             MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                             (coe
                                                                MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                          (coe du_Dec'45'DPurpose'63'_3400)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                             (coe v8))
                                                          (coe v3)
                                                          (coe
                                                             MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                             (coe v1))
                                                          (coe C_CredentialDeposit_3390) in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v16) (coe v15)
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                               v12 v13))))))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v14
                                             = coe
                                                 MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                       (coe v0)))
                                                 (coe
                                                    MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                    (coe
                                                       MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                 (coe du_Dec'45'GPurpose'63'_3404)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                    (coe v8))
                                                 (coe v3)
                                                 (coe
                                                    MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                    (coe v1)) in
                                       coe
                                         (case coe v14 of
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                              -> coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v16) (coe v15)
                                            _ -> MAlonzo.RTE.mazUnreachableError))
                                      v12
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v11 v12 v13)))
                              (coe
                                 (\ v12 v13 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v11 v12
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (let v14
                                                = coe
                                                    MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map.du_lem'45'add'45'excluded_5172
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.d_DecEq'45'DepositPurpose_1094
                                                       (coe
                                                          MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_govStructure_2494
                                                          (coe v0)))
                                                    (coe
                                                       MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_64
                                                       (coe
                                                          MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3476))
                                                    (coe du_Dec'45'GPurpose'63'_3404)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.Certs.C_CredentialDeposit_1064
                                                       (coe v8))
                                                    (coe v3)
                                                    (coe
                                                       MAlonzo.Code.Ledger.Conway.Specification.PParams.d_keyDeposit_364
                                                       (coe v1)) in
                                          coe
                                            (case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v16) (coe v15)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                         v12 v13))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
