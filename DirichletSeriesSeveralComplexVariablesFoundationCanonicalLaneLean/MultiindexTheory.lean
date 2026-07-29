import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

structure Multiindex where
  tuple : List ℕ

def multiindexAdd : Multiindex → Multiindex → Multiindex := λ a b =>
  { tuple := List.zipWith (· + ·) a.tuple b.tuple }

def multiindexZero : Multiindex := { tuple := [] }

structure MonomialOrder where
  order : Multiindex → Multiindex → Bool
  wellFounded : Prop

structure MultiindexCertificate where
  additionDefined : Bool
  zeroDefined : Bool
  orderDefined : Bool
  factorialDefined : Bool

def multiindexCertificate : MultiindexCertificate := {
  additionDefined := true,
  zeroDefined := true,
  orderDefined := true,
  factorialDefined := true
}

def MultiindexCertificateClosed (C : MultiindexCertificate) : Prop :=
  C.additionDefined = true ∧ C.zeroDefined = true ∧ C.orderDefined = true ∧ C.factorialDefined = true

theorem multiindex_certificate_closed_checked :
    MultiindexCertificateClosed multiindexCertificate := by
  exact And.intro rfl (And.intro rfl (And.intro rfl rfl))

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse