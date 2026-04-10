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
-makelib xcelium_lib/xpm -sv \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_pc_unit_wrapper_0_0/sim/RISCV_SystemVerilog_pc_unit_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_pc_to_rom_addr_wrapp_0_0/sim/RISCV_SystemVerilog_pc_to_rom_addr_wrapp_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_blk_mem_gen_0_0/sim/RISCV_SystemVerilog_blk_mem_gen_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_if_id_reg_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_if_id_reg_wrap_0_0.v" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_0_0/sim/RISCV_SystemVerilog_util_vector_logic_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_decoder_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_decoder_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_control_full_w_0_3/sim/RISCV_SystemVerilog_rv32i_control_full_w_0_3.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_imm_mux_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_imm_mux_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_regfile_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_regfile_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_id_ex_reg_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_id_ex_reg_wrap_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_operand_a_mux_0_0/sim/RISCV_SystemVerilog_rv32i_operand_a_mux_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_operand_b_mux_0_0/sim/RISCV_SystemVerilog_rv32i_operand_b_mux_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_alu_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_alu_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_branch_unit_wr_0_0/sim/RISCV_SystemVerilog_rv32i_branch_unit_wr_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_ex_mem_reg_wra_0_0/sim/RISCV_SystemVerilog_rv32i_ex_mem_reg_wra_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_0/sim/RISCV_SystemVerilog_xlconstant_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_mem_stage_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_mem_stage_wrap_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_ram_datav_wrap_0_0/sim/RISCV_SystemVerilog_rv32i_ram_datav_wrap_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_load_extender_0_0/sim/RISCV_SystemVerilog_rv32i_load_extender_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_mem_wb_reg_wra_0_0/sim/RISCV_SystemVerilog_rv32i_mem_wb_reg_wra_0_0.v" \
-endlib
-makelib xcelium_lib/xlslice_v1_0_2 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlslice_0_2/sim/RISCV_SystemVerilog_xlslice_0_2.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_wb_mux_wrapper_0_0/sim/RISCV_SystemVerilog_rv32i_wb_mux_wrapper_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_1/sim/RISCV_SystemVerilog_xlconstant_0_1.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_proc_sys_reset_0_0/sim/RISCV_SystemVerilog_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_vio_0_0/sim/RISCV_SystemVerilog_vio_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_0_1/sim/RISCV_SystemVerilog_util_vector_logic_0_1.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_7 -sv \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../CPU_V1.srcs/sources_1/bd/RISCV_SystemVerilog/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_zynq_ultra_ps_e_1_0/sim/RISCV_SystemVerilog_zynq_ultra_ps_e_1_0_vip_wrapper.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_latency_align_0_0/sim/RISCV_SystemVerilog_latency_align_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_forward_mux_wr_0_0/sim/RISCV_SystemVerilog_rv32i_forward_mux_wr_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_forwarding_uni_0_0/sim/RISCV_SystemVerilog_rv32i_forwarding_uni_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_hazard_detecti_0_0/sim/RISCV_SystemVerilog_rv32i_hazard_detecti_0_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_rv32i_forward_mux_wr_0_1/sim/RISCV_SystemVerilog_rv32i_forward_mux_wr_0_1.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_0_2/sim/RISCV_SystemVerilog_xlconstant_0_2.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_0_2/sim/RISCV_SystemVerilog_util_vector_logic_0_2.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_util_vector_logic_1_0/sim/RISCV_SystemVerilog_util_vector_logic_1_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_1_1/sim/RISCV_SystemVerilog_xlconstant_1_1.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_1_0/sim/RISCV_SystemVerilog_xlconstant_1_0.v" \
  "../../../bd/RISCV_SystemVerilog/ip/RISCV_SystemVerilog_xlconstant_1_2/sim/RISCV_SystemVerilog_xlconstant_1_2.v" \
  "../../../bd/RISCV_SystemVerilog/sim/RISCV_SystemVerilog.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

