import HautevilleHouse.GraphTheoryEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphTheoryEducationalAspectsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  graphObject : String
  classicalBoundary : String
  constrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "GraphTheoryEducationalAspects",
    theoremName := "GraphTheoryEducationalAspects",
    graphObject := "Graph theory educational aspects theorem",
    classicalBoundary := "Classical source boundary carried",
    constrainedStatement := "Constrained graph theory certificate internalized",
    certificateLane := "graph_constrained",
    carriedRemainder := "Classical source boundary carried"
  }

theorem source_key_checked : sourceTheoremStatement.sourceKey = "GraphTheoryEducationalAspects" := rfl

end GraphTheoryEducationalAspectsCanonicalLaneLean
end HautevilleHouse
