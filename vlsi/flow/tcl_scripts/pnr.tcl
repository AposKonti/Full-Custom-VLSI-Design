set WORKSPACE	[getenv WORKSPACE]

set DESIGN_TOP	[getenv DESIGN_TOP]
set TECH	    [getenv TECH]

set VIRTUOSO_LIB_NAME [getenv VIRTUOSO_LIB_NAME]

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_gnd_net GND!
set init_lef_file ${WORKSPACE}/vlsi/cad/gf65/innovus/${VIRTUOSO_LIB_NAME}.lef
set init_design_settop 0
set init_verilog ${WORKSPACE}/vlsi/output/synth_output/${DESIGN_TOP}_mapped.v
set init_pwr_net VDD!
init_design
getIoFlowFlag
setFPlanRowSpacingAndType 4.238 1
setIoFlowFlag 0
floorPlan -site CoreSite -r 1 0.7 5 5 5 5
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect GND! -type tielo -inst *
globalNetConnect VDD! -type tiehi -inst *
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer M6 -stacked_via_bottom_layer M1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {GND! VDD!} -type core_rings -follow core -layer {top M1 bottom M1 left M2 right M2} -width {top 0.2 bottom 0.2 left 0.2 right 0.2} -spacing {top 0.2 bottom 0.2 left 0.2 right 0.2} -offset {top 0.78 bottom 0.78 left 0.78 right 0.78} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
#####################################
## Place
#####################################
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort medium -timingDriven 1 -modulePlan 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
placeDesign
getFillerMode -quiet
addFiller -cell filler -prefix FILLER
######################################
### Route
######################################
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { M1(1) M2(2) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { M1(1) M2(2) } -nets { GND! VDD! } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { M1(1) M2(2) }
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -routeBottomRoutingLayer 2
setNanoRouteMode -quiet -droutePostRouteSwapVia multiCut
setNanoRouteMode -quiet -drouteUseMultiCutViaEffort high
setNanoRouteMode -quiet -routeStrictlyHonorNonDefaultRule true
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {} -maxAllowedDelay 1
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail

######################################
### OUTPUT Files
######################################
saveNetlist ${WORKSPACE}/vlsi/output/pnr_output/matrix_alu_netlist.v
set dbgLefDefOutVersion 5.8
global dbgLefDefOutVersion
set dbgLefDefOutVersion 5.8
defOut -floorplan -netlist -routing ${WORKSPACE}/vlsi/output/pnr_output/matrix_alu_netlist.def

exit