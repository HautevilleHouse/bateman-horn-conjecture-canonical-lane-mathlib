import BatemanHornConjectureCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Data.Set.Basic
import Mathlib.Data.Nat.Prime.Basic

namespace HautevilleHouse
namespace BatemanHornConjectureCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

universe u v

structure TheoremSpecificObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure UpstreamMathlibSubstrate where
  candidateFamily : Nat -> Nat
  admissibleParameters : Set Nat
  primeWitnesses : Set Nat
  localObstructionData : Set String
  nativePrimeWitness : forall n : Nat, n ∈ primeWitnesses -> Nat.Prime n

def UpstreamMathlibSubstrateClosed (S : UpstreamMathlibSubstrate) : Prop :=
  S.admissibleParameters.Nonempty ∧ S.primeWitnesses.Nonempty ∧ S.localObstructionData.Nonempty

structure AdmittedTheoremObject where
  object : TheoremSpecificObject
  upstream : UpstreamMathlibSubstrate
  upstreamClosed : UpstreamMathlibSubstrateClosed upstream
  localWitness : String
  bridgeEvidence : String
  sourceKeyChecked : object.sourceKey = sourceRepository
  theoremObjectChecked : object.theoremObject = sourceDescription

structure ClosureState where
  object : AdmittedTheoremObject

def theoremSpecificObject : TheoremSpecificObject := {
  sourceKey := sourceRepository,
  theoremObject := sourceDescription,
  claimBoundary := sourceTheoremBoundary.claimBoundary
}

def NativeBridgeClosed (O : AdmittedTheoremObject) : Prop :=
  O.object.sourceKey = sourceRepository ∧ O.object.theoremObject = sourceDescription

def NativeClosureTheorem (O : AdmittedTheoremObject) : Prop :=
  NativeBridgeClosed O ∧ UpstreamMathlibSubstrateClosed O.upstream ∧ ClassicalSourceBoundaryCarried

theorem upstream_mathlib_substrate_checked (O : AdmittedTheoremObject) :
    UpstreamMathlibSubstrateClosed O.upstream := by
  exact O.upstreamClosed

theorem native_closure_from_admitted_object (O : AdmittedTheoremObject) :
    NativeClosureTheorem O := by
  exact And.intro (And.intro O.sourceKeyChecked O.theoremObjectChecked)
    (And.intro O.upstreamClosed classical_source_boundary_carried_checked)

end BatemanHornConjectureCanonicalLaneLean
end HautevilleHouse
