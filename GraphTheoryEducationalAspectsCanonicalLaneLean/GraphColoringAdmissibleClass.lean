import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure GraphColoringObject where
  vertexCount : Nat
  edgeSet : List (Nat × Nat)
  chromaticNumberBound : Nat
  coloringExists : Prop
  conclusion : coloringExists

structure AdmissibleClass where
  object : GraphColoringObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GraphWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GraphWitnessClosed (O : GraphColoringObject) : Prop :=
  O.coloringExists

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse