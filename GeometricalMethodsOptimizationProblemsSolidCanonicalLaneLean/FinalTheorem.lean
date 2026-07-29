import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeometricalMethodsOptimizationProblemsSolid

def ConstrainedGeometricalMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geometrical_methods_endgame (A : AdmissibleClass) :
    ConstrainedGeometricalMethodsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeometricalMethodsOptimizationProblemsSolid
end HautevilleHouse