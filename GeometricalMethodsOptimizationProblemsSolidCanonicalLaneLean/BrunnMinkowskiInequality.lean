import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure BrunnMinkowskiPackage where
  dimension : ℕ
  convexBodies : Type u
  volumeFunctional : Type v
  inequality : Prop
  equalityCase : Prop

structure BrunnMinkowskiEvidence (B : BrunnMinkowskiPackage) where
  inequalityClosed : B.inequality
  equalityCaseClosed : B.equalityCase

def BrunnMinkowskiClosed (B : BrunnMinkowskiPackage) : Prop :=
  B.inequality ∧ B.equalityCase

theorem brunn_minkowski_closed_from_evidence (B : BrunnMinkowskiPackage) (E : BrunnMinkowskiEvidence B) :
    BrunnMinkowskiClosed B := by
  exact And.intro E.inequalityClosed E.equalityCaseClosed

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse