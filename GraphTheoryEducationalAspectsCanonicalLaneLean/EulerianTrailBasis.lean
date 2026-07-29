import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure EulerianTrailPackage where
  graphConnected : Prop
  allVerticesEvenDegree : Prop
  trailExists : Prop
  closedTrailCondition : Prop

structure EulerianTrailEvidence (E : EulerianTrailPackage) where
  graphConnectedClosed : E.graphConnected
  allVerticesEvenDegreeClosed : E.allVerticesEvenDegree
  trailExistsClosed : E.trailExists
  closedTrailConditionClosed : E.closedTrailCondition

def EulerianTrailClosed (E : EulerianTrailPackage) : Prop :=
  E.graphConnected ∧ E.allVerticesEvenDegree ∧ E.trailExists ∧ E.closedTrailCondition

theorem eulerian_trail_closed_from_evidence (E : EulerianTrailPackage)
    (Ev : EulerianTrailEvidence E) : EulerianTrailClosed E := by
  exact And.intro Ev.graphConnectedClosed
    (And.intro Ev.allVerticesEvenDegreeClosed
      (And.intro Ev.trailExistsClosed Ev.closedTrailConditionClosed))

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse