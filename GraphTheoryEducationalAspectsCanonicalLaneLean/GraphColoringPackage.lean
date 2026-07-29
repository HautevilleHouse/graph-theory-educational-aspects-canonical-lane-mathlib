import GraphTheoryEducationalAspectsCanonicalLaneLean.AdmissibleClass

/-!
# Graph Coloring Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphColoringPackage {G : GraphPackage} (C : ColoringConvention) where
  properColoring : Prop
  chromaticNumber : Prop
  colorAssignment : Prop
  greedyAlgorithmValid : Prop

structure GraphColoringEvidence {G : GraphPackage} {C : ColoringConvention}
    (P : GraphColoringPackage C) where
  properColoringClosed : P.properColoring
  chromaticNumberClosed : P.chromaticNumber
  colorAssignmentClosed : P.colorAssignment
  greedyAlgorithmValidClosed : P.greedyAlgorithmValid

def GraphColoringClosed {G : GraphPackage} {C : ColoringConvention}
    (P : GraphColoringPackage C) : Prop :=
  P.properColoring ∧ P.chromaticNumber ∧
  P.colorAssignment ∧ P.greedyAlgorithmValid

theorem graph_coloring_closed_from_evidence
    {G : GraphPackage} {C : ColoringConvention}
    (P : GraphColoringPackage C) (E : GraphColoringEvidence P) :
    GraphColoringClosed P := by
  exact And.intro E.properColoringClosed
    (And.intro E.chromaticNumberClosed
      (And.intro E.colorAssignmentClosed E.greedyAlgorithmValidClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse