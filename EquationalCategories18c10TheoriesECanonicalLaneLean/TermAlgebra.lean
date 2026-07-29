import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.SignaturePackage

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure TermAlgebra (S : Signature) where
  carrier : Type
  var : S.sorts → carrier
  op : (f : S.operations) → (List (carrier) with length = S.arity f) → carrier
  distinctVariables : ∀ s1 s2, s1 ≠ s2 → var s1 ≠ var s2
  opInjective : ∀ f1 f2, (∀ args, op f1 args = op f2 args) → f1 = f2

structure TermAlgebraEvidence (S : Signature) (T : TermAlgebra S) where
  carrierClosed : Nonempty T.carrier
  variableDistinctClosed : T.distinctVariables
  opInjectiveClosed : T.opInjective

def TermAlgebraClosed (S : Signature) (T : TermAlgebra S) : Prop :=
  Nonempty T.carrier ∧ T.distinctVariables ∧ T.opInjective

theorem term_algebra_closed_from_evidence (S : Signature) (T : TermAlgebra S) (E : TermAlgebraEvidence S T) : TermAlgebraClosed S T :=
  And.intro E.carrierClosed (And.intro E.variableDistinctClosed E.opInjectiveClosed)

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse