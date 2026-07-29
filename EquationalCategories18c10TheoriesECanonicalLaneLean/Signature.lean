import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Signature where
  operations : Type u
  arity : operations → Nat

def Signature.empty : Signature :=
  { operations := Empty, arity := Empty.elim }

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse