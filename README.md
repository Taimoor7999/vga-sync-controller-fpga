# vga-sync-controller-fpga
Synthesizable Verilog implementation of a 640x480 @ 60Hz VGA sync controller and top-level test module target for FPGA boards like the Intel DE10-Lite.

# FPGA VGA Sync Controller & Test Module

A synthesizable Verilog implementation of a standard VGA timing generator and test driver designed for FPGA development boards (specifically targeted for the Intel DE10-Lite with a 50 MHz onboard oscillator).

```Repository Structure
├── vga_sync.v # VGA timing controller (640x480 @ 60Hz resolution)
└── vga_test.v # Top-level test module routing onboard switches to the 12-bit RGB DAC
