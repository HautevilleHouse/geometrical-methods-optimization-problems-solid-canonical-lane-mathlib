import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolid

structure OptimalControlSystem where
  stateSpace : Type u
  controlSpace : Type v
  dynamics : stateSpace → controlSpace → stateSpace
  costFunctional : (stateSpace → ℝ) → Prop
  admissibleControls : Prop
  optimalTrajectoryExists : Prop

structure OptimalControlEvidence (O : OptimalControlSystem) where
  dynamicsSmooth : Prop
  costWellDefined : Prop
  admissibleControlsClosed : O.admissibleControls
  optimalTrajectoryExistsClosed : O.optimalTrajectoryExists

def OptimalControlClosed (O : OptimalControlSystem) : Prop :=
  O.admissibleControls ∧ O.optimalTrajectoryExists

theorem optimal_control_closed_from_evidence (O : OptimalControlSystem)
    (E : OptimalControlEvidence O) : OptimalControlClosed O :=
  And.intro E.admissibleControlsClosed E.optimalTrajectoryExistsClosed

end GeometricalMethodsOptimizationProblemsSolid
end HautevilleHouse