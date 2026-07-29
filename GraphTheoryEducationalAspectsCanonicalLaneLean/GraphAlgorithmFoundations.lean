import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphDefinitions

/-!
# Graph Algorithm Foundations Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphAlgorithmFoundationsPackage {G : GraphPackage} where
  adjacencyMatrixConstructed : Prop
  dijkstraImplemented : Prop
  kruskalImplemented : Prop
  topologicalSortImplemented : Prop

structure GraphAlgorithmFoundationsEvidence {G : GraphPackage}
    (A : GraphAlgorithmFoundationsPackage G) where
  adjacencyMatrixConstructedClosed : A.adjacencyMatrixConstructed
  dijkstraImplementedClosed : A.dijkstraImplemented
  kruskalImplementedClosed : A.kruskalImplemented
  topologicalSortImplementedClosed : A.topologicalSortImplemented

def GraphAlgorithmFoundationsClosed {G : GraphPackage}
    (A : GraphAlgorithmFoundationsPackage G) : Prop :=
  A.adjacencyMatrixConstructed ∧ A.dijkstraImplemented ∧
  A.kruskalImplemented ∧ A.topologicalSortImplemented

theorem graph_algorithm_foundations_closed_from_evidence
    {G : GraphPackage} (A : GraphAlgorithmFoundationsPackage G)
    (E : GraphAlgorithmFoundationsEvidence A) : GraphAlgorithmFoundationsClosed A := by
  exact And.intro E.adjacencyMatrixConstructedClosed
    (And.intro E.dijkstraImplementedClosed
      (And.intro E.kruskalImplementedClosed E.topologicalSortImplementedClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse