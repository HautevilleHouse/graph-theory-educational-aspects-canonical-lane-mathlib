import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure PlanarGraphPackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  planarEmbedding : Type v
  noK5Minor : Prop
  noK33Minor : Prop
  fourColorTheorem : Prop

structure PlanarGraphEvidence (G : PlanarGraphPackage) where
  planarEmbeddingClosed : True
  noK5MinorClosed : G.noK5Minor
  noK33MinorClosed : G.noK33Minor
  fourColorTheoremClosed : G.fourColorTheorem

def PlanarGraphClosed (G : PlanarGraphPackage) : Prop :=
  G.noK5Minor ∧ G.noK33Minor ∧ G.fourColorTheorem

theorem planar_graph_closed_from_evidence (G : PlanarGraphPackage) (E : PlanarGraphEvidence G) : PlanarGraphClosed G := by
  exact And.intro E.noK5MinorClosed (And.intro E.noK33MinorClosed E.fourColorTheoremClosed)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse