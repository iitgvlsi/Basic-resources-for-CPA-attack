# AES Encryption — Synopsys Design Flow

This repository contains the RTL design, testbench, and supporting scripts for the AES Composite Encryption block. The design flow covers synthesis, simulation, and power analysis using Synopsys EDA tools.

---

## Repository Structure

```
.
├── RTL Code/
│   └── AES_Composite_enc.v          # RTL source (reference/exploration)
├── Synthesis/
│   ├── AES_Composite_enc.v          # RTL source used for synthesis
│   ├── ark_subbytes.tcl             # Design Compiler synthesis script
│   └── syn_constraints.sdc          # Synthesis timing constraints
├── VCS/
│   ├── AES_Composite_enc.dc.v       # Post-synthesis netlist
│   ├── testbench.v                  # Simulation testbench
│   └── uk65lscllmvbbr_sdf21.v       # Standard cell library SDF model
└── Power and trace sample collection/
    ├── primetime_script.tcl         # PrimeTime PX power analysis script
    └── uk65lscllmvbbr_108c125_wc.db # Timing/power library for PrimeTime
```

---

## Tool Flow Overview

```
[1] RTL Code
   │
   ▼
[2] Design Compiler (DC)   ──►  Synthesized Netlist + SDC + Reports
   │
   ▼
[3] Formality              ──►  Formal equivalence check (RTL vs Synthesized Netlist)
   │
   ▼
[4] VCS                    ──►  Post-synthesis simulation  →  .vcd file
   │
   ▼
[5] DVE                    ──►  Waveform-based post-synthesis functional verification
   │
   ▼
[6] PrimeTime PX           ──►  Power analysis  →  .fsdb file
   │
   ▼
[7] Custom WaveView         ──►  Power trace waveform viewing
```

---

## Step-by-Step Instructions

### Step 1 — Synthesis with Design Compiler (DC)

Design Compiler synthesizes the RTL into a gate-level netlist using the provided constraints.

**Invoke the shell:**
```bash
dc_shell
```

**Inside `dc_shell`, run the synthesis script:**
```tcl
source ark_subbytes.tcl
```

> **Input files (in `Synthesis/`):**
> - `AES_Composite_enc.v` — RTL design
> - `ark_subbytes.tcl` — Synthesis TCL script

**Outputs generated:**
- Area, power, and timing reports
- `AES_Composite_enc.dc.v` — Gate-level synthesized netlist
- `syn_constraints.sdc` — Synopsys Design Constraints file (post-synthesis)

---

### Step 2 — Formal Verification with Formality

Formality performs formal equivalence checking to confirm that the synthesized netlist is logically equivalent to the RTL source.

**Invoke Formality:**
```bash
formality
```

**Verification flow inside the GUI/shell:**

1. **Reference design** — Read the original RTL source, then set the top design:
   - Read: `RTL Code/AES_Composite_enc.v`
   - Set top design

2. **Implementation design** — Read the synthesized netlist and the standard cell DB library, then set the top design:
   - Read netlist: `AES_Composite_enc.dc.v` (output from Step 1)
   - Read DB libraries (standard cell library): `uk65lscllmvbbr_108c125_wc.lib`
   - Set top design

3. Run **Match**

4. Run **Verify**

**Output:** No physical file is produced. A pass/fail equivalence result is reported in the tool.

---

### Step 3 — Post-Synthesis Simulation with VCS

VCS compiles and simulates the synthesized netlist together with the testbench and the SDF cell library model.

**Compile all design files:**
```bash
vlogan -full64 \
  VCS/uk65lscllmvbbr_sdf21.v \
  VCS/AES_Composite_enc.v \
  VCS/testbench.v
```

> `AES_Composite_enc.v` here represents the post-synthesis netlist (`aes_unprotected.dc.v`) produced in Step 1. Rename or replace accordingly.

**Elaborate and link the testbench:**
```bash
vcs -full64 testbench
```

**Run the simulation:**
```bash
./simv
```

> **Input files (in `VCS/`):**
> - `uk65lscllmvbbr_sdf21.v` — Standard cell library SDF model
> - `AES_Composite_enc.v` — Synthesized netlist
> - `testbench.v` — Simulation testbench

**Output:**
- `.vcd` — Value Change Dump file (waveform data for the next step)

---

### Step 4 — Waveform Viewing with DVE

DVE (Discovery Visualization Environment) is used to inspect simulation waveforms and verify post-synthesis functional correctness.

**Invoke DVE:**
```bash
dve -full64
```

Then open the `.vcd` file produced in Step 3 from within the DVE GUI.

**Output:** No physical file is produced. The tool is used interactively for waveform analysis.

---

### Step 5 — Power Analysis with PrimeTime PX

PrimeTime PX performs gate-level power analysis using the simulation activity from the `.vcd` file and the timing/power library.

**Invoke PrimeTime:**
```bash
pt_shell
```

**Inside `pt_shell`, source the analysis script:**
```tcl
source primetime_script.tcl
```

> **Input files (in `Power and trace sample collection/`):**
> - `primetime_script.tcl` — PrimeTime PX script (references the `.vcd`, netlist, and library)
> - `uk65lscllmvbbr_108c125_wc.db` — Worst-case timing and power library

**Output:**
- `.fsdb` — Fast Signal Database file (power trace waveforms)

---

### Step 6 — Power Waveform Viewing with Custom WaveView

Custom WaveView (wv) is used to visualise the power waveforms captured in the `.fsdb` file.

**Invoke Custom WaveView with the power trace:**
```bash
wv aes_power.fsdb
```

Replace `aes_power.fsdb` with the actual `.fsdb` filename generated in Step 5.

**Output:** No physical file is produced. The tool displays power waveforms interactively.

---

## Prerequisites

| Tool | Version Requirement |
|------|-------------------|
| Design Compiler | Synopsys DC (any recent version) |
| Formality | Synopsys Formality |
| VCS | Synopsys VCS (full64-bit mode) |
| DVE | Bundled with VCS |
| PrimeTime PX | Synopsys PrimeTime |
| CustomWaveView | Synopsys CustomWaveView (wv) |

Ensure all Synopsys tools are licensed and sourced in your shell environment before starting the flow. Typically this is done via your site's `setup.csh` or `setup.sh` script.

---

## Notes

- The `.vcd` file produced by VCS must be referenced correctly inside `primetime_script.tcl` before running PrimeTime PX.
- The `syn_constraints.sdc` file is consumed by the `ark_subbytes.tcl` script during synthesis. Ensure paths are set correctly if running from a different working directory.
- All `vlogan`/`vcs` commands assume you are running from the repository root. Adjust paths if executing from within the `VCS/` subdirectory.
