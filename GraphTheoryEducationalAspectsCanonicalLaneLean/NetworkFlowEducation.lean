import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure NetworkFlowEducationPackage where
  flowDefinition : Prop
  capacityConstraint : Prop
  maxFlowMinCutTheorem : Prop
  fordFulkersonAlgorithm : Prop
  applications : Prop

def NetworkFlowEducationClosed (P : NetworkFlowEducationPackage) : Prop :=
  P.flowDefinition ∧ P.capacityConstraint ∧ P.maxFlowMinCutTheorem ∧
  P.fordFulkersonAlgorithm ∧ P.applications

structure NetworkFlowEducationEvidence (P : NetworkFlowEducationPackage) where
  flowDefinitionClosed : P.flowDefinition
  capacityConstraintClosed : P.capacityConstraint
  maxFlowMinCutTheoremClosed : P.maxFlowMinCutTheorem
  fordFulkersonAlgorithmClosed : P.fordFulkersonAlgorithm
  applicationsClosed : P.applications

theorem network_flow_education_closed_from_evidence
    (P : NetworkFlowEducationPackage) (E : NetworkFlowEducationEvidence P) :
    NetworkFlowEducationClosed P := by
  exact And.intro E.flowDefinitionClosed
    (And.intro E.capacityConstraintClosed
      (And.intro E.maxFlowMinCutTheoremClosed
        (And.intro E.fordFulkersonAlgorithmClosed E.applicationsClosed)))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse