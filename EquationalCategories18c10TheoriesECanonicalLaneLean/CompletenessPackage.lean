import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure CompletenessPackage where
  theory : TheoryEPackage
  modelCategory : ModelCategoryPackage
  soundness : Prop
  completeness : Prop

structure CompletenessEvidence (C : CompletenessPackage) where
  soundnessClosed : C.soundness
  completenessClosed : C.completeness

def CompletenessClosed (C : CompletenessPackage) : Prop :=
  C.soundness ∧ C.completeness

theorem completeness_closed_from_evidence (C : CompletenessPackage)
    (E : CompletenessEvidence C) : CompletenessClosed C := by
  exact And.intro E.soundnessClosed E.completenessClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse