import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure MatchingPackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  matching : Finset (vertexSet × vertexSet)
  noSharedVertices : ∀ (e1 e2 : vertexSet × vertexSet), e1 ∈ matching → e2 ∈ matching → (e1.1 = e2.1 ∨ e1.1 = e2.2 ∨ e1.2 = e2.1 ∨ e1.2 = e2.2) → e1 = e2
  maximalMatching : Prop
  hallConditionHolds : ∀ (S : Finset vertexSet), S.card ≤ (Finset.filter (λ v => ∃ u ∈ S, edgeSet u v) (Finset.attach (Finset.image (λ (e : vertexSet × vertexSet) => e.2) matching))).card
  perfectMatchingExists : Prop

structure MatchingEvidence (M : MatchingPackage) where
  noSharedVerticesClosed : M.noSharedVertices
  maximalMatchingClosed : M.maximalMatching
  hallConditionHoldsClosed : M.hallConditionHolds
  perfectMatchingExistsClosed : M.perfectMatchingExists

def MatchingClosed (M : MatchingPackage) : Prop :=
  M.maximalMatching ∧ M.hallConditionHolds ∧ M.perfectMatchingExists

theorem matching_closed_from_evidence (M : MatchingPackage) (E : MatchingEvidence M) : MatchingClosed M := by
  exact And.intro E.maximalMatchingClosed (And.intro E.hallConditionHoldsClosed E.perfectMatchingExistsClosed)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse