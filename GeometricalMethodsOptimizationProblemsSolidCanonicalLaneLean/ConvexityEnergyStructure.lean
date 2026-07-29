import GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean.SolidDomainPackage

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure ConvexityEnergyPackage {O : SolidDomainObject} where
  energyFunctional : Type
  convexityCondition : Prop
  lowerSemicontinuity : Prop
  coercivity : Prop

structure ConvexityEnergyEvidence {O : SolidDomainObject} (C : ConvexityEnergyPackage O) where
  convexityConditionClosed : C.convexityCondition
  lowerSemicontinuityClosed : C.lowerSemicontinuity
  coercivityClosed : C.coercivity

def ConvexityEnergyClosed {O : SolidDomainObject} (C : ConvexityEnergyPackage O) : Prop :=
  C.convexityCondition ∧ C.lowerSemicontinuity ∧ C.coercivity

theorem convexity_energy_closed_from_evidence {O : SolidDomainObject} (C : ConvexityEnergyPackage O)
    (E : ConvexityEnergyEvidence C) : ConvexityEnergyClosed C := by
  exact And.intro E.convexityConditionClosed (And.intro E.lowerSemicontinuityClosed E.coercivityClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse