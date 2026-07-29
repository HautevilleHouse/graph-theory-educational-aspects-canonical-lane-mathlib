import GraphTheoryEducationalAspectsCanonicalLaneLean.GraphConnectivityPackage

/-!
# Planar Graph Package
-/

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure PlanarGraphPackage {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P} where
  planarityTesting : Prop
  eulerFormula : Prop
  kuratowskiTheorem : Prop
  faceCounting : Prop

structure PlanarGraphEvidence {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    (R : PlanarGraphPackage Q) where
  planarityTestingClosed : R.planarityTesting
  eulerFormulaClosed : R.eulerFormula
  kuratowskiTheoremClosed : R.kuratowskiTheorem
  faceCountingClosed : R.faceCounting

def PlanarGraphClosed {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    (R : PlanarGraphPackage Q) : Prop :=
  R.planarityTesting ∧ R.eulerFormula ∧
  R.kuratowskiTheorem ∧ R.faceCounting

theorem planar_graph_closed_from_evidence
    {G : GraphPackage} {C : ColoringConvention}
    {P : GraphColoringPackage C} {Q : GraphConnectivityPackage P}
    (R : PlanarGraphPackage Q) (E : PlanarGraphEvidence R) :
    PlanarGraphClosed R := by
  exact And.intro E.planarityTestingClosed
    (And.intro E.eulerFormulaClosed
      (And.intro E.kuratowskiTheoremClosed E.faceCountingClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse