import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure EquationalTheoryPackage where
  signature : Type u
  equations : Type v
  theoryPresentation : Prop
  theoryEquationsConsistent : Prop

structure EquationalTheoryEvidence (T : EquationalTheoryPackage) where
  theoryPresentationClosed : T.theoryPresentation
  theoryEquationsConsistentClosed : T.theoryEquationsConsistent

def EquationalTheoryClosed (T : EquationalTheoryPackage) : Prop :=
  T.theoryPresentation ∧ T.theoryEquationsConsistent

theorem equational_theory_closed_from_evidence (T : EquationalTheoryPackage)
    (E : EquationalTheoryEvidence T) : EquationalTheoryClosed T := by
  exact And.intro E.theoryPresentationClosed E.theoryEquationsConsistentClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
