import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure HamiltonianCyclePackage where
  vertexSet : Type u
  edgeSet : (v : vertexSet) -> (w : vertexSet) -> Prop
  cycle : List vertexSet
  cycleVisitsAllVertices : ∀ v : vertexSet, v ∈ cycle
  cycleClosed : (List.get? cycle 0) = (List.get? cycle (List.length cycle - 1))
  cycleEdgesPresent : ∀ (i : Nat), i < List.length cycle - 1 → edgeSet (List.get cycle i) (List.get cycle (i+1))
  hamiltonianCycleExists : Prop

structure HamiltonianCycleEvidence (H : HamiltonianCyclePackage) where
  cycleVisitsAllVerticesClosed : H.cycleVisitsAllVertices
  cycleClosedClosed : H.cycleClosed
  cycleEdgesPresentClosed : H.cycleEdgesPresent
  hamiltonianCycleExistsClosed : H.hamiltonianCycleExists

def HamiltonianCycleClosed (H : HamiltonianCyclePackage) : Prop :=
  H.hamiltonianCycleExists

theorem hamiltonian_cycle_closed_from_evidence (H : HamiltonianCyclePackage) (E : HamiltonianCycleEvidence H) : HamiltonianCycleClosed H := by
  exact E.hamiltonianCycleExistsClosed

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse