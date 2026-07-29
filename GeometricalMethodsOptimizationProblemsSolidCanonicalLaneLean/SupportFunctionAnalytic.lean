import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean

structure SupportFunctionPackage where
  supportH : Type u -> Type v
  homogeneity : Prop
  subadditivity : Prop
  boundednessOnUnitSphere : Prop

structure SupportFunctionEvidence (S : SupportFunctionPackage) where
  homogeneityClosed : S.homogeneity
  subadditivityClosed : S.subadditivity
  boundednessOnUnitSphereClosed : S.boundednessOnUnitSphere

def SupportFunctionClosed (S : SupportFunctionPackage) : Prop :=
  S.homogeneity ∧ S.subadditivity ∧ S.boundednessOnUnitSphere

theorem support_function_closed_from_evidence (S : SupportFunctionPackage) (E : SupportFunctionEvidence S) :
    SupportFunctionClosed S := by
  exact And.intro E.homogeneityClosed (And.intro E.subadditivityClosed E.boundednessOnUnitSphereClosed)

end GeometricalMethodsOptimizationProblemsSolidCanonicalLaneLean
end HautevilleHouse