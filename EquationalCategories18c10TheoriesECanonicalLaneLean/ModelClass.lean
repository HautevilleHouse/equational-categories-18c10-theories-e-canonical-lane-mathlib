import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure ModelClass (S : EquationSignature) (T : TermAlgebra S) where
  modelsEquations : Prop
  closedUnderProducts : Prop
  closedUnderSubalgebras : Prop
  closedUnderHomomorphicImages : Prop

definition ModelClassEvidence (S : EquationSignature) (T : TermAlgebra S) (M : ModelClass S T) where
  modelsEquationsClosed : M.modelsEquations
  closedUnderProductsClosed : M.closedUnderProducts
  closedUnderSubalgebrasClosed : M.closedUnderSubalgebras
  closedUnderHomomorphicImagesClosed : M.closedUnderHomomorphicImages

def ModelClassClosed (S : EquationSignature) (T : TermAlgebra S) (M : ModelClass S T) : Prop :=
  M.modelsEquations ∧ M.closedUnderProducts ∧ M.closedUnderSubalgebras ∧ M.closedUnderHomomorphicImages

theorem model_class_closed_from_evidence
    (S : EquationSignature) (T : TermAlgebra S) (M : ModelClass S T) (E : ModelClassEvidence S T M) :
    ModelClassClosed S T M := by
  exact And.intro E.modelsEquationsClosed
    (And.intro E.closedUnderProductsClosed
      (And.intro E.closedUnderSubalgebrasClosed E.closedUnderHomomorphicImagesClosed))

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse