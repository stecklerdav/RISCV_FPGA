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
-makelib ies_lib/xpm -sv \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_pc_unit_0_0/sim/BASIC_pc_unit_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_zynq_ultra_ps_e_0_0/sim/BASIC_zynq_ultra_ps_e_0_0_vip_wrapper.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_proc_sys_reset_0_0/sim/BASIC_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_xlconstant_0_0/sim/BASIC_xlconstant_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_xlconstant_0_1/sim/BASIC_xlconstant_0_1.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_blk_mem_gen_0_0/sim/BASIC_blk_mem_gen_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_xlconstant_1_0/sim/BASIC_xlconstant_1_0.v" \
  "../../../bd/BASIC/ip/BASIC_pc_to_imem_addr_0_0/sim/BASIC_pc_to_imem_addr_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_if_id_reg_0_0/sim/BASIC_if_id_reg_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_xlconstant_2_0/sim/BASIC_xlconstant_2_0.v" \
  "../../../bd/BASIC/ip/BASIC_decoder_0_0/sim/BASIC_decoder_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_control_0_0/sim/BASIC_control_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_regfile_0_0/sim/BASIC_regfile_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_imm_mux_0_0/sim/BASIC_imm_mux_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_id_ex_reg_0_0/sim/BASIC_id_ex_reg_0_0.v" \
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
  "../../../bd/BASIC/ip/BASIC_load_extender_0_0/sim/BASIC_load_extender_0_0.v" \
-endlib
-makelib ies_lib/xlslice_v1_0_2 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/11d0/hdl/xlslice_v1_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_xlslice_0_0/sim/BASIC_xlslice_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_mem_wb_reg_0_0/sim/BASIC_mem_wb_reg_0_0.v" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../RISCV.srcs/sources_1/bd/BASIC/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/BASIC/ip/BASIC_util_vector_logic_0_0/sim/BASIC_util_vector_logic_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_wb_mux_0_0/sim/BASIC_wb_mux_0_0.v" \
  "../../../bd/BASIC/ip/BASIC_util_vector_logic_0_1/sim/BASIC_util_vector_logic_0_1.v" \
  "../../../bd/BASIC/ip/BASIC_util_vector_logic_1_0/sim/BASIC_util_vector_logic_1_0.v" \
  "../../../bd/BASIC/sim/BASIC.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

