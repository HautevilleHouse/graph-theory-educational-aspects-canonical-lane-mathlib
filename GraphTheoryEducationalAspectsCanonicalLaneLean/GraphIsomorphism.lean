import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphIsomorphismPackage where
  vertexSet1 : Type u
  vertexSet2 : Type v
  edgeSet1 : (v : vertexSet1) -> (w : vertexSet1) -> Prop
  edgeSet2 : (v : vertexSet2) -> (w : vertexSet2) -> Prop
  bijection : vertexSet1 → vertexSet2
  bijectionInverse : vertexSet2 → vertexSet1
  edgesPreserved : ∀ (v w : vertexSet1), edgeSet1 v w ↔ edgeSet2 (bijection v) (bijection w)
  bijectionIsBijection : Function.Bijective bijection
  isomorphismExists : Prop

structure GraphIsomorphismEvidence (I : GraphIsomorphismPackage) where
  edgesPreservedClosed : I.edgesPreserved
  bijectionIsBijectionClosed : I.bijectionIsBijection
  isomorphismExistsClosed : I.isomorphismExists

def GraphIsomorphismClosed (I : GraphIsomorphismPackage) : Prop :=
  I.edgesPreserved ∧ I.bijectionIsBijection ∧ I.isomorphismExists

theorem graph_isomorphism_closed_from_evidence (I : GraphIsomorphismPackage) (E : GraphIsomorphismEvidence I) : GraphIsomorphismClosed I := by
  exact And.intro E.edgesPreservedClosed (And.intro E.bijectionIsBijectionClosed E.isomorphismExistsClosed)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse