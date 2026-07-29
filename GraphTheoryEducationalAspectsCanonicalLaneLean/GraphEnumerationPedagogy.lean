import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphEnumerationPackage where
  labeledTreeCount : Prop
  unlabeledTreeCount : Prop
  cayleyFormula : Prop
  polyaEnumeration : Prop
  graphIsomorphismClassification : Prop

structure GraphEnumerationEvidence (G : GraphEnumerationPackage) where
  labeledTreeCountClosed : G.labeledTreeCount
  unlabeledTreeCountClosed : G.unlabeledTreeCount
  cayleyFormulaClosed : G.cayleyFormula
  polyaEnumerationClosed : G.polyaEnumeration
  graphIsomorphismClassificationClosed : G.graphIsomorphismClassification

def GraphEnumerationClosed (G : GraphEnumerationPackage) : Prop :=
  G.labeledTreeCount ∧ G.unlabeledTreeCount ∧ G.cayleyFormula ∧
  G.polyaEnumeration ∧ G.graphIsomorphismClassification

theorem graph_enumeration_closed_from_evidence (G : GraphEnumerationPackage)
    (E : GraphEnumerationEvidence G) : GraphEnumerationClosed G := by
  exact And.intro E.labeledTreeCountClosed
    (And.intro E.unlabeledTreeCountClosed
      (And.intro E.cayleyFormulaClosed
        (And.intro E.polyaEnumerationClosed E.graphIsomorphismClassificationClosed)))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse