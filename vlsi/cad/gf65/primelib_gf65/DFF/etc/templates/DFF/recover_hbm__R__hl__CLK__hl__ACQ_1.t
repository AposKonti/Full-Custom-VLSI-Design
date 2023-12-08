##############################################################################
# Template generated by PrimeLib T-2022.03-SP1 (built on Apr 12, 2022 13:01:04) #
# PrimeLib Path: /proj/cad/synopsys/synopsys_2021/primelib/T-2022.03-SP1/linux64/bin/primelib #
# Host Name: engnx03a.utdallas.edu, User Name: axk220238, PID: 22893 #
# Directory: /home/eng/a/axk220238/vlsi/cad/gf65/primelib_gf65_axk220238_axk230133 #
# Date Thu, 30 Nov 2023 18:39:29 CST #
#                                                                            #
# Copyright (C) 2022 Synopsys Inc.                                #
# This file contains confidential and proprietry information.                #
# All rights reserved.                                                       #
#                                                                            #
##############################################################################

set tempTestColl [ SBTestCollection automap ]


# Specifies the version of the template API expected by this file.
$tempTestColl setTemplateVer 7

## 
## Configuration Flags
$tempTestColl setConfigurationFlags { doTiming doPower }

## 
## Formal Ports
$tempTestColl makeFormalPorts {VSS D CLK Q R VDD}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {CLK}
$tempTestColl setParameter asynch_ports {R}
$tempTestColl setParameter asynch_ports_active_state {R 01 Q 10}

## 
## Tests

## 
## Test recover_hbm__R__hl__CLK__hl
set tempTest [ SBTest "recover_hbm__R__hl__CLK__hl" ]
$tempTest setTargets { recover_hbm__R__hl__CLK__hl }
$tempTest setTargetInputs {
  {R hl}}

$tempTest setTargetOutputs {
  {Q lh}}

$tempTest setTargetReferences {
  {CLK hl}}

$tempTest setSwitchingInputs {
  {R hl}}

$tempTest setSwitchingRefs {
  {CLK hl}}

$tempTest setAnalysisType tranPlus

## 
## Sweep Specification
$tempTest setTagNumTableDimensions 0 mpw

## 
## Harnesses
$tempTest setAcquire 1

## 
## ACQ_1
set tempAcq [ SBConstraintHBMAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "D"
$tempAcq setStateCoverage "1"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { Q:out R D CLK } { initial_delay units ct default_slew stable driver_delay_R driver_delay_CLK recovery min_recovery max_recovery opt_tolerance init_hbm degrade_recovery }

$tempWT setStimulus                               {   R    D    CLK  Q     } {
                                  "0"          {} {   1    1    1    0     }
                      "initial_delay"     { in1 } {   0    -    -    -     }
           "(initial_delay)+recovery" { in2 out } {   -    -    0    1     }
"((initial_delay)+recovery)+(stable)"          {} {   -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_R                Tin        { R in1 } NO_USER SYS }
  { tin_CLK              Tin        { CLK in2 } NO_USER SYS }
  { recovery_hbm_R_CLK   recover_hbm { R in1 CLK in2 0 } NO_USER SYS }
  { tout_hbm_Q           Tout_hbm   { Q in2 0 1 } NO_USER SYS }
  { delay_hbm_CLK_Q      delay_hbm  { CLK in2 Q in2 0 } NO_USER SYS }
  { fallback_hbm_Q       fallback_hbm { Q in2 0 } NO_USER SYS }
  { sis_pass_fail        passfail_hbm { 0 R CLK } NO_USER SYS }
}

$tempWT addHbm    recovery    min_recovery    max_recovery    delay_hbm_CLK_Q    independent   { Q relative-degradation }   { Q positive-side }   { Q 0.1 -1 }   { Q 1e-11 1e-08 -1 }  { (fallback_hbm__Q__lh_trig-tout_hbm__Q__lh_targ) (fallback_hbm__Q__lh_targ-tout_hbm__Q__lh_trig) }   {  }  { Q lh }  {  }  { recover_hbm__R__hl__CLK__hl_trig recover_hbm__R__hl__CLK__hl_targ tin__R__hl_trig tin__R__hl_targ tin__CLK__hl_trig tin__CLK__hl_targ tout_hbm__Q__lh_trig tout_hbm__Q__lh_targ delay_hbm__CLK__hl__Q__lh_trig delay_hbm__CLK__hl__Q__lh_targ } {  } { relative Q delay_hbm__CLK__hl__Q__lh_value } { recover_hbm__R__hl__CLK__hl_value } {  } {  } pass None opt_tolerance (driver_delay_R-driver_delay_CLK)+(1.99*opt_tolerance)+(0.15*(slew_R+slew_CLK)) driver_delay_R-driver_delay_CLK min_recovery "1"
$tempWT bindInterface { Q R D CLK } { 10e-12 R[cycle_time] R[cycle_time] R[default_slew] max(R[stable_time],Q[stable_time]) (slew_R*0.5)/(0.9-0.1) (slew_CLK*0.5)/(0.9-0.1) R[max_recovery] R[min_recovery] R[max_recovery] R[constraint_resolution] driver_delay_R-driver_delay_CLK 0.0 }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

## 
## Sweep Specification
$tempAcq setTagNumTableDimensions 0 mpw

## 
## Harnesses

set tempHarness [ SBHarness default ]
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_Q
$tempTopOp setOperation insert
$tempTopOp setNodes {Q Q[logic_low_name]}
$tempTopOp setParam {load_Q}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_VSS
$tempTopOp setOperation insert
$tempTopOp setNodes {VSS VSS[logic_low_name]}
$tempTopOp setParam {load_VSS}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_VDD
$tempTopOp setOperation insert
$tempTopOp setNodes {VDD VDD[logic_low_name]}
$tempTopOp setParam {load_VDD}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
$tempAcq addHarness $tempHarness
release_obj $tempHarness

$tempAcq setHarnessName default
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

