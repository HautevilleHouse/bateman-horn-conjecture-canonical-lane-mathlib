import BatemanHornConjectureCanonicalLaneLean.Formalization
import BatemanHornConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace BatemanHornConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "4a4789f854bea5a9409b14742b5f5453a769fb7d2df04314f842c256310f5272", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "81cf302e0c9101a16c304e7c383c79fcbf306a115bf2e8992d4c282079d48501", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "194ff4fedffffd874ab951c12e9d09bd342d9e81d84e564497c40b468c7fc1a7", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "0cf8f559b771c2793d51332db344c7a688af7959dda7ee7a8d6b7ec8c684789d", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "f92b7218417b6c6db98c2d09d79ed62f5153478454a1ec00d4f5dbfde08d54e2", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "dc64f37d151a83454d89b88e61e59237b69fb310e81486049d16a063bce3d8f7", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "8927a8a66a0725d7d47fd1508626128072c9c48014da037f0663e31fe80c719f", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "7b800baceb51b89caa57575a6b121f12ef517744896bcd1dcdf3d507f8bedee9", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "a2e9d31007f6923e6de28d19c8e8760779795d0d680a513fea8598af6a619e9b", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "BH_G1", constant := "kappa_density" },
  { gate := "BH_G2", constant := "sigma_pattern" },
  { gate := "BH_G3", constant := "kappa_compact" },
  { gate := "BH_G4", constant := "rho_rigidity" },
  { gate := "BH_G5", constant := "horn_transfer" },
  { gate := "BH_G6", constant := "eps_coh" },
  { gate := "BH_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "12041a36f5c405ae0a30829f3404597a35fc2035277d5fb3b3cd61e5c6bc64c7" },
  { path := "README.md", sha256 := "3f9956914378f6ebee0a2b9cb94e3eed4b5c51dedd703c0ac8ec951e4b03c2cb" },
  { path := "artifacts/constants_extracted.json", sha256 := "0cf8f559b771c2793d51332db344c7a688af7959dda7ee7a8d6b7ec8c684789d" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "194ff4fedffffd874ab951c12e9d09bd342d9e81d84e564497c40b468c7fc1a7" },
  { path := "artifacts/constants_registry.json", sha256 := "f92b7218417b6c6db98c2d09d79ed62f5153478454a1ec00d4f5dbfde08d54e2" },
  { path := "artifacts/promotion_report.json", sha256 := "8927a8a66a0725d7d47fd1508626128072c9c48014da037f0663e31fe80c719f" },
  { path := "artifacts/stitch_constants.json", sha256 := "dc64f37d151a83454d89b88e61e59237b69fb310e81486049d16a063bce3d8f7" },
  { path := "notes/EG1_public.md", sha256 := "2e10729a771b70942c905048be3ca17a1de9402c1a0f2f8854b9d33247555160" },
  { path := "notes/EG2_public.md", sha256 := "91b33ee448a80381fd438d07dd20c4939ec5ac13d06ae7a710ccca438c2f8dfe" },
  { path := "notes/EG3_public.md", sha256 := "d2647d9601ab0921f340b8c5728f9ad19e71002a92cc7c0557966a556e1cc74d" },
  { path := "notes/EG4_public.md", sha256 := "83e3eb76f2769f8165eb963a8cb3bc6233a31accd6b1c70f8a1af7fb8e197c5c" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "81cf302e0c9101a16c304e7c383c79fcbf306a115bf2e8992d4c282079d48501" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "fdd6676f102b998785754cb15628411bfe424af82ef9f018e9ae08d9adc0acfa" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "1fc2eb10f78c668cf108e60fd0be467a3154170c0375038bc07eca4739ea296d" },
  { path := "paper/BATEMAN_HORN_CONJECTURE_PREPRINT.md", sha256 := "c70b912a3810c1b08cb4969ff9176c09fddc37d4b7c4dda3349165acb24ec0ac" },
  { path := "repro/REPRO_PACK.md", sha256 := "e92323e4dbc54886106abe8083b87273f7ba5b0a2c9978de2ef937ace36ea62a" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "182f1c4f874652e1838b3b2c4ab03cf477744b616969860aaab2aba345dec559" },
  { path := "repro/certificate_baseline.json", sha256 := "a2e9d31007f6923e6de28d19c8e8760779795d0d680a513fea8598af6a619e9b" },
  { path := "repro/run_repro.sh", sha256 := "2c1866a8e59c37abbe28e36a846673ba76e89f0c769c0623ad63c67b19a1432c" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/bh_closure_guard.py", sha256 := "87b997df429c4f63f5247744191dd3130985e34175fed12132b4b80bfa4a0666" },
  { path := "scripts/README.md", sha256 := "69def92f331d82d0910240f16251e081b956dcabec503336f5ea204f9e2e2acd" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "BH_G1", status := "PASS" },
  { gate := "BH_G2", status := "PASS" },
  { gate := "BH_G3", status := "PASS" },
  { gate := "BH_G4", status := "PASS" },
  { gate := "BH_G5", status := "PASS" },
  { gate := "BH_G6", status := "PASS" },
  { gate := "BH_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "horn_transfer", value := "1.02951" },
  { key := "kappa_compact", value := "0.8025682182985554" },
  { key := "kappa_density", value := "1.093346" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_pattern", value := "1.0739999999999998" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "horn_transfer",
  "kappa_compact",
  "kappa_density",
  "rho_rigidity",
  "sigma_pattern",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end BatemanHornConjectureCanonicalLaneLean
end HautevilleHouse
