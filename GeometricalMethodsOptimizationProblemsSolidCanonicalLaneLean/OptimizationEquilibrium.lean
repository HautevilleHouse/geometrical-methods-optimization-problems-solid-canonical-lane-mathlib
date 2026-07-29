import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure OptimizationEquilibriumPackage where
  feasibleSet : Type u
  objectiveFunction : feasibleSet → ℝ
  constraints : feasibleSet → Prop
  equilibriumPoint : feasibleSet
  optimalityCondition : Prop
  constraintQualification : Prop

def OptimizationEquilibriumClosed (P : OptimizationEquilibriumPackage) : Prop :=
  P.optimalityCondition ∧ P.constraintQualification

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse