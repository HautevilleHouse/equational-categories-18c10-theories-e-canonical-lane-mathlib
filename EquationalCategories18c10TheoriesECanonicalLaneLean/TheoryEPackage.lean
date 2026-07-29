import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure TheoryEPackage where
  signature : Type u
  equations : Type v
  equationalTheory : Prop
  closureUnderDeduction : Prop

structure TheoryEEvidence (T : TheoryEPackage) where
  equationalTheoryClosed : T.equationalTheory
  closureUnderDeductionClosed : T.closureUnderDeduction

def TheoryEClosed (T : TheoryEPackage) : Prop :=
  T.equationalTheory ∧ T.closureUnderDeduction

theorem theory_e_closed_from_evidence (T : TheoryEPackage) (E : TheoryEEvidence T) : TheoryEClosed T := by
  exact And.intro E.equationalTheoryClosed E.closureUnderDeductionClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse