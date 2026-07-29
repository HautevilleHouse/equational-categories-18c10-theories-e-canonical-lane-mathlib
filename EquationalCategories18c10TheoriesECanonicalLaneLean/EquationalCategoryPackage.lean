import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure EquationalCategoryPackage where
  objects : Type u
  arrows : Type v
  source : arrows → objects
  target : arrows → objects
  identity : objects → arrows
  composition : (f g : arrows) → target f = source g → arrows
  identityLawLeft : ∀ (f : arrows), composition (identity (source f)) f (by rfl) = f
  identityLawRight : ∀ (f : arrows), composition f (identity (target f)) (by rfl) = f
  associativityLaw : ∀ (f g h : arrows) (h1 : target f = source g) (h2 : target g = source h),
    composition (composition f g h1) h (by
      rw [h1]
      exact h2) = composition f (composition g h h2) (by
      rw [h1, h2]
      rfl)

structure EquationalCategoryEvidence (C : EquationalCategoryPackage) where
  identityLawLeftClosed : C.identityLawLeft
  identityLawRightClosed : C.identityLawRight
  associativityLawClosed : C.associativityLaw

def EquationalCategoryClosed (C : EquationalCategoryPackage) : Prop :=
  C.identityLawLeft ∧ C.identityLawRight ∧ C.associativityLaw

theorem equational_category_closed_from_evidence (C : EquationalCategoryPackage)
    (E : EquationalCategoryEvidence C) : EquationalCategoryClosed C := by
  exact And.intro E.identityLawLeftClosed (And.intro E.identityLawRightClosed E.associativityLawClosed)

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse