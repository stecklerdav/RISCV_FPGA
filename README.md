# RV32I SoC for FPGA

Custom RISC-V RV32I System-on-Chip written in Verilog.

<p align="center">
  <img src="Diagrama.png" width="1000">
</p>

Features:

- RV32I 5-stage pipeline CPU
- CSR subsystem
- Machine mode support
- Exception handling
- ECALL / MRET
- MMIO bus
- GPIO peripheral
- UART peripheral
- Timer peripheral
- Hazard detection
- Data forwarding
- Cocotb verification environment

Verification status:

- RV32UI: 38/38 PASS
- RV32MI CSR: PASS
- RV32MI SCALL: PASS
- RV32MI BREAKPOINT: PASS

Target FPGA:

- Xilinx Zynq-7000
