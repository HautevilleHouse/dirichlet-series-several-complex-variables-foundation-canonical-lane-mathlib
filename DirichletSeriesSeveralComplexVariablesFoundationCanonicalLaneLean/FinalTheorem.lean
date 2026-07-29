import DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

def ConstrainedDirichletSeriesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dirichlet_series_endgame (A : AdmissibleClass) :
    ConstrainedDirichletSeriesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
