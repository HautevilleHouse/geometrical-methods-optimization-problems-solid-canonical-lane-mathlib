import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geometricalOptimizationProjection : Projection GeometricalOptimizationEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geometrical_optimization_projection_idempotent (x : GeometricalOptimizationEndgameState) :
    geometricalOptimizationProjection.toFun (geometricalOptimizationProjection.toFun x) = geometricalOptimizationProjection.toFun x := by
  exact geometricalOptimizationProjection.idempotent x

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse