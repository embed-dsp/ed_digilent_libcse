
# Copyright (c) 2018 embed-dsp
# All Rights Reserved

# $Author:   Gudmundur Bogason <gb@embed-dsp.com> $
# $Date:     $
# $Revision: $

ifeq ($(M),)
	M = 64
endif


ifeq ($(PACKAGE_VERSION),)
	PACKAGE_VERSION = 2.5.2
endif

ifeq ($(M), 64)
	PACKAGE = libCseDigilent_$(PACKAGE_VERSION)-x86_64
else
	PACKAGE = libCseDigilent_$(PACKAGE_VERSION)-i686
endif


ifeq ($(XILINX),)
	XILINX = /opt/Xilinx/14.7
endif

# FIXME:
XXX = ISE14x


ifeq ($(M), 64)
	CSE_PLUGIN_DIR = $(XILINX)/ISE_DS/ISE/lib/lin64/plugins/Digilent/libCseDigilent
else
	CSE_PLUGIN_DIR = $(XILINX)/ISE_DS/ISE/lib/lin/plugins/Digilent/libCseDigilent
endif


all:
	@echo ""
	@echo "# Unpack plugin into build directory"
	@echo "make prepare [M=...] [PACKAGE_VERSION=...]"
	@echo ""
	@echo "# Install plugin"
	@echo "sudo make install [M=...] [PACKAGE_VERSION=...] [XILINX=...]"
	@echo ""
	@echo "# Remove build directory"
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


.PHONY: clean
clean:
	-rm -rf build
