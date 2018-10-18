
# Copyright (c) 2018-2023 embed-dsp, All Rights Reserved.
# Author: Gudmundur Bogason <gb@embed-dsp.com>


# Package version.
PACKAGE_VERSION = 2.5.2

# Xilinx installation directory.
# XILINX = /opt/Xilinx/14.4
XILINX = /opt/Xilinx/14.7
XXX = ISE14x

# ==============================================================================

# Build for 32-bit or 64-bit (Default)
ifeq ($(M),)
	M = 64
endif

ifeq ($(M), 64)
	PACKAGE = libCseDigilent_$(PACKAGE_VERSION)-x86_64
	CSE_PLUGIN_DIR = $(XILINX)/ISE_DS/ISE/lib/lin64/plugins/Digilent/libCseDigilent
else
	PACKAGE = libCseDigilent_$(PACKAGE_VERSION)-i686
	CSE_PLUGIN_DIR = $(XILINX)/ISE_DS/ISE/lib/lin/plugins/Digilent/libCseDigilent
endif


all:
	@echo "CSE_PLUGIN_DIR = $(CSE_PLUGIN_DIR)"
	@echo ""
	@echo "## Build"
	@echo "make prepare [M=...]"
	@echo ""
	@echo "## Install"
	@echo "sudo make install [M=...]"
	@echo ""
	@echo "## Uninstall"
	@echo "sudo make uninstall [M=...]"
	@echo ""
	@echo "## Cleanup"
	@echo "make clean"
	@echo ""


.PHONY: prepare
prepare:
	-mkdir build
	cd build && tar zxf ../src/$(PACKAGE).tar.gz


.PHONY: install
install:
	-mkdir -p $(CSE_PLUGIN_DIR)
	cp build/$(PACKAGE)/$(XXX)/plugin/* $(CSE_PLUGIN_DIR)


.PHONY: uninstall
uninstall:
	-rm -f $(CSE_PLUGIN_DIR)/*


.PHONY: clean
clean:
	-rm -rf build
