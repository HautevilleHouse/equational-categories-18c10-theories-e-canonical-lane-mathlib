import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
