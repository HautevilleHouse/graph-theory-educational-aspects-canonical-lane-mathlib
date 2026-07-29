import canonicalLaneMathlib.AdmissibleClass
import GraphTheoryEducationalAspectsCanonicalLaneLean.BridgeLemmas
import GraphTheoryEducationalAspectsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

def ConstrainedGraphTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_theory_endgame (A : AdmissibleClass) :
    ConstrainedGraphTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse