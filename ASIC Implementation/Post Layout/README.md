# AES Composite Encryption — Post-Layout Implementation Flow (Innovus)

This section covers the physical implementation (place-and-route) of the AES Composite Encryption design using Cadence Innovus. Following all steps in order produces the final `aes.spef` parasitic extraction file used for sign-off power analysis.

---

## Folder Structure

```
.
├── Input files/
│   ├── lef files/
│   │   ├── uk65lscllmvbbr_1.lef          # Standard cell LEF (layer 1)
│   │   ├── uk65lscllmvbbr_2.lef          # Standard cell LEF (layer 2)
│   │   └── uk65lscllmvbbr_7m2t0f.tch    # Technology file (layer stack)
│   ├── AES_Composite_enc.v               # Gate-level synthesized netlist
│   ├── innovus_script.tcl                # Main Innovus implementation script
│   ├── mmmc_setup.view                   # Multi-mode multi-corner setup
│   ├── syn_constraints.sdc               # Timing constraints
│   └── uk65lscllmvbbr_108c125_wc.lib    # Worst-case timing/power library
└── Output files/
    ├── aes_post_layout.v                 # Post-layout gate-level netlist
    └── aes.spef                          # Parasitic extraction output (final deliverable)
```

---

## Tool

**Cadence Innovus Implementation System**

All steps below are executed by sourcing `innovus_script.tcl` inside the Innovus shell, or can be run interactively step by step as described.

---

## Step-by-Step Implementation Flow

### Step 1 — Launch Innovus and Source the Script

Start Innovus from your terminal:

```bash
innovus
```

Once inside the Innovus shell, source the implementation script to run the full flow automatically:

```tcl
source innovus_script.tcl
```

Alternatively, follow Steps 2–13 below to execute each stage interactively.

---

### Step 2 — Design Initialisation

The script sets the process node and path variables, then immediately uses them to load the MMMC constraints, LEF/technology files, and gate-level netlist before any physical commands run:

```tcl
setDesignMode -process 65
set topverilogfile /data/student/project/AES_Composite_enc.v
set script_root /data/student/project/
set rpt_dir /data/student/project/reports/
set mmmcfilename $script_root/mmmc_setup.view

read_mmmc $mmmcfilename
read_physical -lef { /data/student/project/lef\ files/uk65lscllmvbbr_1.lef \
                     /data/student/project/lef\ files/uk65lscllmvbbr_2.lef \
                     /data/student/project/lef\ files/uk65lscllmvbbr_7m2t0f.tch }
read_netlist $topverilogfile
init_design
```

| Variable | Points to |
|---|---|
| `topverilogfile` | `Input files/AES_Composite_enc.v` |
| `script_root` | Project root directory |
| `rpt_dir` | Reports output directory |
| `mmmcfilename` | `Input files/mmmc_setup.view` |

The MMMC file (`mmmc_setup.view`) references `uk65lscllmvbbr_108c125_wc.lib` and `syn_constraints.sdc`. The LEF files and technology file define the physical layer stack for the 65 nm process.

---

### Step 3 — Floorplanning

A square core of 1358 × 1358 µm is created with 70 µm IO margins on all sides, placed on the standard cell site `CORE`:

```tcl
floorPlan -SITE CORE -d 1358 1358 70 70 70 70
```

Global power nets are then connected to all standard cell power/ground pins and tie cells:

```tcl
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo
```

---

### Step 4 — Power Ring Creation

Four sets of power rings are added around the core, spanning metal layers ME1–ME7. Each ring pair carries both `VDD` and `VSS`, with 10 µm width, 2.2 µm spacing, and a 14 µm offset from the core boundary:

```tcl
addRing ... -layer {bottom ME1 top ME1 right ME2 left ME2} ...   # Ring set 1: ME1/ME2
addRing ... -layer {bottom ME3 top ME3 right ME4 left ME4} ...   # Ring set 2: ME3/ME4
addRing ... -layer {bottom ME5 top ME5 right ME6 left ME6} ...   # Ring set 3: ME5/ME6
addRing ... -layer {bottom ME7 top ME7 right ME6 left ME6} ...   # Ring set 4: ME7/ME6
```

All rings use stacked vias between ME1 and ME7 to ensure full vertical connectivity.

---

### Step 5 — Power Stripe Creation

Vertical stripes are added on ME6 (8 sets, 8 µm wide, 1 µm spacing), and horizontal stripes on ME7 (8 sets, 8 µm wide, 1.4 µm spacing). Together these form the power mesh across the full core area:

```tcl
addStripe ... -layer ME6 -direction vertical   -number_of_sets 8 -width 8 -nets {VDD VSS} ...
addStripe ... -layer ME7 -direction horizontal -number_of_sets 8 -width 8 -nets {VDD VSS} ...
```

---

### Step 6 — Special Route (Power Network Connections)

`sroute` connects block pins, pad pins, pad rings, core pins, and floating stripes into a unified power network across layers ME1–ME7:

```tcl
sroute -connect { blockPin padPin padRing corePin floatingStripe } \
       -layerChangeRange { ME1 ME7 } \
       -nets { VDD VSS } ...
```

---

### Step 7 — Placement

The floorplan is analysed and standard cells are placed:

```tcl
analyzeFloorplan -fp
setPlaceMode -fp false
placeDesign
```

---

### Step 8 — Clock Tree Synthesis (CTS)

The pre-defined clock tree specification `ccopt_FC.spec` is sourced and the clock tree is built with concurrent clock and data optimisation (CCOpt):

```tcl
source ccopt_FC.spec
ccopt_design
```

> `ccopt_FC.spec` is the hand-crafted spec file from `Input files/`. It defines all clock roots, targets, and routing rules for the AES design.

---

### Step 9 — Post-CTS Timing and Congestion Analysis

After CTS, congestion and timing are checked before routing:

```tcl
reportCongestion -trialRoute
report_timing -check_type setup
setAnalysisMode -checktype hold
report_timing -check_type hold
report_power
report_constraint -all_violators
report_ccopt_skew_groups -summary
```

Review the generated reports in `reports/` and resolve any setup/hold violations or congestion hotspots before proceeding.

---

### Step 10 — Detailed Routing

NanoRoute is configured for timing-driven and SI-driven routing, then the full global and detailed route is run:

```tcl
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
```

---

### Step 11 — Post-Route Optimisation and Filler Insertion

On-chip variation (OCV) analysis mode is enabled, and post-route optimisation fixes capacitance and transition violations:

```tcl
setAnalysisMode -analysisType onChipVariation -cppr both
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
```

Filler cells are then inserted to complete the row structures and satisfy DRC:

```tcl
addFiller -cell FILLER1HD -prefix FILLER -doDRC
```

---

### Step 12 — Save Post-Layout Netlist

Once the layout is DRC-clean and physically complete, the post-layout gate-level netlist is written out:

```tcl
saveNetlist aes_post_layout.v
```

This captures the final netlist including all cells added or modified during physical implementation — filler cells, clock buffers inserted by CTS, tie cells, etc. This netlist should be used for any post-layout simulation or formal verification in place of the original synthesized netlist.

---

### Step 13 — Parasitic Extraction (SPEF Generation)

RC parasitics of the fully routed layout are extracted and written to a SPEF file:

```tcl
extractRC
rcOut -spef aes.spef
```

The output `aes.spef` captures all resistance and capacitance values of the routed interconnect and is passed to PrimeTime PX for accurate sign-off power analysis.

---

## Complete Flow Summary

| Step | Action | Key Input Files | Output |
|------|--------|----------------|--------|
| 2 | Design init & MMMC setup | `AES_Composite_enc.v`, `mmmc_setup.view`, `syn_constraints.sdc`, LEF files, `uk65lscllmvbbr_7m2t0f.tch` | Loaded design |
| 3 | Floorplan & power connections | — | Core floorplan |
| 4 | Power rings | — | ME1–ME7 rings |
| 5 | Power stripes | — | ME6/ME7 mesh |
| 6 | Special route | — | Connected power network |
| 7 | Placement | — | Placed netlist |
| 8 | Clock tree synthesis | `ccopt_FC.spec` | Balanced clock tree |
| 9 | Timing/congestion check | `uk65lscllmvbbr_108c125_wc.lib` | Reports in `reports/` |
| 10 | Detailed routing | — | Routed layout |
| 11 | Post-route optimisation + fillers | — | DRC-clean layout |
| 12 | Save post-layout netlist | — | `aes_post_layout.v` |
| 13 | Parasitic extraction | Routed layout | **`aes.spef`** |

---

## Prerequisites

- Cadence Innovus Implementation System (65 nm process node support)
- Valid Innovus, CDNtool, and CeltIC licences
- The `reports/` directory must exist at `/data/student/project/reports/` before running the script

---

## Notes

- The `mmmc_setup.view` file must correctly reference `syn_constraints.sdc` and `uk65lscllmvbbr_108c125_wc.lib` with paths matching your local installation.
- `aes_post_layout.v` should replace `AES_Composite_enc.v` in any post-layout simulation or formal verification run.
- `aes.spef` feeds directly into the PrimeTime PX power analysis step described in the main design flow README.
