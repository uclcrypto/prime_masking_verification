MAKEFILE_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SILVERPATH = $(MAKEFILE_DIR)/../SILVER
VERICAPATH = $(MAKEFILE_DIR)/../VERICA
PROLEADPATH = $(MAKEFILE_DIR)/../PROLEAD

SHARES = 3
BITS = 2
INPUT_DISTRI = 1
VERSION = gamma

all: gadget_formal_silver gadget_formal_verica gadget_simu_prolead

gadget_formal_silver:
	cd $(SILVERPATH); ./bin/verify --verilog 1 --verilog-libname NANG45 --verilog-design_file $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/SILVER/SQ_$(SHARES)SHARE_$(VERSION).v --verilog-module_name SQ_$(SHARES)SHARE_SILVERWRAP

gadget_formal_verica:
	cd $(VERICAPATH); ./bin/release/verica -c $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/VERICA/config_SQ_$(SHARES)SHARE_$(VERSION).json

gadget_simu_prolead:
	PROLEAD -l $(PROLEADPATH)/library.json -n NANG45 -d $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/PROLEAD/SQ_$(SHARES)SHARE_$(VERSION).v -m SQ_$(SHARES)SHARE_PROLEADWRAP -c $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/PROLEAD/config_SQ_$(SHARES)SHARE.json