import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure NonsmoothOptimizationPackage where
  locallyLipschitzFunction : (ℝ → ℝ) → Prop
  clarkeSubdifferential : Type u
  optimalityCondition : Prop
  bundleStructure : Prop

def NonsmoothOptimizationClosed (N : NonsmoothOptimizationPackage) : Prop :=
  N.optimalityCondition ∧ N.bundleStructure

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse