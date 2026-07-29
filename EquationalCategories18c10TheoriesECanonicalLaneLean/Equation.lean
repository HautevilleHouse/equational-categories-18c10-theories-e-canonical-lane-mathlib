import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.Signature

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Equation (Σ : Signature) where
  lhs : Term Σ
  rhs : Term Σ
  where
    Term : Signature → Type
    -- term definition omitted for brevity

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse