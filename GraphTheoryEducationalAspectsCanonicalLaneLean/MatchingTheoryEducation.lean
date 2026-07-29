import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure MatchingTheoryEducationPackage where
  matchingDefinition : Prop
  augmentingPathConcept : Prop
  hallMarriageTheorem : Prop
  bipartiteMatchingAlgorithms : Prop
  vertexCoverRelation : Prop

def MatchingTheoryEducationClosed (P : MatchingTheoryEducationPackage) : Prop :=
  P.matchingDefinition ∧ P.augmentingPathConcept ∧ P.hallMarriageTheorem ∧
  P.bipartiteMatchingAlgorithms ∧ P.vertexCoverRelation

structure MatchingTheoryEducationEvidence (P : MatchingTheoryEducationPackage) where
  matchingDefinitionClosed : P.matchingDefinition
  augmentingPathConceptClosed : P.augmentingPathConcept
  hallMarriageTheoremClosed : P.hallMarriageTheorem
  bipartiteMatchingAlgorithmsClosed : P.bipartiteMatchingAlgorithms
  vertexCoverRelationClosed : P.vertexCoverRelation

theorem matching_theory_education_closed_from_evidence
    (P : MatchingTheoryEducationPackage) (E : MatchingTheoryEducationEvidence P) :
    MatchingTheoryEducationClosed P := by
  exact And.intro E.matchingDefinitionClosed
    (And.intro E.augmentingPathConceptClosed
      (And.intro E.hallMarriageTheoremClosed
        (And.intro E.bipartiteMatchingAlgorithmsClosed E.vertexCoverRelationClosed)))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse