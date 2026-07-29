import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure SolidDomainObject where
  carrier : Type
  topology : TopologicalSpace carrier
  dimension : Nat
  smoothStructure : Prop
  compactWithoutBoundary : Prop

structure SolidAdmittedObject where
  domain : SolidDomainObject
  admissibleMetric : Prop
  functionalWellDefined : Prop
  criticalPointCondition : Prop
  conclusion : criticalPointCondition

structure AdmissibleClass where
  object : SolidAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.criticalPointCondition) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse