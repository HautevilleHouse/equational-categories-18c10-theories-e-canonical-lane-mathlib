import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.SignaturePackage
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.TermAlgebra

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Equation (S : Signature) where
  lhs : TermAlgebra S
  rhs : TermAlgebra S

structure EquationalTheory (S : Signature) where
  equations : Set (Equation S)
  closedUnderDeduction : Prop
  includesAllVariables : ∀ s, ∃ e : Equation S, e ∈ equations ∧ (e.lhs.var s = e.rhs.var s)

structure EquationalTheoryEvidence (S : Signature) (E : EquationalTheory S) where
  closedUnderDeductionClosed : E.closedUnderDeduction
  includesAllVariablesClosed : E.includesAllVariables

def EquationalTheoryClosed (S : Signature) (E : EquationalTheory S) : Prop :=
  E.closedUnderDeduction ∧ E.includesAllVariables

theorem equational_theory_closed_from_evidence (S : Signature) (E : EquationalTheory S) (Ev : EquationalTheoryEvidence S E) : EquationalTheoryClosed S E :=
  And.intro Ev.closedUnderDeductionClosed Ev.includesAllVariablesClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse