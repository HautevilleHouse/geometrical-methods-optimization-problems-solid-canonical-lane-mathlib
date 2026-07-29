import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure OptimalTransportPackage where
  source : Type u
  target : Type v
  cost : Type w
  transportPlan : Prop
  optimalPlanExists : Prop
  kantorovichDuality : Prop
  transportPlanClosed : transportPlan
  optimalPlanExistsClosed : optimalPlanExists
  kantorovichDualityClosed : kantorovichDuality

def OptimalTransportClosed (O : OptimalTransportPackage) : Prop :=
  O.transportPlan ∧ O.optimalPlanExists ∧ O.kantorovichDuality

theorem optimal_transport_closed_from_evidence (O : OptimalTransportPackage) :
    OptimalTransportClosed O := by
  exact And.intro O.transportPlanClosed
    (And.intro O.optimalPlanExistsClosed O.kantorovichDualityClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse