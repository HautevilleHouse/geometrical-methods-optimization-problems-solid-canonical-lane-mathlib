import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure AdmissibleClass where
  object : GeometricalOptimizationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeometricalOptimizationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse