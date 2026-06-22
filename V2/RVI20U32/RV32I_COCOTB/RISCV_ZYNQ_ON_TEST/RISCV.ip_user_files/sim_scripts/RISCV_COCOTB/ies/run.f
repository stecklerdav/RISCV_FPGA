-makelib ies_lib/xilinx_vip -sv \
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
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_uart_0_0/sim/RISCV_COCOTB_uart_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_timer_0_0/sim/RISCV_COCOTB_timer_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_regfile_we_gen_0_0/sim/RISCV_COCOTB_regfile_we_gen_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_stage_0_0/sim/RISCV_COCOTB_mem_stage_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_wb_reg_0_0/sim/RISCV_COCOTB_mem_wb_reg_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_alu_0_0/sim/RISCV_COCOTB_alu_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_operand_b_mux_0_0/sim/RISCV_COCOTB_operand_b_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_operand_a_mux_0_0/sim/RISCV_COCOTB_operand_a_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_0_0/sim/RISCV_COCOTB_forward_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_1_0/sim/RISCV_COCOTB_forward_mux_1_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forward_mux_2_0/sim/RISCV_COCOTB_forward_mux_2_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_forwarding_0_0/sim/RISCV_COCOTB_forwarding_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_branch_0_0/sim/RISCV_COCOTB_branch_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_ex_mem_reg_0/sim/RISCV_COCOTB_ex_mem_reg_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_wb_mux_0_0/sim/RISCV_COCOTB_wb_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_regfile_0_0/sim/RISCV_COCOTB_regfile_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_imm_mux_0_0/sim/RISCV_COCOTB_imm_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_decoder_0_0/sim/RISCV_COCOTB_decoder_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_control_0_0/sim/RISCV_COCOTB_control_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_id_ex_reg_0/sim/RISCV_COCOTB_id_ex_reg_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_branch_predictor_btb_0_0/sim/RISCV_COCOTB_branch_predictor_btb_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_pc_unit_0_0/sim/RISCV_COCOTB_pc_unit_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_pc_to_imem_addr_0_0/sim/RISCV_COCOTB_pc_to_imem_addr_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_if_id_reg_0_0/sim/RISCV_COCOTB_if_id_reg_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_load_use_detection_0_0/sim/RISCV_COCOTB_load_use_detection_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_priority_branch_OR_l_0_0/sim/RISCV_COCOTB_priority_branch_OR_l_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_bus_registered_0_0/sim/RISCV_COCOTB_mem_bus_registered_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_csr_access_unit_0_0/sim/RISCV_COCOTB_csr_access_unit_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_privileged_pc_redire_0_0/sim/RISCV_COCOTB_privileged_pc_redire_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_system_decoder_0_0/sim/RISCV_COCOTB_system_decoder_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_csr_file_0_0/sim/RISCV_COCOTB_csr_file_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_csr_regfile_wb_mux_0_0/sim/RISCV_COCOTB_csr_regfile_wb_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_trap_controller_0_0/sim/RISCV_COCOTB_trap_controller_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_exception_mux_0_0/sim/RISCV_COCOTB_exception_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_mem_exception_merge_0_0/sim/RISCV_COCOTB_mem_exception_merge_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_gpio_0_0/sim/RISCV_COCOTB_gpio_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_ram_data_1_0/sim/RISCV_COCOTB_ram_data_1_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_0/sim/RISCV_COCOTB_util_vector_and_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_not_0_0/sim/RISCV_COCOTB_util_vector_not_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_1/sim/RISCV_COCOTB_util_vector_and_0_1.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_or_0_0/sim/RISCV_COCOTB_util_vector_or_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_or_0_1/sim/RISCV_COCOTB_util_vector_or_0_1.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_not_0_1/sim/RISCV_COCOTB_util_vector_not_0_1.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_constant_one_0_0/sim/RISCV_COCOTB_constant_one_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_rom_memory_0_0/sim/RISCV_COCOTB_rom_memory_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_2/sim/RISCV_COCOTB_util_vector_and_0_2.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_3/sim/RISCV_COCOTB_util_vector_and_0_3.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_constant_zero_0_1/sim/RISCV_COCOTB_constant_zero_0_1.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_xlconcat_8_0_0/sim/RISCV_COCOTB_xlconcat_8_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_and_0_4/sim/RISCV_COCOTB_util_vector_and_0_4.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_not_0_2/sim/RISCV_COCOTB_util_vector_not_0_2.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_xlslice_2bit_0_0/sim/RISCV_COCOTB_xlslice_2bit_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_csr_use_detection_0_0/sim/RISCV_COCOTB_csr_use_detection_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_constant_zero_0_2/sim/RISCV_COCOTB_constant_zero_0_2.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_zynq_ultra_ps_e_0_0/sim/RISCV_COCOTB_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_xlconstant_0_0/sim/RISCV_COCOTB_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../RISCV.srcs/sources_1/bd/RISCV_COCOTB/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_proc_sys_reset_0_0/sim/RISCV_COCOTB_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_uart_ram_converter_0_0/sim/RISCV_COCOTB_uart_ram_converter_0_0.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_util_vector_or_0_4/sim/RISCV_COCOTB_util_vector_or_0_4.v" \
  "../../../bd/RISCV_COCOTB/ip/RISCV_COCOTB_uart_tx_mux_0_0/sim/RISCV_COCOTB_uart_tx_mux_0_0.v" \
  "../../../bd/RISCV_COCOTB/sim/RISCV_COCOTB.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

