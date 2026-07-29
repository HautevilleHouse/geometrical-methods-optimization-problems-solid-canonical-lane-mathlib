import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.ConvexityEnergyStructure

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure CriticalPointVariationalPackage {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} where
  firstVariationFormula : Prop
  palaisSmaleCondition : Prop
  criticalPointCharacterization : Prop

structure CriticalPointVariationalEvidence {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} (V : CriticalPointVariationalPackage C) where
  firstVariationFormulaClosed : V.firstVariationFormula
  palaisSmaleConditionClosed : V.palaisSmaleCondition
  criticalPointCharacterizationClosed : V.criticalPointCharacterization

def CriticalPointVariationalClosed {O : SolidDomainObject}
    {C : ConvexityEnergyPackage O} (V : CriticalPointVariationalPackage C) : Prop :=
  V.firstVariationFormula ∧ V.palaisSmaleCondition ∧ V.criticalPointCharacterization

theorem critical_point_variational_closed_from_evidence
    {O : SolidDomainObject} {C : ConvexityEnergyPackage O}
    (V : CriticalPointVariationalPackage C) (E : CriticalPointVariationalEvidence V) :
    CriticalPointVariationalClosed V := by
  exact And.intro E.firstVariationFormulaClosed (And.intro E.palaisSmaleConditionClosed E.criticalPointCharacterizationClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse