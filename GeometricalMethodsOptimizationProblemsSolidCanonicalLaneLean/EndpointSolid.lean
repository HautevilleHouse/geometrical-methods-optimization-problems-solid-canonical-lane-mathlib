import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.DeformationLinking

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure EndpointSolidPackage {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    {D : DeformationLinkingPackage V} where
  targetDomain : SolidDomainObject
  criticalPointFound : Prop
  energyMinimalCriticalPoint : Prop
  endpointMatchesSolidStatement : Prop

structure EndpointSolidEvidence {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    {D : DeformationLinkingPackage V} (E : EndpointSolidPackage D) where
  criticalPointFoundClosed : E.criticalPointFound
  energyMinimalCriticalPointClosed : E.energyMinimalCriticalPoint
  endpointMatchesSolidStatementClosed : E.endpointMatchesSolidStatement

def EndpointSolidClosed {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    {D : DeformationLinkingPackage V} (E : EndpointSolidPackage D) : Prop :=
  E.criticalPointFound ∧ E.energyMinimalCriticalPoint ∧ E.endpointMatchesSolidStatement

theorem endpoint_solid_closed_from_evidence
    {O : SolidDomainObject} {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    {D : DeformationLinkingPackage V} (Epkg : EndpointSolidPackage D)
    (E : EndpointSolidEvidence Epkg) : EndpointSolidClosed Epkg := by
  exact And.intro E.criticalPointFoundClosed
    (And.intro E.energyMinimalCriticalPointClosed E.endpointMatchesSolidStatementClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse