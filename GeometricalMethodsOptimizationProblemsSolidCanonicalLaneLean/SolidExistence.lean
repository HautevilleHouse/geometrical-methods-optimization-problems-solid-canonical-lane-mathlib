import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.DualProblem

/-!
# Solid Existence Package
-/

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure SolidExistencePackage {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} {D : DualProblemPackage P}
    (C : ConvexityFunctionalPackage D) where
  existenceOfOptimalSolution : Prop
  uniquenessUnderStrictConvexity : Prop
  stabilityUnderPerturbation : Prop

structure SolidExistenceEvidence {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} {D : DualProblemPackage P}
    {C : ConvexityFunctionalPackage D} (S : SolidExistencePackage C) where
  existenceOfOptimalSolutionClosed : S.existenceOfOptimalSolution
  uniquenessUnderStrictConvexityClosed : S.uniquenessUnderStrictConvexity
  stabilityUnderPerturbationClosed : S.stabilityUnderPerturbation

def SolidExistenceClosed {G : GeometricalConstraintPackage}
    {P : ProblemDomainPackage G} {D : DualProblemPackage P}
    {C : ConvexityFunctionalPackage D} (S : SolidExistencePackage C) : Prop :=
  S.existenceOfOptimalSolution ∧ S.uniquenessUnderStrictConvexity ∧ S.stabilityUnderPerturbation

theorem solid_existence_closed_from_evidence
    {G : GeometricalConstraintPackage} {P : ProblemDomainPackage G}
    {D : DualProblemPackage P} {C : ConvexityFunctionalPackage D}
    (S : SolidExistencePackage C) (E : SolidExistenceEvidence S) :
    SolidExistenceClosed S := by
  exact And.intro E.existenceOfOptimalSolutionClosed
    (And.intro E.uniquenessUnderStrictConvexityClosed E.stabilityUnderPerturbationClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse