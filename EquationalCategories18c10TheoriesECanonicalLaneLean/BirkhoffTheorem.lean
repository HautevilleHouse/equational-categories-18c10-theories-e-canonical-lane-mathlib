import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.SignaturePackage
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.TermAlgebra
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.EquationalTheory

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure Variety (S : Signature) where
  algebras : Set (TermAlgebra S)
  closedUnderProducts : Prop
  closedUnderSubalgebras : Prop
  closedUnderHomomorphicImages : Prop

structure BirkhoffClosure (S : Signature) (T : EquationalTheory S) where
  variety : Variety S
  equationalClosure : EquationalTheoryClosed S T
  varietySatisfiesEquations : ∀ A ∈ variety.algebras, A = T.equations ???
  -, todo: need proper condition

def BirkhoffClosed (S : Signature) : Prop :=
  ∀ (T : EquationalTheory S), EquationalTheoryClosed S T → ∃ (V : Variety S), ...

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse