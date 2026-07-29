import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure FunctorialSemanticsPackage where
  source : EquationalCategoryPackage
  target : EquationalCategoryPackage
  functor : Type
  preservesStructure : Prop
  preservesEquations : Prop

structure FunctorialSemanticsEvidence (F : FunctorialSemanticsPackage) where
  preservesStructureClosed : F.preservesStructure
  preservesEquationsClosed : F.preservesEquations

def FunctorialSemanticsClosed (F : FunctorialSemanticsPackage) : Prop :=
  F.preservesStructure ∧ F.preservesEquations

theorem functorial_semantics_closed_from_evidence (F : FunctorialSemanticsPackage)
    (E : FunctorialSemanticsEvidence F) : FunctorialSemanticsClosed F := by
  exact And.intro E.preservesStructureClosed E.preservesEquationsClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse