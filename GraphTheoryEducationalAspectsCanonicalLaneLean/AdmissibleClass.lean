import GraphTheoryEducationalAspectsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure AdmissibleClass where
  object : GraphTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse