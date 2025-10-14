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

module MAlonzo.Code.Ledger.Conway.Conformance.Ledger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Product.Nary.NonDependent
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Gov
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Utxow
import qualified MAlonzo.Code.Ledger.Conway.Specification.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Specification.Certs
import qualified MAlonzo.Code.Ledger.Conway.Specification.Enact
import qualified MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions
import qualified MAlonzo.Code.Ledger.Conway.Specification.Ledger
import qualified MAlonzo.Code.Ledger.Conway.Specification.PParams
import qualified MAlonzo.Code.Ledger.Conway.Specification.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Specification.Utxo
import qualified MAlonzo.Code.Ledger.Core.Specification.Address
import qualified MAlonzo.Code.Ledger.Core.Specification.Epoch
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base
import qualified MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Derive

-- _.Tx
d_Tx_528 a0 = ()
-- _.epoch
d_epoch_608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  AgdaAny -> AgdaAny
d_epoch_608 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Epoch.d_epoch_72
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_epochStructure_1652
         (coe v0))
-- _.Tx.body
d_body_1720 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212
d_body_1720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
      (coe v0)
-- _.Tx.isValid
d_isValid_1722 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Bool
d_isValid_1722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_isValid_3410
      (coe v0)
-- _.Tx.txAD
d_txAD_1724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Maybe AgdaAny
d_txAD_1724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txAD_3412
      (coe v0)
-- _.Tx.txsize
d_txsize_1726 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  Integer
d_txsize_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txsize_3408
      (coe v0)
-- _.Tx.wits
d_wits_1728 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxWitnesses_3370
d_wits_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_wits_3406
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,GOVS⦈_
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Gov.T_GovEnv_2748 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d__'8866'_'8640''10631'_'44'GOVS'10632'__1900 = erased
-- Ledger.Conway.Conformance.Ledger._.GovState
d_GovState_1906 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  ()
d_GovState_1906 = erased
-- Ledger.Conway.Conformance.Ledger._.HasCast-GovEnv
d_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'GovEnv_1908 ~v0 ~v1 = du_HasCast'45'GovEnv_1908
du_HasCast'45'GovEnv_1908 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'GovEnv_1908
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Gov.du_HasCast'45'GovEnv_2780
-- Ledger.Conway.Conformance.Ledger._.UTxOState
d_UTxOState_1950 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.updateDeposits
d_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateDeposits_1970 v0 ~v1 = du_updateDeposits_1970 v0
du_updateDeposits_1970 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_updateDeposits_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.du_updateDeposits_2826
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.deposits
d_deposits_1994 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1994 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_deposits_2366
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.donations
d_donations_1996 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_donations_1996 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_donations_2368
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.fees
d_fees_1998 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  Integer
d_fees_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_fees_2364 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.UTxOState.utxo
d_utxo_2000 ::
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_utxo_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Utxo.d_utxo_2362 (coe v0)
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,UTXOW⦈_
d__'8866'_'8640''10631'_'44'UTXOW'10632'__2004 a0 a1 a2 a3 a4 a5
  = ()
-- Ledger.Conway.Conformance.Ledger._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2016 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertEnv_1288 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2016 = erased
-- Ledger.Conway.Conformance.Ledger._.CertState
d_CertState_2058 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.HasCast-CertEnv
d_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'CertEnv_2132 ~v0 ~v1 = du_HasCast'45'CertEnv_2132
du_HasCast'45'CertEnv_2132 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'CertEnv_2132
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Certs.du_HasCast'45'CertEnv_1508
-- Ledger.Conway.Conformance.Ledger._.CertState.dState
d_dState_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
d_dState_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.gState
d_gState_2350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_1482
d_gState_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_1510 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.CertState.pState
d_pState_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_PState_1328
d_pState_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_1508 (coe v0)
-- Ledger.Conway.Conformance.Ledger._.HasCast-LEnv
d_HasCast'45'LEnv_2476 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LEnv_2476 ~v0 ~v1 = du_HasCast'45'LEnv_2476
du_HasCast'45'LEnv_2476 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LEnv_2476
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_HasCast'45'LEnv_2796
-- Ledger.Conway.Conformance.Ledger._.LEnv
d_LEnv_2478 a0 a1 = ()
-- Ledger.Conway.Conformance.Ledger._.allColdCreds
d_allColdCreds_2482 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
d_allColdCreds_2482 ~v0 ~v1 = du_allColdCreds_2482
du_allColdCreds_2482 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054 ->
  [MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20]
du_allColdCreds_2482
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_allColdCreds_2864
-- Ledger.Conway.Conformance.Ledger._.rmOrphanDRepVotes
d_rmOrphanDRepVotes_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rmOrphanDRepVotes_2484 v0 ~v1 = du_rmOrphanDRepVotes_2484 v0
du_rmOrphanDRepVotes_2484 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Certs.T_CertState_1352 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_rmOrphanDRepVotes_2484 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_rmOrphanDRepVotes_2846
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.txgov
d_txgov_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txgov_2486 ~v0 ~v1 = du_txgov_2486
du_txgov_2486 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TxBody_3212 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
du_txgov_2486
  = coe MAlonzo.Code.Ledger.Conway.Specification.Ledger.du_txgov_2800
-- Ledger.Conway.Conformance.Ledger._.LEnv.enactState
d_enactState_2490 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2490 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2724
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.pparams
d_pparams_2492 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2492 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.ppolicy
d_ppolicy_2494 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  Maybe AgdaAny
d_ppolicy_2494 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2720
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.slot
d_slot_2496 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  AgdaAny
d_slot_2496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe v0)
-- Ledger.Conway.Conformance.Ledger._.LEnv.treasury
d_treasury_2498 ::
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  Integer
d_treasury_2498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe v0)
-- Ledger.Conway.Conformance.Ledger.LState
d_LState_2500 a0 a1 = ()
data T_LState_2500
  = C_'10214'_'44'_'44'_'10215''737'_2514 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                                          [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
                                          MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
-- Ledger.Conway.Conformance.Ledger.LState.utxoSt
d_utxoSt_2508 ::
  T_LState_2500 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2508 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2514 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.govSt
d_govSt_2510 ::
  T_LState_2500 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2510 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2514 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.LState.certState
d_certState_2512 ::
  T_LState_2500 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2512 v0
  = case coe v0 of
      C_'10214'_'44'_'44'_'10215''737'_2514 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.HasCast-LState
d_HasCast'45'LState_2516 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
d_HasCast'45'LState_2516 ~v0 ~v1 = du_HasCast'45'LState_2516
du_HasCast'45'LState_2516 ::
  MAlonzo.Code.QstdlibZ45Zclasses.Class.HasCast.Base.T_HasCast_16
du_HasCast'45'LState_2516
  = coe
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
                                 (2500 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger.LState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122
                        (coe ("r" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                           (coe
                              (MAlonzo.RTE.QName
                                 (1950 :: Integer) (16262344046643431141 :: Integer)
                                 "Ledger.Conway.Conformance.Ledger._.UTxOState"
                                 (MAlonzo.RTE.Fixity MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
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
                                    (2500 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger.LState"
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
                                    (1906 :: Integer) (16262344046643431141 :: Integer)
                                    "Ledger.Conway.Conformance.Ledger._.GovState"
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
                                       (2500 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger.LState"
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
                                       (2058 :: Integer) (16262344046643431141 :: Integer)
                                       "Ledger.Conway.Conformance.Ledger._.CertState"
                                       (MAlonzo.RTE.Fixity
                                          MAlonzo.RTE.NonAssoc MAlonzo.RTE.Unrelated)))
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe C_'10214'_'44'_'44'_'10215''737'_2514))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGER⦈_
d__'8866'_'8640''10631'_'44'LEDGER'10632'__2534 a0 a1 a2 a3 a4 a5
  = ()
data T__'8866'_'8640''10631'_'44'LEDGER'10632'__2534
  = C_LEDGER'45'V_2630 MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 |
    C_LEDGER'45'I_2706 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2538 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2538 ~v0 ~v1 v2 = du_certState_2538 v2
du_certState_2538 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
du_certState_2538 v0
  = coe
      d_certState_2512 (coe d_'46'generalizedField'45's_8927 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2540 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2540 ~v0 ~v1 v2 = du_govSt_2540 v2
du_govSt_2540 ::
  T_GeneralizeTel_8939 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2540 v0
  = coe d_govSt_2510 (coe d_'46'generalizedField'45's_8927 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2542 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2542 ~v0 ~v1 v2 = du_utxoSt_2542 v2
du_utxoSt_2542 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
du_utxoSt_2542 v0
  = coe d_utxoSt_2508 (coe d_'46'generalizedField'45's_8927 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.txCerts
d_txCerts_2562 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
d_txCerts_2562 ~v0 ~v1 v2 = du_txCerts_2562 v2
du_txCerts_2562 ::
  T_GeneralizeTel_8939 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Certs.T_DCert_1252]
du_txCerts_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txCerts_3260
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8929 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txGovVotes
d_txGovVotes_2570 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
d_txGovVotes_2570 ~v0 ~v1 v2 = du_txGovVotes_2570 v2
du_txGovVotes_2570 ::
  T_GeneralizeTel_8939 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Gov.Actions.T_GovVote_936]
du_txGovVotes_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txGovVotes_3272
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8929 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txId
d_txId_2572 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> AgdaAny
d_txId_2572 ~v0 ~v1 v2 = du_txId_2572 v2
du_txId_2572 :: T_GeneralizeTel_8939 -> AgdaAny
du_txId_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txId_3258
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8929 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.txWithdrawals
d_txWithdrawals_2582 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txWithdrawals_2582 ~v0 ~v1 v2 = du_txWithdrawals_2582 v2
du_txWithdrawals_2582 ::
  T_GeneralizeTel_8939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_txWithdrawals_2582 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_txWithdrawals_3264
      (coe
         MAlonzo.Code.Ledger.Conway.Specification.Transaction.d_body_3404
         (coe d_'46'generalizedField'45'tx_8929 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.enactState
d_enactState_2586 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
d_enactState_2586 ~v0 ~v1 v2 = du_enactState_2586 v2
du_enactState_2586 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Enact.T_EnactState_1054
du_enactState_2586 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_enactState_2724
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2588 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2588 ~v0 ~v1 v2 = du_pparams_2588 v2
du_pparams_2588 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2588 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.ppolicy
d_ppolicy_2590 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> Maybe AgdaAny
d_ppolicy_2590 ~v0 ~v1 v2 = du_ppolicy_2590 v2
du_ppolicy_2590 :: T_GeneralizeTel_8939 -> Maybe AgdaAny
du_ppolicy_2590 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_ppolicy_2720
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2592 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> AgdaAny
d_slot_2592 ~v0 ~v1 v2 = du_slot_2592 v2
du_slot_2592 :: T_GeneralizeTel_8939 -> AgdaAny
du_slot_2592 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.dState
d_dState_2598 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
d_dState_2598 ~v0 ~v1 v2 = du_dState_2598 v2
du_dState_2598 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_1462
du_dState_2598 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
      (coe
         d_certState_2512 (coe d_'46'generalizedField'45's_8927 (coe v0)))
-- Ledger.Conway.Conformance.Ledger._.rewards
d_rewards_2608 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2608 ~v0 ~v1 v2 = du_rewards_2608 v2
du_rewards_2608 ::
  T_GeneralizeTel_8939 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_rewards_2608 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_1476
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_1506
         (coe
            d_certState_2512 (coe d_'46'generalizedField'45's_8927 (coe v0))))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2622 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2622 ~v0 ~v1 v2 = du_pparams_2622 v2
du_pparams_2622 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2626 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> AgdaAny
d_slot_2626 ~v0 ~v1 v2 = du_slot_2626 v2
du_slot_2626 :: T_GeneralizeTel_8939 -> AgdaAny
du_slot_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2628 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_8939 -> Integer
d_treasury_2628 ~v0 ~v1 v2 = du_treasury_2628 v2
du_treasury_2628 :: T_GeneralizeTel_8939 -> Integer
du_treasury_2628 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe d_'46'generalizedField'45'Γ_8931 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.certState
d_certState_2634 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_certState_2634 ~v0 ~v1 v2 = du_certState_2634 v2
du_certState_2634 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
du_certState_2634 v0
  = coe
      d_certState_2512 (coe d_'46'generalizedField'45's_14029 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.govSt
d_govSt_2636 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_govSt_2636 ~v0 ~v1 v2 = du_govSt_2636 v2
du_govSt_2636 ::
  T_GeneralizeTel_14037 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_govSt_2636 v0
  = coe d_govSt_2510 (coe d_'46'generalizedField'45's_14029 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.utxoSt
d_utxoSt_2638 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_utxoSt_2638 ~v0 ~v1 v2 = du_utxoSt_2638 v2
du_utxoSt_2638 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
du_utxoSt_2638 v0
  = coe
      d_utxoSt_2508 (coe d_'46'generalizedField'45's_14029 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.pparams
d_pparams_2698 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
d_pparams_2698 ~v0 ~v1 v2 = du_pparams_2698 v2
du_pparams_2698 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.PParams.T_PParams_272
du_pparams_2698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_pparams_2722
      (coe d_'46'generalizedField'45'Γ_14033 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.slot
d_slot_2702 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 -> AgdaAny
d_slot_2702 ~v0 ~v1 v2 = du_slot_2702 v2
du_slot_2702 :: T_GeneralizeTel_14037 -> AgdaAny
du_slot_2702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_slot_2718
      (coe d_'46'generalizedField'45'Γ_14033 (coe v0))
-- Ledger.Conway.Conformance.Ledger._.treasury
d_treasury_2704 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  T_GeneralizeTel_14037 -> Integer
d_treasury_2704 ~v0 ~v1 v2 = du_treasury_2704 v2
du_treasury_2704 :: T_GeneralizeTel_14037 -> Integer
du_treasury_2704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Specification.Ledger.d_treasury_2726
      (coe d_'46'generalizedField'45'Γ_14033 (coe v0))
-- Ledger.Conway.Conformance.Ledger._⊢_⇀⦇_,LEDGERS⦈_
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2724 ::
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_TransactionStructure_24 ->
  MAlonzo.Code.Ledger.Conway.Specification.Abstract.T_AbstractFunctions_2250 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706 ->
  T_LState_2500 ->
  [MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392] ->
  T_LState_2500 -> ()
d__'8866'_'8640''10631'_'44'LEDGERS'10632'__2724 = erased
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_8927 ::
  T_GeneralizeTel_8939 -> T_LState_2500
d_'46'generalizedField'45's_8927 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_8929 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
d_'46'generalizedField'45'tx_8929 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_8931 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
d_'46'generalizedField'45'Γ_8931 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_8933 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt''_8933 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-certState'
d_'46'generalizedField'45'certState''_8935 ::
  T_GeneralizeTel_8939 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
d_'46'generalizedField'45'certState''_8935 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-govSt'
d_'46'generalizedField'45'govSt''_8937 ::
  T_GeneralizeTel_8939 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'46'generalizedField'45'govSt''_8937 v0
  = case coe v0 of
      C_mkGeneralizeTel_8941 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_8939 a0 a1 = ()
data T_GeneralizeTel_8939
  = C_mkGeneralizeTel_8941 T_LState_2500
                           MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
                           MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
                           MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
                           MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_1498
                           [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Ledger.Conway.Conformance.Ledger..generalizedField-s
d_'46'generalizedField'45's_14029 ::
  T_GeneralizeTel_14037 -> T_LState_2500
d_'46'generalizedField'45's_14029 v0
  = case coe v0 of
      C_mkGeneralizeTel_14039 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-tx
d_'46'generalizedField'45'tx_14031 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
d_'46'generalizedField'45'tx_14031 v0
  = case coe v0 of
      C_mkGeneralizeTel_14039 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-Γ
d_'46'generalizedField'45'Γ_14033 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
d_'46'generalizedField'45'Γ_14033 v0
  = case coe v0 of
      C_mkGeneralizeTel_14039 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger..generalizedField-utxoSt'
d_'46'generalizedField'45'utxoSt''_14035 ::
  T_GeneralizeTel_14037 ->
  MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
d_'46'generalizedField'45'utxoSt''_14035 v0
  = case coe v0 of
      C_mkGeneralizeTel_14039 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Ledger.GeneralizeTel
d_GeneralizeTel_14037 a0 a1 = ()
data T_GeneralizeTel_14037
  = C_mkGeneralizeTel_14039 T_LState_2500
                            MAlonzo.Code.Ledger.Conway.Specification.Transaction.T_Tx_3392
                            MAlonzo.Code.Ledger.Conway.Specification.Ledger.T_LEnv_2706
                            MAlonzo.Code.Ledger.Conway.Specification.Utxo.T_UTxOState_2352
