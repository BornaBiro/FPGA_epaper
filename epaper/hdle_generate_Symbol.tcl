lappend auto_path "C:/Program Files (x86)/Lattice/diamond/3.12/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) clockDivider
set ::bali::Para(PROJECT) epaper
set ::bali::Para(PACKAGE) {"C:/Program Files (x86)/Lattice/diamond/3.12/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/Program Files (x86)/Lattice/diamond/3.12/cae_library/synthesis/verilog/ecp5u.v"}
set ::bali::Para(FILELIST) {"E:/Projects/FPGA/Learning/epaper/topModule.v=work,Verilog_2001" "E:/Projects/FPGA/Learning/epaper/clocks.v=work,Verilog_2001" "E:/Projects/FPGA/Learning/epaper/pll/pll.v=work,Verilog_2001" "E:/Projects/FPGA/Learning/epaper/epaperDriver.v=work,Verilog_2001" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
