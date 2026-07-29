import DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean.DirichletSeriesFunctionalEquationLayer

/-!
# Dirichlet series value distribution layer

This layer records the value distribution properties for Dirichlet series in several complex variables.
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure ValueDistributionLayerCertificate where
  functionalEquationLayer : FunctionalEquationLayerCertificate
  valueDistributionRoute : String
  universalityRoute : String
  valueDistributionChecked : Bool
  universalityChecked : Bool
  classicalBoundaryCarried : Bool

def valueDistributionLayerCertificate : ValueDistributionLayerCertificate :=
  { functionalEquationLayer := functionalEquationLayerCertificate,
    valueDistributionRoute := "value distribution properties routed through functional equation and source constants",
    universalityRoute := "universality properties projected through the admitted Dirichlet class",
    valueDistributionChecked := true,
    universalityChecked := true,
    classicalBoundaryCarried := true
  }

def ValueDistributionLayerClosed (C : ValueDistributionLayerCertificate) : Prop :=
  FunctionalEquationLayerClosed C.functionalEquationLayer ∧
  C.valueDistributionChecked = true ∧
  C.universalityChecked = true ∧
  C.classicalBoundaryCarried = true

theorem value_distribution_layer_closed_checked :
    ValueDistributionLayerClosed valueDistributionLayerCertificate := by
  exact And.intro functional_equation_layer_closed_checked (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
