onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RISCV -L xilinx_vip -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L xlconstant_v1_1_7 -L dist_mem_gen_v8_0_13 -L axi_infrastructure_v1_1_0 -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RISCV xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {RISCV.udo}

run -all

endsim

quit -force
