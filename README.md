
# Install of Digilent Plugin for Xilinx Tools

This repository contains a **make** file for easy install of the 
[Digilent Plugin](https://digilent.com/reference/software/digilent-plugin-xilinx-tools/start)
for Xilinx Tools.

The Digilent Plugin for Xilinx tools allows Xilinx **ISE** 12.x, 13.x and 14.x 
software tools to directly use the Digilent USB-JTAG FPGA configuration circuitry.


# Get Source Code

## ed_digilent_libcse
Get the code for this component to a local directory on your PC.

```bash
git clone https://github.com/embed-dsp/ed_digilent_libcse.git
```

## Digilent Plugin
Open Web Browser and download the [Digilent Plugin](https://digilent.com/reference/software/digilent-plugin-xilinx-tools/start) source and store in the `ed_digilent_libcse/src` directory.

```bash
# Enter the ed_digilent_libcse directory.
cd ed_digilent_libcse
```

Edit the **Makefile** for selecting the Digilent Plugin version.
```bash
# Edit Makefile ...
vim Makefile

# ... and set path the Digilent Plugin version.
PACKAGE_VERSION = 2.5.2
```

Edit the **Makefile** for selecting the Xilinx installation directory.
```bash
# Edit Makefile ...
vim Makefile

# ... and set the Xilinx installation directory.
XILINX = /opt/Xilinx/14.7
```


# Build

```bash
# Unpack 64-bit source code into build/ directory (Default: M=64)
make prepare
make prepare M=64
```

```bash
# Unpack 32-bit source code into build/ directory.
make prepare M=32
```


# Install

```bash
# Install 64-bit build products (Default: M=64)
sudo make install
sudo make install M=64
```

```bash
# Install 32-bit build products.
sudo make install M=32
```

The build products are installed in the following locations:

```bash
/opt/
└── Xilinx/
    └── 14.7/                                           # Xilinx ISE Version
        └── ISE_DS/
            └── ISE/
                └── lib/
                    ├── lin64/
                    |   └── plugins/
                    |       └── Digilent/
                    |           └── libCseDigilent/     # 64-bit Digilent Plugin for Linux
                    |               ├── libCseDigilent.so
                    |               └── libCseDigilent.xml
                    └── lin/
                        └── plugins/
                            └── Digilent/
                                └── libCseDigilent/     # 32-bit Digilent Plugin for Linux
                                    ├── libCseDigilent.so
                                    └── libCseDigilent.xml
```


# Uninstall

```bash
# Uninstall 64-bit build products (Default: M=64)
sudo make uinstall
sudo make uinstall M=64
```

```bash
# Uninstall 32-bit build products.
sudo make uinstall M=32
```
