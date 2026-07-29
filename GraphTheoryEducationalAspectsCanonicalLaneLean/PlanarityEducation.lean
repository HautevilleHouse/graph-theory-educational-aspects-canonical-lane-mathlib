import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure PlanarityEducationPackage where
  graphEmbedding : Type u -> Type v
  planarGraphsDefinition : Prop
  kuratowskiTheoremPresentation : Prop
  eulerCharacteristicFormula : Prop
  crossingNumberConcept : Prop
  dualGraphConstruction : Prop

def PlanarityEducationClosed (P : PlanarityEducationPackage) : Prop :=
  P.planarGraphsDefinition ∧ P.kuratowskiTheoremPresentation ∧
  P.eulerCharacteristicFormula ∧ P.crossingNumberConcept ∧ P.dualGraphConstruction

structure PlanarityEducationEvidence (P : PlanarityEducationPackage) where
  planarGraphsDefinitionClosed : P.planarGraphsDefinition
  kuratowskiTheoremPresentationClosed : P.kuratowskiTheoremPresentation
  eulerCharacteristicFormulaClosed : P.eulerCharacteristicFormula
  crossingNumberConceptClosed : P.crossingNumberConcept
  dualGraphConstructionClosed : P.dualGraphConstruction

theorem planarity_education_closed_from_evidence
    (P : PlanarityEducationPackage) (E : PlanarityEducationEvidence P) :
    PlanarityEducationClosed P := by
  exact And.intro E.planarGraphsDefinitionClosed
    (And.intro E.kuratowskiTheoremPresentationClosed
      (And.intro E.eulerCharacteristicFormulaClosed
        (And.intro E.crossingNumberConceptClosed E.dualGraphConstructionClosed)))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse