import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure IsoperimetricPackage where
  space : Type u
  measure : Type v
  perimeter : Type w
  inequality : Prop
  extremalSets : Prop

structure IsoperimetricEvidence (I : IsoperimetricPackage) where
  inequalityClosed : I.inequality
  extremalSetsClosed : I.extremalSets

def IsoperimetricClosed (I : IsoperimetricPackage) : Prop :=
  I.inequality ∧ I.extremalSets

theorem isoperimetric_closed_from_evidence (I : IsoperimetricPackage) (E : IsoperimetricEvidence I) :
    IsoperimetricClosed I := by
  exact And.intro E.inequalityClosed E.extremalSetsClosed

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse