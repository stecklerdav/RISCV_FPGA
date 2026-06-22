onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RISCV_COCOTB -L xilinx_vip -L xil_defaultlib -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RISCV_COCOTB xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RISCV_COCOTB.udo}

run -all

endsim

quit -force
