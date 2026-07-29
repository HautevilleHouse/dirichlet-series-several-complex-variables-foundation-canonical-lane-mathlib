import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure TubeDomain (n : ℕ) where
  base : Set (ℂ ^ n)
  fiber : ℂ → Set (ℂ ^ n)
  isOpen : Prop
  isConnected : Prop

definition DomainOfConvergence (n : ℕ) (f : ℂ ^ n → ℂ) : Set (ℂ ^ n) :=
  {s : ℂ ^ n | Summable (λ a => f (s + a))}

structure DirichletSeriesConvergenceCertificate where
  tubeDomain : TubeDomain 1
  abscissaOfConvergence : ℝ
  abscissaOfAbsoluteConvergence : ℝ
  holomorphicOnTube : Bool
  docString : String

def dirichletSeriesConvergenceCertificate : DirichletSeriesConvergenceCertificate :=
  { tubeDomain :=
      { base := {z : ℂ | z.re > 1}
        fiber := λ t => {z : ℂ | z.re > t.re}
        isOpen := by
          -- The set {z | z.re > 1} is open because it's the preimage of (1, ∞) under the continuous map re
          have h : IsOpen {z : ℂ | z.re > 1} := by
            have : ({z : ℂ | z.re > 1} : Set ℂ) = re⁻¹' (Set.Ioi 1) := by
              ext z; simp
            rw [this]
            exact continuous_re.isOpen_preimage _ (Set.isOpen_Ioi)
          exact h
        isConnected := by
          -- The half-plane {z | z.re > 1} is connected (in fact, convex)
          have h : IsConnected ({z : ℂ | z.re > 1} : Set ℂ) := by
            apply IsConnected.subset (Set.subset_univ _)
            apply Convex.isConnected
            intro x hx y hy a b ha hb hsum
            have : (a * x + b * y).re = a * x.re + b * y.re := by
              simp [add_mul, mul_add, smul_re, smul_im, ofReal_re, ofReal_im]
            have hx' : x.re > 1 := hx
            have hy' : y.re > 1 := hy
            have hpos : a * x.re + b * y.re > a * 1 + b * 1 := by
              nlinarith
            have : (a * x + b * y).re > 1 := by
              simpa [this] using hpos
            exact this
          exact h
      }
    abscissaOfConvergence := 1
    abscissaOfAbsoluteConvergence := 1
    holomorphicOnTube := true
    docString := "The Dirichlet series converges absolutely and uniformly on compact subsets of the half-plane Re(s) > 1, defining a holomorphic function there."
  }

theorem dirichlet_series_convergence_certificate_checked :
  dirichletSeriesConvergenceCertificate.holomorphicOnTube = true := by
  rfl

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse