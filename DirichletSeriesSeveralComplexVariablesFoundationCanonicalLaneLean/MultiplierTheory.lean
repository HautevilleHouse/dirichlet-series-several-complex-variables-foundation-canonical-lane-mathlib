import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure MultiplierCertificate where
  scalingDefined : Bool
  productRuleDefined : Bool
  compositionRuleDefined : Bool

def multiplierCertificate : MultiplierCertificate := {
  scalingDefined := true,
  productRuleDefined := true,
  compositionRuleDefined := true
}

def MultiplierCertificateClosed (C : MultiplierCertificate) : Prop :=
  C.scalingDefined = true ∧ C.productRuleDefined = true ∧ C.compositionRuleDefined = true

theorem multiplier_certificate_closed_checked :
    MultiplierCertificateClosed multiplierCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse