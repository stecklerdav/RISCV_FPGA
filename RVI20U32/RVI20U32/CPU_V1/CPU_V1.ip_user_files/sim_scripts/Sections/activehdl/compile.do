vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/xlconstant_v1_1_7
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_vip_v1_1_7
vlib activehdl/zynq_ultra_ps_e_vip_v1_0_7
vlib activehdl/util_vector_logic_v2_0_1
vlib activehdl/axi_bram_ctrl_v4_1_3
vlib activehdl/blk_mem_gen_v8_4_4

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 activehdl/xlconstant_v1_1_7
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 activehdl/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 activehdl/zynq_ultra_ps_e_vip_v1_0_7
vmap util_vector_logic_v2_0_1 activehdl/util_vector_logic_v2_0_1
vmap axi_bram_ctrl_v4_1_3 activehdl/axi_bram_ctrl_v4_1_3
vmap blk_mem_gen_v8_4_4 activehdl/blk_mem_gen_v8_4_4

vlog -work xilinx_vip  -sv2k12 "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_gpio_mmio_0_0/sim/Sections_gpio_mmio_0_0.v" \
"../../../bd/Sections/ip/Sections_ila_0_0/sim/Sections_ila_0_0.v" \
"../../../bd/Sections/ip/Sections_mmio_decode_ram_gpio_0_0/sim/Sections_mmio_decode_ram_gpio_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Sections/ip/Sections_proc_sys_reset_0_0/sim/Sections_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_rv32i_alu_0_0/sim/Sections_rv32i_alu_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_control_full_0_0/sim/Sections_rv32i_control_full_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_decoder_0_0/sim/Sections_rv32i_decoder_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_imm_mux_0_0/sim/Sections_rv32i_imm_mux_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_opA_mux_0_0/sim/Sections_rv32i_opA_mux_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_opB_mux_0_0/sim/Sections_rv32i_opB_mux_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_ram_datav_0_0/sim/Sections_rv32i_ram_datav_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_regfile_0_0/sim/Sections_rv32i_regfile_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_wb_mux_0_0/sim/Sections_rv32i_wb_mux_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_xlconstant_0_0/sim/Sections_xlconstant_0_0.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7  -sv2k12 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_zynq_ultra_ps_e_1_0/sim/Sections_zynq_ultra_ps_e_1_0_vip_wrapper.v" \
"../../../bd/Sections/ip/Sections_xlconstant_3_0/sim/Sections_xlconstant_3_0.v" \
"../../../bd/Sections/ip/Sections_pc_to_rom_addr_0_0/sim/Sections_pc_to_rom_addr_0_0.v" \
"../../../bd/Sections/ip/Sections_pc_unit_0_0/sim/Sections_pc_unit_0_0.v" \
"../../../bd/Sections/ip/Sections_rv32i_pc_redirect_0_0/sim/Sections_rv32i_pc_redirect_0_0.v" \
"../../../bd/Sections/ip/Sections_xlconstant_1_0/sim/Sections_xlconstant_1_0.v" \
"../../../bd/Sections/ip/Sections_vio_0_0/sim/Sections_vio_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_util_vector_logic_0_0/sim/Sections_util_vector_logic_0_0.v" \

vcom -work axi_bram_ctrl_v4_1_3 -93 \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/db86/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Sections/ip/Sections_axi_bram_ctrl_0_0/sim/Sections_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/1b7e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/122e/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/b205/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/c968/hdl/verilog" "+incdir+../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/Sections/ip/Sections_blk_mem_gen_0_0/sim/Sections_blk_mem_gen_0_0.v" \
"../../../bd/Sections/ip/Sections_xlconstant_0_1/sim/Sections_xlconstant_0_1.v" \
"../../../bd/Sections/ip/Sections_xlconstant_1_1/sim/Sections_xlconstant_1_1.v" \
"../../../bd/Sections/sim/Sections.v" \

vlog -work xil_defaultlib \
"glbl.v"

