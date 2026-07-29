import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphColoringPackage

/-!
# Graph Connectivity Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphConnectivityPackage {G : GraphPackage} {C : ColoringConvention}
    (P : GraphColoringPackage C) where
  vertexConnectivity : Prop
  edgeConnectivity : Prop
  earDecomposition : Prop
  mengerTheoremApplied : Prop

structure GraphConnectivityEvidence {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} (Q : GraphConnectivityPackage P) where
  vertexConnectivityClosed : Q.vertexConnectivity
  edgeConnectivityClosed : Q.edgeConnectivity
  earDecompositionClosed : Q.earDecomposition
  mengerTheoremAppliedClosed : Q.mengerTheoremApplied

def GraphConnectivityClosed {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} (Q : GraphConnectivityPackage P) : Prop :=
  Q.vertexConnectivity ∧ Q.edgeConnectivity ∧
  Q.earDecomposition ∧ Q.mengerTheoremApplied

theorem graph_connectivity_closed_from_evidence
    {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} (Q : GraphConnectivityPackage P)
    (E : GraphConnectivityEvidence Q) : GraphConnectivityClosed Q := by
  exact And.intro E.vertexConnectivityClosed
    (And.intro E.edgeConnectivityClosed
      (And.intro E.earDecompositionClosed E.mengerTheoremAppliedClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse