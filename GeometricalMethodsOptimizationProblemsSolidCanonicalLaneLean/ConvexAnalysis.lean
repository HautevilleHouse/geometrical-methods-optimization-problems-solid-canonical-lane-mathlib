import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure ConvexAnalysisPackage where
  space : Type u
  convexSet : Type v
  convexFunction : Type w
  separationTheorem : Prop
  subgradientExists : Prop
  convexDuality : Prop
  separationTheoremClosed : separationTheorem
  subgradientExistsClosed : subgradientExists
  convexDualityClosed : convexDuality

def ConvexAnalysisClosed (C : ConvexAnalysisPackage) : Prop :=
  C.separationTheorem ∧ C.subgradientExists ∧ C.convexDuality

theorem convex_analysis_closed_from_evidence (C : ConvexAnalysisPackage) :
    ConvexAnalysisClosed C := by
  exact And.intro C.separationTheoremClosed
    (And.intro C.subgradientExistsClosed C.convexDualityClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse