import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure SolidMechanicsDualityPackage where
  primalProblem : OptimizationEquilibriumPackage
  dualProblem : OptimizationEquilibriumPackage
  dualityGap : ℝ
  strongDualityHolds : Prop
  complementarySlackness : Prop

def SolidMechanicsDualityClosed (D : SolidMechanicsDualityPackage) : Prop :=
  D.strongDualityHolds ∧ D.complementarySlackness

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse