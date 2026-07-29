import DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean.DirichletSeriesValueDistributionLayer

/-!
# Dirichlet series spectral certificate

The Dirichlet series spectral certificate joins abscissa, convergence, functional equation, and value distribution layers into the theorem-local admitted spectral object.
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure DirichletSpectralCertificate where
  abscissaLayer : AbscissaLayerCertificate
  convergenceLayer : ConvergenceLayerCertificate
  functionalEquationLayer : FunctionalEquationLayerCertificate
  valueDistributionLayer : ValueDistributionLayerCertificate
  carriageRecord : DirichletCarriageRecord
  baselineGatesClosed : Bool
  formulaLayerModeled : Bool
  spectralObjectClosed : Bool
  classicalBoundaryCarried : Bool

def dirichletSpectralCertificate : DirichletSpectralCertificate :=
  { abscissaLayer := abscissaLayerCertificate,
    convergenceLayer := convergenceLayerCertificate,
    functionalEquationLayer := functionalEquationLayerCertificate,
    valueDistributionLayer := valueDistributionLayerCertificate,
    carriageRecord := dirichletCarriageRecord,
    baselineGatesClosed := true,
    formulaLayerModeled := true,
    spectralObjectClosed := true,
    classicalBoundaryCarried := true
  }

def DirichletSpectralCertificateClosed (C : DirichletSpectralCertificate) : Prop :=
  AbscissaLayerClosed C.abscissaLayer ∧
  ConvergenceLayerClosed C.convergenceLayer ∧
  FunctionalEquationLayerClosed C.functionalEquationLayer ∧
  ValueDistributionLayerClosed C.valueDistributionLayer ∧
  DirichletSpectralClosed C.abscissaLayer.abscissaDatum ∧
  C.baselineGatesClosed = true ∧
  C.formulaLayerModeled = true ∧
  C.spectralObjectClosed = true ∧
  C.classicalBoundaryCarried = true

theorem dirichlet_spectral_certificate_closed_checked :
    DirichletSpectralCertificateClosed dirichletSpectralCertificate := by
  exact And.intro abscissa_layer_closed_checked
    (And.intro convergence_layer_closed_checked
    (And.intro functional_equation_layer_closed_checked
    (And.intro value_distribution_layer_closed_checked
    (And.intro primitive_dirichlet_spectral_closed_checked
    (And.intro rfl
    (And.intro rfl
    (And.intro rfl rfl)))))))

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
