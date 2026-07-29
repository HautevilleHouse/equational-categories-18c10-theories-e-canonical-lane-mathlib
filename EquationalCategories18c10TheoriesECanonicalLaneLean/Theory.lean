import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.Equation

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Theory (Σ : Signature) where
  equations : Set (Equation Σ)

def theoryEquality (T1 T2 : Theory Σ) : Prop :=
  T1.equations = T2.equations

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse