import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure MatchingTheoryPackage where
  bipartiteGraph : Prop
  perfectMatchingExists : Prop
  hallCondition : Prop
  augmentingPathAlgorithm : Prop
  maximumMatchingSize : Nat

structure MatchingTheoryEvidence (M : MatchingTheoryPackage) where
  bipartiteGraphClosed : M.bipartiteGraph
  perfectMatchingExistsClosed : M.perfectMatchingExists
  hallConditionClosed : M.hallCondition
  augmentingPathAlgorithmClosed : M.augmentingPathAlgorithm

def MatchingTheoryClosed (M : MatchingTheoryPackage) : Prop :=
  M.bipartiteGraph ∧ M.perfectMatchingExists ∧ M.hallCondition ∧ M.augmentingPathAlgorithm

theorem matching_theory_closed_from_evidence (M : MatchingTheoryPackage)
    (E : MatchingTheoryEvidence M) : MatchingTheoryClosed M := by
  exact And.intro E.bipartiteGraphClosed
    (And.intro E.perfectMatchingExistsClosed
      (And.intro E.hallConditionClosed E.augmentingPathAlgorithmClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse