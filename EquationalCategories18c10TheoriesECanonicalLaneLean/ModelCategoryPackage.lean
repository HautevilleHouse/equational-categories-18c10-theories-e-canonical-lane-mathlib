import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure ModelCategoryPackage where
  category : EquationalCategoryPackage
  theory : TheoryEPackage
  interpretation : Type
  satisfaction : Prop

structure ModelCategoryEvidence (M : ModelCategoryPackage) where
  interpretationDefined : Prop
  satisfactionClosed : M.satisfaction

def ModelCategoryClosed (M : ModelCategoryPackage) : Prop :=
  M.satisfaction

theorem model_category_closed_from_evidence (M : ModelCategoryPackage)
    (E : ModelCategoryEvidence M) : ModelCategoryClosed M := by
  exact E.satisfactionClosed

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse