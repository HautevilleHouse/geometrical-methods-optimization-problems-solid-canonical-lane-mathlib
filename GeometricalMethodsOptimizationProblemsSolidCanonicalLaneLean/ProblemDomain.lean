import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.AdmissibleClass

/-!
# Problem Domain Package
-/

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure GeometricalConstraintPackage where
  domain : Type u
  constraintFunctions : domain → ℝ
  constraintQualification : Prop

structure ProblemDomainPackage (G : GeometricalConstraintPackage) where
  objective : G.domain → ℝ
  feasibleSet : Set G.domain
  optimalValue : ℝ
  existenceClaim : Prop

def GeometricalConstraintClosed (G : GeometricalConstraintPackage) : Prop :=
  G.constraintQualification

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse