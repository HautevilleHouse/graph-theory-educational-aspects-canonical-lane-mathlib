import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphConnectivityPackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  pathBetween : vertexSet → vertexSet → Prop
  pathExists : ∀ (v w : vertexSet), v ≠ w → pathBetween v w
  connected : Prop
  cutVertices : Finset vertexSet
  removalDisconnects : ∀ v ∈ cutVertices, ∃ (a b : vertexSet), a ≠ v ∧ b ≠ v ∧ ¬ (pathBetween a b) ∧ (pathBetween a b) = False
  bridgeEdges : Finset (vertexSet × vertexSet)
  removalDisconnectsBridge : ∀ (e : vertexSet × vertexSet), e ∈ bridgeEdges → (∃ (a b : vertexSet), ¬ (pathBetween a b) ∧ (pathBetween a b) = False)

structure GraphConnectivityEvidence (C : GraphConnectivityPackage) where
  pathExistsClosed : C.pathExists
  connectedClosed : C.connected
  cutVerticesClosed : ∀ v ∈ C.cutVertices, True
  bridgeEdgesClosed : ∀ e ∈ C.bridgeEdges, True

def GraphConnectivityClosed (C : GraphConnectivityPackage) : Prop :=
  C.connected ∧ (∀ v ∈ C.cutVertices, True) ∧ (∀ e ∈ C.bridgeEdges, True)

theorem graph_connectivity_closed_from_evidence (C : GraphConnectivityPackage) (E : GraphConnectivityEvidence C) : GraphConnectivityClosed C := by
  exact And.intro E.connectedClosed (And.intro E.cutVerticesClosed E.bridgeEdgesClosed)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse