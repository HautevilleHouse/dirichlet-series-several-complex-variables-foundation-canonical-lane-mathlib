import DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Analysis.Complex.Basic
import Mathlib.Analysis.InnerProductSpace.Basic

namespace HautevilleHouse
namespace DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v w

abbrev MathlibDirichletSeriesSet : Type :=
  Set (ℕ → ℂ)

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  operatorCarrier : Type u
  dirichletSet : MathlibDirichletSeriesSet
  invariantOrConvergenceGate : Prop
  abscissaBridge : Prop
  sourceBoundaryLedger : Set String

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  substrate : UpstreamMathlibSubstrate
  localWitness : String
  bridgeEvidence : String
  operatorModelChecked : Prop
  operatorModelWitness : operatorModelChecked
  spectralPersistenceBridgeChecked : Prop
  spectralPersistenceBridgeWitness : spectralPersistenceBridgeChecked
  sourceBoundaryLedgerChecked : Prop
  sourceBoundaryLedgerWitness : sourceBoundaryLedgerChecked
  classicalRemainderCarried : formalizationCertificate.sourceConjectureClosureClaimed = false
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop

def theoremSpecificObject : TheoremSpecificObject :=
  { sourceKey := sourceRepository,
    theoremObject := sourceDescription,
    claimBoundary := sourceTheoremBoundary.claimBoundary
  }

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧
  O.object.theoremObject = sourceDescription ∧
  O.operatorModelChecked ∧
  O.spectralPersistenceBridgeChecked ∧
  O.sourceBoundaryLedgerChecked ∧
  (formalizationCertificate.sourceConjectureClosureClaimed = false)

def ScopedClosure (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O

end DirichletSeriesSeveralComplexVariablesFoundationCanonicalLaneLean
end HautevilleHouse
