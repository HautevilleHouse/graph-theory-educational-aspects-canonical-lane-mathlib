import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure ShortestPathPackage where
  weightedGraph : Prop
  nonnegativeWeights : Prop
  dijkstraAlgorithmCorrect : Prop
  shortestPathDistances : Prop
  optimalSubstructure : Prop

structure ShortestPathEvidence (S : ShortestPathPackage) where
  weightedGraphClosed : S.weightedGraph
  nonnegativeWeightsClosed : S.nonnegativeWeights
  dijkstraAlgorithmCorrectClosed : S.dijkstraAlgorithmCorrect
  shortestPathDistancesClosed : S.shortestPathDistances
  optimalSubstructureClosed : S.optimalSubstructure

def ShortestPathClosed (S : ShortestPathPackage) : Prop :=
  S.weightedGraph ∧ S.nonnegativeWeights ∧ S.dijkstraAlgorithmCorrect ∧
  S.shortestPathDistances ∧ S.optimalSubstructure

theorem shortest_path_closed_from_evidence (S : ShortestPathPackage)
    (E : ShortestPathEvidence S) : ShortestPathClosed S := by
  exact And.intro E.weightedGraphClosed
    (And.intro E.nonnegativeWeightsClosed
      (And.intro E.dijkstraAlgorithmCorrectClosed
        (And.intro E.shortestPathDistancesClosed E.optimalSubstructureClosed)))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse