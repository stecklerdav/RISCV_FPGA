vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/util_vector_logic_v2_0_1
vlib questa_lib/msim/xlslice_v1_0_2
vlib questa_lib/msim/xlconcat_v2_1_3

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1
vmap xlslice_v1_0_2 questa_lib/msim/xlslice_v1_0_2
vmap xlconcat_v2_1_3 questa_lib/msim/xlconcat_v2_1_3

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_pc_unit_0_0/sim/BASIC_pc_unit_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_zynq_ultra_ps_e_0_0/sim/BASIC_zynq_ultra_ps_e_0_0_vip_wrapper.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/BASIC/ip/BASIC_proc_sys_reset_0_0/sim/BASIC_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_xlconstant_0_0/sim/BASIC_xlconstant_0_0.v" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_blk_mem_gen_0_0/sim/BASIC_blk_mem_gen_0_0.v" \
"../../../bd/BASIC/ip/BASIC_pc_to_imem_addr_0_0/sim/BASIC_pc_to_imem_addr_0_0.v" \
"../../../bd/BASIC/ip/BASIC_if_id_reg_0_0/sim/BASIC_if_id_reg_0_0.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_2_0/sim/BASIC_xlconstant_2_0.v" \
"../../../bd/BASIC/ip/BASIC_decoder_0_0/sim/BASIC_decoder_0_0.v" \
"../../../bd/BASIC/ip/BASIC_control_0_0/sim/BASIC_control_0_0.v" \
"../../../bd/BASIC/ip/BASIC_regfile_0_0/sim/BASIC_regfile_0_0.v" \
"../../../bd/BASIC/ip/BASIC_imm_mux_0_0/sim/BASIC_imm_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_alu_0_0/sim/BASIC_alu_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forwarding_0_0/sim/BASIC_forwarding_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_0_0/sim/BASIC_forward_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_operand_b_mux_0_0/sim/BASIC_operand_b_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_operand_a_mux_0_0/sim/BASIC_operand_a_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_0_1/sim/BASIC_forward_mux_0_1.v" \
"../../../bd/BASIC/ip/BASIC_branch_0_0/sim/BASIC_branch_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ex_mem_reg_1_0/sim/BASIC_ex_mem_reg_1_0.v" \
"../../../bd/BASIC/ip/BASIC_mem_stage_0_0/sim/BASIC_mem_stage_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ram_data_1_0/sim/BASIC_ram_data_1_0.v" \
"../../../bd/BASIC/ip/BASIC_mem_wb_reg_0_0/sim/BASIC_mem_wb_reg_0_0.v" \
"../../../bd/BASIC/ip/BASIC_wb_mux_0_0/sim/BASIC_wb_mux_0_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_0_1/sim/BASIC_util_vector_logic_0_1.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_1_0/sim/BASIC_util_vector_logic_1_0.v" \
"../../../bd/BASIC/ip/BASIC_load_use_detection_0_0/sim/BASIC_load_use_detection_0_0.v" \
"../../../bd/BASIC/ip/BASIC_priority_branch_OR_l_0_0/sim/BASIC_priority_branch_OR_l_0_0.v" \
"../../../bd/BASIC/ip/BASIC_ila_0_0/sim/BASIC_ila_0_0.v" \
"../../../bd/BASIC/ip/BASIC_vio_0_0/sim/BASIC_vio_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_2_0/sim/BASIC_util_vector_logic_2_0.v" \
"../../../bd/BASIC/ip/BASIC_forward_mux_1_0/sim/BASIC_forward_mux_1_0.v" \
"../../../bd/BASIC/ip/BASIC_regfile_we_gen_0_0/sim/BASIC_regfile_we_gen_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_2_1/sim/BASIC_util_vector_logic_2_1.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_3_0/sim/BASIC_xlconstant_3_0.v" \
"../../../bd/BASIC/ip/BASIC_gpio_0_0/sim/BASIC_gpio_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_2_2/sim/BASIC_util_vector_logic_2_2.v" \

vlog -work xlslice_v1_0_2 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_xlslice_0_0/sim/BASIC_xlslice_0_0.v" \
"../../../bd/BASIC/ip/BASIC_uart_tx_0_0/sim/BASIC_uart_tx_0_0.v" \
"../../../bd/BASIC/ip/BASIC_id_ex_reg_0_1/sim/BASIC_id_ex_reg_0_1.v" \
"../../../bd/BASIC/ip/BASIC_branch_predictor_btb_0_0/sim/BASIC_branch_predictor_btb_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_3_0/sim/BASIC_util_vector_logic_3_0.v" \
"../../../bd/BASIC/ip/BASIC_timer_0_0/sim/BASIC_timer_0_0.v" \
"../../../bd/BASIC/ip/BASIC_mem_bus_registered_0_0/sim/BASIC_mem_bus_registered_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_2_3/sim/BASIC_util_vector_logic_2_3.v" \

vlog -work xlconcat_v2_1_3 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/442e/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/b205/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/c968/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/BASIC/ip/BASIC_xlconcat_0_0/sim/BASIC_xlconcat_0_0.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_0_1/sim/BASIC_xlconstant_0_1.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_6_0/sim/BASIC_util_vector_logic_6_0.v" \
"../../../bd/BASIC/ip/BASIC_xlconstant_3_3/sim/BASIC_xlconstant_3_3.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_6_1/sim/BASIC_util_vector_logic_6_1.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_8_0/sim/BASIC_util_vector_logic_8_0.v" \
"../../../bd/BASIC/ip/BASIC_trap_controller_0_0/sim/BASIC_trap_controller_0_0.v" \
"../../../bd/BASIC/ip/BASIC_system_decoder_0_0/sim/BASIC_system_decoder_0_0.v" \
"../../../bd/BASIC/ip/BASIC_csr_file_0_0/sim/BASIC_csr_file_0_0.v" \
"../../../bd/BASIC/ip/BASIC_privileged_pc_redire_0_0/sim/BASIC_privileged_pc_redire_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_7_0/sim/BASIC_util_vector_logic_7_0.v" \
"../../../bd/BASIC/ip/BASIC_csr_access_unit_0_0/sim/BASIC_csr_access_unit_0_0.v" \
"../../../bd/BASIC/ip/BASIC_csr_regfile_wb_mux_0_0/sim/BASIC_csr_regfile_wb_mux_0_0.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_10_1/sim/BASIC_util_vector_logic_10_1.v" \
"../../../bd/BASIC/ip/BASIC_util_vector_logic_10_2/sim/BASIC_util_vector_logic_10_2.v" \
"../../../bd/BASIC/sim/BASIC.v" \

vlog -work xil_defaultlib \
"glbl.v"

