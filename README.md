
Install of Digilent Plugin for Xilinx Tools
===========================================

This repository contains make file for easy install of the Digilent Plugin for Xilinx Tools.
These plugins enable ISE 12.x, 13.x and 14.x to use USB-JTAG with iMPACT, ChipScope, XMD and EDK.

Get tool and source code
========================

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
```

Build
=====
```bash
# Unpack 64-bit source code into build/ directory (Default: M=64, PACKAGE_VERSION=2.5.2)
make prepare
make prepare M=64 PACKAGE_VERSION=2.5.2

# Unpack 32-bit source code into build/ directory.
make prepare M=32
make prepare M=32 PACKAGE_VERSION=2.5.2
```

Install
=======
```bash
# Install 64-bit build products (Default: M=64, PACKAGE_VERSION=2.5.2, XILINX=/opt/Xilinx/14.7)
sudo make install
sudo make install M=64 PACKAGE_VERSION=2.5.2 XILINX=/opt/Xilinx/14.7

# Install 32-bit build products.
sudo make install M=32 PACKAGE_VERSION=2.5.2 XILINX=/opt/Xilinx/14.7
```

The build products are installed in the following locations:
