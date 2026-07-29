import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationalCategories18c10TheoriesECanonicalLaneLean

structure EquationalAdmittedObject where
  theorySignature : Type u
  theoryEquations : Type v
  modelType : Type w
  homomorphismsDefined : Prop
  conclusion : homomorphismsDefined

end EquationalCategories18c10TheoriesECanonicalLaneLean
end HautevilleHouse
