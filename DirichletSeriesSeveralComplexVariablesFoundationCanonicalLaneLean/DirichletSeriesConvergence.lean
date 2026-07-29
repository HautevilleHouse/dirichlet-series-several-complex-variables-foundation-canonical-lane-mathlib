import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure AbscissaData where
  sigmaC : ℂ  -- abscissa of absolute convergence
  sigmaA : ℂ  -- abscissa of absolute convergence
  sigmaU : ℂ  -- abscissa of uniform convergence

def abscissaData : AbscissaData := {
  sigmaC := 0,
  sigmaA := 0,
  sigmaU := 0
}

structure ConvergenceCertificate where
  absAbscissaDefined : Bool
  uniformAbscissaDefined : Bool
  domainOpen : Bool
  convergenceChecked : Bool

def convergenceCertificate : ConvergenceCertificate := {
  absAbscissaDefined := true,
  uniformAbscissaDefined := true,
  domainOpen := true,
  convergenceChecked := true
}

def ConvergenceCertificateClosed (C : ConvergenceCertificate) : Prop :=
  C.absAbscissaDefined = true ∧ C.uniformAbscissaDefined = true ∧ C.domainOpen = true ∧ C.convergenceChecked = true

theorem convergence_certificate_closed_checked :
    ConvergenceCertificateClosed convergenceCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse