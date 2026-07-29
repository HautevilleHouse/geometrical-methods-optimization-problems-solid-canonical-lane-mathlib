import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure AlexandrovFenchelPackage where
  mixedVolumes : Type u
  inequality : Prop
  equalityCondition : Prop

structure AlexandrovFenchelEvidence (A : AlexandrovFenchelPackage) where
  inequalityClosed : A.inequality
  equalityConditionClosed : A.equalityCondition

def AlexandrovFenchelClosed (A : AlexandrovFenchelPackage) : Prop :=
  A.inequality ∧ A.equalityCondition

theorem alexandrov_fenchel_closed_from_evidence (A : AlexandrovFenchelPackage) (E : AlexandrovFenchelEvidence A) :
    AlexandrovFenchelClosed A := by
  exact And.intro E.inequalityClosed E.equalityConditionClosed

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse