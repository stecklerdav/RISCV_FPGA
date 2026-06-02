vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xlconstant_v1_1_7

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7

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

vlog -work xil_defaultlib -64 "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_regfile_we_gen_0_0/sim/RISCV_COCOTB_regfile_we_gen_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_wb_reg_0_0/sim/RISCV_COCOTB_mem_wb_reg_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_stage_0_0/sim/RISCV_COCOTB_mem_stage_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_sim_constant_0_0/sim/RISCV_COCOTB_sim_constant_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_alu_0_0/sim/RISCV_COCOTB_alu_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_operand_b_mux_0_0/sim/RISCV_COCOTB_operand_b_mux_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_operand_a_mux_0_0/sim/RISCV_COCOTB_operand_a_mux_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_0_0/sim/RISCV_COCOTB_forward_mux_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_1_0/sim/RISCV_COCOTB_forward_mux_1_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_2_0/sim/RISCV_COCOTB_forward_mux_2_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forwarding_0_0/sim/RISCV_COCOTB_forwarding_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_branch_0_0/sim/RISCV_COCOTB_branch_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_ex_mem_reg_0/sim/RISCV_COCOTB_ex_mem_reg_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_sim_constant_0_1/sim/RISCV_COCOTB_sim_constant_0_1.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_0/sim/RISCV_COCOTB_util_vector_and_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_1_0/sim/RISCV_COCOTB_util_vector_and_1_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_wb_mux_0_0/sim/RISCV_COCOTB_wb_mux_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_regfile_0_0/sim/RISCV_COCOTB_regfile_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_imm_mux_0_0/sim/RISCV_COCOTB_imm_mux_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_id_ex_reg_0/sim/RISCV_COCOTB_id_ex_reg_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_decoder_0_0/sim/RISCV_COCOTB_decoder_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_control_0_0/sim/RISCV_COCOTB_control_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_load_use_detection_0_0/sim/RISCV_COCOTB_load_use_detection_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_priority_branch_OR_l_0_0/sim/RISCV_COCOTB_priority_branch_OR_l_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_pc_to_imem_addr_0_0/sim/RISCV_COCOTB_pc_to_imem_addr_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_xlconstant_3_0/sim/RISCV_COCOTB_xlconstant_3_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_branch_predictor_btb_0_0/sim/RISCV_COCOTB_branch_predictor_btb_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_if_id_reg_0_0/sim/RISCV_COCOTB_if_id_reg_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_pc_unit_0_0/sim/RISCV_COCOTB_pc_unit_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_or_1_0/sim/RISCV_COCOTB_util_vector_or_1_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_1/sim/RISCV_COCOTB_util_vector_and_0_1.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_not_0_0/sim/RISCV_COCOTB_util_vector_not_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_not_1_0/sim/RISCV_COCOTB_util_vector_not_1_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_1_1/sim/RISCV_COCOTB_util_vector_and_1_1.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_gpio_0_0/sim/RISCV_COCOTB_gpio_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_bus_registered_0_0/sim/RISCV_COCOTB_mem_bus_registered_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_ram_data_1_0/sim/RISCV_COCOTB_ram_data_1_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_timer_0_0/sim/RISCV_COCOTB_timer_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_uart_0_0/sim/RISCV_COCOTB_uart_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_rom_memory_0_0/sim/RISCV_COCOTB_rom_memory_0_0.v" \
"../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_xlconstant_3_1/sim/RISCV_COCOTB_xlconstant_3_1.v" \
"../../../bd/RISCV_COCOTB/sim/RISCV_COCOTB.v" \

vlog -work xil_defaultlib \
"glbl.v"

