MAKEFILE_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

SILVERPATH = $(MAKEFILE_DIR)/../SILVER
VERICAPATH = $(MAKEFILE_DIR)/../VERICA

SHARES = 2
BITS = 3
INPUT_DISTRI = 1
VERSION = gamma

all: formal_silver formal_verica

formal_silver:
	cd $(SILVERPATH); ./bin/verify --verilog 1 --verilog-libname NANG45 --verilog-design_file $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/SILVER/SQ_$(SHARES)SHARE_$(VERSION).v --verilog-module_name SQ_$(SHARES)SHARE_SILVERWRAP

formal_verica:
	cd $(VERICAPATH); ./bin/release/verica -c $(MAKEFILE_DIR)/Netlists/squaring/input_distribution_$(INPUT_DISTRI)/$(BITS)bits/VERICA/config_SQ_$(SHARES)SHARE_$(VERSION).json