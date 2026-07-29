import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.EquationalTheoryPackage

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure ModelCategoryPackage {T : EquationalTheoryPackage} where
  category : Type u
  objects : Type v
  morphisms : Type w
  compositionDefined : Prop
  identityMorphisms : Prop
  functorToSet : Prop

structure ModelCategoryEvidence {T : EquationalTheoryPackage}
    (M : ModelCategoryPackage T) where
  compositionDefinedClosed : M.compositionDefined
  identityMorphismsClosed : M.identityMorphisms
  functorToSetClosed : M.functorToSet

def ModelCategoryClosed {T : EquationalTheoryPackage}
    (M : ModelCategoryPackage T) : Prop :=
  M.compositionDefined ∧ M.identityMorphisms ∧ M.functorToSet

theorem model_category_closed_from_evidence {T : EquationalTheoryPackage}
    (M : ModelCategoryPackage T) (E : ModelCategoryEvidence M) :
    ModelCategoryClosed M := by
  exact And.intro E.compositionDefinedClosed
    (And.intro E.identityMorphismsClosed E.functorToSetClosed)

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
