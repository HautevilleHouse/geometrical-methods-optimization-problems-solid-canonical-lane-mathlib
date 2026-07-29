import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeometricalOptimizationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeometricalOptimizationAdmittedObject where
  space : GeometricalOptimizationSpace
  feasibleSet : Set (space.carrier → ℝ)
  objectiveFunctional : (space.carrier → ℝ) → ℝ
  optimalValue : ℝ
  attained : Prop
  conclusion : attained

structure GeometricalOptimizationEndgameState where
  object : GeometricalOptimizationAdmittedObject

def GeometricalOptimizationWitnessClosed (O : GeometricalOptimizationAdmittedObject) : Prop :=
  O.attained

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse