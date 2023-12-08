##############################################################
#### create clock/generated_clock & Set input/output delay                 
##############################################################
puts "Reading Constraints"

set f25MHz 40
create_clock -name main_clk -period $f25MHz [get_ports clk]
set_clock_uncertainty -setup 0.2 [get_clocks main_clk]
set_clock_uncertainty -hold  0.05 [get_clocks main_clk]

##############################################################
#### Set False/Multi-Cycle/Critical Path    
##############################################################

##############################################################
#### Set Output Load Constraints   
##############################################################

set mindelayin [expr 0.15*$f25MHz]
set maxdelayin [expr 0.25*$f25MHz]
set_input_delay -clock [get_clocks main_clk] -add -min ${mindelayin} [all_inputs]
set_input_delay -clock [get_clocks main_clk] -add -max ${maxdelayin} [all_inputs]
set_input_transition 0.2 [all_inputs]

set maxdelayout [expr 0.25*$f25MHz]
set mindelayout [expr 0.15*$f25MHz]
set_output_delay -clock [get_clocks main_clk] -add -min ${mindelayout} [all_outputs]
set_output_delay -clock [get_clocks main_clk] -add -max ${maxdelayout} [all_outputs]

set_load 0.1 [all_outputs]
set_max_fanout 50 [all_inputs]

##############################################################
#### Set Operating Conditions    
##############################################################

 
