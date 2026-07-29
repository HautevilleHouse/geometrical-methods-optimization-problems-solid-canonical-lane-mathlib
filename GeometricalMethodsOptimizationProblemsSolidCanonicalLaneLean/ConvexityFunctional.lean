import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.ConstraintSpecification

/-!
# Convexity Functional Package
-/

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure ConvexityFunctionalPackage {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} (D : DualProblemPackage P) where
  convexityCondition : Prop
  subgradientCharacterization : Prop
  strongConvexityModulus : Prop

structure ConvexityFunctionalEvidence {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} {D : DualProblemPackage P}
    (C : ConvexityFunctionalPackage D) where
  convexityConditionClosed : C.convexityCondition
  subgradientCharacterizationClosed : C.subgradientCharacterization
  strongConvexityModulusClosed : C.strongConvexityModulus

def ConvexityFunctionalClosed {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} {D : DualProblemPackage P}
    (C : ConvexityFunctionalPackage D) : Prop :=
  C.convexityCondition ∧ C.subgradientCharacterization ∧ C.strongConvexityModulus

theorem convexity_functional_closed_from_evidence
    {G : GeometricalConstraintPackage} {P : ProblemDomainPackage G}
    {D : DualProblemPackage P} (C : ConvexityFunctionalPackage D)
    (E : ConvexityFunctionalEvidence C) : ConvexityFunctionalClosed C := by
  exact And.intro E.convexityConditionClosed
    (And.intro E.subgradientCharacterizationClosed E.strongConvexityModulusClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse