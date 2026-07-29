import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure MixedVolumePackage where
  k : ℕ
  bodies : List (Type u)
  multilinearity : Prop
  permutationInvariance : Prop
  positivity : Prop

structure MixedVolumeEvidence (M : MixedVolumePackage) where
  multilinearityClosed : M.multilinearity
  permutationInvarianceClosed : M.permutationInvariance
  positivityClosed : M.positivity

def MixedVolumeClosed (M : MixedVolumePackage) : Prop :=
  M.multilinearity ∧ M.permutationInvariance ∧ M.positivity

theorem mixed_volume_closed_from_evidence (M : MixedVolumePackage) (E : MixedVolumeEvidence M) :
    MixedVolumeClosed M := by
  exact And.intro E.multilinearityClosed (And.intro E.permutationInvarianceClosed E.positivityClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse