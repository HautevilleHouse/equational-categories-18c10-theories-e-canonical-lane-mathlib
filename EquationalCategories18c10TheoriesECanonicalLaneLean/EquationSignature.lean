import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure EquationSignature where
  sorts : Type
  operations : List (List sorts × sorts)
  arityLaw : Prop

definition EquationSignatureEvidence (S : EquationSignature) where
  arityLawClosed : S.arityLaw

def EquationSignatureClosed (S : EquationSignature) : Prop :=
  S.arityLaw

theorem equation_signature_closed_from_evidence
    (S : EquationSignature) (E : EquationSignatureEvidence S) :
    EquationSignatureClosed S := by
  exact E.arityLawClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse