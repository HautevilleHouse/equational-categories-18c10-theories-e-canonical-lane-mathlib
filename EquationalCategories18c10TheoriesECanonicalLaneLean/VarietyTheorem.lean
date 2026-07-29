import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.BirkhoffTheorem

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure VarietyTheoremClosure where
  birkhoff : BirkhoffClosed
  equationalBridge : forall S (T : EquationalTheory S), EquationalTheoryClosed S T -> BirkhoffClosed S

def VarietiesClosed : Prop := True

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse