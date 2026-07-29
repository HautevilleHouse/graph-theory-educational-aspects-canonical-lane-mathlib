import GraphTheoryEducationalAspectsCanonicalLaneLean.PlanarGraphPackage

/-!
# Matching Theory Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure MatchingTheoryPackage {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    {R : PlanarGraphPackage Q} where
  matching : Prop
  hallMarriageTheorem : Prop
  tutteTheorem : Prop
  maximumMatchingAlgorithms : Prop

structure MatchingTheoryEvidence {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    {R : PlanarGraphPackage Q} (S : MatchingTheoryPackage R) where
  matchingClosed : S.matching
  hallMarriageTheoremClosed : S.hallMarriageTheorem
  tutteTheoremClosed : S.tutteTheorem
  maximumMatchingAlgorithmsClosed : S.maximumMatchingAlgorithms

def MatchingTheoryClosed {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    {R : PlanarGraphPackage Q} (S : MatchingTheoryPackage R) : Prop :=
  S.matching ∧ S.hallMarriageTheorem ∧
  S.tutteTheorem ∧ S.maximumMatchingAlgorithms

theorem matching_theory_closed_from_evidence
    {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    {R : PlanarGraphPackage Q} (S : MatchingTheoryPackage R)
    (E : MatchingTheoryEvidence S) : MatchingTheoryClosed S := by
  exact And.intro E.matchingClosed
    (And.intro E.hallMarriageTheoremClosed
      (And.intro E.tutteTheoremClosed E.maximumMatchingAlgorithmsClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse