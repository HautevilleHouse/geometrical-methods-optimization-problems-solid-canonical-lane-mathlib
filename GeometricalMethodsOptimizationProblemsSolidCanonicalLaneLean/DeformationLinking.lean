import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.CriticalPointVariational

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure DeformationLinkingPackage {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C} where
  deformationLemma : Prop
  linkingCondition : Prop
  minimaxPrinciple : Prop
  mountainPassTheorem : Prop

structure DeformationLinkingEvidence {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    (D : DeformationLinkingPackage V) where
  deformationLemmaClosed : D.deformationLemma
  linkingConditionClosed : D.linkingCondition
  minimaxPrincipleClosed : D.minimaxPrinciple
  mountainPassTheoremClosed : D.mountainPassTheorem

def DeformationLinkingClosed {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    (D : DeformationLinkingPackage V) : Prop :=
  D.deformationLemma ∧ D.linkingCondition ∧ D.minimaxPrinciple ∧ D.mountainPassTheorem

theorem deformation_linking_closed_from_evidence
    {O : SolidDomainObject} {C : ConvexityEnergyPackage O} {V : CriticalPointVariationalPackage C}
    (D : DeformationLinkingPackage V) (E : DeformationLinkingEvidence D) :
    DeformationLinkingClosed D := by
  exact And.intro E.deformationLemmaClosed
    (And.intro E.linkingConditionClosed
      (And.intro E.minimaxPrincipleClosed E.mountainPassTheoremClosed))

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse