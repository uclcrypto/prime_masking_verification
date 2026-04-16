# Setting Environment
cd RTL/squaring/input_distribution_0/version_alpha
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_2SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_2SHARE_alpha.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_2SHARE_alpha.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_2SHARE_alpha.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_2SHARE_alpha.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_2SHARE_alpha.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_2SHARE_alpha.power2.rpt"




# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_3SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_3SHARE_alpha.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_3SHARE_alpha.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_3SHARE_alpha.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_3SHARE_alpha.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_3SHARE_alpha.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_3SHARE_alpha.power2.rpt"





# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_4SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_4SHARE_alpha.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_4SHARE_alpha.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_4SHARE_alpha.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_4SHARE_alpha.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_4SHARE_alpha.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_4SHARE_alpha.power2.rpt"





# Remove design
remove_design -all
# Setting Environment
cd ../version_beta
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_2SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_2SHARE_beta.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_2SHARE_beta.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_2SHARE_beta.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_2SHARE_beta.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_2SHARE_beta.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_2SHARE_beta.power2.rpt"




# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_3SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_3SHARE_beta.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_3SHARE_beta.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_3SHARE_beta.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_3SHARE_beta.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_3SHARE_beta.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_3SHARE_beta.power2.rpt"





# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_4SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_4SHARE_beta.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_4SHARE_beta.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_4SHARE_beta.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_4SHARE_beta.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_4SHARE_beta.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_4SHARE_beta.power2.rpt"





# Remove design
remove_design -all
# Setting Environment
cd ../version_gamma
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_2SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_2SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_2SHARE_gamma.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_2SHARE_gamma.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_2SHARE_gamma.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_2SHARE_gamma.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_2SHARE_gamma.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_2SHARE_gamma.power2.rpt"




# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_3SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_3SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_3SHARE_gamma.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_3SHARE_gamma.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_3SHARE_gamma.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_3SHARE_gamma.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_3SHARE_gamma.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_3SHARE_gamma.power2.rpt"





# Remove design
remove_design -all
## Clean Workspace
if [file exists WORK] {file delete -force WORK}
## Define Design Lib
file mkdir WORK
define_design_lib WORK -path "./WORK"



# Setting Libraries
set search_path "../../../../LIBS/NanGate_45nm"
set target_library "NangateopenCellLibrary_typical.db"
set link_library [concat * $target_library]
set alib_library_analysis_path "../../../../LIBS/ALIB/"



# Loading Design
analyze -library WORK -format vhdl "./AddModMersenne.vhd"
analyze -library WORK -format vhdl "./FF.vhd"
analyze -library WORK -format vhdl "./MulAddAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubAddModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubModMersenne.vhd"
analyze -library WORK -format vhdl "./MulSubSubModMersenne.vhd"
analyze -library WORK -format vhdl "./RedModMersenne.vhd"
analyze -library WORK -format vhdl "./SquSubModMersenne.vhd"
analyze -library WORK -format vhdl "./SubModMersenne.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE.vhd"
analyze -library WORK -format vhdl "./SQ_4SHARE_PROLEADWRAP.vhd"



# Elaborating Design (synthesis into generic logic cells)
elaborate -library WORK SQ_4SHARE_PROLEADWRAP -arch "Behavioral"



# Timing
## Clock
create_clock -period 100.0 -name my_clock [get_ports clk]



# Miscellaneous
## Preventing Multi-output ports
set_fix_multiple_port_nets -all -buffer_constants



# Uniquify
uniquify -force



# Flatten
ungroup -flatten [get_cells SQ_instance/Add*]
ungroup -flatten [get_cells SQ_instance/Sub*]
ungroup -flatten [get_cells SQ_instance/Mul*]
ungroup -flatten [get_cells SQ_instance/Squ*]



# Restrict the Cells for Synthesis
set_dont_use [get_lib_cells NangateOpenCellLibrary/FA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/HA*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AOI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OAI*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/MUX*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/CLKBUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/OR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NOR4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/AND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND3*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/NAND4*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/BUF*]
set_dont_use [get_lib_cells NangateOpenCellLibrary/SDFF*]



# Compiling Design (mapping into logic cells of logic library + optimization to meet the constraints)
compile_ultra -no_autoungroup
## Incremental Compile
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup
compile_ultra -incremental -no_autoungroup



# Uniquify
uniquify -force



# Fully Flatten
ungroup -all -flatten



# Writing Synthesized Design
file mkdir Netlist_45nm
change_names -rules verilog -hier
write -format verilog -hierarchy -output "Netlist_45nm/SQ_4SHARE_gamma.v"
change_names -rules vhdl -hier
write -format vhdl -hierarchy -output "Netlist_45nm/SQ_4SHARE_gamma.vhd"



# Reporting
file mkdir Report_45nm
report_timing -significant_digits 13 > "Report_45nm/SQ_4SHARE_gamma.tim.rpt"
report_area -hierarchy > "Report_45nm/SQ_4SHARE_gamma.area.rpt"
report_power -analysis_effort high -verbose > "Report_45nm/SQ_4SHARE_gamma.power.rpt"
report_power -analysis_effort high -verbose -hierarchy > "Report_45nm/SQ_4SHARE_gamma.power2.rpt"



# Exiting
exit
