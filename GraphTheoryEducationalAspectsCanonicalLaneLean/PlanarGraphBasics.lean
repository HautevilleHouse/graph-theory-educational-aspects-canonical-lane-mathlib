import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure PlanarGraphPackage where
  embeddableInSphere : Prop
  kuratowskiMinorFree : Prop
  eulerFormula : Prop
  maxEdges : Nat

structure PlanarGraphEvidence (P : PlanarGraphPackage) where
  embeddableInSphereClosed : P.embeddableInSphere
  kuratowskiMinorFreeClosed : P.kuratowskiMinorFree
  eulerFormulaClosed : P.eulerFormula

def PlanarGraphClosed (P : PlanarGraphPackage) : Prop :=
  P.embeddableInSphere ∧ P.kuratowskiMinorFree ∧ P.eulerFormula

theorem planar_graph_closed_from_evidence (P : PlanarGraphPackage)
    (E : PlanarGraphEvidence P) : PlanarGraphClosed P := by
  exact And.intro E.embeddableInSphereClosed
    (And.intro E.kuratowskiMinorFreeClosed E.eulerFormulaClosed)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse