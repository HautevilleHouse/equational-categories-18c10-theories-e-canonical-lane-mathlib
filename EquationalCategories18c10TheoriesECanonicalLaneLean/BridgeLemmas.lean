import HautevilleHouse.EquationalCategories18c10TheoriesECanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
