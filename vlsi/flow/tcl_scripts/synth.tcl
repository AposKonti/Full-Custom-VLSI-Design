##############################################################
##### Set Local Enviroment                        
##############################################################

set WORKSPACE	[getenv WORKSPACE]

set DESIGN_TOP	[getenv DESIGN_TOP]
set TECH	    [getenv TECH]
set FILELIST	[getenv FILELIST]
set CONSTRAINTS	[getenv CONSTRAINTS]

set mw_power_net VDD
set mw_ground_net VSS
set mw_logic1_net VDD
set mw_logic0_net VSS
set mw_power_port VDD
set mw_ground_port VSS

sh mkdir ${WORKSPACE}/vlsi/output/WORK
define_design_lib WORK -path ${WORKSPACE}/vlsi/output/WORK

set output_dir ${WORKSPACE}/vlsi/output/synth_output
set reports_dir ${WORKSPACE}/vlsi/logs/synth_logs

#####################################
## Set Project's Local Libraries
#####################################

set link_library ""
set target_library ""
set symbol_library ""

if {[string trim $TECH] eq "gf65"} {
	set link_library "../lib/library.db"
	set target_library "../lib/library.db"
	set symbol_library ""
} elseif {[string trim $TECH] eq "my_gf65"} {
	set link_library "../lib/my_lib_cells.db ../lib/my_lib_ff.db"
	set target_library "../lib/my_lib_cells.db ../lib/my_lib_ff.db"
	set symbol_library ""
}
puts "Link Library: $link_library"
puts "Target Library: $target_library"
puts "Symbol Library: $symbol_library"

##############################################################
#### Read RTL files - Read Constraints                             
##############################################################

set rtl_list [ list ]
set constraints_list [ list ]
set filelist [string trim $FILELIST]
set fp [open "$filelist" r]
set rtl_list [split [read $fp] "\n"]
close $fp
lappend constraints_list ${CONSTRAINTS}

puts "Read the following modules: $rtl_list"
puts "Read the following constraints: $constraints_list"

##############################################################
#### ELABORATION
##############################################################

foreach line $rtl_list {
	# set module [string trim $line]
	set module [string map [list "\${WORKSPACE}" $WORKSPACE] [string trim $line]]
	puts "Elaborating module: ${module}"
	if {[string match "*.v" $module]} {
		analyze -format verilog $module -library WORK
	} elseif {[string match "*.vhdl" $module]} {
		analyze -format vhdl $module -library WORK
	}
}

elaborate matrix_alu -architecture verilog -library WORK
current_design $DESIGN_TOP

foreach line $constraints_list {
	set constraint_f [string trim $line]
	puts "Reading Constraint File: ${constraint_f}"
	source ${constraint_f}
}

##############################################################
#### Compilation    
##############################################################

check_design >  ${reports_dir}/check_design_pre_compile.log

compile -exact_map -ungroup_all -auto_ungroup area -only_design_rule

#	set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

##############################################################
#### Main Output Files   
##############################################################

write -format verilog -hierarchy -output ${output_dir}/${DESIGN_TOP}_mapped.v
write -format verilog -pg -hierarchy -output ${output_dir}/${DESIGN_TOP}_mapped_pg.v
write_sdf ${output_dir}/${DESIGN_TOP}_mapped.sdf
write -format ddc -hierarchy -output ${output_dir}/${DESIGN_TOP}_mapped.ddc
write_sdc -nosplit ${output_dir}/${DESIGN_TOP}_mapped.sdc

##############################################################
#### Reports
##############################################################

#report_qor 										>	${reports_dir}/${DESIGN_TOP}_mapped_qor.rpt
#report_constraint									> 	${reports_dir}/${DESIGN_TOP}_mapped_timing.rpt
report_timing -max_paths 100 -transition_time -nets -attributes -nosplit		>>	${reports_dir}/${DESIGN_TOP}_mapped_timing.rpt
#report_timing -delay min -max_paths 50 -transition_time -nets -attributes -nosplit	>>	${reports_dir}/${DESIGN_TOP}_mapped_timing.rpt
#report_constraint -all_violators -verbose 						>	${reports_dir}/${DESIGN_TOP}_mapped_constraints.rpt
#report_area -physical -nosplit								>	${reports_dir}/${DESIGN_TOP}_mapped_area.rpt
#report_area -hierarchy									>> 	${reports_dir}/${DESIGN_TOP}_mapped_area.rpt
##report_cell -hierarchy									>>	${reports_dir}/${DESIGN_TOP}_mapped_area.rpt
#report_area -designware									>	${reports_dir}/${DESIGN_TOP}_mapped_designware_area.rpt
#report_resources -hierarchy								>	${reports_dir}/${DESIGN_TOP}_mapped_final_resources.rpt
#report_clock -attributes								>	${reports_dir}/${DESIGN_TOP}_mapped_clock_gating.rpt
#report_clock_gating -nosplit -gated -ungated -verbose -hier				>>	${reports_dir}/${DESIGN_TOP}_mapped_clock_gating.rpt
#report_power -nosplit									>	${reports_dir}/${DESIGN_TOP}_mapped_power.rpt
#report_compile_options									>	${reports_dir}/${DESIGN_TOP}_mapped_compile.rpt
#all_registers -level_sensitive								>	${reports_dir}/${DESIGN_TOP}_mapped_latches.rpt
#all_high_fanout -nets									>	${reports_dir}/${DESIGN_TOP}_mapped_high_fanout.rpt
#check_design										>	${reports_dir}/${DESIGN_TOP}_mapped_check_design.rpt
#check_timing										>	${reports_dir}/${DESIGN_TOP}_mapped_check_timing.rpt
report_cell											>   ${reports_dir}/${DESIGN_TOP}_mapped_cells.rpt
## gui_start
exit