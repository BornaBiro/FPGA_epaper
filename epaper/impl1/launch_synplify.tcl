#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file E:/Projects/FPGA/Learning/epaper/impl1/launch_synplify.tcl
#-- Written on Sat Jan 21 22:49:15 2023

project -close
set filename "E:/Projects/FPGA/Learning/epaper/impl1/impl1_syn.prj"
if ([file exists "$filename"]) {
	project -load "$filename"
	project_file -remove *
} else {
	project -new "$filename"
}
set create_new 0

#device options
set_option -technology ECP5U
set_option -part LFE5U_12F
set_option -package BG381I
set_option -speed_grade -6

if {$create_new == 1} {
#-- add synthesis options
	set_option -symbolic_fsm_compiler true
	set_option -resource_sharing true
	set_option -vlog_std v2001
	set_option -frequency 200
	set_option -maxfan 1000
	set_option -auto_constrain_io 0
	set_option -disable_io_insertion false
	set_option -retiming false; set_option -pipe true
	set_option -force_gsr false
	set_option -compiler_compatible 0
	set_option -dup false
	
	set_option -default_enum_encoding default
	
	
	
	set_option -write_apr_constraint 1
	set_option -fix_gated_and_generated_clocks 1
	set_option -update_models_cp 0
	set_option -resolve_multiple_driver 0
	
	
	set_option -seqshift_no_replicate 0
	
}
#-- add_file options
set_option -hdl_define -set SBP_SYNTHESIS
set_option -include_path "E:/Projects/FPGA/Learning/epaper"
add_file -verilog -vlog_std v2001 "E:/Projects/FPGA/Learning/epaper/topModule.v"
add_file -verilog -vlog_std v2001 "E:/Projects/FPGA/Learning/epaper/clocks.v"
add_file -verilog -vlog_std v2001 "E:/Projects/FPGA/Learning/epaper/pll/pll.v"
add_file -verilog -vlog_std v2001 "E:/Projects/FPGA/Learning/epaper/epaperDriver.v"
#-- top module name
set_option -top_module {top}
project -result_file {E:/Projects/FPGA/Learning/epaper/impl1/impl1.edi}
project -save "$filename"
