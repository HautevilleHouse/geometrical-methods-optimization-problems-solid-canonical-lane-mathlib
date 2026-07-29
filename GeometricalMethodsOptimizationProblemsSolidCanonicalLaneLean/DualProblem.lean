import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.ProblemDomain

/-!
# Dual Problem Package
-/

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure DualProblemPackage {G : GeometricalConstraintPackage}
    (P : ProblemDomainPackage G) where
  lagrangeDualSpace : Type u
  dualObjective : lagrangeDualSpace → ℝ
  weakDuality : Prop
  strongDualityUnderConstraintQualification : Prop

structure DualProblemEvidence {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} (D : DualProblemPackage P) where
  weakDualityClosed : D.weakDuality
  strongDualityUnderConstraintQualificationClosed : D.strongDualityUnderConstraintQualification

def DualProblemClosed {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} (D : DualProblemPackage P) : Prop :=
  D.weakDuality ∧ D.strongDualityUnderConstraintQualification

theorem dual_problem_closed_from_evidence
    {G : GeometricalConstraintPackage} {P : ProblemDomainPackage G}
    (D : DualProblemPackage P) (E : DualProblemEvidence D) : DualProblemClosed D := by
  exact And.intro E.weakDualityClosed E.strongDualityUnderConstraintQualificationClosed

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse