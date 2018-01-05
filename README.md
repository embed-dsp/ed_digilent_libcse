
Install of Digilent Plugin for Xilinx Tools
===========================================

This repository contains make file for easy install of the [Digilent Plugin](https://reference.digilentinc.com/reference/software/digilent-plugin-xilinx-tools/start) for Xilinx Tools.
These plugins enable ISE 12.x, 13.x and 14.x to use USB-JTAG with iMPACT, ChipScope, XMD and EDK.

Get Source Code
===============

## ed_digilent_libcse
```bash
git clone https://github.com/embed-dsp/ed_digilent_libcse.git
```

## Digilent Plugin Source
```bash
# Enter the ed_digilent_libcse directory.
cd ed_digilent_libcse

# Open Web Browser and download the Digilent Plugin source.
https://reference.digilentinc.com/reference/software/digilent-plugin-xilinx-tools/start

# Edit the Makefile for selecting the Digilent Plugin version.
vim Makefile
PACKAGE_VERSION = 2.5.2

# Edit the Makefile for selecting the Xilinx installation directory.
vim Makefile
XILINX = /opt/Xilinx/14.7
```

Build
=====
```bash
# Unpack 64-bit source code into build/ directory (Default: M=64)
make prepare
make prepare M=64

# Unpack 32-bit source code into build/ directory.
make prepare M=32
```

Install
=======
```bash
# Install 64-bit build products (Default: M=64)
sudo make install
sudo make install M=64

# Install 32-bit build products.
sudo make install M=32
```

The build products are installed in the following locations:
```bash
# 64-bit libraries for Linux
/opt/Xilinx/14.7/ISE_DS/ISE/lib/lin64/plugins/Digilent/libCseDigilent

# 32-bit libraries for Linux
/opt/Xilinx/14.7/ISE_DS/ISE/lib/lin/plugins/Digilent/libCseDigilent
```
