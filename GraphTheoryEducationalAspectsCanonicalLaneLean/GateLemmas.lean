import GraphTheoryEducationalAspectsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse