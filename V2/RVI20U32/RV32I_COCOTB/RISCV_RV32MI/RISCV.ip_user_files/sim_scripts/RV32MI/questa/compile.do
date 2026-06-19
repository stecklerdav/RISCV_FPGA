vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_7
vlib questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/util_vector_logic_v2_0_1

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_7 questa_lib/msim/axi_vip_v1_1_7
vmap zynq_ultra_ps_e_vip_v1_0_7 questa_lib/msim/zynq_ultra_ps_e_vip_v1_0_7
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap util_vector_logic_v2_0_1 questa_lib/msim/util_vector_logic_v2_0_1

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

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32MI/ip/RV32MI_xlslice_2bit_0_0/sim/RV32MI_xlslice_2bit_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/RV32MI/ip/RV32MI_proc_sys_reset_0_0/sim/RV32MI_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32MI/ip/RV32MI_vio_0_0/sim/RV32MI_vio_0_0.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work zynq_ultra_ps_e_vip_v1_0_7 -64 -sv -L axi_vip_v1_1_7 -L zynq_ultra_ps_e_vip_v1_0_7 -L xilinx_vip "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32MI/ip/RV32MI_zynq_ultra_ps_e_0_0/sim/RV32MI_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
"../../../bd/RV32MI/ip/RV32MI_xlconcat_8_0_0/sim/RV32MI_xlconcat_8_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32MI/ip/RV32MI_xlconstant_0_0/sim/RV32MI_xlconstant_0_0.v" \

vlog -work util_vector_logic_v2_0_1 -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/1b7e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/122e/hdl/verilog" "+incdir+../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/46fd/hdl" "+incdir+/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/include" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_logic_2_0/sim/RV32MI_util_vector_logic_2_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_logic_3_0/sim/RV32MI_util_vector_logic_3_0.v" \
"../../../bd/RV32MI/ip/RV32MI_uart_0_0/sim/RV32MI_uart_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_timer_0_0/sim/RV32MI_timer_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_regfile_we_gen_0_0/sim/RV32MI_regfile_we_gen_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_mem_wb_reg_0_0/sim/RV32MI_mem_wb_reg_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_constant_zero_0_0/sim/RV32MI_constant_zero_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_mem_stage_0_0/sim/RV32MI_mem_stage_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_alu_0_0/sim/RV32MI_alu_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_operand_b_mux_0_0/sim/RV32MI_operand_b_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_operand_a_mux_0_0/sim/RV32MI_operand_a_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_branch_0_0/sim/RV32MI_branch_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_ex_mem_reg_0/sim/RV32MI_ex_mem_reg_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_and_0_0/sim/RV32MI_util_vector_and_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_and_1_0/sim/RV32MI_util_vector_and_1_0.v" \
"../../../bd/RV32MI/ip/RV32MI_forward_mux_0_0/sim/RV32MI_forward_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_forward_mux_1_0/sim/RV32MI_forward_mux_1_0.v" \
"../../../bd/RV32MI/ip/RV32MI_forward_mux_2_0/sim/RV32MI_forward_mux_2_0.v" \
"../../../bd/RV32MI/ip/RV32MI_forwarding_0_0/sim/RV32MI_forwarding_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_constant_zero_0_1/sim/RV32MI_constant_zero_0_1.v" \
"../../../bd/RV32MI/ip/RV32MI_wb_mux_0_0/sim/RV32MI_wb_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_imm_mux_0_0/sim/RV32MI_imm_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_control_0_0/sim/RV32MI_control_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_id_ex_reg_0/sim/RV32MI_id_ex_reg_0.v" \
"../../../bd/RV32MI/ip/RV32MI_decoder_0_0/sim/RV32MI_decoder_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_regfile_0_0/sim/RV32MI_regfile_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_branch_predictor_btb_0_0/sim/RV32MI_branch_predictor_btb_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_pc_to_imem_addr_0_0/sim/RV32MI_pc_to_imem_addr_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_and_1_1/sim/RV32MI_util_vector_and_1_1.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_or_1_0/sim/RV32MI_util_vector_or_1_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_not_1_0/sim/RV32MI_util_vector_not_1_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_and_0_1/sim/RV32MI_util_vector_and_0_1.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_not_0_0/sim/RV32MI_util_vector_not_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_or_0_0/sim/RV32MI_util_vector_or_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_constant_one_0_0/sim/RV32MI_constant_one_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_rom_memory_0_0/sim/RV32MI_rom_memory_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_pc_unit_0_0/sim/RV32MI_pc_unit_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_if_id_reg_0_0/sim/RV32MI_if_id_reg_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_load_use_detection_0_0/sim/RV32MI_load_use_detection_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_priority_branch_OR_l_0_0/sim/RV32MI_priority_branch_OR_l_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_mem_bus_registered_0_0/sim/RV32MI_mem_bus_registered_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_privileged_pc_redire_0_0/sim/RV32MI_privileged_pc_redire_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_exception_mux_0_0/sim/RV32MI_exception_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_mem_exception_merge_0_0/sim/RV32MI_mem_exception_merge_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_and_0_2/sim/RV32MI_util_vector_and_0_2.v" \
"../../../bd/RV32MI/ip/RV32MI_util_vector_not_0_1/sim/RV32MI_util_vector_not_0_1.v" \
"../../../bd/RV32MI/ip/RV32MI_csr_access_unit_0_0/sim/RV32MI_csr_access_unit_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_trap_controller_0_0/sim/RV32MI_trap_controller_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_system_decoder_0_0/sim/RV32MI_system_decoder_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_csr_file_0_0/sim/RV32MI_csr_file_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_csr_regfile_wb_mux_0_0/sim/RV32MI_csr_regfile_wb_mux_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_csr_use_detection_0_0/sim/RV32MI_csr_use_detection_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_gpio_0_0/sim/RV32MI_gpio_0_0.v" \
"../../../bd/RV32MI/ip/RV32MI_ram_data_1_0/sim/RV32MI_ram_data_1_0.v" \
"../../../bd/RV32MI/sim/RV32MI.v" \

vlog -work xil_defaultlib \
"glbl.v"

