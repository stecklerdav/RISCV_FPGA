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
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/media/steckler/xilinx_linux/vitis_2020.1/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_gpio_mmio_0_0/sim/Sections_gpio_mmio_0_0.v" \
  "../../../bd/Sections/ip/Sections_ila_0_0/sim/Sections_ila_0_0.v" \
  "../../../bd/Sections/ip/Sections_mmio_decode_ram_gpio_0_0/sim/Sections_mmio_decode_ram_gpio_0_0.v" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_proc_sys_reset_0_0/sim/Sections_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_rv32i_alu_0_0/sim/Sections_rv32i_alu_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_control_full_0_0/sim/Sections_rv32i_control_full_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_decoder_0_0/sim/Sections_rv32i_decoder_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_imm_mux_0_0/sim/Sections_rv32i_imm_mux_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_opA_mux_0_0/sim/Sections_rv32i_opA_mux_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_opB_mux_0_0/sim/Sections_rv32i_opB_mux_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_ram_datav_0_0/sim/Sections_rv32i_ram_datav_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_regfile_0_0/sim/Sections_rv32i_regfile_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_wb_mux_0_0/sim/Sections_rv32i_wb_mux_0_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_xlconstant_0_0/sim/Sections_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_vip_v1_1_7 -sv \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/ce6c/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib ies_lib/zynq_ultra_ps_e_vip_v1_0_7 -sv \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/e257/hdl/zynq_ultra_ps_e_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_zynq_ultra_ps_e_1_0/sim/Sections_zynq_ultra_ps_e_1_0_vip_wrapper.v" \
  "../../../bd/Sections/ip/Sections_xlconstant_3_0/sim/Sections_xlconstant_3_0.v" \
  "../../../bd/Sections/ip/Sections_pc_to_rom_addr_0_0/sim/Sections_pc_to_rom_addr_0_0.v" \
  "../../../bd/Sections/ip/Sections_pc_unit_0_0/sim/Sections_pc_unit_0_0.v" \
  "../../../bd/Sections/ip/Sections_rv32i_pc_redirect_0_0/sim/Sections_rv32i_pc_redirect_0_0.v" \
  "../../../bd/Sections/ip/Sections_xlconstant_1_0/sim/Sections_xlconstant_1_0.v" \
  "../../../bd/Sections/ip/Sections_vio_0_0/sim/Sections_vio_0_0.v" \
-endlib
-makelib ies_lib/util_vector_logic_v2_0_1 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_util_vector_logic_0_0/sim/Sections_util_vector_logic_0_0.v" \
-endlib
-makelib ies_lib/axi_bram_ctrl_v4_1_3 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/db86/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_axi_bram_ctrl_0_0/sim/Sections_axi_bram_ctrl_0_0.vhd" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_4 \
  "../../../../CPU_V1.srcs/sources_1/bd/Sections/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/Sections/ip/Sections_blk_mem_gen_0_0/sim/Sections_blk_mem_gen_0_0.v" \
  "../../../bd/Sections/ip/Sections_xlconstant_0_1/sim/Sections_xlconstant_0_1.v" \
  "../../../bd/Sections/ip/Sections_xlconstant_1_1/sim/Sections_xlconstant_1_1.v" \
  "../../../bd/Sections/sim/Sections.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

