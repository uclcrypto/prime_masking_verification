MAKEFILE_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SILVERPATH = $(MAKEFILE_DIR)/../SILVER
VERICAPATH = $(MAKEFILE_DIR)/../VERICA
PROLEADPATH = $(MAKEFILE_DIR)/../PROLEAD
MATCHIPATH = $(MAKEFILE_DIR)/../matchi

SHARES = 3
BITS = 2
INPUT_DISTRI = 1
VERSION = gamma

all: gadget_formal_silver gadget_formal_verica gadget_simu_prolead compo_formal_matchi

gadget_formal_silver:
	cd $(SILVERPATH); ./bin/verify --verilog 1 --verilog-libname NANG45 --verilog-design_file $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/SILVER/SQ_$(SHARES)SHARE_$(VERSION).v --verilog-module_name SQ_$(SHARES)SHARE_SILVERWRAP

gadget_formal_verica:
	cd $(VERICAPATH); ./bin/release/verica -c $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/VERICA/config_SQ_$(SHARES)SHARE_$(VERSION).json

gadget_simu_prolead:
	PROLEAD -l $(PROLEADPATH)/library.json -n NANG45 -d $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/PROLEAD/SQ_$(SHARES)SHARE_$(VERSION).v -m SQ_$(SHARES)SHARE_PROLEADWRAP -c $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/PROLEAD/config_SQ_$(SHARES)SHARE.json

compo_formal_matchi:
	yosys -c Scripts/small_pSquare_$(SHARES)SHARES_$(VERSION).tcl
	iverilog -o RTL/small_pSquare/version_$(VERSION)/MATCHI/TB_small_pSquare_$(SHARES)SHARES RTL/small_pSquare/version_$(VERSION)/MATCHI/TB_small_pSquare_$(SHARES)SHARES.v RTL/small_pSquare/version_$(VERSION)/MATCHI/small_pSquare_$(SHARES)SHARES.v
	cd RTL/small_pSquare/version_$(VERSION)/MATCHI; vvp TB_small_pSquare_$(SHARES)SHARES
	$(MATCHIPATH)/matchi/target/release/matchi --json Netlists/small_pSquare/version_$(VERSION)/small_pSquare_$(SHARES)SHARES_synth.json --vcd RTL/small_pSquare/version_$(VERSION)/MATCHI/TB_small_pSquare_$(SHARES)SHARES.vcd --dut TB_small_pSquare_$(SHARES)SHARES.UUT --gname small_pSquare_$(SHARES)SHARES --output-vcd Netlists/small_pSquare/version_$(VERSION)/TB_small_pSquare_$(SHARES)SHARES_matchi.vcd