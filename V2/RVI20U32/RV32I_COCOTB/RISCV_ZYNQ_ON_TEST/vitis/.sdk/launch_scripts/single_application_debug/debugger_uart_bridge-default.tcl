connect -url tcp:127.0.0.1:3121
source /media/steckler/xilinx_linux/vitis_2020.1/Vitis/2020.1/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS3 210299B71C1B" && level==0 && jtag_device_ctx=="jsn-JTAG-HS3-210299B71C1B-04720093-0"}
fpga -file /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_ON_TEST/vitis/uart_bridge/_ide/bitstream/RISCV_COCOTB_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_ON_TEST/vitis/ZYNQ_RISCV_UART/export/ZYNQ_RISCV_UART/hw/RISCV_COCOTB_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
mask_write 0xFF5E0200 0xf000 0
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_ON_TEST/vitis/ZYNQ_RISCV_UART/export/ZYNQ_RISCV_UART/sw/ZYNQ_RISCV_UART/boot/fsbl.elf
set bp_38_52_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_38_52_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow /media/steckler/xilinx_linux/RISCV_ZYNQ/V2/RVI20U32/RV32I_COCOTB/RISCV_ZYNQ_ON_TEST/vitis/uart_bridge/Debug/uart_bridge.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
