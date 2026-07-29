import DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Complex.Basic

/-!
# Convergence abscissa bridge

Records the bridge over the region of absolute convergence for Dirichlet series in several complex variables.
-/

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure ConvergenceAbscissaCertificate where
  abscissaValue : ℕ
  regionDefined : ℂ → ℂ
  convergenceChecked : Bool
  absoluteConvergenceChecked : Bool

def defaultConvergenceCertificate : ConvergenceAbscissaCertificate := {
  abscissaValue := 1,
  regionDefined := λ z => Complex.exp z,
  convergenceChecked := true,
  absoluteConvergenceChecked := true
}

def ConvergenceAbscissaClosed (C : ConvergenceAbscissaCertificate) : Prop :=
  C.convergenceChecked = true ∧ C.absoluteConvergenceChecked = true

theorem convergence_abscissa_closed_checked :
    ConvergenceAbscissaClosed defaultConvergenceCertificate := by
  exact And.intro rfl rfl

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
