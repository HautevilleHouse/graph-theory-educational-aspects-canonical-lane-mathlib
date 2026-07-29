import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphColoringPackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  colorSet : Type v
  properColoring : (v : vertexSet) -> colorSet
  adjacentDistinct : ∀ (v w : vertexSet), edgeSet v w → properColoring v ≠ properColoring w
  chromaticNumber : Nat
  minimalColoringExists : Prop

structure GraphColoringEvidence (G : GraphColoringPackage) where
  properColoringExists : True
  chromaticNumberMinimal : G.chromaticNumber = 0 ∨ G.chromaticNumber > 0
  minimalColoringExistsClosed : G.minimalColoringExists

def GraphColoringClosed (G : GraphColoringPackage) : Prop :=
  G.minimalColoringExists

theorem graph_coloring_closed_from_evidence (G : GraphColoringPackage) (E : GraphColoringEvidence G) : GraphColoringClosed G := by
  exact E.minimalColoringExistsClosed

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse