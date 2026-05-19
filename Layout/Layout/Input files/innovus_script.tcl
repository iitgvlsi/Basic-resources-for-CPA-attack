setDesignMode -process 65
set topverilogfile /data/student/project/AES_Composite_enc.v
set script_root /data/student/project/
set rpt_dir /data/student/project/reports/
set mmmcfilename $script_root/mmmc_setup.view
floorPlan -SITE CORE -d 1358 1358 70 70 70 70
#addIoFiller -cell EMPTY1HB -prefix FILLER -side n -fillAnyGap
#addIoFiller -cell EMPTY1HB -prefix FILLER -side s -fillAnyGap
#addIoFiller -cell EMPTY1HB -prefix FILLER -side e -fillAnyGap
#addIoFiller -cell EMPTY1HB -prefix FILLER -side w -fillAnyGap
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst *
globalNetConnect VSS -type pgpin -pin VSS -inst *
globalNetConnect VDD -type tiehi
globalNetConnect VSS -type tielo

addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -type core_rings -jog_distance 0.4 -threshold 0.4 -nets {VDD VSS} -follow core -stacked_via_bottom_layer ME1 -layer {bottom ME1 top ME1 right ME2 left ME2} -width 10 -spacing 2.2 -offset 14
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -type core_rings -jog_distance 0.4 -threshold 0.4 -nets {VDD VSS} -follow core -stacked_via_bottom_layer ME1 -layer {bottom ME3 top ME3 right ME4 left ME4} -width 10 -spacing 2.2 -offset 14
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -type core_rings -jog_distance 0.4 -threshold 0.4 -nets {VDD VSS} -follow core -stacked_via_bottom_layer ME1 -layer {bottom ME5 top ME5 right ME6 left ME6} -width 10 -spacing 2.2 -offset 14
addRing -skip_via_on_wire_shape Noshape -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -type core_rings -jog_distance 0.4 -threshold 0.4 -nets {VDD VSS} -follow core -stacked_via_bottom_layer ME1 -layer {bottom ME7 top ME7 right ME6 left ME6} -width 10 -spacing 2.2 -offset 14

addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit ME7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit ME5 -number_of_sets 8 -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -padcore_ring_top_layer_limit ME7 -spacing 1 -xleft_offset 65 -xright_offset 10 -merge_stripes_value 0.4 -layer ME6 -block_ring_bottom_layer_limit ME5 -width 8 -nets {VDD VSS} -stacked_via_bottom_layer ME1

addStripe -skip_via_on_wire_shape Noshape -block_ring_top_layer_limit ME7 -max_same_layer_jog_length 0.8 -padcore_ring_bottom_layer_limit ME6 -number_of_sets 8 -ybottom_offset 65 -skip_via_on_pin Standardcell -stacked_via_top_layer ME7 -padcore_ring_top_layer_limit ME7 -spacing 1.4 -merge_stripes_value 0.4 -direction horizontal -layer ME7 -block_ring_bottom_layer_limit ME6 -ytop_offset 10 -width 8 -nets {VDD VSS} -stacked_via_bottom_layer ME1

sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { ME1 ME7 } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort preferLayer } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { ME1 ME7 } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { ME1 ME7 }

analyzeFloorplan -fp
setPlaceMode -fp false
placeDesign
create_ccopt_clock_tree_spec -file ccopt_FC.spec
source ccopt_FC.spec
ccopt_design
reportCongestion -trialRoute
report_timing -check_type setup
setAnalysisMode -checktype hold
report_timing -check_type hold
report_power
report_constraint all_violators
report_constraint -all_violators
report_ccopt_skew_groups -summary

setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail

setAnalysisMode -analysisType onChipVariation -cppr both
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
addFiller -cell FILLER1HD -prefix FILLER -doDRC


