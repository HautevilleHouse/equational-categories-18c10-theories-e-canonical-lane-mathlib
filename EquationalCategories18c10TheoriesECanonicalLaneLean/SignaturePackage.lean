import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Signature where
  sorts : Type u
  operations : Type v
  arity : operations → List sorts
  resultSort : operations → sorts
  operationNames : operations → String

structure SignatureEvidence (S : Signature) where
  sortsClosed : Nonempty S.sorts
  operationsClosed : Nonempty S.operations
  arityWellDefined : ∀ f, S.arity f ≠ []
  resultSortConsistent : ∀ f, S.resultSort f ∈ S.arity f

def SignatureClosed (S : Signature) : Prop :=
  Nonempty S.sorts ∧ Nonempty S.operations ∧ (∀ f, S.arity f ≠ []) ∧ (∀ f, S.resultSort f ∈ S.arity f)

theorem signature_closed_from_evidence (S : Signature) (E : SignatureEvidence S) : SignatureClosed S :=
  And.intro E.sortsClosed (And.intro E.operationsClosed (And.intro E.arityWellDefined E.resultSortConsistent))

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse