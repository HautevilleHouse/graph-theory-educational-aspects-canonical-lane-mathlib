import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphDefinitions

/-!
# Graph Traversal Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphTraversalPackage {G : GraphPackage} where
  bfsImplemented : Prop
  dfsImplemented : Prop
  topologicalOrder : Prop
  shortestPathFound : Prop

structure GraphTraversalEvidence {G : GraphPackage} (T : GraphTraversalPackage G) where
  bfsImplementedClosed : T.bfsImplemented
  dfsImplementedClosed : T.dfsImplemented
  topologicalOrderClosed : T.topologicalOrder
  shortestPathFoundClosed : T.shortestPathFound

def GraphTraversalClosed {G : GraphPackage} (T : GraphTraversalPackage G) : Prop :=
  T.bfsImplemented ∧ T.dfsImplemented ∧ T.topologicalOrder ∧ T.shortestPathFound

theorem graph_traversal_closed_from_evidence
    {G : GraphPackage} (T : GraphTraversalPackage G) (E : GraphTraversalEvidence T) :
    GraphTraversalClosed T := by
  exact And.intro E.bfsImplementedClosed
    (And.intro E.dfsImplementedClosed
      (And.intro E.topologicalOrderClosed E.shortestPathFoundClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse