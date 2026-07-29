import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

def ConstrainedGraphColoringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_coloring_endgame (A : AdmissibleClass) :
    ConstrainedGraphColoringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse