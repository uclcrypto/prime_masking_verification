set IMPLEM_DIR RTL/small_pSquare/version_beta/MATCHI
set RESULT_DIR Netlists/small_pSquare/version_beta
set MAIN_MODULE small_pSquare_3SHARES

set MAIN_PATH $IMPLEM_DIR/$MAIN_MODULE.v
set LIB ../matchi/matchi_cells
set LIB_V $LIB.v
set LIB $LIB.lib

# Read verilog, load sub-modules and build the hierarchy.
yosys verilog_defaults -add -I$IMPLEM_DIR
yosys read_verilog $MAIN_PATH
yosys hierarchy -check -libdir $IMPLEM_DIR -top $MAIN_MODULE

# Remove verilog high-level constructs, in favor of netlists
yosys proc;
# Map yosys RTL library to yosys Gate library.
yosys techmap
# Map gates to our "matchi_cells" library.
yosys dfflibmap -liberty $LIB
yosys abc -liberty $LIB
yosys clean -purge
yosys setundef -undriven -zero

# Include our gate library in the netlist.
# This procedure is done to have the correct "port_directions" attribute on the
# cells.
yosys read_verilog $LIB_V
yosys proc
yosys hierarchy -check -top $MAIN_MODULE

# Output the result in verilog (for simulation) and json (for analysis).
yosys write_json $RESULT_DIR/${MAIN_MODULE}_synth.json

yosys write_verilog -norename $RESULT_DIR/${MAIN_MODULE}_synth.v;
yosys write_verilog -noattr -norename $RESULT_DIR/${MAIN_MODULE}_synth_noattr.v;
yosys write_verilog -attr2comment -norename $RESULT_DIR/${MAIN_MODULE}_synth_attr2comment.v;
