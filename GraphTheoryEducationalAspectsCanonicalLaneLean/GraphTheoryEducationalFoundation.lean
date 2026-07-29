import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphDefinitions
import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphColoring
import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphTraversal
import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphIsomorphism
import GraphTheoryEducationalAspectsCanonicalLaneLean.PlanarGraphs
import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphAlgorithmFoundations

/-!
# Graph Theory Educational Foundation Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphTheoryEducationalFoundation where
  definitions : GraphPackage
  definitionsEvidence : GraphEvidence definitions
  coloring : GraphColoringPackage definitions
  coloringEvidence : GraphColoringEvidence coloring
  traversal : GraphTraversalPackage definitions
  traversalEvidence : GraphTraversalEvidence traversal
  isomorphism : (G H : GraphPackage) → GraphIsomorphismPackage G H
  isomorphismEvidence : (G H : GraphPackage) → GraphIsomorphismEvidence (isomorphism G H)
  planarGraphs : PlanarGraphsPackage definitions
  planarGraphsEvidence : PlanarGraphsEvidence planarGraphs
  algorithmFoundations : GraphAlgorithmFoundationsPackage definitions
  algorithmFoundationsEvidence : GraphAlgorithmFoundationsEvidence algorithmFoundations

def GraphTheoryEducationalFoundationClosed (F : GraphTheoryEducationalFoundation) : Prop :=
  GraphClosed F.definitions ∧ GraphColoringClosed F.coloring ∧
  GraphTraversalClosed F.traversal ∧
  (∀ G H : GraphPackage, GraphIsomorphismClosed (F.isomorphism G H)) ∧
  PlanarGraphsClosed F.planarGraphs ∧
  GraphAlgorithmFoundationsClosed F.algorithmFoundations

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse