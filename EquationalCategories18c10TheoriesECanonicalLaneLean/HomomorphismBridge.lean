import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.ModelCategory

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure HomomorphismBridge {T : EquationalTheoryPackage}
    (M : ModelCategoryPackage T) where
  source : M.objects
  target : M.objects
  mapDefined : Prop
  preservesEquations : Prop

structure HomomorphismEvidence {T : EquationalTheoryPackage}
    {M : ModelCategoryPackage T} (H : HomomorphismBridge M) where
  mapDefinedClosed : H.mapDefined
  preservesEquationsClosed : H.preservesEquations

def HomomorphismClosed {T : EquationalTheoryPackage}
    {M : ModelCategoryPackage T} (H : HomomorphismBridge M) : Prop :=
  H.mapDefined ∧ H.preservesEquations

theorem homomorphism_closed_from_evidence {T : EquationalTheoryPackage}
    {M : ModelCategoryPackage T} (H : HomomorphismBridge M)
    (E : HomomorphismEvidence H) : HomomorphismClosed H := by
  exact And.intro E.mapDefinedClosed E.preservesEquationsClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
