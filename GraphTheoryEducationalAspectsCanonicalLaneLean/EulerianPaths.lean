import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure EulerianGraphPackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  degreesEven : ∀ v : vertexSet, Nat.Even (List.length (List.filter (λ e => e.1 = v) (List.ofFinset (Finset.filter (λ (e : vertexSet × vertexSet) => edgeSet e.1 e.2) Finset.univ))))
  eulerianCircuit : List (vertexSet × vertexSet)
  circuitCoversAllEdges : Prop
  circuitClosed : Prop

structure EulerianGraphEvidence (G : EulerianGraphPackage) where
  degreesEvenClosed : G.degreesEven
  circuitCoversAllEdgesClosed : G.circuitCoversAllEdges
  circuitClosedClosed : G.circuitClosed

def EulerianGraphClosed (G : EulerianGraphPackage) : Prop :=
  G.circuitCoversAllEdges ∧ G.circuitClosed

theorem eulerian_graph_closed_from_evidence (G : EulerianGraphPackage) (E : EulerianGraphEvidence G) : EulerianGraphClosed G := by
  exact And.intro E.circuitCoversAllEdgesClosed E.circuitClosedClosed

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse