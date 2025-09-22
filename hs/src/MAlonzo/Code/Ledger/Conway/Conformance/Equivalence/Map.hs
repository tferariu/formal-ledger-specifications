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

module MAlonzo.Code.Ledger.Conway.Conformance.Equivalence.Map where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Semigroup.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

-- Ledger.Conway.Conformance.Equivalence.Map._._≡_⨿_
d__'8801'_'10815'__12 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__12 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_14 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_14 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_16 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_16 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.Set-BddSemilattice
d_Set'45'BddSemilattice_18 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104
d_Set'45'BddSemilattice_18 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_20 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_118
d_Set'45'BoundedJoinSemilattice_20 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_22 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_22 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_766
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.card-singleton
d_card'45'singleton_24 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45'singleton_24 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.card-≡ᵉ
d_card'45''8801''7497'_26 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_26 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_28 ::
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong_28 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_cong'45''8838''8658'cong_28 v3 v4 v5 v6
du_cong'45''8838''8658'cong_28 ::
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong_28 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 v1 v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v0 v2 v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Ledger.Conway.Conformance.Equivalence.Map._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_30 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong'8322'_30 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                    v9 v10
  = du_cong'45''8838''8658'cong'8322'_30 v4 v5 v6 v7 v8 v9 v10
du_cong'45''8838''8658'cong'8322'_30 ::
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong'8322'_30 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         v0 v1 v2 v3 v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         v0 v2 v1 v4 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- Ledger.Conway.Conformance.Equivalence.Map._.disjoint-subst
d_disjoint'45'subst_32 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'subst_32 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.disjoint-sym
d_disjoint'45'sym_34 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'sym_34 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-cong
d_filter'45'cong_36 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'cong_36 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'cong_610
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-finite
d_filter'45'finite_38 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_38 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_686
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-hom-∪
d_filter'45'hom'45''8746'_40 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_40 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_654
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-hom-⊆
d_filter'45'hom'45''8838'_42 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8838'_42 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-hom-⊇
d_filter'45'hom'45''8839'_44 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8839'_44 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_644
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-pres-⊆
d_filter'45'pres'45''8838'_46 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'pres'45''8838'_46 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-split-∪
d_filter'45'split'45''8746'_48 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_48 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_618
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-∅
d_filter'45''8709'_50 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_50 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_572
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.filter-⊆
d_filter'45''8838'_52 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_52 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_54 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_54 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_828
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.map-∅
d_map'45''8709'_56 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_56 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_444
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v3
-- Ledger.Conway.Conformance.Equivalence.Map._.map-∘
d_map'45''8728'_58 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_58 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.map-∘⊆
d_map'45''8728''8838'_60 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_60 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.map-∪
d_map'45''8746'_62 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_62 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.map-≡ᵉ
d_map'45''8801''7497'_64 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_64 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.map-⊆
d_map'45''8838'_66 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838'_66 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_390
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.map-⊆∘
d_map'45''8838''8728'_68 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_68 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.mapPartial-∅
d_mapPartial'45''8709'_70 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_70 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2
-- Ledger.Conway.Conformance.Equivalence.Map._.singleton-finite
d_singleton'45'finite_72 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_72 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1
-- Ledger.Conway.Conformance.Equivalence.Map._.singleton-strongly-finite
d_singleton'45'strongly'45'finite_74 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'strongly'45'finite_74 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'strongly'45'finite_496
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1
-- Ledger.Conway.Conformance.Equivalence.Map._.singleton-≢-∅
d_singleton'45''8802''45''8709'_76 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_76 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.sublist-⇔
d_sublist'45''8660'_78 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_sublist'45''8660'_78 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_1036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_80 ::
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8707''45'sublist'45''8660'_80 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1070
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1
-- Ledger.Conway.Conformance.Equivalence.Map._.∅-finite
d_'8709''45'finite_82 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_82 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- Ledger.Conway.Conformance.Equivalence.Map._.∅-least
d_'8709''45'least_84 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_84 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∅-minimum
d_'8709''45'minimum_86 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_86 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428
-- Ledger.Conway.Conformance.Equivalence.Map._.∅-weakly-finite
d_'8709''45'weakly'45'finite_88 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_88 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_436
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-filter⁺'
d_'8712''45'filter'8314'''_90 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_90 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-filter⁻'
d_'8712''45'filter'8315'''_92 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_92 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-fromList⁺
d_'8712''45'fromList'8314'_94 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_94 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-fromList⁻
d_'8712''45'fromList'8315'_96 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_96 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-map⁺'
d_'8712''45'map'8314'''_98 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_98 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-map⁺''
d_'8712''45'map'8314'''''_100 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_100 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_102 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_102 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-map⁻'
d_'8712''45'map'8315'''_104 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_104 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-×
d_'8712''45''215'_106 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_106 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-∪⁺
d_'8712''45''8746''8314'_108 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.∈-∪⁻
d_'8712''45''8746''8315'_110 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_110 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.∉-∅
d_'8713''45''8709'_112 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_112 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-Supremum
d_'8746''45'Supremum_114 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_114 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-assoc
d_'8746''45'assoc_116 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_116 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_820
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-comm
d_'8746''45'comm_118 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_118 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-cong
d_'8746''45'cong_120 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_120 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-cong-⊆
d_'8746''45'cong'45''8838'_122 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45'cong'45''8838'_122 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_124 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_124 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_860
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-identityʳ
d_'8746''45'identity'691'_126 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_126 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_806
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-identityˡ
d_'8746''45'identity'737'_128 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_128 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_802
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-preserves-finite
d_'8746''45'preserves'45'finite_130 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_130 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_744
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-sym
d_'8746''45'sym_132 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_132 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-⊆
d_'8746''45''8838'_134 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838'_134 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_710
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-⊆ʳ
d_'8746''45''8838''691'_136 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_136 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.∪-⊆ˡ
d_'8746''45''8838''737'_138 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_138 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_140 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''7497''45'Setoid_140 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- Ledger.Conway.Conformance.Equivalence.Map._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_142 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7497''45'isEquivalence_142 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- Ledger.Conway.Conformance.Equivalence.Map._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_144 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''7497''8660''8801''7497'''_144 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- Ledger.Conway.Conformance.Equivalence.Map._.⊆-PartialOrder
d_'8838''45'PartialOrder_146 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8838''45'PartialOrder_146 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- Ledger.Conway.Conformance.Equivalence.Map._.⊆-Preorder
d_'8838''45'Preorder_148 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'Preorder_148 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- Ledger.Conway.Conformance.Equivalence.Map._.⊆-Transitive
d_'8838''45'Transitive_150 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'Transitive_150 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'Transitive_150 v4 v5 v6 v7
du_'8838''45'Transitive_150 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'Transitive_150 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Ledger.Conway.Conformance.Equivalence.Map._.⊆-isPreorder
d_'8838''45'isPreorder_152 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_152 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- Ledger.Conway.Conformance.Equivalence.Map._.⊆→∪
d_'8838''8594''8746'_154 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_154 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_158 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_158 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_1008
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_160 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_160 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_162 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_162 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_952
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_164 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_166 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_166 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_1000
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_168 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_1006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-cong
d_'8745''45'cong_170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_170 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_994
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_172 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'cong'45''8838'_172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_986
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_174 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_174 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-sym
d_'8745''45'sym_176 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_176 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_178 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_178 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_180 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838'_180 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_182 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_182 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_184 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_184 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid._≈_
d__'8776'__190 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8776'__190 = erased
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid._≉_
d__'8777'__192 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8777'__192 = erased
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.Carrier
d_Carrier_194 :: () -> ()
d_Carrier_194 = erased
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.isEquivalence
d_isEquivalence_196 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_196 ~v0 = du_isEquivalence_196
du_isEquivalence_196 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_196
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.isPartialEquivalence
d_isPartialEquivalence_198 ::
  () ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_198 ~v0 = du_isPartialEquivalence_198
du_isPartialEquivalence_198 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_198
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.partialSetoid
d_partialSetoid_200 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_200 ~v0 = du_partialSetoid_200
du_partialSetoid_200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_200
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_72
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296)
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.rawSetoid
d_rawSetoid_202 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_202 = erased
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.refl
d_refl_204 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_204 ~v0 ~v1 = du_refl_204
du_refl_204 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_204
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.reflexive
d_reflexive_206 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_206 ~v0 = du_reflexive_206
du_reflexive_206 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_206
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
           v1)
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.sym
d_sym_208 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_208 ~v0 = du_sym_208
du_sym_208 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_208
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Map.SetSetoid.trans
d_trans_210 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_210 ~v0 = du_trans_210
du_trans_210 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_210
  = let v0
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Ledger.Conway.Conformance.Equivalence.Map._._.IsCommutativeSemigroup
d_IsCommutativeSemigroup_264 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Equivalence.Map._._.IsCommutativeSemigroup.comm
d_comm_868 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_comm_868 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_878 ::
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_488
d_isSemigroup_878 v0
  = coe MAlonzo.Code.Algebra.Structures.d_isSemigroup_576 (coe v0)
-- Ledger.Conway.Conformance.Equivalence.Map._._.◇comm
d_'9671'comm_2870 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'9671'comm_2870 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.dom∪-∃∪⁺
d_dom'8746''45''8707''8746''8314'_2878 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''45''8707''8746''8314'_2878 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
                                       v8 v9
  = du_dom'8746''45''8707''8746''8314'_2878 v2 v4 v6 v7 v8 v9
du_dom'8746''45''8707''8746''8314'_2878 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''45''8707''8746''8314'_2878 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v3 v4))
         (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_574
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v1) (coe v0) (coe v3) (coe v4) (coe v2) (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-dom∪
d_'8746''8314''45'dom'8746'_2890 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'dom'8746'_2890 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
                                 v10
  = du_'8746''8314''45'dom'8746'_2890 v2 v4 v6 v7 v8 v9 v10
du_'8746''8314''45'dom'8746'_2890 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'dom'8746'_2890 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v2 v3))
            (coe v4))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
-- Ledger.Conway.Conformance.Equivalence.Map._._.∥_∪⁺_∥
d_'8741'_'8746''8314'_'8741'_2900 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8741'_'8746''8314'_'8741'_2900 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8741'_'8746''8314'_'8741'_2900 v2 v4 v6 v7 v8 v9
du_'8741'_'8746''8314'_'8741'_2900 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8741'_'8746''8314'_'8741'_2900 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v6 -> v6))
      (coe (\ v6 -> v6))
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v0) (coe v3) (coe v4) (coe v2) (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._.F[_,_]
d_F'91'_'44'_'93'_2916 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_F'91'_'44'_'93'_2916 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_F'91'_'44'_'93'_2916 v2 v4 v6 v7 v8
du_F'91'_'44'_'93'_2916 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_F'91'_'44'_'93'_2916 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
             (coe
                du_'8741'_'8746''8314'_'8741'_2900 (coe v0) (coe v1) (coe v5)
                (coe v2) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Map._._.lookupᵐ∈
d_lookup'7504''8712'_2928 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504''8712'_2928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_lookup'7504''8712'_2928 v6 v7 v8
du_lookup'7504''8712'_2928 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504''8712'_2928 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_502
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v1)
            (coe v0))
         v2)
-- Ledger.Conway.Conformance.Equivalence.Map._._.∈-lookupᵐ∈
d_'8712''45'lookup'7504''8712'_2934 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'lookup'7504''8712'_2934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                    v8
  = du_'8712''45'lookup'7504''8712'_2934 v6 v7 v8
du_'8712''45'lookup'7504''8712'_2934 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'lookup'7504''8712'_2934 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.d_toSet_502
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v1)
            (coe v0))
         v2)
-- Ledger.Conway.Conformance.Equivalence.Map._._.lookupᵐ∈-irrelevance
d_lookup'7504''8712''45'irrelevance_2946 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''45'irrelevance_2946 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∈-lookupᵐ≡
d_'8712''45'lookup'7504''8801'_2958 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup'7504''8801'_2958 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.lookupᵐ∈≡
d_lookup'7504''8712''8801'_2970 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'7504''8712''8801'_2970 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∈-incl-set
d_'8712''45'incl'45'set_2984 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'incl'45'set_2984 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8
  = du_'8712''45'incl'45'set_2984 v2 v6 v7
du_'8712''45'incl'45'set_2984 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'incl'45'set_2984 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Product.Base.du_map'8322'_150
      (\ v3 v4 ->
         coe
           MAlonzo.Code.Function.Bundles.d_to_1868
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_588
              (coe
                 MAlonzo.Code.Axiom.Set.d_th_1480
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
              (coe v1)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
              (coe
                 MAlonzo.Code.Axiom.Set.du_incl'45'set''_1694
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                 (coe v0) (coe v1)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))
      (coe du_lem_2998 (coe v0) (coe v1) (coe v2))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lem
d_lem_2998 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem_2998 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 ~v8 = du_lem_2998 v2 v6 v7
du_lem_2998 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem_2998 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v2 v1 in
    coe
      (case coe v3 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v4 v5
           -> if coe v4
                then case coe v5 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v6
                         -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) erased
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._.k×∥∪⁺∥∈∪⁺'
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 ~v0 ~v1
                                                          v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018
      v2 v4 v6 v7 v8
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 v0 v1 v2
                                                           v3 v4
  = coe du_goal_3036 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.kk∈
d_kk'8712'_3034 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kk'8712'_3034 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 ~v9
  = du_kk'8712'_3034 v2 v6 v7 v8
du_kk'8712'_3034 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kk'8712'_3034 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'8712''45'incl'45'set_2984 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_unions_198
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased
               (coe
                  MAlonzo.Code.Axiom.Set.du_fromList_430
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_562
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
                     (coe
                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)))))))
         (coe v1))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.goal
d_goal_3036 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_goal_3036 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9
  = du_goal_3036 v2 v4 v6 v7 v8
du_goal_3036 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_goal_3036 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_408
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v0)
            (let v5
                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
             coe
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v5))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v4)))))
         (coe du_F'91'_'44'_'93'_2916 (coe v0) (coe v1) (coe v3) (coe v4))
         (coe
            du_F'91'_'44'_'93'_2916 (coe v0) (coe v1) (coe v3) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_'8712''45'incl'45'set_2984 (coe v0)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           MAlonzo.Code.Axiom.Set.d_unions_198
                           (MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           erased
                           (coe
                              MAlonzo.Code.Axiom.Set.du_fromList_430
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_562
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3))
                                 (coe
                                    MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                    (coe
                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe v4)))))))
                     (coe v2))))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'8712''45'incl'45'set_2984 (coe v0)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_unions_198
                        (MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_430
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_562
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                    (coe v4)))))))
                  (coe v2))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
            (coe du_kk'8712'_3034 (coe v0) (coe v2) (coe v3) (coe v4))))
-- Ledger.Conway.Conformance.Equivalence.Map._._.fold-irrelevance
d_fold'45'irrelevance_3046 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45'irrelevance_3046 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-unique-val
d_'8746''8314''45'unique'45'val_3146 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'unique'45'val_3146 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∥∪⁺∥≡lu◇lu
d_'8741''8746''8314''8741''8801'lu'9671'lu_3170 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8741''8746''8314''8741''8801'lu'9671'lu_3170 ~v0 ~v1 v2 ~v3 ~v4
                                                ~v5 v6 v7 v8 v9 ~v10 ~v11
  = du_'8741''8746''8314''8741''8801'lu'9671'lu_3170 v2 v6 v7 v8 v9
du_'8741''8746''8314''8741''8801'lu'9671'lu_3170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8741''8746''8314''8741''8801'lu'9671'lu_3170 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v1
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_562
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2)) in
    coe
      (let v6
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v1
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)) in
       coe
         (let v7
                = case coe v6 of
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                      -> coe
                           seq (coe v7)
                           (coe
                              seq (coe v8) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
                    _ -> MAlonzo.RTE.mazUnreachableError in
          coe
            (case coe v5 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                 -> let v10
                          = case coe v6 of
                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Bool.C_false_8
                                       -> case coe v11 of
                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                              -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                            _ -> coe v7
                                     _ -> coe v7
                              _ -> MAlonzo.RTE.mazUnreachableError in
                    coe
                      (if coe v8
                         then case coe v6 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                                  -> if coe v11
                                       then case coe v9 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                                                -> case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v4) erased
                                                     _ -> coe v10
                                              _ -> coe v10
                                       else (case coe v12 of
                                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                                 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                               _ -> coe v10)
                                _ -> MAlonzo.RTE.mazUnreachableError
                         else (case coe v9 of
                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26
                                   -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
                                 _ -> coe v10))
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.goal
d_goal_3236 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_goal_3236 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∥∪⁺∥≡lu◇lu'
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3252 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8741''8746''8314''8741''8801'lu'9671'lu''_3252 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.resᶜ-dom∉⁻
d_res'7580''45'dom'8713''8315'_3274 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7580''45'dom'8713''8315'_3274 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8315'_3274 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8315'_3274 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7580''45'dom'8713''8315'_3274 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
         (MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) v2
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
         v5)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               erased v0)
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) (coe v2)
            (coe v3)
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
                     erased v0)
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
               (coe v5))))
-- Ledger.Conway.Conformance.Equivalence.Map._._.resᶜ-dom∉⁺
d_res'7580''45'dom'8713''8314'_3288 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'7580''45'dom'8713''8314'_3288 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
                                    v9 v10
  = du_res'7580''45'dom'8713''8314'_3288 v2 v6 v7 v8 v9 v10
du_res'7580''45'dom'8713''8314'_3288 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'7580''45'dom'8713''8314'_3288 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_502
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v1)
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
                  erased v0 v2))
            (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._.deconstruct-∪⁺
d_deconstruct'45''8746''8314'_3304 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_deconstruct'45''8746''8314'_3304 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.fold-◇-union-comm
d_fold'45''9671''45'union'45'comm_3482 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_fold'45''9671''45'union'45'comm_3482 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-comm-⊆
d_'8746''8314''45'comm'45''8838'_3580 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'comm'45''8838'_3580 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
                                      v8 v9 v10
  = du_'8746''8314''45'comm'45''8838'_3580 v2 v4 v6 v7 v8 v9 v10
du_'8746''8314''45'comm'45''8838'_3580 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'comm'45''8838'_3580 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v4
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_562
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2)) in
    coe
      (let v8
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v4
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)) in
       coe
         (case coe v7 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v9 v10
              -> if coe v9
                   then coe
                          seq (coe v10)
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_1868
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_408
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_unions_198
                                         (MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased
                                         (let v11
                                                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                          coe
                                            (coe
                                               MAlonzo.Code.Axiom.Set.du_fromList_430
                                               (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v11))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_562
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                     (coe v3))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_562
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                (coe
                                   (\ v11 ->
                                      coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11))
                                        (coe
                                           MAlonzo.Code.Data.These.Base.du_fold_92
                                           (coe (\ v12 -> v12)) (coe (\ v12 -> v12))
                                           (coe
                                              MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                              (coe
                                                 MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                 (coe v1)))
                                           (let v12
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (let v13
                                                     = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v11) in
                                               coe
                                                 (let v14
                                                        = coe
                                                            MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                            erased v0
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v11))
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe
                                                                  MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                     (coe
                                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                  erased erased
                                                                  (\ v14 ->
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe v14))
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v3)))) in
                                                  coe
                                                    (let v15
                                                           = coe
                                                               MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                               erased v0
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11))
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe
                                                                     MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                        (coe
                                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                     erased erased
                                                                     (\ v15 ->
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v15))
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v2)))) in
                                                     coe
                                                       (let v16
                                                              = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                  (coe v11) in
                                                        coe
                                                          (case coe v14 of
                                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                               -> if coe v17
                                                                    then case coe v18 of
                                                                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                             -> case coe v15 of
                                                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                                    -> if coe v20
                                                                                         then case coe
                                                                                                     v21 of
                                                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                                  -> coe
                                                                                                       MAlonzo.Code.Data.These.Base.C_these_52
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                             (coe
                                                                                                                v12))
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v13)
                                                                                                          (coe
                                                                                                             v19))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                             (coe
                                                                                                                v12))
                                                                                                          (coe
                                                                                                             v2)
                                                                                                          (coe
                                                                                                             v13)
                                                                                                          (coe
                                                                                                             v22))
                                                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                                                         else coe
                                                                                                seq
                                                                                                (coe
                                                                                                   v21)
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.These.Base.C_this_48
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                         (coe
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         v3)
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v19)))
                                                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                                                           _ -> MAlonzo.RTE.mazUnreachableError
                                                                    else coe
                                                                           seq (coe v18)
                                                                           (case coe v15 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                                -> if coe v19
                                                                                     then case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                              -> coe
                                                                                                   MAlonzo.Code.Data.These.Base.C_that_50
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                         (coe
                                                                                                            v12))
                                                                                                      (coe
                                                                                                         v2)
                                                                                                      (coe
                                                                                                         v13)
                                                                                                      (coe
                                                                                                         v21))
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v20)
                                                                                            (coe
                                                                                               MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                               (coe
                                                                                                  (\ v21 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                       erased))
                                                                                               (coe
                                                                                                  (\ v21 ->
                                                                                                     coe
                                                                                                       MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                       erased))
                                                                                               (coe
                                                                                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                                  (coe
                                                                                                     MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                        (coe
                                                                                                           v12))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 v12))
                                                                                                           erased
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v3))))
                                                                                                     (coe
                                                                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                        (coe
                                                                                                           MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                           (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                              (coe
                                                                                                                 v12))
                                                                                                           erased
                                                                                                           erased
                                                                                                           (\ v21 ->
                                                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                (coe
                                                                                                                   v21))
                                                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                              (coe
                                                                                                                 v2))))
                                                                                                     (coe
                                                                                                        v13))
                                                                                                  v16))
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)
                                                             _ -> MAlonzo.RTE.mazUnreachableError)))))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5)))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         du_'8712''45'incl'45'set_2984 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_198
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (let v11
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_fromList_430
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480 (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_562
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_562
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                         (coe v4))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_2984 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_198
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (let v11
                                                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                coe
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_fromList_430
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480 (coe v11))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_562
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                           (coe v3))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_dom_562
                                                              (coe
                                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                                 (coe
                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                              (coe
                                                                 MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                              (coe v2))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                         (coe v4))))))
                   else coe
                          seq (coe v10)
                          (case coe v8 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                               -> if coe v11
                                    then coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Function.Bundles.d_to_1868
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_408
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                    (coe v0)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_unions_198
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased
                                                          (let v13
                                                                 = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                           coe
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe v13))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                   (coe
                                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                      (coe v3))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                      (coe
                                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                                         (coe
                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe
                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                         (coe v2))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))))
                                                 (coe
                                                    (\ v13 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v13))
                                                         (coe
                                                            MAlonzo.Code.Data.These.Base.du_fold_92
                                                            (coe (\ v14 -> v14))
                                                            (coe (\ v14 -> v14))
                                                            (coe
                                                               MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                               (coe
                                                                  MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                                  (coe v1)))
                                                            (let v14
                                                                   = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                             coe
                                                               (let v15
                                                                      = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                          (coe v13) in
                                                                coe
                                                                  (let v16
                                                                         = coe
                                                                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                             erased v0
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe v13))
                                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   erased erased
                                                                                   (\ v16 ->
                                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                        (coe v16))
                                                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                      (coe v3)))) in
                                                                   coe
                                                                     (let v17
                                                                            = coe
                                                                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                                                erased v0
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe v13))
                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                         (coe
                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                      erased erased
                                                                                      (\ v17 ->
                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                           (coe
                                                                                              v17))
                                                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                         (coe
                                                                                            v2)))) in
                                                                      coe
                                                                        (let v18
                                                                               = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                   (coe v13) in
                                                                         coe
                                                                           (case coe v16 of
                                                                              MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                                -> if coe v19
                                                                                     then case coe
                                                                                                 v20 of
                                                                                            MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                              -> case coe
                                                                                                        v17 of
                                                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v22 v23
                                                                                                     -> if coe
                                                                                                             v22
                                                                                                          then case coe
                                                                                                                      v23 of
                                                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v24
                                                                                                                   -> coe
                                                                                                                        MAlonzo.Code.Data.These.Base.C_these_52
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                              (coe
                                                                                                                                 v14))
                                                                                                                           (coe
                                                                                                                              v3)
                                                                                                                           (coe
                                                                                                                              v15)
                                                                                                                           (coe
                                                                                                                              v21))
                                                                                                                        (coe
                                                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                                           (coe
                                                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                              (coe
                                                                                                                                 v14))
                                                                                                                           (coe
                                                                                                                              v2)
                                                                                                                           (coe
                                                                                                                              v15)
                                                                                                                           (coe
                                                                                                                              v24))
                                                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                          else coe
                                                                                                                 seq
                                                                                                                 (coe
                                                                                                                    v23)
                                                                                                                 (coe
                                                                                                                    MAlonzo.Code.Data.These.Base.C_this_48
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                          (coe
                                                                                                                             v14))
                                                                                                                       (coe
                                                                                                                          v3)
                                                                                                                       (coe
                                                                                                                          v15)
                                                                                                                       (coe
                                                                                                                          v21)))
                                                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                                                     else coe
                                                                                            seq
                                                                                            (coe
                                                                                               v20)
                                                                                            (case coe
                                                                                                    v17 of
                                                                                               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v21 v22
                                                                                                 -> if coe
                                                                                                         v21
                                                                                                      then case coe
                                                                                                                  v22 of
                                                                                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v23
                                                                                                               -> coe
                                                                                                                    MAlonzo.Code.Data.These.Base.C_that_50
                                                                                                                    (coe
                                                                                                                       MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                                                       (coe
                                                                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                          (coe
                                                                                                                             v14))
                                                                                                                       (coe
                                                                                                                          v2)
                                                                                                                       (coe
                                                                                                                          v15)
                                                                                                                       (coe
                                                                                                                          v23))
                                                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                                                      else coe
                                                                                                             seq
                                                                                                             (coe
                                                                                                                v22)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                                                (coe
                                                                                                                   (\ v23 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                        erased))
                                                                                                                (coe
                                                                                                                   (\ v23 ->
                                                                                                                      coe
                                                                                                                        MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                                                        erased))
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                         (coe
                                                                                                                            v14))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                               (coe
                                                                                                                                  v14))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v23 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v3))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                                            (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                                               (coe
                                                                                                                                  v14))
                                                                                                                            erased
                                                                                                                            erased
                                                                                                                            (\ v23 ->
                                                                                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                                 (coe
                                                                                                                                    v23))
                                                                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                                               (coe
                                                                                                                                  v2))))
                                                                                                                      (coe
                                                                                                                         v15))
                                                                                                                   v18))
                                                                                               _ -> MAlonzo.RTE.mazUnreachableError)
                                                                              _ -> MAlonzo.RTE.mazUnreachableError)))))))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v4) (coe v5)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v4)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          du_'8712''45'incl'45'set_2984 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_unions_198
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (let v13
                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe v13))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_562
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                          (coe v4))))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    erased
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          du_'8712''45'incl'45'set_2984 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.d_unions_198
                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                erased
                                                                (let v13
                                                                       = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                                 coe
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                         (coe v13))
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                         (coe
                                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                                            (coe
                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                               (coe
                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                            (coe v3))
                                                                         (coe
                                                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                            (coe
                                                                               MAlonzo.Code.Class.IsSet.du_dom_562
                                                                               (coe
                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                  (coe
                                                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                               (coe
                                                                                  MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                               (coe v2))
                                                                            (coe
                                                                               MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
                                                          (coe v4))))))
                                    else coe
                                           seq (coe v12)
                                           (let v13
                                                  = let v13
                                                          = coe
                                                              MAlonzo.Code.Function.Bundles.d_from_1870
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.d_unions_198
                                                                    (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe
                                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                    erased
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                       (coe
                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_dom_562
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                (coe v3))))))
                                                                 v4)
                                                              (coe
                                                                 du_'8746''8314''45'dom'8746'_2890
                                                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                                                 (coe v4) (coe v5) (coe v6)) in
                                                    coe
                                                      (let v14
                                                             = coe
                                                                 MAlonzo.Code.Function.Bundles.d_from_1870
                                                                 (coe
                                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_listing_218
                                                                       (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                          (coe
                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                       erased
                                                                       (coe
                                                                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                          (coe
                                                                             MAlonzo.Code.Class.IsSet.du_dom_562
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                (coe
                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                             (coe v2))
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                             (coe
                                                                                MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                (coe
                                                                                   MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                (coe v3))
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                       (coe
                                                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_unions_198
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                            (coe
                                                                                               v3))))))
                                                                             v4)
                                                                          (coe
                                                                             du_'8746''8314''45'dom'8746'_2890
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6)))))
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe
                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                       (coe
                                                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe
                                                                                MAlonzo.Code.Axiom.Set.d_unions_198
                                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                   (coe
                                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                erased
                                                                                (coe
                                                                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                   (coe
                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                      (coe
                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                   (coe
                                                                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                      (coe
                                                                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                         (coe
                                                                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                            (coe
                                                                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                         (coe v2))
                                                                                      (coe
                                                                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                         (coe
                                                                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                               (coe
                                                                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                            (coe
                                                                                               MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                            (coe
                                                                                               v3))))))
                                                                             v4)
                                                                          (coe
                                                                             du_'8746''8314''45'dom'8746'_2890
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6))))) in
                                                       coe
                                                         (case coe v14 of
                                                            MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v17
                                                              -> case coe v13 of
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                     -> coe
                                                                          MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                          (coe
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                             (coe v19))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError
                                                            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v17
                                                              -> coe
                                                                   seq (coe v17)
                                                                   (case coe v13 of
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v18 v19
                                                                        -> coe
                                                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                             (coe
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                (coe v19))
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            _ -> MAlonzo.RTE.mazUnreachableError)) in
                                            coe
                                              (coe
                                                 seq (coe v13)
                                                 (coe
                                                    MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                             _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.a∈₂
d_a'8712''8322'_3612 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3612 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3612 v3 v4 v5 v6
du_a'8712''8322'_3612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3612 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'unions_442
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Function.Bundles.d_to_1868
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_562
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0)))
               (coe
                  MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                  (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
            (coe v3)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.a∈˘
d_a'8712''728'_3614 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3614 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3614 v3 v4 v5 v6
du_a'8712''728'_3614 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3614 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_210
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased erased
               (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))))
         (coe v2))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v3))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.b≡
d_b'8801'_3616 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3616 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.a∈₂
d_a'8712''8322'_3636 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''8322'_3636 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                     ~v12
  = du_a'8712''8322'_3636 v3 v4 v5 v7
du_a'8712''8322'_3636 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''8322'_3636 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'unions_442
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.du_fromList_430
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
               (coe
                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
                  (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Function.Bundles.d_to_1868
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                     (coe
                        MAlonzo.Code.Class.IsSet.du_dom_562
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
                        (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v1)))
               (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased))
            (coe v3)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.a∈˘
d_a'8712''728'_3638 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''728'_3638 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9 ~v10 ~v11
                    ~v12
  = du_a'8712''728'_3638 v3 v4 v5 v7
du_a'8712''728'_3638 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''728'_3638 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_210
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               erased erased
               (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
         (coe v2))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v3))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.b≡
d_b'8801'_3640 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_b'8801'_3640 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-comm
d_'8746''8314''45'comm_3696 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'comm_3696 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7
  = du_'8746''8314''45'comm_3696 v2 v4 v6 v7
du_'8746''8314''45'comm_3696 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'comm_3696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3580 (coe v0) (coe v1) (coe v2)
              (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
      (coe
         (\ v4 ->
            coe
              du_'8746''8314''45'comm'45''8838'_3580 (coe v0) (coe v1) (coe v3)
              (coe v2) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-comm-val
d_'8746''8314''45'comm'45'val_3706 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'comm'45'val_3706 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.kv∈₁₂
d_kv'8712''8321''8322'_3722 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8321''8322'_3722 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8321''8322'_3722 v2 v4 v6 v7 v8
du_kv'8712''8321''8322'_3722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8321''8322'_3722 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
      (coe v1) (coe v2) (coe v3) (coe v4)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.kv∈₂₁
d_kv'8712''8322''8321'_3726 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712''8322''8321'_3726 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 ~v9 ~v10
  = du_kv'8712''8322''8321'_3726 v2 v4 v6 v7 v8
du_kv'8712''8322''8321'_3726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712''8322''8321'_3726 v0 v1 v2 v3 v4
  = coe
      du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
      (coe v1) (coe v2) (coe v4) (coe v3)
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-cong-⊆ˡ
d_'8746''8314''45'cong'45''8838''737'_3736 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'cong'45''8838''737'_3736 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
                                           v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'cong'45''8838''737'_3736
      v2 v4 v6 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'cong'45''8838''737'_3736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'cong'45''8838''737'_3736 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8
  = coe
      seq (coe v5)
      (let v9
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_replacement_210
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased erased
                       (\ v9 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                            (coe
                               MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v10 -> v10))
                               (coe (\ v10 -> v10))
                               (coe
                                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                  (coe
                                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                     (coe v1)))
                               (coe
                                  MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                  (coe v0) (coe v2) (coe v3)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9)))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                          (coe v0)
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v7)))
                 v8 in
       coe
         (case coe v9 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
              -> case coe v10 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                     -> coe
                          seq (coe v11)
                          (coe
                             MAlonzo.Code.Function.Bundles.d_to_1868
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_408
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                   (coe v0)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_unions_198
                                         (MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         erased
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_fromList_430
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Class.IsSet.du_dom_562
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                  (coe v2))
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                  (coe
                                                     MAlonzo.Code.Class.IsSet.du_dom_562
                                                     (coe
                                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                                        (coe
                                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                     (coe v4))))))))
                                (coe du_F'91'_'44'_'93'_2916 (coe v0) (coe v1) (coe v2) (coe v4))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                   (coe
                                      MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v14 -> v14))
                                      (coe (\ v14 -> v14))
                                      (coe
                                         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                         (coe
                                            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                            (coe v1)))
                                      (let v14
                                             = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                       coe
                                         (let v15
                                                = coe
                                                    MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    erased v0 v12
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_replacement_210
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                          erased erased
                                                          (\ v15 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v15))
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v2)))) in
                                          coe
                                            (let v16
                                                   = coe
                                                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                       erased v0 v12
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_replacement_210
                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe
                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                             erased erased
                                                             (\ v16 ->
                                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v16))
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v3)))) in
                                             coe
                                               (case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v17 v18
                                                    -> if coe v17
                                                         then case coe v18 of
                                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v19
                                                                  -> case coe v16 of
                                                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v20 v21
                                                                         -> if coe v20
                                                                              then case coe v21 of
                                                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v22
                                                                                       -> coe
                                                                                            MAlonzo.Code.Data.These.Base.C_these_52
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  v2)
                                                                                               (coe
                                                                                                  v12)
                                                                                               (coe
                                                                                                  v19))
                                                                                            (coe
                                                                                               MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                               (coe
                                                                                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                  (coe
                                                                                                     v14))
                                                                                               (coe
                                                                                                  v3)
                                                                                               (coe
                                                                                                  v12)
                                                                                               (coe
                                                                                                  v22))
                                                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                                                              else coe
                                                                                     seq (coe v21)
                                                                                     (coe
                                                                                        MAlonzo.Code.Data.These.Base.C_this_48
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 v14))
                                                                                           (coe v2)
                                                                                           (coe v12)
                                                                                           (coe
                                                                                              v19)))
                                                                       _ -> MAlonzo.RTE.mazUnreachableError
                                                                _ -> MAlonzo.RTE.mazUnreachableError
                                                         else coe
                                                                seq (coe v18)
                                                                (case coe v16 of
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v19 v20
                                                                     -> if coe v19
                                                                          then case coe v20 of
                                                                                 MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v21
                                                                                   -> coe
                                                                                        MAlonzo.Code.Data.These.Base.C_that_50
                                                                                        (coe
                                                                                           MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                                           (coe
                                                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                              (coe
                                                                                                 v14))
                                                                                           (coe v3)
                                                                                           (coe v12)
                                                                                           (coe
                                                                                              v21))
                                                                                 _ -> MAlonzo.RTE.mazUnreachableError
                                                                          else coe
                                                                                 seq (coe v20)
                                                                                 (coe
                                                                                    MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                                                    (coe
                                                                                       (\ v21 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                            erased))
                                                                                    (coe
                                                                                       (\ v21 ->
                                                                                          coe
                                                                                            MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                                            erased))
                                                                                    (coe
                                                                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                             (coe
                                                                                                v14))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                   (coe
                                                                                                      v14))
                                                                                                erased
                                                                                                erased
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v21))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v2))))
                                                                                          (coe
                                                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                   (coe
                                                                                                      v14))
                                                                                                erased
                                                                                                erased
                                                                                                (\ v21 ->
                                                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                     (coe
                                                                                                        v21))
                                                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                                   (coe
                                                                                                      v3))))
                                                                                          (coe v12))
                                                                                       v13))
                                                                   _ -> MAlonzo.RTE.mazUnreachableError)
                                                  _ -> MAlonzo.RTE.mazUnreachableError)))))))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (coe
                                         du_'8712''45'incl'45'set_2984 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_198
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_fromList_430
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_562
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_562
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                           (coe v4)))))))
                                         (coe v12))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         du_'8712''45'incl'45'set_2984 (coe v0)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_unions_198
                                               (MAlonzo.Code.Axiom.Set.d_th_1480
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                               erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_fromList_430
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Class.IsSet.du_dom_562
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                           (coe
                                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                        (coe v2))
                                                     (coe
                                                        MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                        (coe
                                                           MAlonzo.Code.Class.IsSet.du_dom_562
                                                           (coe
                                                              MAlonzo.Code.Axiom.Set.d_th_1480
                                                              (coe
                                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                           (coe
                                                              MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                           (coe v4)))))))
                                         (coe v12))))))
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.a∈-∪dom₁
d_a'8712''45''8746'dom'8321'_3786 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712''45''8746'dom'8321'_3786 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
                                  ~v10 ~v11 ~v12 ~v13 ~v14
  = du_a'8712''45''8746'dom'8321'_3786 v2 v4 v5 v6 v7 v8 v9
du_a'8712''45''8746'dom'8321'_3786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712''45''8746'dom'8321'_3786 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0 v2 v3))
            (coe v4))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe
               MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v7 -> v7))
               (coe (\ v7 -> v7))
               (coe
                  MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                  (coe
                     MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
               (let v7
                      = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                coe
                  (let v8
                         = coe
                             MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0 v4
                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_replacement_210
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased erased
                                   (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))) in
                   coe
                     (let v9
                            = coe
                                MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0 v4
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_replacement_210
                                      (MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                      erased erased
                                      (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))) in
                      coe
                        (case coe v8 of
                           MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                             -> if coe v10
                                  then case coe v11 of
                                         MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v12
                                           -> case coe v9 of
                                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                  -> if coe v13
                                                       then case coe v14 of
                                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                                -> coe
                                                                     MAlonzo.Code.Data.These.Base.C_these_52
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe v7))
                                                                        (coe v2) (coe v4) (coe v12))
                                                                     (coe
                                                                        MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                        (coe
                                                                           MAlonzo.Code.Axiom.Set.d_th_1480
                                                                           (coe v7))
                                                                        (coe v3) (coe v4) (coe v15))
                                                              _ -> MAlonzo.RTE.mazUnreachableError
                                                       else coe
                                                              seq (coe v14)
                                                              (coe
                                                                 MAlonzo.Code.Data.These.Base.C_this_48
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe v7))
                                                                    (coe v2) (coe v4) (coe v12)))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  else coe
                                         seq (coe v11)
                                         (case coe v9 of
                                            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                              -> if coe v12
                                                   then case coe v13 of
                                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v14
                                                            -> coe
                                                                 MAlonzo.Code.Data.These.Base.C_that_50
                                                                 (coe
                                                                    MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
                                                                    (coe
                                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                                       (coe v7))
                                                                    (coe v3) (coe v4) (coe v14))
                                                          _ -> MAlonzo.RTE.mazUnreachableError
                                                   else coe
                                                          seq (coe v13)
                                                          (coe
                                                             MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                                             (coe
                                                                (\ v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                     erased))
                                                             (coe
                                                                (\ v14 ->
                                                                   coe
                                                                     MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
                                                                     erased))
                                                             (coe
                                                                MAlonzo.Code.Function.Bundles.d_from_1870
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
                                                                   (coe
                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                      (coe v7))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe v7))
                                                                         erased erased
                                                                         (\ v14 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v14))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v2))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                      (coe
                                                                         MAlonzo.Code.Axiom.Set.d_replacement_210
                                                                         (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                            (coe v7))
                                                                         erased erased
                                                                         (\ v14 ->
                                                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v14))
                                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                            (coe v3))))
                                                                   (coe v4))
                                                                v5))
                                            _ -> MAlonzo.RTE.mazUnreachableError)
                           _ -> MAlonzo.RTE.mazUnreachableError)))))
            (coe v6)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.dom₁⊆dom₂
d_dom'8321''8838'dom'8322'_3788 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8321''8838'dom'8322'_3788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8
                                ~v9 ~v10 ~v11 v12 v13 ~v14 v15
  = du_dom'8321''8838'dom'8322'_3788 v6 v12 v13 v15
du_dom'8321''8838'dom'8322'_3788 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8321''8838'dom'8322'_3788 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_520
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v2)
      (coe v3)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.k∈'
d_k'8712'''_3790 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'''_3790 ~v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 ~v10 ~v11 v12 v13
                 ~v14
  = du_k'8712'''_3790 v2 v4 v5 v6 v7 v8 v9 v12 v13
du_k'8712'''_3790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'''_3790 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_736
      (MAlonzo.Code.Axiom.Set.d_th_1480
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3))
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v7))
      (\ v9 v10 -> v10)
      (coe du_dom'8321''8838'dom'8322'_3788 (coe v3) (coe v7) (coe v8))
      v4
      (coe
         du_a'8712''45''8746'dom'8321'_3786 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5) (coe v6))
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-cong-l
d_'8746''8314''45'cong'45'l_3802 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'l_3802 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'l_3802 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'l_3802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'l_3802 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 ->
                   coe
                     du_'8746''8314''45'cong'45''8838''737'_3736 (coe v0) (coe v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                     (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
             (coe
                (\ v8 ->
                   coe
                     du_'8746''8314''45'cong'45''8838''737'_3736 (coe v0) (coe v1)
                     (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-cong-r
d_'8746''8314''45'cong'45'r_3814 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'cong'45'r_3814 ~v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8 v9
  = du_'8746''8314''45'cong'45'r_3814 v2 v4 v6 v7 v8 v9
du_'8746''8314''45'cong'45'r_3814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'cong'45'r_3814 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'comm_3696 (coe v0) (coe v1) (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
              v6
              (coe
                 du_'8746''8314''45'cong'45''8838''737'_3736 (coe v0) (coe v1)
                 (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                 (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       du_'8746''8314''45'comm_3696 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                       (coe v2))
                    v6 v7))))
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        du_'8746''8314''45'comm_3696 (coe v0) (coe v1) (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))))
                     v8
                     (coe
                        du_'8746''8314''45'cong'45''8838''737'_3736 (coe v0) (coe v1)
                        (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              du_'8746''8314''45'comm_3696 (coe v0) (coe v1)
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
                              (coe v2))
                           v8 v9)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-dom-id
d_'8746''8314''45'dom'45'id_3830 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'dom'45'id_3830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8746''8314''45'dom'45'id_3830 v6
du_'8746''8314''45'dom'45'id_3830 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'dom'45'id_3830 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v3)
      (coe
         MAlonzo.Code.Class.IsSet.du_dom_562
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__682
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
            (coe
               MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v1 v2 v3 v4 v5 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v6
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v6 v7)))
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v6
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v6 v7))))))
         (\ v1 v2 v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
              _ -> MAlonzo.RTE.mazUnreachableError)
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__682
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
            (coe
               MAlonzo.Code.Axiom.Set.du_'8709'_444
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__682
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v1 v2 v3 v4 v5 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v6 v7 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v5 v6
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v6 v7)))
                       (coe
                          (\ v6 v7 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v6
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v5 v6 v7))))))
            (\ v1 v2 v3 ->
               case coe v3 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v4)
                 _ -> MAlonzo.RTE.mazUnreachableError)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__682
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.du_'8709'_444
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__682
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__682
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                  (coe
                     (\ v1 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v2 v3 -> v3))
                          (coe (\ v2 v3 -> v3)))))
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__682
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
                  (coe
                     MAlonzo.Code.Class.IsSet.du_dom_562
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))))))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
               (coe
                  MAlonzo.Code.Class.IsSet.du_dom_562
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                  (MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (let v1
                         = MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                   coe (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v1))))
               (let v1
                      = MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                coe (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v1)))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
                  (coe (\ v1 v2 -> v2)))
               (coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_498)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_806
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v0))))
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-id-dom∈
d_'8746''8314''45'id'45'dom'8712'_3892 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8746''8314''45'id'45'dom'8712'_3892 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
                                       v7
  = du_'8746''8314''45'id'45'dom'8712'_3892 v6 v7
du_'8746''8314''45'id'45'dom'8712'_3892 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8746''8314''45'id'45'dom'8712'_3892 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe du_'8746''8314''45'dom'45'id_3830 (coe v1)) v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe du_'8746''8314''45'dom'45'id_3830 (coe v1)) v0)
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-id-lemma
d_'8746''8314''45'id'45'lemma_3902 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'id'45'lemma_3902 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.∪⁺-id-r
d_'8746''8314''45'id'45'r_3978 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''8314''45'id'45'r_3978 ~v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_'8746''8314''45'id'45'r_3978 v2 v4 v6
du_'8746''8314''45'id'45'r_3978 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''8314''45'id'45'r_3978 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        let v7
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_replacement_210
                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (\ v7 ->
                                           coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                                             (coe
                                                MAlonzo.Code.Data.These.Base.du_fold_92
                                                (coe (\ v8 -> v8)) (coe (\ v8 -> v8))
                                                (coe
                                                   MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                                   (coe
                                                      MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                      (coe v1)))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                                   (coe v0) (coe v2)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v7))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                      (coe v7)))))
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))))
                                     v3)
                                  v6 in
                        coe
                          (case coe v7 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                               -> case coe v8 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                      -> coe
                                           seq (coe v9)
                                           (coe
                                              du_'8712''45'lookup'7504''8712'_2934 (coe v4) (coe v2)
                                              (coe
                                                 MAlonzo.Code.Function.Bundles.d_from_1870
                                                 (coe
                                                    du_'8746''8314''45'id'45'dom'8712'_3892 (coe v4)
                                                    (coe v2))
                                                 v11))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     (\ v6 ->
                        coe
                          du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
                          (coe v1) (coe v4) (coe v2)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_listing_218
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                (\ v7 v8 v9 v10 v11 ->
                                   coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.k∈
d_k'8712'_4032 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'_4032 ~v0 ~v1 v2 v3 ~v4 ~v5 v6 ~v7 ~v8 ~v9 ~v10
  = du_k'8712'_4032 v2 v3 v6
du_k'8712'_4032 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'_4032 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_'8746''8314''45'id'45'dom'8712'_3892 (coe v1) (coe v0)) v2
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lu≡
d_lu'8801'_4034 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lu'8801'_4034 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.v≡
d_v'8801'_4036 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'8801'_4036 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._.restrict-cong
d_restrict'45'cong_4046 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'cong_4046 ~v0 ~v1 v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_restrict'45'cong_4046 v2 v6 v7 v8 v9
du_restrict'45'cong_4046 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'cong_4046 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                (\ v7 v8 ->
                   let v9
                         = coe
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) v3 v7 v8 in
                   coe
                     (let v10
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
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
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
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3288 (coe v0) (coe v2) (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5 v7 v9)
                              (coe v10)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                (\ v7 v8 ->
                   let v9
                         = coe
                             MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2)) v3 v7 v8 in
                   coe
                     (let v10
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
                                      erased v0)
                                   (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2)) (coe v3)
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
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
                                            erased v0)
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                                         (coe v3))
                                      (coe v7) (coe v8))) in
                      coe
                        (coe
                           du_res'7580''45'dom'8713''8314'_3288 (coe v0) (coe v1) (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6 v7 v9)
                              (coe v10)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.P′
d_P'8242'_4104 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P'8242'_4104 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.P→P′
d_P'8594'P'8242'_4110 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_P'8594'P'8242'_4110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 ~v10
  = du_P'8594'P'8242'_4110 v9
du_P'8594'P'8242'_4110 :: AgdaAny -> AgdaAny
du_P'8594'P'8242'_4110 v0 = coe v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-dom-filter-P
d_'8712''45'dom'45'filter'45'P_4118 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'dom'45'filter'45'P_4118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'45'P_4118 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'P_4118 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'dom'45'filter'45'P_4118 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Class.IsSet.d_toSet_502
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v2))
                        (coe v1))
                     v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Class.IsSet.d_toSet_502
                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                        (\ v4 ->
                           coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                        v2))
                  (coe v1))
               v3)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-dom-filter-dom
d_'8712''45'dom'45'filter'45'dom_4124 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'45'dom_4124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7 v8 v9 v10
  = du_'8712''45'dom'45'filter'45'dom_4124 v7 v8 v9 v10
du_'8712''45'dom'45'filter'45'dom_4124 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'45'dom_4124 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_210
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased erased
                    (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                    (coe
                       MAlonzo.Code.Class.IsSet.d_toSet_502
                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                          (\ v4 ->
                             coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                          v2)))
                 v1)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased)
                 v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> case coe v6 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) (coe v1))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                    (coe
                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                       (coe
                                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                             (coe
                                                (\ v11 ->
                                                   coe
                                                     v0
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v11)))))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                                             (coe v8)))
                                       v10)))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.dom-filter-⊆
d_dom'45'filter'45''8838'_4144 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'filter'45''8838'_4144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                               v10
  = du_dom'45'filter'45''8838'_4144 v7 v8 v9 v10
du_dom'45'filter'45''8838'_4144 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'45'filter'45''8838'_4144 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1)) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                  (coe
                     MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                        (\ v4 ->
                           coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                        v1))
                  (coe v2))
               v3))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
            (MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                              (\ v4 ->
                                 coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                              v1))
                        (coe v2))
                     v3)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1870
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                           (\ v4 ->
                              coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                           v1))
                     (coe v2))
                  v3))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-dom-filterˡ
d_'8712''45'dom'45'filter'737'_4152 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'dom'45'filter'737'_4152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'737'_4152 v7 v8 v9 v10
du_'8712''45'dom'45'filter'737'_4152 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'dom'45'filter'737'_4152 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8712''45'dom'45'filter'45'P_4118 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_'8712''45'dom'45'filter'45'dom_4124 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-dom-filterʳ
d_'8712''45'dom'45'filter'691'_4160 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom'45'filter'691'_4160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
                                    v8 v9 v10
  = du_'8712''45'dom'45'filter'691'_4160 v7 v8 v9 v10
du_'8712''45'dom'45'filter'691'_4160 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'dom'45'filter'691'_4160 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> coe
             MAlonzo.Code.Function.Bundles.d_to_1868
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                (coe
                   MAlonzo.Code.Axiom.Set.d_th_1480
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                (coe
                   MAlonzo.Code.Axiom.Set.du_filter_422
                   (MAlonzo.Code.Axiom.Set.d_th_1480
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                   (coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                      (coe
                         (\ v6 ->
                            coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                   (coe
                      MAlonzo.Code.Class.IsSet.d_toSet_502
                      (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v2))
                (coe v1))
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                   (coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                         (coe
                            MAlonzo.Code.Class.IsSet.d_toSet_502
                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v2)
                         (coe v1))
                      v5))
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1868
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Class.IsSet.d_toSet_502
                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v2)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                         (coe
                            (\ v6 ->
                               coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Class.IsSet.d_toSet_502
                                     (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v2)
                                  (coe v1))
                               v5))))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe
                                  MAlonzo.Code.Class.IsSet.d_toSet_502
                                  (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) v2)
                               (coe v1))
                            v5)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-∈
d_filter'7504''45''8712'_4174 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8712'_4174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              v10
  = du_filter'7504''45''8712'_4174 v7 v8 v9 v10
du_filter'7504''45''8712'_4174 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8712'_4174 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_curry_224
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v4 ->
                     coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.cong-filterᵐ
d_cong'45'filter'7504'_4182 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45'filter'7504'_4182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                            v10
  = du_cong'45'filter'7504'_4182 v7 v8 v9 v10
du_cong'45'filter'7504'_4182 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45'filter'7504'_4182 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4174 v0 v2
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4152 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v1)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_502
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v6 ->
                                coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                             v1))
                       (coe v4) (coe v5))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v3 v4
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
      (coe
         (\ v4 v5 ->
            coe
              du_filter'7504''45''8712'_4174 v0 v1
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_'8712''45'dom'45'filter'737'_4152 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Class.IsSet.d_toSet_502
                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v6 ->
                                coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                             v2))
                       (coe v4) (coe v5))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v6 ->
                                   coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                          (coe v4))
                       v5)))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∪⁺-filter-P′
d_'8746''8314''45'filter'45'P'8242'_4204 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8746''8314''45'filter'45'P'8242'_4204 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         v7 v8 v9 v10 v11 v12
  = du_'8746''8314''45'filter'45'P'8242'_4204
      v2 v4 v7 v8 v9 v10 v11 v12
du_'8746''8314''45'filter'45'P'8242'_4204 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8746''8314''45'filter'45'P'8242'_4204 v0 v1 v2 v3 v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_unions_198
                    (MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    erased
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_430
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_562
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v8 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v8)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v8 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                      v5))))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_562
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v6))
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                            (coe
                                               (\ v8 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v8)))))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                         (\ v8 ->
                                            coe
                                              v2
                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                         v6))))))))
                 v3)
              (coe
                 du_'8746''8314''45'dom'8746'_2890 (coe v0) (coe v1)
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                          v5)))
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v6))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v8 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                          v6)))
                 (coe v3) (coe v4) (coe v7)) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_listing_218
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe
                             MAlonzo.Code.Class.IsSet.du_dom_562
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5))))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Class.IsSet.du_dom_562
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v6))
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                            (coe
                                               (\ v9 ->
                                                  coe
                                                    v2
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v9)))))))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                         (\ v9 ->
                                            coe
                                              v2
                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                         v6))))
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Axiom.Set.d_unions_198
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                     (coe
                                                        (\ v9 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v9)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                  (\ v9 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9)))
                                                  v5))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v9 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v9)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                     (\ v9 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v9)))
                                                     v6))))))))
                             v3)
                          (coe
                             du_'8746''8314''45'dom'8746'_2890 (coe v0) (coe v1)
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5)))
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v6)))
                             (coe v3) (coe v4) (coe v7)))))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                             (coe
                                MAlonzo.Code.Axiom.Set.d_unions_198
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_fromList_430
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Class.IsSet.du_dom_562
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_th_1480
                                            (coe
                                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                                     (coe v5))
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                     (coe
                                                        (\ v9 ->
                                                           coe
                                                             v2
                                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                (coe v9)))))))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                  (\ v9 ->
                                                     coe
                                                       v2
                                                       (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v9)))
                                                  v5))))
                                      (coe
                                         MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                         (coe
                                            MAlonzo.Code.Class.IsSet.du_dom_562
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_th_1480
                                               (coe
                                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
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
                                                        (coe v6))
                                                     (coe
                                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                        (coe
                                                           (\ v9 ->
                                                              coe
                                                                v2
                                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                   (coe v9)))))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                  (coe
                                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                     (\ v9 ->
                                                        coe
                                                          v2
                                                          (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                             (coe v9)))
                                                     v6))))))))
                             v3)
                          (coe
                             du_'8746''8314''45'dom'8746'_2890 (coe v0) (coe v1)
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v5)))
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
                                      (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v6))
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                         (coe
                                            (\ v9 ->
                                               coe
                                                 v2
                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))))))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                      (\ v9 ->
                                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                      v6)))
                             (coe v3) (coe v4) (coe v7))))) in
       coe
         (case coe v9 of
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v12
              -> case coe v8 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                     -> let v15 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14) in
                        coe
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4152 (coe v2) (coe v3) (coe v5)
                                (coe v15)))
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v12
              -> let v13
                       = seq
                           (coe v12)
                           (case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                -> coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v14))
                              _ -> MAlonzo.RTE.mazUnreachableError) in
                 coe
                   (case coe v13 of
                      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4152 (coe v2) (coe v3) (coe v5)
                                (coe v14))
                      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                du_'8712''45'dom'45'filter'737'_4152 (coe v2) (coe v3) (coe v6)
                                (coe v14))
                      _ -> MAlonzo.RTE.mazUnreachableError)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lookup≡lookup-filter
d_lookup'8801'lookup'45'filter_4250 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8801'lookup'45'filter_4250 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-∪⁺-l'
d_'8712''45''8746''8314''45'l''_4266 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'l''_4266 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-∪⁺-l
d_'8712''45''8746''8314''45'l_4368 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'l_4368 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∪⁺-filter
d_'8746''8314''45'filter_4384 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''8314''45'filter_4384 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11 v12 v13 ~v14
  = du_'8746''8314''45'filter_4384 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_'8746''8314''45'filter_4384 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746''8314''45'filter_4384 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v9 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                  v3))
            (coe v5))
         (coe
            du_a'8712'f'8321'_4404 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5) (coe v6) (coe v7) (coe v8)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.a∈f₁
d_a'8712'f'8321'_4404 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_a'8712'f'8321'_4404 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11
                      v12 v13 ~v14
  = du_a'8712'f'8321'_4404 v2 v4 v7 v8 v9 v10 v11 v12 v13
du_a'8712'f'8321'_4404 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_a'8712'f'8321'_4404 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du_'8712''45'dom'45'filter'691'_4160 (coe v2) (coe v5) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8746''8314''45'filter'45'P'8242'_4204 (coe v0) (coe v1)
            (coe v2) (coe v5) (coe v6) (coe v3) (coe v4) (coe v7))
         (coe v8))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.a∉f₂
d_a'8713'f'8322'_4406 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_a'8713'f'8322'_4406 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∪⁺-filter-lookup≡
d_'8746''8314''45'filter'45'lookup'8801'_4420 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8746''8314''45'filter'45'lookup'8801'_4420 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-∪⁺-filterˡ
d_'8712''45''8746''8314''45'filter'737'_4442 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45''8746''8314''45'filter'737'_4442 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₁′
d_m'8321''8242'_4526 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4526 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8321''8242'_4526 v4 v12
du_m'8321''8242'_4526 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4526 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₂′
d_m'8322''8242'_4528 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4528 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16 ~v17
  = du_m'8322''8242'_4528 v5 v12
du_m'8322''8242'_4528 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4528 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈m₂′
d_k'8712'm'8322''8242'_4530 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8322''8242'_4530 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                            ~v10 ~v11 v12 ~v13 ~v14 ~v15 ~v16 v17
  = du_k'8712'm'8322''8242'_4530 v3 v4 v5 v7 v12 v17
du_k'8712'm'8322''8242'_4530 ::
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8322''8242'_4530 v0 v1 v2 v3 v4 v5
  = coe
      du_'8712''45'dom'45'filter'691'_4160 (coe v4) (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'dom'45'filter'737'_4152 (coe v4) (coe v0) (coe v1)
               (coe v5)))
         (coe v3))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.v≡m₂m₁
d_v'8801'm'8322'm'8321'_4556 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'8801'm'8322'm'8321'_4556 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-∪⁺-distr-⊇
d_filter'7504''45''8746''8314''45'distr'45''8839'_4656 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8839'_4656 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
  = du_filter'7504''45''8746''8314''45'distr'45''8839'_4656
      v2 v4 v7 v8 v9 v10 v11
du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 v0 v1 v2 v3
                                                        v4 v5 v6
  = let v7
          = MAlonzo.Code.Class.Decidable.Core.d_dec_16 (coe v2 v5) in
    coe
      (case coe v7 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
           -> if coe v8
                then case coe v9 of
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                         -> coe
                              du_yes'45'case_4696 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                              (coe v5) (coe v6) (coe v10)
                       _ -> MAlonzo.RTE.mazUnreachableError
                else coe
                       seq (coe v9) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈Pm₁∨k∈Pm₂
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (let v8
                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_344
               (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v3))))))
         (let v8
                = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
          coe
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_dom_344
               (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v8))
               (coe
                  MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                              (coe
                                 (\ v9 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                           (\ v9 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           v4))))))
         (coe v5))
      (coe
         MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
         (coe v1) (coe v0)
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
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v8 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                  v3)))
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v8 ->
                           coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v8 ->
                     coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                  v4)))
         (coe v5)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v1 v0
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
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                           (\ v8 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                           v3)))
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
                           (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                              (coe
                                 (\ v8 ->
                                    coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                           (\ v8 ->
                              coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                           v4)))))
            (coe (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
            (coe v7)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈Pm₁⊕k∈Pm₂
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4674 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4674 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 v7 v8 v9 v10 v11 v12
  = du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4674
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4674 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_k'8712'Pm'8321''8853'k'8712'Pm'8322'_4674 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = let v8
          = coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
              erased v0 v5
              (coe
                 MAlonzo.Code.Class.IsSet.du_dom_562
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                    (\ v8 ->
                       coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                    v3)) in
    coe
      (let v9
             = coe
                 MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                 erased v0 v5
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                       (\ v9 ->
                          coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                       v4)) in
       coe
         (let v10
                = let v10
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_unions_198
                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_fromList_430
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (let v10
                                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                              (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v10))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                (\ v11 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v11)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))
                                                          v3))))))
                                        (coe
                                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                           (let v10
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                 (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v10))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4))))))))))
                               v5)
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                               (coe v1) (coe v0)
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
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                        (\ v10 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v3)))
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
                                        (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                           (coe
                                              (\ v10 ->
                                                 coe
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                        (\ v10 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v4)))
                               (coe v5)
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                        v1 v0
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
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                 (\ v10 ->
                                                    coe
                                                      v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v10)))
                                                 v3)))
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
                                                    (coe v4))
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                    (coe
                                                       (\ v10 ->
                                                          coe
                                                            v2
                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v10)))))))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                 (\ v10 ->
                                                    coe
                                                      v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v10)))
                                                 v4)))))
                                  (coe
                                     (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))
                                  (coe v7))) in
                  coe
                    (let v11
                           = coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_listing_218
                                     (MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     erased
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                        (let v11
                                               = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                         coe
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                              (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v11))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                (\ v12 ->
                                                                   coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v12)))))))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                          (\ v12 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v12)))
                                                          v3))))))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                           (let v11
                                                  = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                 (MAlonzo.Code.Axiom.Set.d_th_1480 (coe v11))
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                (coe
                                                                   (\ v12 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v12)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v12 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v12)))
                                                             v4))))))
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_unions_198
                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_430
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (let v11
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                      (\ v12 ->
                                                                         coe
                                                                           v2
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v12)))
                                                                      v3))))))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                       (let v11
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                            (coe
                                                                               (\ v12 ->
                                                                                  coe
                                                                                    v2
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          v12)))))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v1) (coe v0)
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
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v3)))
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
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v4)))
                                           (coe v5)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    v1 v0
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
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v3)))
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
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4)))))
                                              (coe
                                                 (\ v11 ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v5) (coe v6))
                                              (coe v7))))))
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_unions_198
                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_fromList_430
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                    (let v11
                                                           = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                     coe
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                             (coe v11))
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                            (\ v12 ->
                                                                               coe
                                                                                 v2
                                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                    (coe v12)))))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                   (coe
                                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                      (\ v12 ->
                                                                         coe
                                                                           v2
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v12)))
                                                                      v3))))))
                                                    (coe
                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                       (let v11
                                                              = MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8 in
                                                        coe
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.Rel.du_dom_344
                                                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                (coe v11))
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.Map.du__'738'_554
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
                                                                            (coe v4))
                                                                         (coe
                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                            (coe
                                                                               (\ v12 ->
                                                                                  coe
                                                                                    v2
                                                                                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                       (coe
                                                                                          v12)))))))
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                      (coe
                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                                         (\ v12 ->
                                                                            coe
                                                                              v2
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe v12)))
                                                                         v4))))))))))
                                           v5)
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                           (coe v1) (coe v0)
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
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v3)))
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
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                       (coe
                                                          (\ v11 ->
                                                             coe
                                                               v2
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v11)))))))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                    (\ v11 ->
                                                       coe
                                                         v2
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v11)))
                                                    v4)))
                                           (coe v5)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                    v1 v0
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
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v3)))
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
                                                                (coe v4))
                                                             (coe
                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                                (coe
                                                                   (\ v11 ->
                                                                      coe
                                                                        v2
                                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                           (coe v11)))))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                             (\ v11 ->
                                                                coe
                                                                  v2
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v11)))
                                                             v4)))))
                                              (coe
                                                 (\ v11 ->
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v11)))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v5) (coe v6))
                                              (coe v7)))))) in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v14
                            -> case coe v10 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                   -> coe
                                        MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v16))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v14
                            -> coe
                                 seq (coe v14)
                                 (case coe v10 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                      -> coe
                                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                           (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v16))
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)) in
          coe
            (case coe v8 of
               MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                 -> if coe v11
                      then case coe v12 of
                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v13
                               -> case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v14 v15
                                      -> if coe v14
                                           then case coe v15 of
                                                  MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v16
                                                    -> coe
                                                         MAlonzo.Code.Data.These.Base.C_these_52
                                                         (coe v13) (coe v16)
                                                  _ -> MAlonzo.RTE.mazUnreachableError
                                           else coe
                                                  seq (coe v15)
                                                  (coe
                                                     MAlonzo.Code.Data.These.Base.C_this_48
                                                     (coe v13))
                                    _ -> MAlonzo.RTE.mazUnreachableError
                             _ -> MAlonzo.RTE.mazUnreachableError
                      else coe
                             seq (coe v12)
                             (case coe v9 of
                                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                  -> if coe v13
                                       then case coe v14 of
                                              MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v15
                                                -> coe
                                                     MAlonzo.Code.Data.These.Base.C_that_50
                                                     (coe v15)
                                              _ -> MAlonzo.RTE.mazUnreachableError
                                       else coe
                                              seq (coe v14)
                                              (coe
                                                 seq (coe v10)
                                                 (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
                                _ -> MAlonzo.RTE.mazUnreachableError)
               _ -> MAlonzo.RTE.mazUnreachableError)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.yes-case
d_yes'45'case_4696 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_yes'45'case_4696 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 ~v12
                   v13
  = du_yes'45'case_4696 v2 v4 v7 v8 v9 v10 v11 v13
du_yes'45'case_4696 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_yes'45'case_4696 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.Map.du__'738'_554
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
               v1 v0 v3 v4))
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
            (coe
               (\ v8 ->
                  coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
         (coe
            du_kv'8712'm'8321'm'8322'_4724 (coe v0) (coe v1) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.k∈m₁∨k∈m₂
d_k'8712'm'8321''8744'k'8712'm'8322'_4704 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_k'8712'm'8321''8744'k'8712'm'8322'_4704 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                          v7 v8 v9 v10 v11 v12 ~v13
  = du_k'8712'm'8321''8744'k'8712'm'8322'_4704
      v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321''8744'k'8712'm'8322'_4704 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_k'8712'm'8321''8744'k'8712'm'8322'_4704 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe du_dom'45'filter'45''8838'_4144 (coe v2) (coe v3) (coe v5))
      (coe du_dom'45'filter'45''8838'_4144 (coe v2) (coe v4) (coe v5))
      (coe
         du_k'8712'Pm'8321''8744'k'8712'Pm'8322'_4672 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.k∈m₁m₂
d_k'8712'm'8321'm'8322'_4706 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322'_4706 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9 v10
                             v11 v12 ~v13
  = du_k'8712'm'8321'm'8322'_4706 v2 v4 v7 v8 v9 v10 v11 v12
du_k'8712'm'8321'm'8322'_4706 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322'_4706 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v4))
         (coe v5))
      (coe
         du_k'8712'm'8321''8744'k'8712'm'8322'_4704 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4) (coe v5) (coe v6) (coe v7))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.[kv′∈m₁m₂]
d_'91'kv'8242''8712'm'8321'm'8322''93'_4712 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'91'kv'8242''8712'm'8321'm'8322''93'_4712 ~v0 ~v1 v2 ~v3 v4 ~v5
                                            ~v6 ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_'91'kv'8242''8712'm'8321'm'8322''93'_4712 v2 v4 v8 v9 v10
du_'91'kv'8242''8712'm'8321'm'8322''93'_4712 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'91'kv'8242''8712'm'8321'm'8322''93'_4712 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8712''45'incl'45'set_2984 (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_unions_198
                  (MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  erased
                  (coe
                     MAlonzo.Code.Axiom.Set.du_fromList_430
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
                        (coe
                           MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)))))))
            (coe v4)))
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
            (coe v0)
            (coe
               MAlonzo.Code.Axiom.Set.Map.Dec.du_d_444
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe
                    MAlonzo.Code.Data.These.Base.du_fold_92 (coe (\ v6 -> v6))
                    (coe (\ v6 -> v6))
                    (coe
                       MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                       (coe
                          MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30 (coe v1)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                       (coe v0) (coe v2) (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du_'8712''45'incl'45'set_2984 (coe v0)
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        MAlonzo.Code.Axiom.Set.d_unions_198
                        (MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        erased
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_430
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
                              (coe
                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                 (coe
                                    MAlonzo.Code.Class.IsSet.du_dom_562
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                    (coe v3)))))))
                  (coe v4))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe
               du_'8712''45'incl'45'set_2984 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_198
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v2))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)))))))
               (coe v4))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.k∈m₁m₂′
d_k'8712'm'8321'm'8322''8242'_4714 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321'm'8322''8242'_4714 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                   v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321'm'8322''8242'_4714 v2 v4 v8 v9 v10
du_k'8712'm'8321'm'8322''8242'_4714 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321'm'8322''8242'_4714 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4712 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.k∈m₁∪⁺m₂
d_k'8712'm'8321''8746''8314'm'8322'_4716 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712'm'8321''8746''8314'm'8322'_4716 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6
                                         ~v7 v8 v9 v10 ~v11 ~v12 ~v13
  = du_k'8712'm'8321''8746''8314'm'8322'_4716 v2 v4 v8 v9 v10
du_k'8712'm'8321''8746''8314'm'8322'_4716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712'm'8321''8746''8314'm'8322'_4716 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_574
      (coe
         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
      (coe v1) (coe v0) (coe v2) (coe v3) (coe v4)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4714 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.v′
d_v'8242'_4718 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> AgdaAny
d_v'8242'_4718 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9 v10 ~v11 ~v12
               ~v13
  = du_v'8242'_4718 v2 v4 v8 v9 v10
du_v'8242'_4718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_v'8242'_4718 v0 v1 v2 v3 v4
  = coe
      du_'8741'_'8746''8314'_'8741'_2900 (coe v0) (coe v1) (coe v4)
      (coe v2) (coe v3)
      (coe
         du_k'8712'm'8321'm'8322''8242'_4714 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.kv′∈m₁m₂
d_kv'8242''8712'm'8321'm'8322'_4720 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8242''8712'm'8321'm'8322'_4720 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7
                                    v8 v9 v10 ~v11 ~v12 ~v13
  = du_kv'8242''8712'm'8321'm'8322'_4720 v2 v4 v8 v9 v10
du_kv'8242''8712'm'8321'm'8322'_4720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8242''8712'm'8321'm'8322'_4720 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         du_'91'kv'8242''8712'm'8321'm'8322''93'_4712 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.v=v′
d_v'61'v'8242'_4722 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_v'61'v'8242'_4722 = erased
-- Ledger.Conway.Conformance.Equivalence.Map._._._._._.kv∈m₁m₂
d_kv'8712'm'8321'm'8322'_4724 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kv'8712'm'8321'm'8322'_4724 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 ~v7 v8 v9
                              v10 ~v11 ~v12 ~v13
  = du_kv'8712'm'8321'm'8322'_4724 v2 v4 v8 v9 v10
du_kv'8712'm'8321'm'8322'_4724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kv'8712'm'8321'm'8322'_4724 v0 v1 v2 v3 v4
  = coe
      du_kv'8242''8712'm'8321'm'8322'_4720 (coe v0) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-∪⁺-distr-⊆
d_filter'7504''45''8746''8314''45'distr'45''8838'_4738 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'7504''45''8746''8314''45'distr'45''8838'_4738 ~v0 ~v1 v2
                                                       ~v3 v4 ~v5 ~v6 v7 v8 v9 v10 v11 v12
  = du_filter'7504''45''8746''8314''45'distr'45''8838'_4738
      v2 v4 v7 v8 v9 v10 v11 v12
du_filter'7504''45''8746''8314''45'distr'45''8838'_4738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_filter'7504''45''8746''8314''45'distr'45''8838'_4738 v0 v1 v2 v3
                                                        v4 v5 v6 v7
  = let v8
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
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
                          v1 v0 v3 v4))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                       (coe
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6)))
              v7 in
    coe
      (case coe v8 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
           -> let v11
                    = coe
                        MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                        erased v0 v5
                        (coe
                           MAlonzo.Code.Class.IsSet.du_dom_562
                           (coe
                              MAlonzo.Code.Axiom.Set.d_th_1480
                              (coe
                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                           (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v3)) in
              coe
                (let v12
                       = coe
                           MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                           erased v0 v5
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570) (coe v4)) in
                 coe
                   (case coe v11 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                        -> if coe v13
                             then coe
                                    seq (coe v14)
                                    (case coe v12 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                         -> if coe v15
                                              then coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4802 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                              else coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4882 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             else coe
                                    seq (coe v14)
                                    (case coe v12 of
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                         -> if coe v15
                                              then coe
                                                     seq (coe v16)
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                        (coe
                                                           du_'8707'b_4842 (coe v0) (coe v3)
                                                           (coe v4) (coe v5) (coe v1) (coe v2)))
                                              else coe
                                                     seq (coe v16)
                                                     (let v17
                                                            = let v17
                                                                    = coe
                                                                        MAlonzo.Code.Function.Bundles.d_from_1870
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe
                                                                              MAlonzo.Code.Axiom.Set.d_unions_198
                                                                              (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                 (coe
                                                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                              erased
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                 (coe
                                                                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                       (coe v3))
                                                                                    (coe
                                                                                       MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                          (coe
                                                                                             v4))))))
                                                                           v5)
                                                                        (coe
                                                                           du_'8746''8314''45'dom'8746'_2890
                                                                           (coe v0) (coe v1)
                                                                           (coe v3) (coe v4)
                                                                           (coe v5) (coe v6)
                                                                           (coe v10)) in
                                                              coe
                                                                (let v18
                                                                       = coe
                                                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                                                           (coe
                                                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                              (coe
                                                                                 MAlonzo.Code.Axiom.Set.d_listing_218
                                                                                 (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                    (coe
                                                                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                 erased
                                                                                 (coe
                                                                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                    (coe
                                                                                       MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                          (coe
                                                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                       (coe v3))
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                       (coe
                                                                                          MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          (coe
                                                                                             MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                          (coe v4))
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                                 (coe
                                                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_unions_198
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                   (coe
                                                                                                      v3))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                      (coe
                                                                                                         v4))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       du_'8746''8314''45'dom'8746'_2890
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v3)
                                                                                       (coe v4)
                                                                                       (coe v5)
                                                                                       (coe v6)
                                                                                       (coe v10)))))
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe
                                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                 (coe
                                                                                    MAlonzo.Code.Function.Bundles.d_from_1870
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe
                                                                                          MAlonzo.Code.Axiom.Set.d_unions_198
                                                                                          (MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                             (coe
                                                                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                          erased
                                                                                          (coe
                                                                                             MAlonzo.Code.Axiom.Set.du_fromList_430
                                                                                             (coe
                                                                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                (coe
                                                                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                             (coe
                                                                                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                                                                (coe
                                                                                                   MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                      (coe
                                                                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                   (coe
                                                                                                      v3))
                                                                                                (coe
                                                                                                   MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                                                                   (coe
                                                                                                      MAlonzo.Code.Class.IsSet.du_dom_562
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                                                                         (coe
                                                                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                                                                      (coe
                                                                                                         MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                                                                                      (coe
                                                                                                         v4))))))
                                                                                       v5)
                                                                                    (coe
                                                                                       du_'8746''8314''45'dom'8746'_2890
                                                                                       (coe v0)
                                                                                       (coe v1)
                                                                                       (coe v3)
                                                                                       (coe v4)
                                                                                       (coe v5)
                                                                                       (coe v6)
                                                                                       (coe
                                                                                          v10))))) in
                                                                 coe
                                                                   (case coe v18 of
                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v21
                                                                        -> case coe v17 of
                                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                               -> coe
                                                                                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                                                                    (coe
                                                                                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                       (coe v23))
                                                                             _ -> MAlonzo.RTE.mazUnreachableError
                                                                      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v21
                                                                        -> coe
                                                                             seq (coe v21)
                                                                             (case coe v17 of
                                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v22 v23
                                                                                  -> coe
                                                                                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                                                       (coe
                                                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                                          (coe v23))
                                                                                _ -> MAlonzo.RTE.mazUnreachableError)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)) in
                                                      coe
                                                        (coe
                                                           seq (coe v17)
                                                           (coe
                                                              MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                      _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₁′
d_m'8321''8242'_4794 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4794 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4794 v3 v12
du_m'8321''8242'_4794 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4794 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₂′
d_m'8322''8242'_4796 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4796 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4796 v4 v12
du_m'8322''8242'_4796 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4796 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4798 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4798 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4798 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4798 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4798 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_502
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
            (coe du_m'8322''8242'_4796 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4160 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.∃b
d_'8707'b_4802 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4802 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4802 v2 v3 v4 v5 v9 v12
du_'8707'b_4802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4802 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2900 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4794 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4796 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2984 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_198
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                              (coe du_m'8321''8242'_4794 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                 (coe du_m'8322''8242'_4796 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
         (coe v4) (coe v3)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.b
d_b_4804 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4804 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4804 v2 v3 v4 v5 v9 v12
du_b_4804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4804 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4802 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈′
d_kb'8712''8242'_4806 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4806 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4806 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4806 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4802 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈
d_kb'8712'_4808 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4808 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4808 v2 v3 v4 v5 v9 v12
du_kb'8712'_4808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4808 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4804 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4806 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₁′
d_m'8321''8242'_4834 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4834 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4834 v3 v12
du_m'8321''8242'_4834 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4834 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₂′
d_m'8322''8242'_4836 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4836 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4836 v4 v12
du_m'8322''8242'_4836 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4836 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4838 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4838 ~v0 ~v1 ~v2 v3 v4 v5 ~v6 v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4838 v3 v4 v5 v7 v12 v15
du_k'8712''8746'dom'8242'_4838 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4838 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
            (coe du_m'8321''8242'_4834 (coe v0) (coe v4)))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_502
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v1)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
         (coe
            du_'8712''45'dom'45'filter'691'_4160 (coe v4) (coe v2) (coe v1)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.∃b
d_'8707'b_4842 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4842 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4842 v2 v3 v4 v5 v9 v12
du_'8707'b_4842 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4842 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2900 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4834 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4836 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2984 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_198
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                              (coe du_m'8321''8242'_4834 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                 (coe du_m'8322''8242'_4836 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
         (coe v4) (coe v3)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.b
d_b_4844 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4844 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4844 v2 v3 v4 v5 v9 v12
du_b_4844 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4844 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4842 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈′
d_kb'8712''8242'_4846 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4846 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4846 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4846 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4846 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4842 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈
d_kb'8712'_4848 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4848 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4848 v2 v3 v4 v5 v9 v12
du_kb'8712'_4848 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4848 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4844 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4846 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₁′
d_m'8321''8242'_4874 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8321''8242'_4874 ~v0 ~v1 ~v2 v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8321''8242'_4874 v3 v12
du_m'8321''8242'_4874 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8321''8242'_4874 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.m₂′
d_m'8322''8242'_4876 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_m'8322''8242'_4876 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10
                     ~v11 v12 ~v13 ~v14 ~v15 ~v16
  = du_m'8322''8242'_4876 v4 v12
du_m'8322''8242'_4876 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_m'8322''8242'_4876 v0 v1
  = coe
      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
      (\ v2 ->
         coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.k∈∪dom′
d_k'8712''8746'dom'8242'_4878 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_k'8712''8746'dom'8242'_4878 ~v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 ~v9
                              ~v10 ~v11 v12 ~v13 ~v14 v15 ~v16
  = du_k'8712''8746'dom'8242'_4878 v3 v4 v5 v6 v12 v15
du_k'8712''8746'dom'8242'_4878 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_k'8712''8746'dom'8242'_4878 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Class.IsSet.d_toSet_502
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
            (coe
               MAlonzo.Code.Class.IsSet.du_dom_562
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                  (\ v6 ->
                     coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                  v0)))
         (coe
            MAlonzo.Code.Class.IsSet.du_dom_562
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
            (coe du_m'8322''8242'_4876 (coe v1) (coe v4)))
         (coe v2))
      (coe
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
         (coe
            du_'8712''45'dom'45'filter'691'_4160 (coe v4) (coe v2) (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.∃b
d_'8707'b_4882 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8707'b_4882 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
               ~v13 ~v14 ~v15 ~v16
  = du_'8707'b_4882 v2 v3 v4 v5 v9 v12
du_'8707'b_4882 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8707'b_4882 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8741'_'8746''8314'_'8741'_2900 (coe v0) (coe v4) (coe v3)
         (coe du_m'8321''8242'_4874 (coe v1) (coe v5))
         (coe du_m'8322''8242'_4876 (coe v2) (coe v5))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_'8712''45'incl'45'set_2984 (coe v0)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_unions_198
                     (MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                     erased
                     (coe
                        MAlonzo.Code.Axiom.Set.du_fromList_430
                        (coe
                           MAlonzo.Code.Axiom.Set.d_th_1480
                           (coe
                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                           (coe
                              MAlonzo.Code.Class.IsSet.du_dom_562
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                 (coe
                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                              (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                              (coe du_m'8321''8242'_4874 (coe v1) (coe v5)))
                           (coe
                              MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                              (coe
                                 MAlonzo.Code.Class.IsSet.du_dom_562
                                 (coe
                                    MAlonzo.Code.Axiom.Set.d_th_1480
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                 (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                 (coe du_m'8322''8242'_4876 (coe v2) (coe v5))))))))
               (coe v3))))
      (coe
         du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
         (coe v4) (coe v3)
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v1))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
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
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v2))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))))
            erased))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.b
d_b_4884 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_b_4884 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12 ~v13 ~v14
         ~v15 ~v16
  = du_b_4884 v2 v3 v4 v5 v9 v12
du_b_4884 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny
du_b_4884 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         du_'8707'b_4882 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈′
d_kb'8712''8242'_4886 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712''8242'_4886 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11
                      v12 ~v13 ~v14 ~v15 ~v16
  = du_kb'8712''8242'_4886 v2 v3 v4 v5 v9 v12
du_kb'8712''8242'_4886 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712''8242'_4886 v0 v1 v2 v3 v4 v5
  = coe
      du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 (coe v0)
      (coe v4) (coe v5) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_'8707'b_4882 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.kb∈
d_kb'8712'_4888 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_kb'8712'_4888 ~v0 ~v1 v2 v3 v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 v12
                ~v13 ~v14 ~v15 ~v16
  = du_kb'8712'_4888 v2 v3 v4 v5 v9 v12
du_kb'8712'_4888 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_kb'8712'_4888 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
            (coe
               MAlonzo.Code.Axiom.Set.d_th_1480
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
            (coe
               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
               (coe
                  MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  v4 v0 v1 v2))
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
               (coe
                  (\ v6 ->
                     coe v5 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  du_b_4884 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))))
         (coe
            du_kb'8712''8242'_4886 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-∪⁺-distr
d_filter'7504''45''8746''8314''45'distr_4958 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45''8746''8314''45'distr_4958 ~v0 ~v1 v2 ~v3 v4 ~v5
                                             ~v6 v7 v8 v9
  = du_filter'7504''45''8746''8314''45'distr_4958 v2 v4 v7 v8 v9
du_filter'7504''45''8746''8314''45'distr_4958 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45''8746''8314''45'distr_4958 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8838'_4738 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
      (coe
         (\ v5 v6 ->
            coe
              du_filter'7504''45''8746''8314''45'distr'45''8839'_4656 (coe v0)
              (coe v1) (coe v2) (coe v3) (coe v4)
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-singleton-true
d_filter'7504''45'singleton'45'true_4964 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'singleton'45'true_4964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 v7 v8 v9 v10
  = du_filter'7504''45'singleton'45'true_4964 v7 v8 v9 v10
du_filter'7504''45'singleton'45'true_4964 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'singleton'45'true_4964 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                       (coe
                          (\ v6 ->
                             coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                    (coe v4))
                 v5)))
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                    (coe
                       (\ v6 ->
                          coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                 (coe v4))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-singleton-false
d_filter'7504''45'singleton'45'false_4978 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'singleton'45'false_4978 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                          ~v6 ~v7 ~v8 ~v9 ~v10
  = du_filter'7504''45'singleton'45'false_4978
du_filter'7504''45'singleton'45'false_4978 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'singleton'45'false_4978
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.filterᵐ-restrict
d_filter'7504''45'restrict_4988 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'restrict_4988 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_filter'7504''45'restrict_4988 v2 v7 v8 v9
du_filter'7504''45'restrict_4988 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'restrict_4988 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     (\ v7 ->
                        let v8
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased v0)
                                              (coe v2) (coe v3)))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                           (coe
                                              (\ v8 ->
                                                 coe
                                                   v1
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v8))))))
                                     v4)
                                  v7 in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                               -> let v11
                                        = coe
                                            du_res'7580''45'dom'8713''8315'_3274 (coe v0) (coe v2)
                                            (coe v3) (coe v5) (coe v6) (coe v10) in
                                  coe
                                    (case coe v11 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3288 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                 (\ v14 ->
                                                    coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v14)))
                                                 v2)
                                              (coe v3) (coe v5) (coe v6)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v2))
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                          (coe
                                                             (\ v14 ->
                                                                coe
                                                                  v1
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v14)))))
                                                       (coe v4))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v9) (coe v12)))
                                                 (coe v13))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v4 ->
            case coe v4 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                -> coe
                     (\ v7 ->
                        let v8
                              = coe
                                  du_res'7580''45'dom'8713''8315'_3274 (coe v0)
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                     (\ v8 ->
                                        coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                     v2)
                                  (coe v3) (coe v5) (coe v6) (coe v7) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                               -> coe
                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                       (coe
                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                          (coe
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                       (coe
                                          MAlonzo.Code.Class.IsSet.d_toSet_502
                                          (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                erased v0)
                                             (coe v2) (coe v3)))
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                          (coe
                                             (\ v11 ->
                                                coe
                                                  v1
                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                     (coe v11)))))
                                       (coe v4))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v2))
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                   (coe
                                                      (\ v11 ->
                                                         coe
                                                           v1
                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                              (coe v11)))))
                                                (coe v4))
                                             v9))
                                       (coe
                                          du_res'7580''45'dom'8713''8314'_3288 (coe v0) (coe v2)
                                          (coe v3) (coe v5) (coe v6)
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe
                                                   MAlonzo.Code.Function.Bundles.d_from_1870
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                                         (coe
                                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v2))
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                         (coe
                                                            (\ v11 ->
                                                               coe
                                                                 v1
                                                                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v11)))))
                                                      (coe v4))
                                                   v9))
                                             (coe v10))))
                             _ -> MAlonzo.RTE.mazUnreachableError))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.∈-filter-res-
d_'8712''45'filter'45'res'45'_5074 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'45'res'45'_5074 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                   v9 v10 v11
  = du_'8712''45'filter'45'res'45'_5074 v2 v7 v8 v9 v10 v11
du_'8712''45'filter'45'res'45'_5074 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'45'res'45'_5074 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
               (coe
                  MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
               (coe
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                  (coe
                     (\ v6 ->
                        coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
               (coe v3))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_830
               (MAlonzo.Code.Axiom.Set.d_th_1480
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
               (coe
                  MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                  erased v0)
               (coe
                  MAlonzo.Code.Axiom.Set.du_filter_422
                  (MAlonzo.Code.Axiom.Set.d_th_1480
                     (coe
                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                  (coe
                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                     (coe
                        (\ v6 ->
                           coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
                  (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4)))
               (coe
                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                  (coe
                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                     (coe
                        MAlonzo.Code.Axiom.Set.d_th_1480
                        (coe
                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                  v2)
               v3 v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1518
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480
            (coe
               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
            erased v0)
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
            (\ v6 ->
               coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
            v4)
         (coe v2) (coe v3) (coe v5))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.≡ᵉ.isPartialEquivalence
d_isPartialEquivalence_5084 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_5084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_isPartialEquivalence_5084
du_isPartialEquivalence_5084 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_5084
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
-- Ledger.Conway.Conformance.Equivalence.Map._._._.≡ᵉ.refl
d_refl_5086 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_refl_5086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_refl_5086
du_refl_5086 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_refl_5086
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v0 v1 -> v1))
      (coe (\ v0 v1 -> v1))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.≡ᵉ.reflexive
d_reflexive_5088 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_reflexive_5088 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_reflexive_5088
du_reflexive_5088 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_reflexive_5088 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282)
      v0
-- Ledger.Conway.Conformance.Equivalence.Map._._._.≡ᵉ.sym
d_sym_5090 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_sym_5090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
  = du_sym_5090 v10
du_sym_5090 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_sym_5090 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Conformance.Equivalence.Map._._._.≡ᵉ.trans
d_trans_5092 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_trans_5092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 v11 v12
  = du_trans_5092 v11 v12
du_trans_5092 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_trans_5092 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v0 v2 v3)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v0 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1 v2 v3)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.restrict-singleton-filterᵐ-false
d_restrict'45'singleton'45'filter'7504''45'false_5138 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_restrict'45'singleton'45'filter'7504''45'false_5138 ~v0 ~v1 v2
                                                      ~v3 ~v4 ~v5 ~v6 v7 v8 v9 ~v10
  = du_restrict'45'singleton'45'filter'7504''45'false_5138
      v2 v7 v8 v9
du_restrict'45'singleton'45'filter'7504''45'false_5138 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_restrict'45'singleton'45'filter'7504''45'false_5138 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
              (\ v4 v5 v6 ->
                 coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                 (coe
                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                    (\ v4 ->
                       coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                    v3))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                       erased v0)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                       (\ v4 ->
                          coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                       v3)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                       (MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       erased v2)))
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
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                       (\ v4 ->
                          coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                       v3))
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__682
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                          erased v0)
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                          (\ v4 ->
                             coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                          v3)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                          (MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          erased v2)))
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
                       MAlonzo.Code.Axiom.Set.du__'8746'__682
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2))))
                    (coe
                       MAlonzo.Code.Axiom.Set.du__'8746'__682
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8709'_444
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2))))
                    (coe
                       MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                             erased v0)
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v4 ->
                                coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                             v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased v2)))
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
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9
                                             v10))))))
                       (coe
                          MAlonzo.Code.Axiom.Set.du__'8746'__682
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8709'_444
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                             (coe
                                (\ v4 ->
                                   coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe (\ v5 v6 -> v6)) (coe (\ v5 v6 -> v6)))))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2))))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_802
                          (MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                             (coe
                                MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                   erased v0)
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                   (\ v4 ->
                                      coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                   v3)
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased v2)))))
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8709'_444
                          (coe
                             MAlonzo.Code.Axiom.Set.d_th_1480
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                          (coe
                             MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                erased v0)
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                (\ v4 ->
                                   coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                v3)
                             (coe
                                MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
                                (MAlonzo.Code.Axiom.Set.d_th_1480
                                   (coe
                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                erased v2)))
                       (coe
                          du_'172'P'8594'res'45''8709'_5150 (coe v0) (coe v1) (coe v2)
                          (coe v3))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v4 v5 -> v5))
                          (coe (\ v4 v5 -> v5)))))
                 (let v4
                        = coe
                            MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_876
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                            (coe
                               MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                               erased v0)
                            (let v4
                                   = MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8) in
                             coe
                               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v4 erased v2))
                            (coe
                               MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                  (\ v4 ->
                                     coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                                  v3))
                            (coe
                               MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_668
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_th_1480
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                               (coe v2) (coe v0)) in
                  coe
                    (case coe v4 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                         -> coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
                       _ -> MAlonzo.RTE.mazUnreachableError))) in
    coe
      (case coe v4 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v5)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Conway.Conformance.Equivalence.Map._._._._.¬P→res-∅
d_'172'P'8594'res'45''8709'_5150 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'172'P'8594'res'45''8709'_5150 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8
                                 v9 ~v10
  = du_'172'P'8594'res'45''8709'_5150 v2 v7 v8 v9
du_'172'P'8594'res'45''8709'_5150 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'172'P'8594'res'45''8709'_5150 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1518
                      (coe
                         MAlonzo.Code.Axiom.Set.d_th_1480
                         (coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                      (coe
                         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                         erased v0)
                      (coe
                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                         (\ v6 ->
                            coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                         v3)
                      (coe v2) (coe v4) (coe v5) in
            coe
              (seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
      (coe (\ v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lem-add-included
d_lem'45'add'45'included_5168 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'included_5168 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 v11
  = du_lem'45'add'45'included_5168 v2 v4 v7 v8 v9 v10 v11
du_lem'45'add'45'included_5168 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'included_5168 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_'8746''8314''45'cong'45'l_3802 (coe v0) (coe v1)
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
                          (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                       (coe
                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                          (\ v9 ->
                             coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                          v4)))
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
                                MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                (coe
                                   MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                   (coe
                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                             (coe
                                (\ v9 ->
                                   coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                    (coe
                       (\ v9 v10 v11 v12 v13 ->
                          coe
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
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                            v9 v10 v11
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
                                        (\ v14 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))))
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
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                     (coe v10)))
                               (\ v14 v15 -> v14) v12 v13)
                            (coe
                               MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                               (\ v14 v15 -> v15)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                     (coe
                                        (\ v14 ->
                                           coe
                                             v2
                                             (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))))
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
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                              (coe v5)))))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                     (coe v11)))
                               v12 v13))))
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
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                    erased)
                 (coe
                    du_filter'7504''45'singleton'45'true_4964 (coe v2) (coe v3)
                    (coe v5) (coe v6)))
              v7
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    du_filter'7504''45''8746''8314''45'distr_4958 (coe v0) (coe v1)
                    (coe v2) (coe v4)
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
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
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
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
                 v7 v8)))
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 du_filter'7504''45''8746''8314''45'distr_4958 (coe v0) (coe v1)
                 (coe v2) (coe v4)
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
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
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
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
              v7
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'8746''8314''45'cong'45'l_3802 (coe v0) (coe v1)
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
                             (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                             (\ v9 ->
                                coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                             v4)))
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
                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                   (coe
                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe v5))))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                (coe
                                   (\ v9 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))))))
                       (coe
                          (\ v9 v10 v11 v12 v13 ->
                             coe
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
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                               v9 v10 v11
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
                                           (\ v14 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14)))))
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
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v10)))
                                  (\ v14 v15 -> v14) v12 v13)
                               (coe
                                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                  (\ v14 v15 -> v15)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                        (coe
                                           (\ v14 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v14)))))
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
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                        (coe v11)))
                                  v12 v13))))
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
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
                       erased)
                    (coe
                       du_filter'7504''45'singleton'45'true_4964 (coe v2) (coe v3)
                       (coe v5) (coe v6)))
                 v7 v8)))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lem-add-excluded
d_lem'45'add'45'excluded_5172 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'add'45'excluded_5172 ~v0 ~v1 v2 ~v3 v4 ~v5 ~v6 v7 v8 v9
                              v10 ~v11
  = du_lem'45'add'45'excluded_5172 v2 v4 v7 v8 v9 v10
du_lem'45'add'45'excluded_5172 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'add'45'excluded_5172 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v6 v7 ->
            let v8
                  = coe
                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                      (\ v8 ->
                         coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                      v4 in
            coe
              (let v9 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6) in
               coe
                 (let v10
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_replacement_210
                                  (MAlonzo.Code.Axiom.Set.d_th_1480
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                  erased erased
                                  (\ v10 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                       (coe
                                          MAlonzo.Code.Data.These.Base.du_fold_92
                                          (coe (\ v11 -> v11)) (coe (\ v11 -> v11))
                                          (coe
                                             MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
                                             (coe
                                                MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
                                                (coe v1)))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                (\ v11 ->
                                                   coe
                                                     v2
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v11)))
                                                v4)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_th_1480
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                (coe v10)))))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                                     (coe v0)
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
                                                   v2
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v10)))
                                              v4))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))))))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  du_'8746''8314''45'cong'45'l_3802 (coe v0) (coe v1)
                                  (coe
                                     MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                     (\ v10 ->
                                        coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                     v4)
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
                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                 (coe
                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v3) (coe v5))))
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                              (coe
                                                 (\ v10 ->
                                                    coe
                                                      v2
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v10)))))))
                                     (coe
                                        (\ v10 v11 v12 v13 v14 ->
                                           coe
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
                                                   (coe v3) (coe v5)))
                                             v10 v11 v12
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
                                                         (\ v15 ->
                                                            coe
                                                              v2
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v15)))))
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
                                                               (coe v3) (coe v5)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v10) (coe v11)))
                                                (\ v15 v16 -> v15) v13 v14)
                                             (coe
                                                MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                                (\ v15 v16 -> v16)
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v15 ->
                                                            coe
                                                              v2
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v15)))))
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
                                                               (coe v3) (coe v5)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v10) (coe v12)))
                                                v13 v14))))
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
                                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                                     (coe
                                        (\ v10 v11 v12 v13 v14 ->
                                           coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                                  (coe du_filter'7504''45'singleton'45'false_4978))
                               v6
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe
                                     du_filter'7504''45''8746''8314''45'distr_4958 (coe v0) (coe v1)
                                     (coe v2) (coe v4)
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
                                                    (coe v3) (coe v5)))))
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
                                                 (coe v3) (coe v5))))))
                                  v6 v7)) in
                  coe
                    (case coe v10 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> case coe v11 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                -> coe
                                     seq (coe v12)
                                     (coe
                                        du_'8712''45'lookup'7504''8712'_2934 (coe v9) (coe v8)
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                           (coe
                                              du_'8746''8314''45'id'45'dom'8712'_3892 (coe v9)
                                              (coe v8))
                                           v14))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError)))))
      (coe
         (\ v6 v7 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 du_filter'7504''45''8746''8314''45'distr_4958 (coe v0) (coe v1)
                 (coe v2) (coe v4)
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
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))))
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
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
              v6
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    du_'8746''8314''45'cong'45'l_3802 (coe v0) (coe v1)
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                       (\ v8 ->
                          coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                       v4)
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
                                   MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                   (coe
                                      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_th_1480
                                         (coe
                                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                      (coe v5))))
                             (coe
                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                (coe
                                   (\ v8 ->
                                      coe
                                        v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))))))
                       (coe
                          (\ v8 v9 v10 v11 v12 ->
                             coe
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
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5)))
                               v8 v9 v10
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
                                           (\ v13 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v13)))))
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
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                        (coe v9)))
                                  (\ v13 v14 -> v13) v11 v12)
                               (coe
                                  MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
                                  (\ v13 v14 -> v14)
                                  (coe
                                     MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                     (coe
                                        MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                        (coe
                                           (\ v13 ->
                                              coe
                                                v2
                                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe v13)))))
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
                                                 (coe v3) (coe v5)))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                        (coe v10)))
                                  v11 v12))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_listing_218
                             (MAlonzo.Code.Axiom.Set.d_th_1480
                                (coe
                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                             erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                       (coe
                          (\ v8 v9 v10 v11 v12 ->
                             coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))
                    (coe du_filter'7504''45'singleton'45'false_4978))
                 v6
                 (let v8
                        = coe
                            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                            (\ v8 ->
                               coe v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                            v4 in
                  coe
                    (let v9 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6) in
                     coe
                       (coe
                          du_k'215''8741''8746''8314''8741''8712''8746''8314'''_3018 (coe v0)
                          (coe v1) (coe v9) (coe v8)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_listing_218
                                   (MAlonzo.Code.Axiom.Set.d_th_1480
                                      (coe
                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                   erased (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                             (coe
                                (\ v10 v11 v12 v13 v14 ->
                                   coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)))))))))
-- Ledger.Conway.Conformance.Equivalence.Map._._._.lem-del-excluded
d_lem'45'del'45'excluded_5178 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Algebra.Structures.T_IsCommutativeSemigroup_568 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lem'45'del'45'excluded_5178 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                              ~v10
  = du_lem'45'del'45'excluded_5178 v2 v7 v8 v9
du_lem'45'del'45'excluded_5178 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lem'45'del'45'excluded_5178 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 du_restrict'45'singleton'45'filter'7504''45'false_5138 (coe v0)
                 (coe v1) (coe v2) (coe v3))
              v4
              (let v6
                     = coe
                         MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                         (coe
                            MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                            (coe
                               MAlonzo.Code.Axiom.Set.d_th_1480
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                         v2 in
               coe
                 (let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4) in
                  coe
                    (let v8 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4) in
                     coe
                       (let v9
                              = coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_188
                                        (MAlonzo.Code.Axiom.Set.d_th_1480
                                           (coe
                                              MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                        erased erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Map.du__'738'_554
                                           (coe
                                              MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_th_1480
                                                 (coe
                                                    MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                                 erased v0)
                                              (coe v3)
                                              (coe
                                                 MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                                 (coe
                                                    MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                                 v2)))
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                           (coe
                                              (\ v9 ->
                                                 coe
                                                   v1
                                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v9))))))
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                        (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))))
                                  v5 in
                        coe
                          (case coe v9 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                               -> let v12
                                        = coe
                                            du_res'7580''45'dom'8713''8315'_3274 (coe v0) (coe v3)
                                            (coe v6) (coe v7) (coe v8) (coe v11) in
                                  coe
                                    (case coe v12 of
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                         -> coe
                                              du_res'7580''45'dom'8713''8314'_3288 (coe v0)
                                              (coe
                                                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                                 (\ v15 ->
                                                    coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe v15)))
                                                 v3)
                                              (coe v6) (coe v7) (coe v8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe
                                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_th_1480
                                                          (coe
                                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v3))
                                                       (coe
                                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                          (coe
                                                             (\ v15 ->
                                                                coe
                                                                  v1
                                                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                     (coe v15)))))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v7) (coe v8)))
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v10) (coe v13)))
                                                 (coe v14))
                                       _ -> MAlonzo.RTE.mazUnreachableError)
                             _ -> MAlonzo.RTE.mazUnreachableError)))))))
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                      (coe
                         MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                         (coe
                            MAlonzo.Code.Axiom.Set.d_th_1480
                            (coe
                               MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                      v2 in
            coe
              (let v7 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4) in
               coe
                 (let v8 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4) in
                  coe
                    (let v9
                           = coe
                               du_res'7580''45'dom'8713''8315'_3274 (coe v0)
                               (coe
                                  MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_filter'7504'_1200
                                  (\ v9 ->
                                     coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                  v3)
                               (coe
                                  MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                                  (coe
                                     MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_th_1480
                                        (coe
                                           MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
                                  v2)
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     du_restrict'45'singleton'45'filter'7504''45'false_5138 (coe v0)
                                     (coe v1) (coe v2) (coe v3))
                                  v4 v5) in
                     coe
                       (case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                            -> coe
                                 MAlonzo.Code.Function.Bundles.d_to_1868
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                    (coe
                                       MAlonzo.Code.Axiom.Set.d_th_1480
                                       (coe
                                          MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                    (coe
                                       MAlonzo.Code.Class.IsSet.d_toSet_502
                                       (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570)
                                       (coe
                                          MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_th_1480
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
                                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8
                                             erased v0)
                                          (coe v3) (coe v6)))
                                    (coe
                                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                       (coe
                                          (\ v12 ->
                                             coe
                                               v1
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe v12)))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                       (coe v8)))
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                       (coe
                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                          (coe
                                             MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                             (coe
                                                MAlonzo.Code.Axiom.Set.d_th_1480
                                                (coe
                                                   MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                                             (coe
                                                MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                (coe
                                                   (\ v12 ->
                                                      coe
                                                        v1
                                                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v12)))))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                                (coe v8)))
                                          v10))
                                    (coe
                                       du_res'7580''45'dom'8713''8314'_3288 (coe v0) (coe v3)
                                       (coe v6) (coe v7) (coe v8)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_from_1870
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_th_1480
                                                      (coe
                                                         MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                      (coe v3))
                                                   (coe
                                                      MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.du_to'45'sp_1132
                                                      (coe
                                                         (\ v12 ->
                                                            coe
                                                              v1
                                                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v12)))))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v7) (coe v8)))
                                                v10))
                                          (coe v11))))
                          _ -> MAlonzo.RTE.mazUnreachableError))))))
