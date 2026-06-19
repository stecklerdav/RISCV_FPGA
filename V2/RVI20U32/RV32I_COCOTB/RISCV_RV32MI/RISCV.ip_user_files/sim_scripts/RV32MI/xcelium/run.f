-makelib xcelium_lib/xilinx_vip -sv \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RV32MI/ip/RV32MI_xlslice_2bit_0_0/sim/RV32MI_xlslice_2bit_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RV32MI/ip/RV32MI_proc_sys_reset_0_0/sim/RV32MI_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RV32MI/ip/RV32MI_vio_0_0/sim/RV32MI_vio_0_0.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RV32MI/ip/RV32MI_zynq_ultra_ps_e_0_0/sim/RV32MI_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
  "../../../bd/RV32MI/ip/RV32MI_xlconcat_8_0_0/sim/RV32MI_xlconcat_8_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RV32MI/ip/RV32MI_xlconstant_0_0/sim/RV32MI_xlconstant_0_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../RISCV.srcs/sources_1/bd/RV32MI/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

