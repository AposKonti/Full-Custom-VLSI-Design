# General Variables
export WORKSPACE=../../
# Tools
export LC_EXEC=lc_shell
export DC_EXEC=dc_shell
export PRIME_EXEC=primelib
export INNOVUS=innovus
export VIRTUOSO=virtuoso
# Synthesis Variables
export DESIGN_TOP=matrix_alu
export TECH=my_gf65	
export FILELIST=${WORKSPACE}/vlsi/rtl/vlog/matrix_alu/filelist.top
export CONSTRAINTS=${WORKSPACE}/vlsi/rtl/vlog/matrix_alu/constraints/constraints.tcl
# PNR Variables

# Primetime Varibles
export PT_PATH=${WORKSPACE}/vlsi/cad/primetime
export PT_LIBRARY1=${WORKSPACE}/vlsi/cad/primetime/my_lib_cells.db
export PT_LIBRARY2=${WORKSPACE}/vlsi/cad/primetime/my_lib_ff.db
export PT_VERILOG=${WORKSPACE}/vlsi/cad/primetime/matrix_alu_netlist.v
export PT_DRIVING_CELL=INV
export PT_CLK_NAME=clk
export PT_CLK_PERIOD=2.25
#0.000000025
export PT_INPUT_TRANSITION=0.060
#0.00000000006
export PT_LOAD=0.07
#70e-15
export PT_RESET_NAME=resetn

# Cell Characterization
export VIRTUOSO_LIB_NAME=gf65
export gf65primelibpath=${WORKSPACE}/vlsi/cad/gf65/primelib_gf65_${VIRTUOSO_LIB_NAME}
export model_loc=models/liberty/liberty_op_cond.lib
export my_lib_cells=${gf65primelibpath}/my_lib_cells.lib
export my_lib_ff=${gf65primelibpath}/my_ff.lib

synth:
	mkdir -p ${WORKSPACE}/vlsi/logs/synth_logs
	mkdir -p ${WORKSPACE}/vlsi/output/synth_output
	$(DC_EXEC) -f ${WORKSPACE}/vlsi/flow/tcl_scripts/synth.tcl > ${WORKSPACE}/vlsi/logs/synth_logs/synth.log 2>&1
	rm -rf ${WORKSPACE}/vlsi/flow/*.log

pnr:
	mkdir -p ${WORKSPACE}/vlsi/cad/gf65/innovus
	mkdir -p ${WORKSPACE}/vlsi/output/pnr_output
	${WORKSPACE}/vlsi/flow/bash_scripts/fix_lef.sh ${WORKSPACE}/vlsi/cad/gf65/${VIRTUOSO_LIB_NAME}.lef ${WORKSPACE}/vlsi/cad/gf65/innovus/${VIRTUOSO_LIB_NAME}.lef ${WORKSPACE}/vlsi/flow/cell_characterization_resources/gf65_tlef.lef
	cd ${WORKSPACE}/vlsi/cad/gf65/innovus; \
	$(INNOVUS) -files ${WORKSPACE}/vlsi/flow/tcl_scripts/pnr.tcl
	rm -rf ${WORKSPACE}/vlsi/cad/gf65/*.log
	${WORKSPACE}/vlsi/flow/bash_scripts/fix_inn_netlist_naming.sh ${WORKSPACE}/vlsi/output/pnr_output/matrix_alu_netlist.v

drc_lvs:
	cd ${WORKSPACE}/vlsi/cad/gf65/; \
	$(VIRTUOSO)

primetime:
	mkdir -p ${WORKSPACE}/vlsi/cad/primetime; \
	mkdir -p ${WORKSPACE}/vlsi/logs/pt_logs; \
	cd ${WORKSPACE}/vlsi/cad/primetime; \
	cp -n ${WORKSPACE}/vlsi/output/pnr_output/matrix_alu_netlist.v ${WORKSPACE}/vlsi/cad/primetime/; \
	cp -n ${gf65primelibpath}/my_lib_cells.lib ${WORKSPACE}/vlsi/cad/primetime/; \
	cp -n ${gf65primelibpath}/my_ff.lib ${WORKSPACE}/vlsi/cad/primetime/; \
	cp -n ${WORKSPACE}/vlsi/lib/my_lib_cells.db ${WORKSPACE}/vlsi/cad/primetime/; \
	cp -n ${WORKSPACE}/vlsi/lib/my_lib_ff.db ${WORKSPACE}/vlsi/cad/primetime/; \
	pt_shell -f ${WORKSPACE}/vlsi/flow/tcl_scripts/primetime.script > ${WORKSPACE}/vlsi/logs/pt_logs/primetime.log 2>&1

clean_flow:
	rm -rf ${WORKSPACE}/vlsi/flow/*.log*
	rm -rf ${WORKSPACE}/vlsi/flow/*.svf
	rm -rf ${WORKSPACE}/vlsi/flow/alib*
	rm -rf ${WORKSPACE}/vlsi/flow/*.c*
	rm -rf ${WORKSPACE}/vlsi/flow/transcript

clean_synth: clean_flow
	rm -rf ${WORKSPACE}/vlsi/logs/synth_logs
	rm -rf ${WORKSPACE}/vlsi/output/synth_output

clean_pnr: clean_flow
	rm -rf ${WORKSPACE}/vlsi/cad/gf65/innovus
	rm -rf ${WORKSPACE}/vlsi/output/pnr_output

clean_drc_lvs: clean_flow
		rm -rf ${WORKSPACE}/vlsi/cad/gf65/${DESIGN_TOP}

clean_primetime:
	rm -rf ${WORKSPACE}/vlsi/cad/primetime
	rm -rf ${WORKSPACE}/vlsi/logs/pt_logs

clean: clean_flow	
	rm -rf ${WORKSPACE}/vlsi/output
	rm -rf ${WORKSPACE}/vlsi/logs
	rm -rf ${WORKSPACE}/vlsi/lib

cell_characterization:
	mkdir -p ${gf65primelibpath}; \
	mkdir -p ${WORKSPACE}/vlsi/logs/cell_characterization_logs;
	@for CELL_for in AND AOI21 AOI22 INV NAND NOR OR XOR XNOR DFF; do \
		export CELL=$$CELL_for; \
		echo $$CELL; \
		cd ${gf65primelibpath}; \
		$(PRIME_EXEC) ${WORKSPACE}/vlsi/flow/tcl_scripts/primelib1.tcl > ${WORKSPACE}/vlsi/logs/cell_characterization_logs/$${CELL}_1.log 2>&1; \
		rm -rf ${gf65primelibpath}/$$CELL/config/*; \
		cp -n ${WORKSPACE}/vlsi/flow/cell_characterization_resources/configure.tcl ${gf65primelibpath}/$$CELL/config/; \
		cp -n ${WORKSPACE}/vlsi/flow/cell_characterization_resources/inst/$$CELL.inst ${gf65primelibpath}/$$CELL/control/; \
		if [ "$$CELL_for" = "DFF" ]; then \
			mkdir -p ${WORKSPACE}/vlsi/cad/gf65/primelib_gf65/DFF/results/DFF/; \
    		cp -n ${WORKSPACE}/vlsi/flow/cell_characterization_resources/removal_hbm__R__hl__CLK__hl__ACQ_1.sof.gz ${WORKSPACE}/vlsi/cad/gf65/primelib_gf65/DFF/results/DFF/; \
		fi; \
		cp -n ${WORKSPACE}/vlsi/cad/gf65/${VIRTUOSO_LIB_NAME}/$$CELL/$${CELL}_lvs/$$CELL.pex.sp ${gf65primelibpath}/$$CELL/netlists/; \
		cp -n ${WORKSPACE}/vlsi/cad/gf65/${VIRTUOSO_LIB_NAME}/$$CELL/$${CELL}_lvs/$$CELL.pex.sp.pex ${gf65primelibpath}/$$CELL/netlists/; \
		cp -n ${WORKSPACE}/vlsi/cad/gf65/${VIRTUOSO_LIB_NAME}/$$CELL/$${CELL}_lvs/$$CELL.pex.sp.$$CELL.pxi ${gf65primelibpath}/$$CELL/netlists/; \
		${WORKSPACE}/vlsi/flow/bash_scripts/fix_include.sh ${gf65primelibpath}/$$CELL/netlists/$$CELL.pex.sp $$CELL; \
		${WORKSPACE}/vlsi/flow/bash_scripts/fix_VDD_VSS.sh ${gf65primelibpath}/$$CELL/netlists/$$CELL.pex.sp; \
		${WORKSPACE}/vlsi/flow/bash_scripts/fix_VDD_VSS.sh ${gf65primelibpath}/$$CELL/netlists/$$CELL.pex.sp.$$CELL.pxi; \
		${WORKSPACE}/vlsi/flow/bash_scripts/fix_VDD_VSS.sh ${gf65primelibpath}/$$CELL/netlists/$$CELL.pex.sp.pex; \
		$(PRIME_EXEC) ${WORKSPACE}/vlsi/flow/tcl_scripts/primelib2.tcl > ${WORKSPACE}/vlsi/logs/cell_characterization_logs/$${CELL}_2.log 2>&1; \
	done
	
combine_libs:
	${WORKSPACE}/vlsi/flow/bash_scripts/lib_cut.sh ${my_lib_cells} ${gf65primelibpath}/AND/${model_loc} ${gf65primelibpath}/AOI21/${model_loc} ${gf65primelibpath}/AOI22/${model_loc} ${gf65primelibpath}/INV/${model_loc} ${gf65primelibpath}/NAND/${model_loc} ${gf65primelibpath}/NOR/${model_loc} ${gf65primelibpath}/OR/${model_loc} ${gf65primelibpath}/XOR/${model_loc} ${gf65primelibpath}/XNOR/${model_loc}
	${WORKSPACE}/vlsi/flow/bash_scripts/replace_op_cond.sh ${gf65primelibpath}/DFF/${model_loc} ${my_lib_ff}
	mkdir -p ${WORKSPACE}/vlsi/lib
	mkdir -p ${WORKSPACE}/vlsi/logs/my_lib_compiler_logs
	$(LC_EXEC) -f ${WORKSPACE}/vlsi/flow/tcl_scripts/lc_lib.tcl > ${WORKSPACE}/vlsi/logs/my_lib_compiler_logs/my_library_compilation.log 2>&1
	rm -rf ${WORKSPACE}/vlsi/flow/*.log
	rm -rf ${WORKSPACE}/vlsi/cad/gf65/*.log
	
clean_cell_characterization:
	rm -rf ${gf65primelibpath}
	rm -rf ${WORKSPACE}/vlsi/logs/cell_characterization_logs/

clean_combine_libs:
	rm -rf ${my_lib_cells}
	rm -rf ${my_lib_ff}
	rm -rf ${WORKSPACE}/vlsi/lib
	rm -rf ${WORKSPACE}/vlsi/logs/my_lib_compiler_logs

custom_design_flow_full: clean_cell_characterization clean_combine_libs clean_synth clean_pnr cell_characterization combine_libs synth pnr clean_flow drc_lvs clean_flow

custom_design_flow: clean_combine_libs clean_synth clean_pnr combine_libs synth pnr clean_flow drc_lvs clean_flow