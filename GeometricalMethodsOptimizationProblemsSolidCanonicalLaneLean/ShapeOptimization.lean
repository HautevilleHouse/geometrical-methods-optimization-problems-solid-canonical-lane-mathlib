import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolid

structure ShapeOptimizationProblem where
  domainFamily : Type u
  shapeFunctional : (Type u → ℝ) → Prop
  admissibleDomains : Prop
  optimalShapeExists : Prop

structure ShapeOptimizationEvidence (S : ShapeOptimizationProblem) where
  shapeFunctionalContinuous : Prop
  admissibleDomainsClosed : S.admissibleDomains
  optimalShapeExistsClosed : S.optimalShapeExists

def ShapeOptimizationClosed (S : ShapeOptimizationProblem) : Prop :=
  S.admissibleDomains ∧ S.optimalShapeExists

theorem shape_optimization_closed_from_evidence (S : ShapeOptimizationProblem)
    (E : ShapeOptimizationEvidence S) : ShapeOptimizationClosed S :=
  And.intro E.admissibleDomainsClosed E.optimalShapeExistsClosed

end GeometricalMethodsOptimizationProblemsSolid
end HautevilleHouse