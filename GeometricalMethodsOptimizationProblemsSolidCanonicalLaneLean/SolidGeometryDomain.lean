import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure SolidGeometryAdmittedObject where
  carrier : Type u
  topology : TopologicalSpace carrier
  convexBody : Prop
  lipschitzBoundary : Prop
  hasConstantWidth : Prop

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse