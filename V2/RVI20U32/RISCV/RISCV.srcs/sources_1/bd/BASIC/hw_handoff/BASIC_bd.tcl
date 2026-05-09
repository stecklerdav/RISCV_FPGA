
################################################################
# This is a generated script based on design: BASIC
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source BASIC_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# load_use_detection, priority_branch_OR_load_use, gpio, mmio, ram_data, uart_tx, alu, branch, ex_mem_reg, forward_mux, forward_mux, forward_mux, forwarding, operand_a_mux, operand_b_mux, control, decoder, id_ex_reg, imm_mux, regfile, if_id_reg, pc_to_imem_addr, pc_unit, mem_stage, mem_wb_reg, regfile_we_gen, wb_mux

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu5ev-sfvc784-2-i
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name BASIC

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: RV32I_ROM_MEMORY
proc create_hier_cell_RV32I_ROM_MEMORY { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_ROM_MEMORY() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 10 -to 0 addra
  create_bd_pin -dir I -type clk clka
  create_bd_pin -dir O -from 31 -to 0 douta
  create_bd_pin -dir I ena

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../../rv32i_vscode/prog_asm.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {2048} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create port connections
  connect_bd_net -net RV32I_IF_addr [get_bd_pins addra] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net RV32I_IF_dout [get_bd_pins ena] [get_bd_pins blk_mem_gen_0/ena]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins douta] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clka] [get_bd_pins blk_mem_gen_0/clka]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_WB
proc create_hier_cell_RV32I_WB { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_WB() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 alu_y
  create_bd_pin -dir I -from 31 -to 0 imm_u
  create_bd_pin -dir I -from 31 -to 0 load_data
  create_bd_pin -dir I -from 31 -to 0 pc_plus4
  create_bd_pin -dir O -from 31 -to 0 rd_wdata
  create_bd_pin -dir I -from 1 -to 0 wb_sel

  # Create instance: wb_mux_0, and set properties
  set block_name wb_mux
  set block_cell_name wb_mux_0
  if { [catch {set wb_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $wb_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net mem_wb_reg_0_wb_alu_result [get_bd_pins alu_y] [get_bd_pins wb_mux_0/alu_y]
  connect_bd_net -net mem_wb_reg_0_wb_data [get_bd_pins load_data] [get_bd_pins wb_mux_0/load_data]
  connect_bd_net -net mem_wb_reg_0_wb_imm_u [get_bd_pins imm_u] [get_bd_pins wb_mux_0/imm_u]
  connect_bd_net -net mem_wb_reg_0_wb_pc_plus4 [get_bd_pins pc_plus4] [get_bd_pins wb_mux_0/pc_plus4]
  connect_bd_net -net mem_wb_reg_0_wb_sel [get_bd_pins wb_sel] [get_bd_pins wb_mux_0/wb_sel]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins rd_wdata] [get_bd_pins wb_mux_0/rd_wdata]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_MEM
proc create_hier_cell_RV32I_MEM { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_MEM() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 4 -to 0 Res
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 dmem_addr
  create_bd_pin -dir O -from 3 -to 0 dmem_be
  create_bd_pin -dir O dmem_re
  create_bd_pin -dir O -from 31 -to 0 dmem_wdata
  create_bd_pin -dir O dmem_we
  create_bd_pin -dir I -from 31 -to 0 mem_data
  create_bd_pin -dir O -from 31 -to 0 mem_forward_data
  create_bd_pin -dir I -from 31 -to 0 mem_in_alu_result
  create_bd_pin -dir I -from 31 -to 0 mem_in_imm_u
  create_bd_pin -dir I mem_in_mem_re
  create_bd_pin -dir I -from 1 -to 0 mem_in_mem_size
  create_bd_pin -dir I mem_in_mem_unsigned
  create_bd_pin -dir I mem_in_mem_we
  create_bd_pin -dir I mem_in_mem_we1
  create_bd_pin -dir I -from 31 -to 0 mem_in_pc_plus4
  create_bd_pin -dir I -from 4 -to 0 mem_in_rd
  create_bd_pin -dir I mem_in_rd_we
  create_bd_pin -dir I -from 31 -to 0 mem_in_store_data
  create_bd_pin -dir I mem_in_valid
  create_bd_pin -dir I -from 1 -to 0 mem_in_wb_sel
  create_bd_pin -dir O -from 4 -to 0 mem_rd
  create_bd_pin -dir O mem_rd_we
  create_bd_pin -dir O mem_valid
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir O -from 31 -to 0 wb_alu_result
  create_bd_pin -dir O -from 31 -to 0 wb_data
  create_bd_pin -dir O -from 31 -to 0 wb_imm_u
  create_bd_pin -dir O -from 31 -to 0 wb_pc_plus4
  create_bd_pin -dir O -from 4 -to 0 wb_rd
  create_bd_pin -dir O -from 1 -to 0 wb_sel
  create_bd_pin -dir O wb_valid

  # Create instance: mem_stage_0, and set properties
  set block_name mem_stage
  set block_cell_name mem_stage_0
  if { [catch {set mem_stage_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_stage_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mem_wb_reg_0, and set properties
  set block_name mem_wb_reg
  set block_cell_name mem_wb_reg_0
  if { [catch {set mem_wb_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_wb_reg_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: regfile_we_gen_0, and set properties
  set block_name regfile_we_gen
  set block_cell_name regfile_we_gen_0
  if { [catch {set regfile_we_gen_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $regfile_we_gen_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create port connections
  connect_bd_net -net ex_mem_reg_1_mem_alu_result [get_bd_pins mem_in_alu_result] [get_bd_pins mem_stage_0/mem_in_alu_result]
  connect_bd_net -net ex_mem_reg_1_mem_imm_u [get_bd_pins mem_in_imm_u] [get_bd_pins mem_stage_0/mem_in_imm_u]
  connect_bd_net -net ex_mem_reg_1_mem_mem_re [get_bd_pins mem_in_mem_re] [get_bd_pins mem_stage_0/mem_in_mem_re]
  connect_bd_net -net ex_mem_reg_1_mem_mem_size [get_bd_pins mem_in_mem_size] [get_bd_pins mem_stage_0/mem_in_mem_size]
  connect_bd_net -net ex_mem_reg_1_mem_mem_unsigned [get_bd_pins mem_in_mem_unsigned] [get_bd_pins mem_stage_0/mem_in_mem_unsigned]
  connect_bd_net -net ex_mem_reg_1_mem_pc_plus4 [get_bd_pins mem_in_pc_plus4] [get_bd_pins mem_stage_0/mem_in_pc_plus4]
  connect_bd_net -net ex_mem_reg_1_mem_rd [get_bd_pins mem_in_rd] [get_bd_pins mem_stage_0/mem_in_rd]
  connect_bd_net -net ex_mem_reg_1_mem_rd_we [get_bd_pins mem_in_rd_we] [get_bd_pins mem_stage_0/mem_in_rd_we]
  connect_bd_net -net ex_mem_reg_1_mem_store_data [get_bd_pins mem_in_store_data] [get_bd_pins mem_stage_0/mem_in_store_data]
  connect_bd_net -net ex_mem_reg_1_mem_valid [get_bd_pins mem_in_valid] [get_bd_pins mem_stage_0/mem_in_valid]
  connect_bd_net -net ex_mem_reg_1_mem_wb_sel [get_bd_pins mem_in_wb_sel] [get_bd_pins mem_stage_0/mem_in_wb_sel]
  connect_bd_net -net mem_data_1 [get_bd_pins mem_data] [get_bd_pins mem_stage_0/dmem_rdata]
  connect_bd_net -net mem_in_mem_we_1 [get_bd_pins mem_in_mem_we] [get_bd_pins mem_stage_0/mem_in_mem_we]
  connect_bd_net -net mem_stage_0_dmem_addr [get_bd_pins dmem_addr] [get_bd_pins mem_stage_0/dmem_addr]
  connect_bd_net -net mem_stage_0_dmem_be [get_bd_pins dmem_be] [get_bd_pins mem_stage_0/dmem_be]
  connect_bd_net -net mem_stage_0_dmem_re [get_bd_pins dmem_re] [get_bd_pins mem_stage_0/dmem_re]
  connect_bd_net -net mem_stage_0_dmem_wdata [get_bd_pins dmem_wdata] [get_bd_pins mem_stage_0/dmem_wdata]
  connect_bd_net -net mem_stage_0_dmem_we [get_bd_pins dmem_we] [get_bd_pins mem_stage_0/dmem_we]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins mem_forward_data] [get_bd_pins mem_stage_0/mem_forward_data]
  connect_bd_net -net mem_stage_0_mem_out_alu_result [get_bd_pins mem_stage_0/mem_out_alu_result] [get_bd_pins mem_wb_reg_0/mem_alu_result]
  connect_bd_net -net mem_stage_0_mem_out_data [get_bd_pins mem_stage_0/mem_out_data] [get_bd_pins mem_wb_reg_0/mem_data]
  connect_bd_net -net mem_stage_0_mem_out_imm_u [get_bd_pins mem_stage_0/mem_out_imm_u] [get_bd_pins mem_wb_reg_0/mem_imm_u]
  connect_bd_net -net mem_stage_0_mem_out_pc_plus4 [get_bd_pins mem_stage_0/mem_out_pc_plus4] [get_bd_pins mem_wb_reg_0/mem_pc_plus4]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins mem_rd] [get_bd_pins mem_stage_0/mem_out_rd] [get_bd_pins mem_wb_reg_0/mem_rd]
  connect_bd_net -net mem_stage_0_mem_out_rd_we [get_bd_pins mem_rd_we] [get_bd_pins mem_stage_0/mem_out_rd_we] [get_bd_pins mem_wb_reg_0/mem_rd_we]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins mem_valid] [get_bd_pins mem_stage_0/mem_out_valid] [get_bd_pins mem_wb_reg_0/mem_valid]
  connect_bd_net -net mem_stage_0_mem_out_wb_sel [get_bd_pins mem_stage_0/mem_out_wb_sel] [get_bd_pins mem_wb_reg_0/mem_wb_sel]
  connect_bd_net -net mem_wb_reg_0_wb_alu_result [get_bd_pins wb_alu_result] [get_bd_pins mem_wb_reg_0/wb_alu_result]
  connect_bd_net -net mem_wb_reg_0_wb_data [get_bd_pins wb_data] [get_bd_pins mem_wb_reg_0/wb_data]
  connect_bd_net -net mem_wb_reg_0_wb_imm_u [get_bd_pins wb_imm_u] [get_bd_pins mem_wb_reg_0/wb_imm_u]
  connect_bd_net -net mem_wb_reg_0_wb_pc_plus4 [get_bd_pins wb_pc_plus4] [get_bd_pins mem_wb_reg_0/wb_pc_plus4]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins wb_rd] [get_bd_pins mem_wb_reg_0/wb_rd] [get_bd_pins regfile_we_gen_0/wb_rd]
  connect_bd_net -net mem_wb_reg_0_wb_rd_we [get_bd_pins mem_wb_reg_0/wb_rd_we] [get_bd_pins regfile_we_gen_0/wb_rd_we]
  connect_bd_net -net mem_wb_reg_0_wb_sel [get_bd_pins wb_sel] [get_bd_pins mem_wb_reg_0/wb_sel]
  connect_bd_net -net mem_wb_reg_0_wb_valid [get_bd_pins wb_valid] [get_bd_pins mem_wb_reg_0/wb_valid] [get_bd_pins regfile_we_gen_0/wb_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins mem_stage_0/rst] [get_bd_pins mem_wb_reg_0/rst]
  connect_bd_net -net regfile_we_gen_0_regfile_we [get_bd_pins Res] [get_bd_pins regfile_we_gen_0/regfile_we]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins mem_stage_0/kill] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins mem_stage_0/clk] [get_bd_pins mem_wb_reg_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_IF
proc create_hier_cell_RV32I_IF { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_IF() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 Op1
  create_bd_pin -dir I -from 0 -to 0 Op2
  create_bd_pin -dir O -from 0 -to 0 Res
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I flush
  create_bd_pin -dir I hold
  create_bd_pin -dir O -from 31 -to 0 id_instr_out
  create_bd_pin -dir O -from 31 -to 0 id_pc4_out
  create_bd_pin -dir O -from 31 -to 0 id_pc_out
  create_bd_pin -dir O id_valid_out
  create_bd_pin -dir I pc_en
  create_bd_pin -dir I -from 31 -to 0 pc_redirect_target
  create_bd_pin -dir I pc_redirect_valid
  create_bd_pin -dir I -type rst rst

  # Create instance: RV32I_ROM_MEMORY
  create_hier_cell_RV32I_ROM_MEMORY $hier_obj RV32I_ROM_MEMORY

  # Create instance: if_id_reg_0, and set properties
  set block_name if_id_reg
  set block_cell_name if_id_reg_0
  if { [catch {set if_id_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $if_id_reg_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pc_to_imem_addr_0, and set properties
  set block_name pc_to_imem_addr
  set block_cell_name pc_to_imem_addr_0
  if { [catch {set pc_to_imem_addr_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pc_to_imem_addr_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.ADDR_W {11} \
 ] $pc_to_imem_addr_0

  # Create instance: pc_unit_0, and set properties
  set block_name pc_unit
  set block_cell_name pc_unit_0
  if { [catch {set pc_unit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pc_unit_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_2

  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]

  # Create port connections
  connect_bd_net -net RV32I_ROM_MEMORY_douta [get_bd_pins RV32I_ROM_MEMORY/douta] [get_bd_pins if_id_reg_0/if_instr_in]
  connect_bd_net -net branch_0_ex_flush_req [get_bd_pins flush] [get_bd_pins if_id_reg_0/flush]
  connect_bd_net -net branch_0_pc_redirect_target [get_bd_pins pc_redirect_target] [get_bd_pins pc_unit_0/pc_redirect_target]
  connect_bd_net -net branch_0_pc_redirect_valid [get_bd_pins pc_redirect_valid] [get_bd_pins pc_unit_0/pc_redirect_valid]
  connect_bd_net -net hold_1 [get_bd_pins hold] [get_bd_pins if_id_reg_0/hold] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net if_id_reg_0_id_instr_out [get_bd_pins id_instr_out] [get_bd_pins if_id_reg_0/id_instr_out]
  connect_bd_net -net if_id_reg_0_id_pc4_out [get_bd_pins id_pc4_out] [get_bd_pins if_id_reg_0/id_pc4_out]
  connect_bd_net -net if_id_reg_0_id_pc_out [get_bd_pins id_pc_out] [get_bd_pins if_id_reg_0/id_pc_out]
  connect_bd_net -net if_id_reg_0_id_valid_out [get_bd_pins id_valid_out] [get_bd_pins if_id_reg_0/id_valid_out]
  connect_bd_net -net mem_stage_0_mem_out_rd_we [get_bd_pins Op2] [get_bd_pins util_vector_logic_2/Op2]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins Op1] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net pc_en_1 [get_bd_pins pc_en] [get_bd_pins pc_unit_0/pc_en]
  connect_bd_net -net pc_to_imem_addr_0_addr [get_bd_pins RV32I_ROM_MEMORY/addra] [get_bd_pins pc_to_imem_addr_0/addr]
  connect_bd_net -net pc_unit_0_pc [get_bd_pins if_id_reg_0/if_pc_in] [get_bd_pins pc_to_imem_addr_0/pc] [get_bd_pins pc_unit_0/pc]
  connect_bd_net -net pc_unit_0_pc_plus4 [get_bd_pins if_id_reg_0/if_pc4_in] [get_bd_pins pc_unit_0/pc_plus4]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins if_id_reg_0/rst] [get_bd_pins pc_unit_0/rst]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins Res] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins RV32I_ROM_MEMORY/ena] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins if_id_reg_0/if_valid_in] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins RV32I_ROM_MEMORY/clka] [get_bd_pins if_id_reg_0/clk] [get_bd_pins pc_unit_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_ID
proc create_hier_cell_RV32I_ID { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_ID() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I bubble
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 3 -to 0 ex_alu_op
  create_bd_pin -dir O ex_branch_en
  create_bd_pin -dir O -from 2 -to 0 ex_branch_funct3
  create_bd_pin -dir O -from 31 -to 0 ex_imm
  create_bd_pin -dir O -from 31 -to 0 ex_imm_u
  create_bd_pin -dir O ex_jal
  create_bd_pin -dir O ex_jalr
  create_bd_pin -dir O ex_mem_re
  create_bd_pin -dir O -from 1 -to 0 ex_mem_size
  create_bd_pin -dir O ex_mem_unsigned
  create_bd_pin -dir O ex_mem_we
  create_bd_pin -dir O -from 1 -to 0 ex_op_a_sel
  create_bd_pin -dir O -from 1 -to 0 ex_op_b_sel
  create_bd_pin -dir O -from 31 -to 0 ex_pc
  create_bd_pin -dir O -from 31 -to 0 ex_pc_plus4
  create_bd_pin -dir O -from 4 -to 0 ex_rd
  create_bd_pin -dir O ex_rd_we
  create_bd_pin -dir O -from 4 -to 0 ex_rs1
  create_bd_pin -dir O -from 31 -to 0 ex_rs1_data
  create_bd_pin -dir O -from 4 -to 0 ex_rs2
  create_bd_pin -dir O -from 31 -to 0 ex_rs2_data
  create_bd_pin -dir O ex_valid
  create_bd_pin -dir O -from 1 -to 0 ex_wb_sel
  create_bd_pin -dir I -from 31 -to 0 id_pc
  create_bd_pin -dir I -from 31 -to 0 id_pc_plus4
  create_bd_pin -dir I id_valid
  create_bd_pin -dir I -from 31 -to 0 instr
  create_bd_pin -dir O mem_we
  create_bd_pin -dir I -from 4 -to 0 rd_addr
  create_bd_pin -dir I -from 31 -to 0 rd_wdata
  create_bd_pin -dir I -from 4 -to 0 rd_we
  create_bd_pin -dir O -from 4 -to 0 rs1
  create_bd_pin -dir O rs1_used
  create_bd_pin -dir O -from 4 -to 0 rs2
  create_bd_pin -dir O rs2_used
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I stall

  # Create instance: control_0, and set properties
  set block_name control
  set block_cell_name control_0
  if { [catch {set control_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $control_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder_0, and set properties
  set block_name decoder
  set block_cell_name decoder_0
  if { [catch {set decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: id_ex_reg_1, and set properties
  set block_name id_ex_reg
  set block_cell_name id_ex_reg_1
  if { [catch {set id_ex_reg_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $id_ex_reg_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: imm_mux_0, and set properties
  set block_name imm_mux
  set block_cell_name imm_mux_0
  if { [catch {set imm_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $imm_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: regfile_0, and set properties
  set block_name regfile
  set block_cell_name regfile_0
  if { [catch {set regfile_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $regfile_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create port connections
  connect_bd_net -net bubble_1 [get_bd_pins bubble] [get_bd_pins id_ex_reg_1/bubble]
  connect_bd_net -net control_0_alu_op [get_bd_pins control_0/alu_op] [get_bd_pins id_ex_reg_1/id_alu_op]
  connect_bd_net -net control_0_branch_en [get_bd_pins control_0/branch_en] [get_bd_pins id_ex_reg_1/id_branch_en]
  connect_bd_net -net control_0_branch_funct3 [get_bd_pins control_0/branch_funct3] [get_bd_pins id_ex_reg_1/id_branch_funct3]
  connect_bd_net -net control_0_imm_sel [get_bd_pins control_0/imm_sel] [get_bd_pins imm_mux_0/imm_sel]
  connect_bd_net -net control_0_jal [get_bd_pins control_0/jal] [get_bd_pins id_ex_reg_1/id_jal]
  connect_bd_net -net control_0_jalr [get_bd_pins control_0/jalr] [get_bd_pins id_ex_reg_1/id_jalr]
  connect_bd_net -net control_0_mem_re [get_bd_pins control_0/mem_re] [get_bd_pins id_ex_reg_1/id_mem_re]
  connect_bd_net -net control_0_mem_sign_ext [get_bd_pins control_0/mem_sign_ext] [get_bd_pins id_ex_reg_1/id_mem_unsigned]
  connect_bd_net -net control_0_mem_size [get_bd_pins control_0/mem_size] [get_bd_pins id_ex_reg_1/id_mem_size]
  connect_bd_net -net control_0_mem_we [get_bd_pins mem_we] [get_bd_pins control_0/mem_we] [get_bd_pins id_ex_reg_1/id_mem_we]
  connect_bd_net -net control_0_op_a_sel [get_bd_pins control_0/op_a_sel] [get_bd_pins id_ex_reg_1/id_op_a_sel]
  connect_bd_net -net control_0_op_b_sel [get_bd_pins control_0/op_b_sel] [get_bd_pins id_ex_reg_1/id_op_b_sel]
  connect_bd_net -net control_0_rd_we [get_bd_pins control_0/rd_we] [get_bd_pins id_ex_reg_1/id_rd_we]
  connect_bd_net -net control_0_wb_sel [get_bd_pins control_0/wb_sel] [get_bd_pins id_ex_reg_1/id_wb_sel]
  connect_bd_net -net decoder_0_bit30 [get_bd_pins control_0/bit30] [get_bd_pins decoder_0/bit30]
  connect_bd_net -net decoder_0_fmt [get_bd_pins control_0/fmt] [get_bd_pins decoder_0/fmt]
  connect_bd_net -net decoder_0_funct3 [get_bd_pins control_0/funct3] [get_bd_pins decoder_0/funct3]
  connect_bd_net -net decoder_0_funct7 [get_bd_pins control_0/funct7] [get_bd_pins decoder_0/funct7]
  connect_bd_net -net decoder_0_imm_b [get_bd_pins decoder_0/imm_b] [get_bd_pins imm_mux_0/imm_b]
  connect_bd_net -net decoder_0_imm_i [get_bd_pins decoder_0/imm_i] [get_bd_pins imm_mux_0/imm_i]
  connect_bd_net -net decoder_0_imm_j [get_bd_pins decoder_0/imm_j] [get_bd_pins imm_mux_0/imm_j]
  connect_bd_net -net decoder_0_imm_s [get_bd_pins decoder_0/imm_s] [get_bd_pins imm_mux_0/imm_s]
  connect_bd_net -net decoder_0_imm_u [get_bd_pins decoder_0/imm_u] [get_bd_pins id_ex_reg_1/id_imm_u] [get_bd_pins imm_mux_0/imm_u]
  connect_bd_net -net decoder_0_opcode [get_bd_pins control_0/opcode] [get_bd_pins decoder_0/opcode]
  connect_bd_net -net decoder_0_rd [get_bd_pins decoder_0/rd] [get_bd_pins id_ex_reg_1/id_rd]
  connect_bd_net -net decoder_0_rs1 [get_bd_pins rs1] [get_bd_pins decoder_0/rs1] [get_bd_pins id_ex_reg_1/id_rs1] [get_bd_pins regfile_0/rs1_addr]
  connect_bd_net -net decoder_0_rs1_used [get_bd_pins rs1_used] [get_bd_pins decoder_0/rs1_used]
  connect_bd_net -net decoder_0_rs2 [get_bd_pins rs2] [get_bd_pins decoder_0/rs2] [get_bd_pins id_ex_reg_1/id_rs2] [get_bd_pins regfile_0/rs2_addr]
  connect_bd_net -net decoder_0_rs2_used [get_bd_pins rs2_used] [get_bd_pins decoder_0/rs2_used]
  connect_bd_net -net id_ex_reg_1_ex_alu_op [get_bd_pins ex_alu_op] [get_bd_pins id_ex_reg_1/ex_alu_op]
  connect_bd_net -net id_ex_reg_1_ex_branch_en [get_bd_pins ex_branch_en] [get_bd_pins id_ex_reg_1/ex_branch_en]
  connect_bd_net -net id_ex_reg_1_ex_branch_funct3 [get_bd_pins ex_branch_funct3] [get_bd_pins id_ex_reg_1/ex_branch_funct3]
  connect_bd_net -net id_ex_reg_1_ex_imm [get_bd_pins ex_imm] [get_bd_pins id_ex_reg_1/ex_imm]
  connect_bd_net -net id_ex_reg_1_ex_imm_u [get_bd_pins ex_imm_u] [get_bd_pins id_ex_reg_1/ex_imm_u]
  connect_bd_net -net id_ex_reg_1_ex_jal [get_bd_pins ex_jal] [get_bd_pins id_ex_reg_1/ex_jal]
  connect_bd_net -net id_ex_reg_1_ex_jalr [get_bd_pins ex_jalr] [get_bd_pins id_ex_reg_1/ex_jalr]
  connect_bd_net -net id_ex_reg_1_ex_mem_re [get_bd_pins ex_mem_re] [get_bd_pins id_ex_reg_1/ex_mem_re]
  connect_bd_net -net id_ex_reg_1_ex_mem_size [get_bd_pins ex_mem_size] [get_bd_pins id_ex_reg_1/ex_mem_size]
  connect_bd_net -net id_ex_reg_1_ex_mem_unsigned [get_bd_pins ex_mem_unsigned] [get_bd_pins id_ex_reg_1/ex_mem_unsigned]
  connect_bd_net -net id_ex_reg_1_ex_mem_we [get_bd_pins ex_mem_we] [get_bd_pins id_ex_reg_1/ex_mem_we]
  connect_bd_net -net id_ex_reg_1_ex_op_a_sel [get_bd_pins ex_op_a_sel] [get_bd_pins id_ex_reg_1/ex_op_a_sel]
  connect_bd_net -net id_ex_reg_1_ex_op_b_sel [get_bd_pins ex_op_b_sel] [get_bd_pins id_ex_reg_1/ex_op_b_sel]
  connect_bd_net -net id_ex_reg_1_ex_pc [get_bd_pins ex_pc] [get_bd_pins id_ex_reg_1/ex_pc]
  connect_bd_net -net id_ex_reg_1_ex_pc_plus4 [get_bd_pins ex_pc_plus4] [get_bd_pins id_ex_reg_1/ex_pc_plus4]
  connect_bd_net -net id_ex_reg_1_ex_rd [get_bd_pins ex_rd] [get_bd_pins id_ex_reg_1/ex_rd]
  connect_bd_net -net id_ex_reg_1_ex_rd_we [get_bd_pins ex_rd_we] [get_bd_pins id_ex_reg_1/ex_rd_we]
  connect_bd_net -net id_ex_reg_1_ex_rs1 [get_bd_pins ex_rs1] [get_bd_pins id_ex_reg_1/ex_rs1]
  connect_bd_net -net id_ex_reg_1_ex_rs1_data [get_bd_pins ex_rs1_data] [get_bd_pins id_ex_reg_1/ex_rs1_data]
  connect_bd_net -net id_ex_reg_1_ex_rs2 [get_bd_pins ex_rs2] [get_bd_pins id_ex_reg_1/ex_rs2]
  connect_bd_net -net id_ex_reg_1_ex_rs2_data [get_bd_pins ex_rs2_data] [get_bd_pins id_ex_reg_1/ex_rs2_data]
  connect_bd_net -net id_ex_reg_1_ex_valid [get_bd_pins ex_valid] [get_bd_pins id_ex_reg_1/ex_valid]
  connect_bd_net -net id_ex_reg_1_ex_wb_sel [get_bd_pins ex_wb_sel] [get_bd_pins id_ex_reg_1/ex_wb_sel]
  connect_bd_net -net if_id_reg_0_id_instr_out [get_bd_pins instr] [get_bd_pins decoder_0/instr]
  connect_bd_net -net if_id_reg_0_id_pc4_out [get_bd_pins id_pc_plus4] [get_bd_pins id_ex_reg_1/id_pc_plus4]
  connect_bd_net -net if_id_reg_0_id_pc_out [get_bd_pins id_pc] [get_bd_pins id_ex_reg_1/id_pc]
  connect_bd_net -net if_id_reg_0_id_valid_out [get_bd_pins id_valid] [get_bd_pins id_ex_reg_1/id_valid]
  connect_bd_net -net imm_mux_0_imm_out [get_bd_pins id_ex_reg_1/id_imm] [get_bd_pins imm_mux_0/imm_out]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins rd_addr] [get_bd_pins regfile_0/rd_addr]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins id_ex_reg_1/rst]
  connect_bd_net -net regfile_0_rs1_rdata [get_bd_pins id_ex_reg_1/id_rs1_data] [get_bd_pins regfile_0/rs1_rdata]
  connect_bd_net -net regfile_0_rs2_rdata [get_bd_pins id_ex_reg_1/id_rs2_data] [get_bd_pins regfile_0/rs2_rdata]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins rd_we] [get_bd_pins regfile_0/rd_we]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins rd_wdata] [get_bd_pins regfile_0/rd_wdata]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins id_ex_reg_1/stall] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins id_ex_reg_1/clk] [get_bd_pins regfile_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_EX
proc create_hier_cell_RV32I_EX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_EX() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 3 -to 0 alu_op
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I ex_branch_en
  create_bd_pin -dir I -from 2 -to 0 ex_branch_funct3
  create_bd_pin -dir O ex_flush_req
  create_bd_pin -dir I -from 31 -to 0 ex_imm
  create_bd_pin -dir I -from 31 -to 0 ex_imm_u
  create_bd_pin -dir I ex_jal
  create_bd_pin -dir I ex_jalr
  create_bd_pin -dir O -from 31 -to 0 ex_mem_data
  create_bd_pin -dir I ex_mem_re
  create_bd_pin -dir I -from 1 -to 0 ex_mem_size
  create_bd_pin -dir I ex_mem_unsigned
  create_bd_pin -dir I ex_mem_we
  create_bd_pin -dir I -from 1 -to 0 ex_op_b_sel
  create_bd_pin -dir I -from 31 -to 0 ex_pc_plus4
  create_bd_pin -dir I -from 4 -to 0 ex_rd
  create_bd_pin -dir I ex_rd_we
  create_bd_pin -dir I -from 4 -to 0 ex_rs1
  create_bd_pin -dir I -from 31 -to 0 ex_rs1_data
  create_bd_pin -dir I -from 4 -to 0 ex_rs2
  create_bd_pin -dir I -from 31 -to 0 ex_rs2_data
  create_bd_pin -dir I ex_valid
  create_bd_pin -dir I -from 1 -to 0 ex_wb_sel
  create_bd_pin -dir O -from 31 -to 0 mem_imm_u
  create_bd_pin -dir O mem_mem_re
  create_bd_pin -dir O -from 1 -to 0 mem_mem_size
  create_bd_pin -dir O mem_mem_unsigned
  create_bd_pin -dir O mem_mem_we
  create_bd_pin -dir O -from 31 -to 0 mem_pc_plus4
  create_bd_pin -dir O -from 4 -to 0 mem_rd
  create_bd_pin -dir O mem_rd_we
  create_bd_pin -dir I -from 31 -to 0 mem_stage_data
  create_bd_pin -dir I -from 4 -to 0 mem_stage_rd
  create_bd_pin -dir I mem_stage_rd_we
  create_bd_pin -dir I mem_stage_valid
  create_bd_pin -dir O -from 31 -to 0 mem_store_data
  create_bd_pin -dir O mem_valid
  create_bd_pin -dir I -from 31 -to 0 mem_wb_data
  create_bd_pin -dir O -from 1 -to 0 mem_wb_sel
  create_bd_pin -dir I -from 1 -to 0 op_a_sel
  create_bd_pin -dir I -from 31 -to 0 pc
  create_bd_pin -dir O -from 31 -to 0 pc_redirect_target
  create_bd_pin -dir O pc_redirect_valid
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -from 4 -to 0 wb_rd
  create_bd_pin -dir I -from 4 -to 0 wb_rd_we
  create_bd_pin -dir I wb_valid

  # Create instance: alu_0, and set properties
  set block_name alu
  set block_cell_name alu_0
  if { [catch {set alu_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $alu_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: branch_0, and set properties
  set block_name branch
  set block_cell_name branch_0
  if { [catch {set branch_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $branch_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ex_mem_reg_1, and set properties
  set block_name ex_mem_reg
  set block_cell_name ex_mem_reg_1
  if { [catch {set ex_mem_reg_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ex_mem_reg_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: forward_mux_0, and set properties
  set block_name forward_mux
  set block_cell_name forward_mux_0
  if { [catch {set forward_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $forward_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: forward_mux_1, and set properties
  set block_name forward_mux
  set block_cell_name forward_mux_1
  if { [catch {set forward_mux_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $forward_mux_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: forward_mux_2, and set properties
  set block_name forward_mux
  set block_cell_name forward_mux_2
  if { [catch {set forward_mux_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $forward_mux_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: forwarding_0, and set properties
  set block_name forwarding
  set block_cell_name forwarding_0
  if { [catch {set forwarding_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $forwarding_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: operand_a_mux_0, and set properties
  set block_name operand_a_mux
  set block_cell_name operand_a_mux_0
  if { [catch {set operand_a_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $operand_a_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: operand_b_mux_0, and set properties
  set block_name operand_b_mux
  set block_cell_name operand_b_mux_0
  if { [catch {set operand_b_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $operand_b_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_1

  # Create port connections
  connect_bd_net -net Net [get_bd_pins ex_valid] [get_bd_pins branch_0/ex_valid] [get_bd_pins ex_mem_reg_1/ex_valid]
  connect_bd_net -net alu_0_y [get_bd_pins alu_0/y] [get_bd_pins ex_mem_reg_1/ex_alu_result]
  connect_bd_net -net branch_0_ex_exception_cause [get_bd_pins branch_0/ex_exception_cause] [get_bd_pins ex_mem_reg_1/ex_exception_cause]
  connect_bd_net -net branch_0_ex_exception_tval [get_bd_pins branch_0/ex_exception_tval] [get_bd_pins ex_mem_reg_1/ex_exception_tval]
  connect_bd_net -net branch_0_ex_exception_valid [get_bd_pins branch_0/ex_exception_valid] [get_bd_pins ex_mem_reg_1/ex_exception_valid]
  connect_bd_net -net branch_0_ex_flush_req [get_bd_pins ex_flush_req] [get_bd_pins branch_0/ex_flush_req]
  connect_bd_net -net branch_0_pc_redirect_target [get_bd_pins pc_redirect_target] [get_bd_pins branch_0/pc_redirect_target]
  connect_bd_net -net branch_0_pc_redirect_valid [get_bd_pins pc_redirect_valid] [get_bd_pins branch_0/pc_redirect_valid]
  connect_bd_net -net ex_mem_reg_1_mem_alu_result [get_bd_pins ex_mem_data] [get_bd_pins ex_mem_reg_1/mem_alu_result] [get_bd_pins forward_mux_0/ex_mem_data] [get_bd_pins forward_mux_1/ex_mem_data] [get_bd_pins forward_mux_2/ex_mem_data]
  connect_bd_net -net ex_mem_reg_1_mem_imm_u [get_bd_pins mem_imm_u] [get_bd_pins ex_mem_reg_1/mem_imm_u]
  connect_bd_net -net ex_mem_reg_1_mem_mem_re [get_bd_pins mem_mem_re] [get_bd_pins ex_mem_reg_1/mem_mem_re] [get_bd_pins forwarding_0/mem_is_load]
  connect_bd_net -net ex_mem_reg_1_mem_mem_size [get_bd_pins mem_mem_size] [get_bd_pins ex_mem_reg_1/mem_mem_size]
  connect_bd_net -net ex_mem_reg_1_mem_mem_unsigned [get_bd_pins mem_mem_unsigned] [get_bd_pins ex_mem_reg_1/mem_mem_unsigned]
  connect_bd_net -net ex_mem_reg_1_mem_mem_we [get_bd_pins mem_mem_we] [get_bd_pins ex_mem_reg_1/mem_mem_we]
  connect_bd_net -net ex_mem_reg_1_mem_pc_plus4 [get_bd_pins mem_pc_plus4] [get_bd_pins ex_mem_reg_1/mem_pc_plus4]
  connect_bd_net -net ex_mem_reg_1_mem_rd [get_bd_pins mem_rd] [get_bd_pins ex_mem_reg_1/mem_rd] [get_bd_pins forwarding_0/mem_rd]
  connect_bd_net -net ex_mem_reg_1_mem_rd_we [get_bd_pins mem_rd_we] [get_bd_pins ex_mem_reg_1/mem_rd_we] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net ex_mem_reg_1_mem_store_data [get_bd_pins mem_store_data] [get_bd_pins ex_mem_reg_1/mem_store_data]
  connect_bd_net -net ex_mem_reg_1_mem_valid [get_bd_pins mem_valid] [get_bd_pins ex_mem_reg_1/mem_valid] [get_bd_pins forwarding_0/mem_valid] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net ex_mem_reg_1_mem_wb_sel [get_bd_pins mem_wb_sel] [get_bd_pins ex_mem_reg_1/mem_wb_sel]
  connect_bd_net -net forward_mux_0_out_data [get_bd_pins branch_0/ex_rs1_data] [get_bd_pins forward_mux_0/out_data] [get_bd_pins operand_a_mux_0/rs1_data]
  connect_bd_net -net forward_mux_1_out_data [get_bd_pins branch_0/ex_rs2_data] [get_bd_pins forward_mux_1/out_data] [get_bd_pins operand_b_mux_0/rs2_data]
  connect_bd_net -net forward_mux_2_out_data [get_bd_pins ex_mem_reg_1/ex_store_data] [get_bd_pins forward_mux_2/out_data]
  connect_bd_net -net forwarding_0_forward_a [get_bd_pins forward_mux_0/forward_sel] [get_bd_pins forwarding_0/forward_a]
  connect_bd_net -net forwarding_0_forward_b [get_bd_pins forward_mux_1/forward_sel] [get_bd_pins forwarding_0/forward_b]
  connect_bd_net -net forwarding_0_forward_store [get_bd_pins forward_mux_2/forward_sel] [get_bd_pins forwarding_0/forward_store]
  connect_bd_net -net id_ex_reg_0_ex_alu_op [get_bd_pins alu_op] [get_bd_pins alu_0/alu_op]
  connect_bd_net -net id_ex_reg_0_ex_branch_en [get_bd_pins ex_branch_en] [get_bd_pins branch_0/ex_branch_en]
  connect_bd_net -net id_ex_reg_0_ex_branch_funct3 [get_bd_pins ex_branch_funct3] [get_bd_pins branch_0/ex_branch_funct3]
  connect_bd_net -net id_ex_reg_0_ex_imm [get_bd_pins ex_imm] [get_bd_pins branch_0/ex_imm] [get_bd_pins operand_b_mux_0/imm]
  connect_bd_net -net id_ex_reg_0_ex_imm_u [get_bd_pins ex_imm_u] [get_bd_pins ex_mem_reg_1/ex_imm_u]
  connect_bd_net -net id_ex_reg_0_ex_jal [get_bd_pins ex_jal] [get_bd_pins branch_0/ex_jal]
  connect_bd_net -net id_ex_reg_0_ex_jalr [get_bd_pins ex_jalr] [get_bd_pins branch_0/ex_jalr]
  connect_bd_net -net id_ex_reg_0_ex_mem_re [get_bd_pins ex_mem_re] [get_bd_pins ex_mem_reg_1/ex_mem_re]
  connect_bd_net -net id_ex_reg_0_ex_mem_size [get_bd_pins ex_mem_size] [get_bd_pins ex_mem_reg_1/ex_mem_size]
  connect_bd_net -net id_ex_reg_0_ex_mem_unsigned [get_bd_pins ex_mem_unsigned] [get_bd_pins ex_mem_reg_1/ex_mem_unsigned]
  connect_bd_net -net id_ex_reg_0_ex_mem_we [get_bd_pins ex_mem_we] [get_bd_pins ex_mem_reg_1/ex_mem_we]
  connect_bd_net -net id_ex_reg_0_ex_op_a_sel [get_bd_pins op_a_sel] [get_bd_pins operand_a_mux_0/op_a_sel]
  connect_bd_net -net id_ex_reg_0_ex_op_b_sel [get_bd_pins ex_op_b_sel] [get_bd_pins forwarding_0/ex_op_b_sel] [get_bd_pins operand_b_mux_0/op_b_sel]
  connect_bd_net -net id_ex_reg_0_ex_pc [get_bd_pins pc] [get_bd_pins branch_0/ex_pc] [get_bd_pins ex_mem_reg_1/ex_pc] [get_bd_pins operand_a_mux_0/pc]
  connect_bd_net -net id_ex_reg_0_ex_pc_plus4 [get_bd_pins ex_pc_plus4] [get_bd_pins ex_mem_reg_1/ex_pc_plus4]
  connect_bd_net -net id_ex_reg_0_ex_rd [get_bd_pins ex_rd] [get_bd_pins ex_mem_reg_1/ex_rd]
  connect_bd_net -net id_ex_reg_0_ex_rd_we [get_bd_pins ex_rd_we] [get_bd_pins ex_mem_reg_1/ex_rd_we]
  connect_bd_net -net id_ex_reg_0_ex_rs1 [get_bd_pins ex_rs1] [get_bd_pins forwarding_0/ex_rs1]
  connect_bd_net -net id_ex_reg_0_ex_rs1_data [get_bd_pins ex_rs1_data] [get_bd_pins forward_mux_0/base_data]
  connect_bd_net -net id_ex_reg_0_ex_rs2 [get_bd_pins ex_rs2] [get_bd_pins forwarding_0/ex_rs2]
  connect_bd_net -net id_ex_reg_0_ex_rs2_data [get_bd_pins ex_rs2_data] [get_bd_pins forward_mux_1/base_data] [get_bd_pins forward_mux_2/base_data]
  connect_bd_net -net id_ex_reg_0_ex_wb_sel [get_bd_pins ex_wb_sel] [get_bd_pins ex_mem_reg_1/ex_wb_sel]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins mem_stage_data] [get_bd_pins forward_mux_0/mem_stage_data] [get_bd_pins forward_mux_1/mem_stage_data] [get_bd_pins forward_mux_2/mem_stage_data]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins mem_stage_rd] [get_bd_pins forwarding_0/mem_stage_rd]
  connect_bd_net -net mem_stage_valid_1 [get_bd_pins mem_stage_valid] [get_bd_pins forwarding_0/mem_stage_valid]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins wb_rd] [get_bd_pins forwarding_0/wb_rd]
  connect_bd_net -net operand_a_mux_0_operand_a [get_bd_pins alu_0/a] [get_bd_pins operand_a_mux_0/operand_a]
  connect_bd_net -net operand_b_mux_0_operand_b [get_bd_pins alu_0/b] [get_bd_pins operand_b_mux_0/operand_b]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins ex_mem_reg_1/rst]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins wb_rd_we] [get_bd_pins forwarding_0/wb_rd_we]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins forwarding_0/mem_rd_we] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins mem_stage_rd_we] [get_bd_pins forwarding_0/mem_stage_rd_we]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins mem_wb_data] [get_bd_pins forward_mux_0/mem_wb_data] [get_bd_pins forward_mux_1/mem_wb_data] [get_bd_pins forward_mux_2/mem_wb_data]
  connect_bd_net -net wb_valid_1 [get_bd_pins wb_valid] [get_bd_pins forwarding_0/wb_valid]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins ex_mem_reg_1/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: UART
proc create_hier_cell_UART { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_UART() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 addr
  create_bd_pin -dir I -from 3 -to 0 be
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 rdata
  create_bd_pin -dir O ready
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I valid
  create_bd_pin -dir I -from 31 -to 0 wdata
  create_bd_pin -dir I we

  # Create instance: uart_tx_0, and set properties
  set block_name uart_tx
  set block_cell_name uart_tx_0
  if { [catch {set uart_tx_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_tx_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.BAUD {115200} \
   CONFIG.CLK_FREQ {10000000} \
 ] $uart_tx_0

  # Create port connections
  connect_bd_net -net MMIO_uart_addr [get_bd_pins addr] [get_bd_pins uart_tx_0/addr]
  connect_bd_net -net MMIO_uart_be [get_bd_pins be] [get_bd_pins uart_tx_0/be]
  connect_bd_net -net MMIO_uart_valid [get_bd_pins valid] [get_bd_pins uart_tx_0/valid]
  connect_bd_net -net MMIO_uart_wdata [get_bd_pins wdata] [get_bd_pins uart_tx_0/wdata]
  connect_bd_net -net MMIO_uart_we [get_bd_pins we] [get_bd_pins uart_tx_0/we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins uart_tx_0/rst]
  connect_bd_net -net uart_tx_0_rdata [get_bd_pins rdata] [get_bd_pins uart_tx_0/rdata]
  connect_bd_net -net uart_tx_0_ready [get_bd_pins ready] [get_bd_pins uart_tx_0/ready]
  connect_bd_net -net uart_tx_0_tx [get_bd_pins uart_tx_0/rx] [get_bd_pins uart_tx_0/tx]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins uart_tx_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: RV32I_RAM_MEMORY
proc create_hier_cell_RV32I_RAM_MEMORY { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_RV32I_RAM_MEMORY() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 addr
  create_bd_pin -dir I -from 3 -to 0 be
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 rdata
  create_bd_pin -dir I -from 31 -to 0 wdata
  create_bd_pin -dir I we

  # Create instance: ram_data_1, and set properties
  set block_name ram_data
  set block_cell_name ram_data_1
  if { [catch {set ram_data_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ram_data_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins addr] [get_bd_pins ram_data_1/addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins be] [get_bd_pins ram_data_1/be]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins wdata] [get_bd_pins ram_data_1/wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins we] [get_bd_pins ram_data_1/we]
  connect_bd_net -net ram_data_1_rdata [get_bd_pins rdata] [get_bd_pins ram_data_1/rdata]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins ram_data_1/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: MMIO
proc create_hier_cell_MMIO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_MMIO() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 Op1
  create_bd_pin -dir I -from 0 -to 0 Op2
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 31 -to 0 cpu_addr
  create_bd_pin -dir I -from 3 -to 0 cpu_be
  create_bd_pin -dir O -from 31 -to 0 cpu_rdata
  create_bd_pin -dir I -from 31 -to 0 cpu_wdata
  create_bd_pin -dir O -from 31 -to 0 gpio_addr
  create_bd_pin -dir O -from 3 -to 0 gpio_be
  create_bd_pin -dir I -from 31 -to 0 gpio_rdata
  create_bd_pin -dir I gpio_ready
  create_bd_pin -dir O gpio_valid
  create_bd_pin -dir O -from 31 -to 0 gpio_wdata
  create_bd_pin -dir O gpio_we
  create_bd_pin -dir O -from 31 -to 0 ram_addr
  create_bd_pin -dir O -from 3 -to 0 ram_be
  create_bd_pin -dir I -from 31 -to 0 ram_rdata
  create_bd_pin -dir O -from 31 -to 0 ram_wdata
  create_bd_pin -dir O ram_we
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir O -from 31 -to 0 uart_addr
  create_bd_pin -dir O -from 3 -to 0 uart_be
  create_bd_pin -dir I -from 31 -to 0 uart_rdata
  create_bd_pin -dir I uart_ready1
  create_bd_pin -dir O uart_valid
  create_bd_pin -dir O -from 31 -to 0 uart_wdata
  create_bd_pin -dir O uart_we

  # Create instance: mmio_0, and set properties
  set block_name mmio
  set block_cell_name mmio_0
  if { [catch {set mmio_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mmio_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_3, and set properties
  set util_vector_logic_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_3 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_3

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_3

  # Create port connections
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins cpu_addr] [get_bd_pins mmio_0/cpu_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins cpu_be] [get_bd_pins mmio_0/cpu_be]
  connect_bd_net -net RV32I_MEM_dmem_re [get_bd_pins Op2] [get_bd_pins util_vector_logic_3/Op2]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins cpu_wdata] [get_bd_pins mmio_0/cpu_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins Op1] [get_bd_pins mmio_0/cpu_we] [get_bd_pins util_vector_logic_3/Op1]
  connect_bd_net -net RV32I_RAM_MEMORY_rdata [get_bd_pins ram_rdata] [get_bd_pins mmio_0/ram_rdata]
  connect_bd_net -net addr_1 [get_bd_pins ram_addr] [get_bd_pins mmio_0/ram_addr]
  connect_bd_net -net be_1 [get_bd_pins ram_be] [get_bd_pins mmio_0/ram_be]
  connect_bd_net -net gpio_0_rdata [get_bd_pins gpio_rdata] [get_bd_pins mmio_0/gpio_rdata]
  connect_bd_net -net gpio_0_ready [get_bd_pins gpio_ready] [get_bd_pins mmio_0/gpio_ready]
  connect_bd_net -net mmio_0_cpu_rdata [get_bd_pins cpu_rdata] [get_bd_pins mmio_0/cpu_rdata]
  connect_bd_net -net mmio_0_gpio_addr [get_bd_pins gpio_addr] [get_bd_pins mmio_0/gpio_addr]
  connect_bd_net -net mmio_0_gpio_be [get_bd_pins gpio_be] [get_bd_pins mmio_0/gpio_be]
  connect_bd_net -net mmio_0_gpio_valid [get_bd_pins gpio_valid] [get_bd_pins mmio_0/gpio_valid]
  connect_bd_net -net mmio_0_gpio_wdata [get_bd_pins gpio_wdata] [get_bd_pins mmio_0/gpio_wdata]
  connect_bd_net -net mmio_0_gpio_we [get_bd_pins gpio_we] [get_bd_pins mmio_0/gpio_we]
  connect_bd_net -net mmio_0_uart_addr [get_bd_pins uart_addr] [get_bd_pins mmio_0/uart_addr]
  connect_bd_net -net mmio_0_uart_be [get_bd_pins uart_be] [get_bd_pins mmio_0/uart_be]
  connect_bd_net -net mmio_0_uart_valid [get_bd_pins uart_valid] [get_bd_pins mmio_0/uart_valid]
  connect_bd_net -net mmio_0_uart_wdata [get_bd_pins uart_wdata] [get_bd_pins mmio_0/uart_wdata]
  connect_bd_net -net mmio_0_uart_we [get_bd_pins uart_we] [get_bd_pins mmio_0/uart_we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins mmio_0/rst]
  connect_bd_net -net uart_rdata_1 [get_bd_pins uart_rdata] [get_bd_pins mmio_0/uart_rdata]
  connect_bd_net -net uart_ready1_1 [get_bd_pins uart_ready1] [get_bd_pins mmio_0/uart_ready]
  connect_bd_net -net util_vector_logic_3_Res [get_bd_pins mmio_0/cpu_valid] [get_bd_pins util_vector_logic_3/Res]
  connect_bd_net -net wdata_1 [get_bd_pins ram_wdata] [get_bd_pins mmio_0/ram_wdata]
  connect_bd_net -net we_1 [get_bd_pins ram_we] [get_bd_pins mmio_0/ram_we]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins mmio_0/ram_ready] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins mmio_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: GPIO
proc create_hier_cell_GPIO { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_GPIO() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 31 -to 0 addr
  create_bd_pin -dir I -from 3 -to 0 be
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 7 -to 0 gpio_out
  create_bd_pin -dir O -from 31 -to 0 rdata
  create_bd_pin -dir O ready
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I valid
  create_bd_pin -dir I -from 31 -to 0 wdata
  create_bd_pin -dir I we

  # Create instance: gpio_0, and set properties
  set block_name gpio
  set block_cell_name gpio_0
  if { [catch {set gpio_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $gpio_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net gpio_0_gpio_out [get_bd_pins gpio_out] [get_bd_pins gpio_0/gpio_out]
  connect_bd_net -net gpio_0_rdata [get_bd_pins rdata] [get_bd_pins gpio_0/rdata]
  connect_bd_net -net gpio_0_ready [get_bd_pins ready] [get_bd_pins gpio_0/ready]
  connect_bd_net -net mmio_0_gpio_addr [get_bd_pins addr] [get_bd_pins gpio_0/addr]
  connect_bd_net -net mmio_0_gpio_be [get_bd_pins be] [get_bd_pins gpio_0/be]
  connect_bd_net -net mmio_0_gpio_valid [get_bd_pins valid] [get_bd_pins gpio_0/valid]
  connect_bd_net -net mmio_0_gpio_wdata [get_bd_pins wdata] [get_bd_pins gpio_0/wdata]
  connect_bd_net -net mmio_0_gpio_we [get_bd_pins we] [get_bd_pins gpio_0/we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins gpio_0/rst]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins gpio_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Core_RV32I
proc create_hier_cell_Core_RV32I { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Core_RV32I() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 dmem_addr
  create_bd_pin -dir O -from 3 -to 0 dmem_be
  create_bd_pin -dir O dmem_re
  create_bd_pin -dir O -from 31 -to 0 dmem_wdata
  create_bd_pin -dir O dmem_we
  create_bd_pin -dir I -from 31 -to 0 mem_data
  create_bd_pin -dir I -type rst rst

  # Create instance: RV32I_EX
  create_hier_cell_RV32I_EX $hier_obj RV32I_EX

  # Create instance: RV32I_ID
  create_hier_cell_RV32I_ID $hier_obj RV32I_ID

  # Create instance: RV32I_IF
  create_hier_cell_RV32I_IF $hier_obj RV32I_IF

  # Create instance: RV32I_MEM
  create_hier_cell_RV32I_MEM $hier_obj RV32I_MEM

  # Create instance: RV32I_WB
  create_hier_cell_RV32I_WB $hier_obj RV32I_WB

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {5} \
   CONFIG.C_PROBE2_WIDTH {5} \
   CONFIG.C_PROBE3_WIDTH {32} \
 ] $ila_0

  # Create instance: load_use_detection_0, and set properties
  set block_name load_use_detection
  set block_cell_name load_use_detection_0
  if { [catch {set load_use_detection_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $load_use_detection_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: priority_branch_OR_l_0, and set properties
  set block_name priority_branch_OR_load_use
  set block_cell_name priority_branch_OR_l_0
  if { [catch {set priority_branch_OR_l_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $priority_branch_OR_l_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net RV32I_EX_ex_flush_req [get_bd_pins RV32I_EX/ex_flush_req] [get_bd_pins priority_branch_OR_l_0/ex_flush_req]
  connect_bd_net -net RV32I_EX_pc_redirect_target [get_bd_pins RV32I_EX/pc_redirect_target] [get_bd_pins RV32I_IF/pc_redirect_target]
  connect_bd_net -net RV32I_EX_pc_redirect_valid [get_bd_pins RV32I_EX/pc_redirect_valid] [get_bd_pins RV32I_IF/pc_redirect_valid]
  connect_bd_net -net RV32I_ID_ex_rd [get_bd_pins RV32I_EX/ex_rd] [get_bd_pins RV32I_ID/ex_rd] [get_bd_pins load_use_detection_0/id_ex_rd]
  connect_bd_net -net RV32I_ID_rs1 [get_bd_pins RV32I_ID/rs1] [get_bd_pins load_use_detection_0/if_id_rs1]
  connect_bd_net -net RV32I_ID_rs1_used [get_bd_pins RV32I_ID/rs1_used] [get_bd_pins load_use_detection_0/if_id_rs1_used]
  connect_bd_net -net RV32I_ID_rs2 [get_bd_pins RV32I_ID/rs2] [get_bd_pins load_use_detection_0/if_id_rs2]
  connect_bd_net -net RV32I_ID_rs2_used [get_bd_pins RV32I_ID/rs2_used] [get_bd_pins load_use_detection_0/if_id_rs2_used]
  connect_bd_net -net RV32I_IF_id_instr_out [get_bd_pins RV32I_ID/instr] [get_bd_pins RV32I_IF/id_instr_out]
  connect_bd_net -net RV32I_IF_id_pc4_out [get_bd_pins RV32I_ID/id_pc_plus4] [get_bd_pins RV32I_IF/id_pc4_out]
  connect_bd_net -net RV32I_IF_id_pc_out [get_bd_pins RV32I_ID/id_pc] [get_bd_pins RV32I_IF/id_pc_out]
  connect_bd_net -net RV32I_IF_id_valid_out [get_bd_pins RV32I_ID/id_valid] [get_bd_pins RV32I_IF/id_valid_out] [get_bd_pins load_use_detection_0/if_id_valid]
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins dmem_addr] [get_bd_pins RV32I_MEM/dmem_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins dmem_be] [get_bd_pins RV32I_MEM/dmem_be]
  connect_bd_net -net RV32I_MEM_dmem_re [get_bd_pins dmem_re] [get_bd_pins RV32I_MEM/dmem_re]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins dmem_wdata] [get_bd_pins RV32I_MEM/dmem_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins dmem_we] [get_bd_pins RV32I_MEM/dmem_we]
  connect_bd_net -net RV32I_MEM_mem_rd_we [get_bd_pins RV32I_IF/Op2] [get_bd_pins RV32I_MEM/mem_rd_we]
  connect_bd_net -net RV32I_MEM_wb_valid [get_bd_pins RV32I_EX/wb_valid] [get_bd_pins RV32I_MEM/wb_valid]
  connect_bd_net -net alu_op_1 [get_bd_pins RV32I_EX/alu_op] [get_bd_pins RV32I_ID/ex_alu_op]
  connect_bd_net -net bubble_1 [get_bd_pins RV32I_ID/bubble] [get_bd_pins priority_branch_OR_l_0/id_ex_flush_final]
  connect_bd_net -net ex_branch_en_1 [get_bd_pins RV32I_EX/ex_branch_en] [get_bd_pins RV32I_ID/ex_branch_en]
  connect_bd_net -net ex_branch_funct3_1 [get_bd_pins RV32I_EX/ex_branch_funct3] [get_bd_pins RV32I_ID/ex_branch_funct3]
  connect_bd_net -net ex_imm_1 [get_bd_pins RV32I_EX/ex_imm] [get_bd_pins RV32I_ID/ex_imm]
  connect_bd_net -net ex_imm_u_1 [get_bd_pins RV32I_EX/ex_imm_u] [get_bd_pins RV32I_ID/ex_imm_u]
  connect_bd_net -net ex_jal_1 [get_bd_pins RV32I_EX/ex_jal] [get_bd_pins RV32I_ID/ex_jal]
  connect_bd_net -net ex_jalr_1 [get_bd_pins RV32I_EX/ex_jalr] [get_bd_pins RV32I_ID/ex_jalr]
  connect_bd_net -net ex_mem_re_1 [get_bd_pins RV32I_EX/ex_mem_re] [get_bd_pins RV32I_ID/ex_mem_re] [get_bd_pins load_use_detection_0/id_ex_mem_re]
  connect_bd_net -net ex_mem_reg_1_mem_alu_result [get_bd_pins RV32I_EX/ex_mem_data] [get_bd_pins RV32I_MEM/mem_in_alu_result]
  connect_bd_net -net ex_mem_reg_1_mem_imm_u [get_bd_pins RV32I_EX/mem_imm_u] [get_bd_pins RV32I_MEM/mem_in_imm_u]
  connect_bd_net -net ex_mem_reg_1_mem_mem_re [get_bd_pins RV32I_EX/mem_mem_re] [get_bd_pins RV32I_MEM/mem_in_mem_re]
  connect_bd_net -net ex_mem_reg_1_mem_mem_size [get_bd_pins RV32I_EX/mem_mem_size] [get_bd_pins RV32I_MEM/mem_in_mem_size]
  connect_bd_net -net ex_mem_reg_1_mem_mem_unsigned [get_bd_pins RV32I_EX/mem_mem_unsigned] [get_bd_pins RV32I_MEM/mem_in_mem_unsigned]
  connect_bd_net -net ex_mem_reg_1_mem_mem_we [get_bd_pins RV32I_EX/mem_mem_we] [get_bd_pins RV32I_MEM/mem_in_mem_we]
  connect_bd_net -net ex_mem_reg_1_mem_pc_plus4 [get_bd_pins RV32I_EX/mem_pc_plus4] [get_bd_pins RV32I_MEM/mem_in_pc_plus4]
  connect_bd_net -net ex_mem_reg_1_mem_rd [get_bd_pins RV32I_EX/mem_rd] [get_bd_pins RV32I_MEM/mem_in_rd]
  connect_bd_net -net ex_mem_reg_1_mem_rd_we [get_bd_pins RV32I_EX/mem_rd_we] [get_bd_pins RV32I_MEM/mem_in_rd_we]
  connect_bd_net -net ex_mem_reg_1_mem_store_data [get_bd_pins RV32I_EX/mem_store_data] [get_bd_pins RV32I_MEM/mem_in_store_data]
  connect_bd_net -net ex_mem_reg_1_mem_valid [get_bd_pins RV32I_EX/mem_valid] [get_bd_pins RV32I_MEM/mem_in_valid]
  connect_bd_net -net ex_mem_reg_1_mem_wb_sel [get_bd_pins RV32I_EX/mem_wb_sel] [get_bd_pins RV32I_MEM/mem_in_wb_sel]
  connect_bd_net -net ex_mem_size_1 [get_bd_pins RV32I_EX/ex_mem_size] [get_bd_pins RV32I_ID/ex_mem_size]
  connect_bd_net -net ex_mem_unsigned_1 [get_bd_pins RV32I_EX/ex_mem_unsigned] [get_bd_pins RV32I_ID/ex_mem_unsigned]
  connect_bd_net -net ex_mem_we_1 [get_bd_pins RV32I_EX/ex_mem_we] [get_bd_pins RV32I_ID/ex_mem_we]
  connect_bd_net -net ex_op_b_sel_1 [get_bd_pins RV32I_EX/ex_op_b_sel] [get_bd_pins RV32I_ID/ex_op_b_sel]
  connect_bd_net -net ex_pc_plus4_1 [get_bd_pins RV32I_EX/ex_pc_plus4] [get_bd_pins RV32I_ID/ex_pc_plus4]
  connect_bd_net -net ex_rd_we_1 [get_bd_pins RV32I_EX/ex_rd_we] [get_bd_pins RV32I_ID/ex_rd_we]
  connect_bd_net -net ex_rs1_1 [get_bd_pins RV32I_EX/ex_rs1] [get_bd_pins RV32I_ID/ex_rs1]
  connect_bd_net -net ex_rs1_data_1 [get_bd_pins RV32I_EX/ex_rs1_data] [get_bd_pins RV32I_ID/ex_rs1_data]
  connect_bd_net -net ex_rs2_1 [get_bd_pins RV32I_EX/ex_rs2] [get_bd_pins RV32I_ID/ex_rs2]
  connect_bd_net -net ex_rs2_data_1 [get_bd_pins RV32I_EX/ex_rs2_data] [get_bd_pins RV32I_ID/ex_rs2_data]
  connect_bd_net -net ex_valid_1 [get_bd_pins RV32I_EX/ex_valid] [get_bd_pins RV32I_ID/ex_valid] [get_bd_pins load_use_detection_0/id_ex_valid]
  connect_bd_net -net ex_wb_sel_1 [get_bd_pins RV32I_EX/ex_wb_sel] [get_bd_pins RV32I_ID/ex_wb_sel]
  connect_bd_net -net flush_1 [get_bd_pins RV32I_IF/flush] [get_bd_pins priority_branch_OR_l_0/if_id_flush_final]
  connect_bd_net -net hold_1 [get_bd_pins RV32I_IF/hold] [get_bd_pins priority_branch_OR_l_0/if_id_hold_final]
  connect_bd_net -net load_use_detection_0_id_ex_flush [get_bd_pins load_use_detection_0/id_ex_flush] [get_bd_pins priority_branch_OR_l_0/load_use_id_ex_flush]
  connect_bd_net -net load_use_detection_0_if_id_hold [get_bd_pins load_use_detection_0/if_id_hold] [get_bd_pins priority_branch_OR_l_0/load_use_if_id_hold]
  connect_bd_net -net load_use_detection_0_load_use_hazard [get_bd_pins RV32I_ID/stall] [get_bd_pins ila_0/probe4] [get_bd_pins load_use_detection_0/load_use_hazard]
  connect_bd_net -net load_use_detection_0_pc_en [get_bd_pins load_use_detection_0/pc_en] [get_bd_pins priority_branch_OR_l_0/load_use_pc_en]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins RV32I_EX/mem_stage_data] [get_bd_pins RV32I_MEM/mem_forward_data]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins RV32I_EX/mem_stage_rd] [get_bd_pins RV32I_MEM/mem_rd]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins RV32I_EX/mem_stage_valid] [get_bd_pins RV32I_IF/Op1] [get_bd_pins RV32I_MEM/mem_valid]
  connect_bd_net -net mem_stage_rd_we_1 [get_bd_pins RV32I_EX/mem_stage_rd_we] [get_bd_pins RV32I_IF/Res]
  connect_bd_net -net mem_wb_reg_0_wb_alu_result [get_bd_pins RV32I_MEM/wb_alu_result] [get_bd_pins RV32I_WB/alu_y]
  connect_bd_net -net mem_wb_reg_0_wb_data [get_bd_pins RV32I_MEM/wb_data] [get_bd_pins RV32I_WB/load_data]
  connect_bd_net -net mem_wb_reg_0_wb_imm_u [get_bd_pins RV32I_MEM/wb_imm_u] [get_bd_pins RV32I_WB/imm_u]
  connect_bd_net -net mem_wb_reg_0_wb_pc_plus4 [get_bd_pins RV32I_MEM/wb_pc_plus4] [get_bd_pins RV32I_WB/pc_plus4]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins RV32I_EX/wb_rd] [get_bd_pins RV32I_ID/rd_addr] [get_bd_pins RV32I_MEM/wb_rd] [get_bd_pins ila_0/probe2]
  connect_bd_net -net mem_wb_reg_0_wb_sel [get_bd_pins RV32I_MEM/wb_sel] [get_bd_pins RV32I_WB/wb_sel]
  connect_bd_net -net mmio_0_cpu_rdata [get_bd_pins mem_data] [get_bd_pins RV32I_MEM/mem_data]
  connect_bd_net -net op_a_sel_1 [get_bd_pins RV32I_EX/op_a_sel] [get_bd_pins RV32I_ID/ex_op_a_sel]
  connect_bd_net -net pc_1 [get_bd_pins RV32I_EX/pc] [get_bd_pins RV32I_ID/ex_pc]
  connect_bd_net -net pc_en_1 [get_bd_pins RV32I_IF/pc_en] [get_bd_pins priority_branch_OR_l_0/pc_en_final]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins RV32I_EX/rst] [get_bd_pins RV32I_ID/rst] [get_bd_pins RV32I_IF/rst] [get_bd_pins RV32I_MEM/rst] [get_bd_pins ila_0/probe0]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins RV32I_EX/wb_rd_we] [get_bd_pins RV32I_ID/rd_we] [get_bd_pins RV32I_MEM/Res] [get_bd_pins ila_0/probe1]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins RV32I_EX/mem_wb_data] [get_bd_pins RV32I_ID/rd_wdata] [get_bd_pins RV32I_WB/rd_wdata] [get_bd_pins ila_0/probe3]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins RV32I_EX/clk] [get_bd_pins RV32I_ID/clk] [get_bd_pins RV32I_IF/clk] [get_bd_pins RV32I_MEM/clk] [get_bd_pins ila_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set gpio_out_0 [ create_bd_port -dir O -from 1 -to 0 gpio_out_0 ]

  # Create instance: Core_RV32I
  create_hier_cell_Core_RV32I [current_bd_instance .] Core_RV32I

  # Create instance: GPIO
  create_hier_cell_GPIO [current_bd_instance .] GPIO

  # Create instance: MMIO
  create_hier_cell_MMIO [current_bd_instance .] MMIO

  # Create instance: RV32I_RAM_MEMORY
  create_hier_cell_RV32I_RAM_MEMORY [current_bd_instance .] RV32I_RAM_MEMORY

  # Create instance: UART
  create_hier_cell_UART [current_bd_instance .] UART

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_2

  # Create instance: vio_0, and set properties
  set vio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 vio_0 ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
 ] $vio_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {8} \
   CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_0

  # Create instance: zynq_ultra_ps_e_0, and set properties
  set zynq_ultra_ps_e_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:zynq_ultra_ps_e:3.3 zynq_ultra_ps_e_0 ]
  set_property -dict [ list \
   CONFIG.CAN0_BOARD_INTERFACE {custom} \
   CONFIG.CAN1_BOARD_INTERFACE {custom} \
   CONFIG.CSU_BOARD_INTERFACE {custom} \
   CONFIG.DP_BOARD_INTERFACE {custom} \
   CONFIG.GEM0_BOARD_INTERFACE {custom} \
   CONFIG.GEM1_BOARD_INTERFACE {custom} \
   CONFIG.GEM2_BOARD_INTERFACE {custom} \
   CONFIG.GEM3_BOARD_INTERFACE {custom} \
   CONFIG.GPIO_BOARD_INTERFACE {custom} \
   CONFIG.IIC0_BOARD_INTERFACE {custom} \
   CONFIG.IIC1_BOARD_INTERFACE {custom} \
   CONFIG.NAND_BOARD_INTERFACE {custom} \
   CONFIG.PCIE_BOARD_INTERFACE {custom} \
   CONFIG.PJTAG_BOARD_INTERFACE {custom} \
   CONFIG.PMU_BOARD_INTERFACE {custom} \
   CONFIG.PSU_BANK_0_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_1_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_2_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_BANK_3_IO_STANDARD {LVCMOS18} \
   CONFIG.PSU_DDR_RAM_HIGHADDR {0xFFFFFFFF} \
   CONFIG.PSU_DDR_RAM_HIGHADDR_OFFSET {0x800000000} \
   CONFIG.PSU_DDR_RAM_LOWADDR_OFFSET {0x80000000} \
   CONFIG.PSU_DYNAMIC_DDR_CONFIG_EN {0} \
   CONFIG.PSU_IMPORT_BOARD_PRESET {} \
   CONFIG.PSU_MIO_0_DIRECTION {out} \
   CONFIG.PSU_MIO_0_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_0_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_0_POLARITY {Default} \
   CONFIG.PSU_MIO_0_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_0_SLEW {fast} \
   CONFIG.PSU_MIO_10_DIRECTION {inout} \
   CONFIG.PSU_MIO_10_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_10_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_10_POLARITY {Default} \
   CONFIG.PSU_MIO_10_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_10_SLEW {fast} \
   CONFIG.PSU_MIO_11_DIRECTION {inout} \
   CONFIG.PSU_MIO_11_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_11_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_11_POLARITY {Default} \
   CONFIG.PSU_MIO_11_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_11_SLEW {fast} \
   CONFIG.PSU_MIO_12_DIRECTION {out} \
   CONFIG.PSU_MIO_12_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_12_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_12_POLARITY {Default} \
   CONFIG.PSU_MIO_12_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_12_SLEW {fast} \
   CONFIG.PSU_MIO_13_DIRECTION {inout} \
   CONFIG.PSU_MIO_13_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_13_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_13_POLARITY {Default} \
   CONFIG.PSU_MIO_13_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_13_SLEW {fast} \
   CONFIG.PSU_MIO_14_DIRECTION {inout} \
   CONFIG.PSU_MIO_14_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_14_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_14_POLARITY {Default} \
   CONFIG.PSU_MIO_14_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_14_SLEW {fast} \
   CONFIG.PSU_MIO_15_DIRECTION {inout} \
   CONFIG.PSU_MIO_15_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_15_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_15_POLARITY {Default} \
   CONFIG.PSU_MIO_15_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_15_SLEW {fast} \
   CONFIG.PSU_MIO_16_DIRECTION {inout} \
   CONFIG.PSU_MIO_16_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_16_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_16_POLARITY {Default} \
   CONFIG.PSU_MIO_16_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_16_SLEW {fast} \
   CONFIG.PSU_MIO_17_DIRECTION {inout} \
   CONFIG.PSU_MIO_17_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_17_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_17_POLARITY {Default} \
   CONFIG.PSU_MIO_17_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_17_SLEW {fast} \
   CONFIG.PSU_MIO_18_DIRECTION {inout} \
   CONFIG.PSU_MIO_18_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_18_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_18_POLARITY {Default} \
   CONFIG.PSU_MIO_18_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_18_SLEW {fast} \
   CONFIG.PSU_MIO_19_DIRECTION {inout} \
   CONFIG.PSU_MIO_19_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_19_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_19_POLARITY {Default} \
   CONFIG.PSU_MIO_19_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_19_SLEW {fast} \
   CONFIG.PSU_MIO_1_DIRECTION {inout} \
   CONFIG.PSU_MIO_1_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_1_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_1_POLARITY {Default} \
   CONFIG.PSU_MIO_1_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_1_SLEW {fast} \
   CONFIG.PSU_MIO_20_DIRECTION {inout} \
   CONFIG.PSU_MIO_20_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_20_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_20_POLARITY {Default} \
   CONFIG.PSU_MIO_20_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_20_SLEW {fast} \
   CONFIG.PSU_MIO_21_DIRECTION {inout} \
   CONFIG.PSU_MIO_21_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_21_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_21_POLARITY {Default} \
   CONFIG.PSU_MIO_21_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_21_SLEW {fast} \
   CONFIG.PSU_MIO_22_DIRECTION {out} \
   CONFIG.PSU_MIO_22_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_22_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_22_POLARITY {Default} \
   CONFIG.PSU_MIO_22_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_22_SLEW {fast} \
   CONFIG.PSU_MIO_23_DIRECTION {out} \
   CONFIG.PSU_MIO_23_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_23_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_23_POLARITY {Default} \
   CONFIG.PSU_MIO_23_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_23_SLEW {fast} \
   CONFIG.PSU_MIO_24_DIRECTION {inout} \
   CONFIG.PSU_MIO_24_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_24_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_24_POLARITY {Default} \
   CONFIG.PSU_MIO_24_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_24_SLEW {fast} \
   CONFIG.PSU_MIO_25_DIRECTION {inout} \
   CONFIG.PSU_MIO_25_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_25_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_25_POLARITY {Default} \
   CONFIG.PSU_MIO_25_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_25_SLEW {fast} \
   CONFIG.PSU_MIO_26_DIRECTION {inout} \
   CONFIG.PSU_MIO_26_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_26_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_26_POLARITY {Default} \
   CONFIG.PSU_MIO_26_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_26_SLEW {fast} \
   CONFIG.PSU_MIO_27_DIRECTION {out} \
   CONFIG.PSU_MIO_27_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_27_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_27_POLARITY {Default} \
   CONFIG.PSU_MIO_27_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_27_SLEW {fast} \
   CONFIG.PSU_MIO_28_DIRECTION {in} \
   CONFIG.PSU_MIO_28_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_28_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_28_POLARITY {Default} \
   CONFIG.PSU_MIO_28_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_28_SLEW {fast} \
   CONFIG.PSU_MIO_29_DIRECTION {out} \
   CONFIG.PSU_MIO_29_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_29_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_29_POLARITY {Default} \
   CONFIG.PSU_MIO_29_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_29_SLEW {fast} \
   CONFIG.PSU_MIO_2_DIRECTION {inout} \
   CONFIG.PSU_MIO_2_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_2_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_2_POLARITY {Default} \
   CONFIG.PSU_MIO_2_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_2_SLEW {fast} \
   CONFIG.PSU_MIO_30_DIRECTION {in} \
   CONFIG.PSU_MIO_30_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_30_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_30_POLARITY {Default} \
   CONFIG.PSU_MIO_30_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_30_SLEW {fast} \
   CONFIG.PSU_MIO_31_DIRECTION {inout} \
   CONFIG.PSU_MIO_31_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_31_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_31_POLARITY {Default} \
   CONFIG.PSU_MIO_31_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_31_SLEW {fast} \
   CONFIG.PSU_MIO_32_DIRECTION {inout} \
   CONFIG.PSU_MIO_32_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_32_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_32_POLARITY {Default} \
   CONFIG.PSU_MIO_32_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_32_SLEW {fast} \
   CONFIG.PSU_MIO_33_DIRECTION {inout} \
   CONFIG.PSU_MIO_33_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_33_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_33_POLARITY {Default} \
   CONFIG.PSU_MIO_33_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_33_SLEW {fast} \
   CONFIG.PSU_MIO_34_DIRECTION {in} \
   CONFIG.PSU_MIO_34_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_34_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_34_POLARITY {Default} \
   CONFIG.PSU_MIO_34_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_34_SLEW {fast} \
   CONFIG.PSU_MIO_35_DIRECTION {out} \
   CONFIG.PSU_MIO_35_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_35_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_35_POLARITY {Default} \
   CONFIG.PSU_MIO_35_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_35_SLEW {fast} \
   CONFIG.PSU_MIO_36_DIRECTION {inout} \
   CONFIG.PSU_MIO_36_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_36_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_36_POLARITY {Default} \
   CONFIG.PSU_MIO_36_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_36_SLEW {fast} \
   CONFIG.PSU_MIO_37_DIRECTION {inout} \
   CONFIG.PSU_MIO_37_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_37_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_37_POLARITY {Default} \
   CONFIG.PSU_MIO_37_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_37_SLEW {fast} \
   CONFIG.PSU_MIO_38_DIRECTION {inout} \
   CONFIG.PSU_MIO_38_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_38_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_38_POLARITY {Default} \
   CONFIG.PSU_MIO_38_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_38_SLEW {fast} \
   CONFIG.PSU_MIO_39_DIRECTION {inout} \
   CONFIG.PSU_MIO_39_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_39_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_39_POLARITY {Default} \
   CONFIG.PSU_MIO_39_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_39_SLEW {fast} \
   CONFIG.PSU_MIO_3_DIRECTION {inout} \
   CONFIG.PSU_MIO_3_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_3_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_3_POLARITY {Default} \
   CONFIG.PSU_MIO_3_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_3_SLEW {fast} \
   CONFIG.PSU_MIO_40_DIRECTION {inout} \
   CONFIG.PSU_MIO_40_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_40_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_40_POLARITY {Default} \
   CONFIG.PSU_MIO_40_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_40_SLEW {fast} \
   CONFIG.PSU_MIO_41_DIRECTION {inout} \
   CONFIG.PSU_MIO_41_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_41_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_41_POLARITY {Default} \
   CONFIG.PSU_MIO_41_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_41_SLEW {fast} \
   CONFIG.PSU_MIO_42_DIRECTION {inout} \
   CONFIG.PSU_MIO_42_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_42_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_42_POLARITY {Default} \
   CONFIG.PSU_MIO_42_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_42_SLEW {fast} \
   CONFIG.PSU_MIO_43_DIRECTION {inout} \
   CONFIG.PSU_MIO_43_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_43_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_43_POLARITY {Default} \
   CONFIG.PSU_MIO_43_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_43_SLEW {fast} \
   CONFIG.PSU_MIO_44_DIRECTION {in} \
   CONFIG.PSU_MIO_44_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_44_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_44_POLARITY {Default} \
   CONFIG.PSU_MIO_44_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_44_SLEW {fast} \
   CONFIG.PSU_MIO_45_DIRECTION {in} \
   CONFIG.PSU_MIO_45_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_45_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_45_POLARITY {Default} \
   CONFIG.PSU_MIO_45_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_45_SLEW {fast} \
   CONFIG.PSU_MIO_46_DIRECTION {inout} \
   CONFIG.PSU_MIO_46_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_46_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_46_POLARITY {Default} \
   CONFIG.PSU_MIO_46_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_46_SLEW {fast} \
   CONFIG.PSU_MIO_47_DIRECTION {inout} \
   CONFIG.PSU_MIO_47_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_47_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_47_POLARITY {Default} \
   CONFIG.PSU_MIO_47_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_47_SLEW {fast} \
   CONFIG.PSU_MIO_48_DIRECTION {inout} \
   CONFIG.PSU_MIO_48_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_48_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_48_POLARITY {Default} \
   CONFIG.PSU_MIO_48_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_48_SLEW {fast} \
   CONFIG.PSU_MIO_49_DIRECTION {inout} \
   CONFIG.PSU_MIO_49_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_49_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_49_POLARITY {Default} \
   CONFIG.PSU_MIO_49_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_49_SLEW {fast} \
   CONFIG.PSU_MIO_4_DIRECTION {inout} \
   CONFIG.PSU_MIO_4_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_4_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_4_POLARITY {Default} \
   CONFIG.PSU_MIO_4_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_4_SLEW {fast} \
   CONFIG.PSU_MIO_50_DIRECTION {inout} \
   CONFIG.PSU_MIO_50_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_50_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_50_POLARITY {Default} \
   CONFIG.PSU_MIO_50_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_50_SLEW {fast} \
   CONFIG.PSU_MIO_51_DIRECTION {out} \
   CONFIG.PSU_MIO_51_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_51_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_51_POLARITY {Default} \
   CONFIG.PSU_MIO_51_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_51_SLEW {fast} \
   CONFIG.PSU_MIO_52_DIRECTION {in} \
   CONFIG.PSU_MIO_52_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_52_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_52_POLARITY {Default} \
   CONFIG.PSU_MIO_52_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_52_SLEW {fast} \
   CONFIG.PSU_MIO_53_DIRECTION {in} \
   CONFIG.PSU_MIO_53_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_53_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_53_POLARITY {Default} \
   CONFIG.PSU_MIO_53_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_53_SLEW {fast} \
   CONFIG.PSU_MIO_54_DIRECTION {inout} \
   CONFIG.PSU_MIO_54_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_54_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_54_POLARITY {Default} \
   CONFIG.PSU_MIO_54_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_54_SLEW {fast} \
   CONFIG.PSU_MIO_55_DIRECTION {in} \
   CONFIG.PSU_MIO_55_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_55_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_55_POLARITY {Default} \
   CONFIG.PSU_MIO_55_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_55_SLEW {fast} \
   CONFIG.PSU_MIO_56_DIRECTION {inout} \
   CONFIG.PSU_MIO_56_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_56_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_56_POLARITY {Default} \
   CONFIG.PSU_MIO_56_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_56_SLEW {fast} \
   CONFIG.PSU_MIO_57_DIRECTION {inout} \
   CONFIG.PSU_MIO_57_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_57_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_57_POLARITY {Default} \
   CONFIG.PSU_MIO_57_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_57_SLEW {fast} \
   CONFIG.PSU_MIO_58_DIRECTION {out} \
   CONFIG.PSU_MIO_58_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_58_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_58_POLARITY {Default} \
   CONFIG.PSU_MIO_58_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_58_SLEW {fast} \
   CONFIG.PSU_MIO_59_DIRECTION {inout} \
   CONFIG.PSU_MIO_59_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_59_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_59_POLARITY {Default} \
   CONFIG.PSU_MIO_59_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_59_SLEW {fast} \
   CONFIG.PSU_MIO_5_DIRECTION {out} \
   CONFIG.PSU_MIO_5_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_5_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_5_POLARITY {Default} \
   CONFIG.PSU_MIO_5_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_5_SLEW {fast} \
   CONFIG.PSU_MIO_60_DIRECTION {inout} \
   CONFIG.PSU_MIO_60_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_60_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_60_POLARITY {Default} \
   CONFIG.PSU_MIO_60_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_60_SLEW {fast} \
   CONFIG.PSU_MIO_61_DIRECTION {inout} \
   CONFIG.PSU_MIO_61_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_61_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_61_POLARITY {Default} \
   CONFIG.PSU_MIO_61_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_61_SLEW {fast} \
   CONFIG.PSU_MIO_62_DIRECTION {inout} \
   CONFIG.PSU_MIO_62_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_62_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_62_POLARITY {Default} \
   CONFIG.PSU_MIO_62_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_62_SLEW {fast} \
   CONFIG.PSU_MIO_63_DIRECTION {inout} \
   CONFIG.PSU_MIO_63_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_63_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_63_POLARITY {Default} \
   CONFIG.PSU_MIO_63_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_63_SLEW {fast} \
   CONFIG.PSU_MIO_64_DIRECTION {out} \
   CONFIG.PSU_MIO_64_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_64_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_64_POLARITY {Default} \
   CONFIG.PSU_MIO_64_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_64_SLEW {fast} \
   CONFIG.PSU_MIO_65_DIRECTION {out} \
   CONFIG.PSU_MIO_65_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_65_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_65_POLARITY {Default} \
   CONFIG.PSU_MIO_65_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_65_SLEW {fast} \
   CONFIG.PSU_MIO_66_DIRECTION {out} \
   CONFIG.PSU_MIO_66_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_66_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_66_POLARITY {Default} \
   CONFIG.PSU_MIO_66_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_66_SLEW {fast} \
   CONFIG.PSU_MIO_67_DIRECTION {out} \
   CONFIG.PSU_MIO_67_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_67_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_67_POLARITY {Default} \
   CONFIG.PSU_MIO_67_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_67_SLEW {fast} \
   CONFIG.PSU_MIO_68_DIRECTION {out} \
   CONFIG.PSU_MIO_68_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_68_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_68_POLARITY {Default} \
   CONFIG.PSU_MIO_68_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_68_SLEW {fast} \
   CONFIG.PSU_MIO_69_DIRECTION {out} \
   CONFIG.PSU_MIO_69_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_69_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_69_POLARITY {Default} \
   CONFIG.PSU_MIO_69_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_69_SLEW {fast} \
   CONFIG.PSU_MIO_6_DIRECTION {inout} \
   CONFIG.PSU_MIO_6_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_6_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_6_POLARITY {Default} \
   CONFIG.PSU_MIO_6_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_6_SLEW {fast} \
   CONFIG.PSU_MIO_70_DIRECTION {in} \
   CONFIG.PSU_MIO_70_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_70_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_70_POLARITY {Default} \
   CONFIG.PSU_MIO_70_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_70_SLEW {fast} \
   CONFIG.PSU_MIO_71_DIRECTION {in} \
   CONFIG.PSU_MIO_71_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_71_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_71_POLARITY {Default} \
   CONFIG.PSU_MIO_71_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_71_SLEW {fast} \
   CONFIG.PSU_MIO_72_DIRECTION {in} \
   CONFIG.PSU_MIO_72_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_72_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_72_POLARITY {Default} \
   CONFIG.PSU_MIO_72_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_72_SLEW {fast} \
   CONFIG.PSU_MIO_73_DIRECTION {in} \
   CONFIG.PSU_MIO_73_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_73_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_73_POLARITY {Default} \
   CONFIG.PSU_MIO_73_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_73_SLEW {fast} \
   CONFIG.PSU_MIO_74_DIRECTION {in} \
   CONFIG.PSU_MIO_74_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_74_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_74_POLARITY {Default} \
   CONFIG.PSU_MIO_74_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_74_SLEW {fast} \
   CONFIG.PSU_MIO_75_DIRECTION {in} \
   CONFIG.PSU_MIO_75_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_75_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_75_POLARITY {Default} \
   CONFIG.PSU_MIO_75_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_75_SLEW {fast} \
   CONFIG.PSU_MIO_76_DIRECTION {out} \
   CONFIG.PSU_MIO_76_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_76_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_76_POLARITY {Default} \
   CONFIG.PSU_MIO_76_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_76_SLEW {fast} \
   CONFIG.PSU_MIO_77_DIRECTION {inout} \
   CONFIG.PSU_MIO_77_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_77_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_77_POLARITY {Default} \
   CONFIG.PSU_MIO_77_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_77_SLEW {fast} \
   CONFIG.PSU_MIO_7_DIRECTION {out} \
   CONFIG.PSU_MIO_7_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_7_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_7_POLARITY {Default} \
   CONFIG.PSU_MIO_7_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_7_SLEW {fast} \
   CONFIG.PSU_MIO_8_DIRECTION {inout} \
   CONFIG.PSU_MIO_8_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_8_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_8_POLARITY {Default} \
   CONFIG.PSU_MIO_8_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_8_SLEW {fast} \
   CONFIG.PSU_MIO_9_DIRECTION {inout} \
   CONFIG.PSU_MIO_9_DRIVE_STRENGTH {12} \
   CONFIG.PSU_MIO_9_INPUT_TYPE {cmos} \
   CONFIG.PSU_MIO_9_POLARITY {Default} \
   CONFIG.PSU_MIO_9_PULLUPDOWN {pullup} \
   CONFIG.PSU_MIO_9_SLEW {fast} \
   CONFIG.PSU_MIO_TREE_PERIPHERALS {Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#GPIO0 MIO#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#Quad SPI Flash#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#SD 0#I2C 1#I2C 1#GPIO1 MIO#DPAUX#DPAUX#DPAUX#DPAUX#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#UART 0#UART 0#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#GPIO1 MIO#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#SD 1#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#USB 0#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#Gem 3#MDIO 3#MDIO 3} \
   CONFIG.PSU_MIO_TREE_SIGNALS {sclk_out#miso_mo1#mo2#mo3#mosi_mi0#n_ss_out#gpio0[6]#n_ss_out_upper#mo_upper[0]#mo_upper[1]#mo_upper[2]#mo_upper[3]#sclk_out_upper#sdio0_data_out[0]#sdio0_data_out[1]#sdio0_data_out[2]#sdio0_data_out[3]#sdio0_data_out[4]#sdio0_data_out[5]#sdio0_data_out[6]#sdio0_data_out[7]#sdio0_cmd_out#sdio0_clk_out#sdio0_bus_pow#scl_out#sda_out#gpio1[26]#dp_aux_data_out#dp_hot_plug_detect#dp_aux_data_oe#dp_aux_data_in#gpio1[31]#gpio1[32]#gpio1[33]#rxd#txd#gpio1[36]#gpio1[37]#gpio1[38]#gpio1[39]#gpio1[40]#gpio1[41]#gpio1[42]#gpio1[43]#sdio1_wp#sdio1_cd_n#sdio1_data_out[0]#sdio1_data_out[1]#sdio1_data_out[2]#sdio1_data_out[3]#sdio1_cmd_out#sdio1_clk_out#ulpi_clk_in#ulpi_dir#ulpi_tx_data[2]#ulpi_nxt#ulpi_tx_data[0]#ulpi_tx_data[1]#ulpi_stp#ulpi_tx_data[3]#ulpi_tx_data[4]#ulpi_tx_data[5]#ulpi_tx_data[6]#ulpi_tx_data[7]#rgmii_tx_clk#rgmii_txd[0]#rgmii_txd[1]#rgmii_txd[2]#rgmii_txd[3]#rgmii_tx_ctl#rgmii_rx_clk#rgmii_rxd[0]#rgmii_rxd[1]#rgmii_rxd[2]#rgmii_rxd[3]#rgmii_rx_ctl#gem3_mdc#gem3_mdio_out} \
   CONFIG.PSU_PERIPHERAL_BOARD_PRESET {} \
   CONFIG.PSU_SD0_INTERNAL_BUS_WIDTH {8} \
   CONFIG.PSU_SD1_INTERNAL_BUS_WIDTH {4} \
   CONFIG.PSU_SMC_CYCLE_T0 {NA} \
   CONFIG.PSU_SMC_CYCLE_T1 {NA} \
   CONFIG.PSU_SMC_CYCLE_T2 {NA} \
   CONFIG.PSU_SMC_CYCLE_T3 {NA} \
   CONFIG.PSU_SMC_CYCLE_T4 {NA} \
   CONFIG.PSU_SMC_CYCLE_T5 {NA} \
   CONFIG.PSU_SMC_CYCLE_T6 {NA} \
   CONFIG.PSU_USB3__DUAL_CLOCK_ENABLE {1} \
   CONFIG.PSU_VALUE_SILVERSION {3} \
   CONFIG.PSU__ACPU0__POWER__ON {1} \
   CONFIG.PSU__ACPU1__POWER__ON {1} \
   CONFIG.PSU__ACPU2__POWER__ON {1} \
   CONFIG.PSU__ACPU3__POWER__ON {1} \
   CONFIG.PSU__ACTUAL__IP {1} \
   CONFIG.PSU__ACT_DDR_FREQ_MHZ {1199.988037} \
   CONFIG.PSU__AFI0_COHERENCY {0} \
   CONFIG.PSU__AFI1_COHERENCY {0} \
   CONFIG.PSU__AUX_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__CAN0_LOOP_CAN1__ENABLE {0} \
   CONFIG.PSU__CAN0__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__CAN0__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__CAN1__GRP_CLK__ENABLE {0} \
   CONFIG.PSU__CAN1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__ACT_FREQMHZ {1199.988037} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__FREQMHZ {1200} \
   CONFIG.PSU__CRF_APB__ACPU_CTRL__SRCSEL {APLL} \
   CONFIG.PSU__CRF_APB__ACPU__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI0_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI0_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI1_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI1_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI2_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI2_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI3_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI3_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI4_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI4_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__ACT_FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__FREQMHZ {667} \
   CONFIG.PSU__CRF_APB__AFI5_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__AFI5_REF__ENABLE {0} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__APLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__APLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__APLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__APM_CTRL__ACT_FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRF_APB__APM_CTRL__FREQMHZ {1} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_FPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TRACE_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__DBG_TSTMP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__FREQMHZ {1200} \
   CONFIG.PSU__CRF_APB__DDR_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__DPDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__DPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__DPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__DPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__ACT_FREQMHZ {24.999750} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR0 {16} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__FREQMHZ {25} \
   CONFIG.PSU__CRF_APB__DP_AUDIO_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_AUDIO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__ACT_FREQMHZ {26.666401} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__FREQMHZ {27} \
   CONFIG.PSU__CRF_APB__DP_STC_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__ACT_FREQMHZ {299.997009} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRF_APB__DP_VIDEO_REF_CTRL__SRCSEL {VPLL} \
   CONFIG.PSU__CRF_APB__DP_VIDEO__FRAC_ENABLED {0} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GDMA_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__ACT_FREQMHZ {599.994019} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__FREQMHZ {600} \
   CONFIG.PSU__CRF_APB__GPU_REF_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__ACT_FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__DIVISOR0 {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__FREQMHZ {-1} \
   CONFIG.PSU__CRF_APB__GTGREF0_REF_CTRL__SRCSEL {NA} \
   CONFIG.PSU__CRF_APB__GTGREF0__ENABLE {NA} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__PCIE_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__DIVISOR0 {2} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRF_APB__SATA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRF_APB__TOPSW_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__ACT_FREQMHZ {399.996002} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__FREQMHZ {533.333} \
   CONFIG.PSU__CRF_APB__TOPSW_MAIN_CTRL__SRCSEL {DPLL} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRF_APB__VPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRF_APB__VPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRF_APB__VPLL_TO_LPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__ADMA_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__AFI6_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__AFI6__ENABLE {0} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__ACT_FREQMHZ {49.999500} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR0 {30} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__FREQMHZ {50} \
   CONFIG.PSU__CRL_APB__AMS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__CAN1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__CPU_R5_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__ACT_FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__FREQMHZ {180} \
   CONFIG.PSU__CRL_APB__CSU_PLL_CTRL__SRCSEL {SysOsc} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__DBG_LPD_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__ACT_FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__FREQMHZ {1000} \
   CONFIG.PSU__CRL_APB__DEBUG_R5_ATCLK_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__ACT_FREQMHZ {1499.984985} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__FREQMHZ {1500} \
   CONFIG.PSU__CRL_APB__DLL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__ACT_FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM2_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__ACT_FREQMHZ {124.998749} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR0 {12} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__FREQMHZ {125} \
   CONFIG.PSU__CRL_APB__GEM3_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__GEM_TSU_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__I2C1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FBDIV {90} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__IOPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__IOPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__IOPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__ACT_FREQMHZ {239.997604} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__FREQMHZ {267} \
   CONFIG.PSU__CRL_APB__IOU_SWITCH_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__LPD_LSBUS_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__ACT_FREQMHZ {499.994995} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__LPD_SWITCH_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__NAND_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__ACT_FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__FREQMHZ {500} \
   CONFIG.PSU__CRL_APB__OCM_MAIN_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__ACT_FREQMHZ {187.498123} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__PCAP_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__ACT_FREQMHZ {9.999900} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR0 {60} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__DIVISOR1 {2} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__FREQMHZ {10} \
   CONFIG.PSU__CRL_APB__PL0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__ACT_FREQMHZ {149.998505} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR0 {8} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__FREQMHZ {150} \
   CONFIG.PSU__CRL_APB__PL1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL2_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__ACT_FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR0 {4} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__PL3_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__ACT_FREQMHZ {299.997009} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR0 {5} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__FREQMHZ {300} \
   CONFIG.PSU__CRL_APB__QSPI_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__DIV2 {1} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FBDIV {72} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACDATA {0.000000} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__FRACFREQ {27.138} \
   CONFIG.PSU__CRL_APB__RPLL_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__RPLL_FRAC_CFG__ENABLED {0} \
   CONFIG.PSU__CRL_APB__RPLL_TO_FPD_CTRL__DIVISOR0 {3} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__ACT_FREQMHZ {199.998001} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SDIO1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__ACT_FREQMHZ {214} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI0_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__ACT_FREQMHZ {214} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR0 {7} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__FREQMHZ {200} \
   CONFIG.PSU__CRL_APB__SPI1_REF_CTRL__SRCSEL {RPLL} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__ACT_FREQMHZ {33.333000} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__DIVISOR0 {1} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__TIMESTAMP_REF_CTRL__SRCSEL {PSS_REF_CLK} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART0_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR0 {15} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__FREQMHZ {100} \
   CONFIG.PSU__CRL_APB__UART1_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__ACT_FREQMHZ {249.997498} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB0_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__ACT_FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR0 {6} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__DIVISOR1 {1} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__FREQMHZ {250} \
   CONFIG.PSU__CRL_APB__USB1_BUS_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__ACT_FREQMHZ {19.999800} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR0 {25} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__DIVISOR1 {3} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__FREQMHZ {20} \
   CONFIG.PSU__CRL_APB__USB3_DUAL_REF_CTRL__SRCSEL {IOPLL} \
   CONFIG.PSU__CRL_APB__USB3__ENABLE {1} \
   CONFIG.PSU__CSUPMU__PERIPHERAL__VALID {0} \
   CONFIG.PSU__CSU_COHERENCY {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_0__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_10__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_11__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_12__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_1__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_2__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_3__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_4__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_5__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_6__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_7__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_8__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ENABLE {0} \
   CONFIG.PSU__CSU__CSU_TAMPER_9__ERASE_BBRAM {0} \
   CONFIG.PSU__CSU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__DDRC__ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__AL {0} \
   CONFIG.PSU__DDRC__BANK_ADDR_COUNT {2} \
   CONFIG.PSU__DDRC__BG_ADDR_COUNT {1} \
   CONFIG.PSU__DDRC__BRC_MAPPING {ROW_BANK_COL} \
   CONFIG.PSU__DDRC__BUS_WIDTH {64 Bit} \
   CONFIG.PSU__DDRC__CL {16} \
   CONFIG.PSU__DDRC__CLOCK_STOP_EN {0} \
   CONFIG.PSU__DDRC__COL_ADDR_COUNT {10} \
   CONFIG.PSU__DDRC__COMPONENTS {Components} \
   CONFIG.PSU__DDRC__CWL {12} \
   CONFIG.PSU__DDRC__DDR3L_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__DDR4_ADDR_MAPPING {1} \
   CONFIG.PSU__DDRC__DDR4_CAL_MODE_ENABLE {0} \
   CONFIG.PSU__DDRC__DDR4_CRC_CONTROL {0} \
   CONFIG.PSU__DDRC__DDR4_MAXPWR_SAVING_EN {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_MODE {0} \
   CONFIG.PSU__DDRC__DDR4_T_REF_RANGE {Normal (0-85)} \
   CONFIG.PSU__DDRC__DEEP_PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__DEVICE_CAPACITY {8192 MBits} \
   CONFIG.PSU__DDRC__DIMM_ADDR_MIRROR {0} \
   CONFIG.PSU__DDRC__DM_DBI {DM_NO_DBI} \
   CONFIG.PSU__DDRC__DQMAP_0_3 {0} \
   CONFIG.PSU__DDRC__DQMAP_12_15 {0} \
   CONFIG.PSU__DDRC__DQMAP_16_19 {0} \
   CONFIG.PSU__DDRC__DQMAP_20_23 {0} \
   CONFIG.PSU__DDRC__DQMAP_24_27 {0} \
   CONFIG.PSU__DDRC__DQMAP_28_31 {0} \
   CONFIG.PSU__DDRC__DQMAP_32_35 {0} \
   CONFIG.PSU__DDRC__DQMAP_36_39 {0} \
   CONFIG.PSU__DDRC__DQMAP_40_43 {0} \
   CONFIG.PSU__DDRC__DQMAP_44_47 {0} \
   CONFIG.PSU__DDRC__DQMAP_48_51 {0} \
   CONFIG.PSU__DDRC__DQMAP_4_7 {0} \
   CONFIG.PSU__DDRC__DQMAP_52_55 {0} \
   CONFIG.PSU__DDRC__DQMAP_56_59 {0} \
   CONFIG.PSU__DDRC__DQMAP_60_63 {0} \
   CONFIG.PSU__DDRC__DQMAP_64_67 {0} \
   CONFIG.PSU__DDRC__DQMAP_68_71 {0} \
   CONFIG.PSU__DDRC__DQMAP_8_11 {0} \
   CONFIG.PSU__DDRC__DRAM_WIDTH {16 Bits} \
   CONFIG.PSU__DDRC__ECC {Disabled} \
   CONFIG.PSU__DDRC__ECC_SCRUB {0} \
   CONFIG.PSU__DDRC__ENABLE {1} \
   CONFIG.PSU__DDRC__ENABLE_2T_TIMING {0} \
   CONFIG.PSU__DDRC__ENABLE_DP_SWITCH {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_HAS_ECC_COMP {0} \
   CONFIG.PSU__DDRC__ENABLE_LP4_SLOWBOOT {0} \
   CONFIG.PSU__DDRC__EN_2ND_CLK {0} \
   CONFIG.PSU__DDRC__FGRM {1X} \
   CONFIG.PSU__DDRC__FREQ_MHZ {1} \
   CONFIG.PSU__DDRC__LPDDR3_DUALRANK_SDP {0} \
   CONFIG.PSU__DDRC__LPDDR3_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LPDDR4_T_REF_RANGE {NA} \
   CONFIG.PSU__DDRC__LP_ASR {manual normal} \
   CONFIG.PSU__DDRC__MEMORY_TYPE {DDR 4} \
   CONFIG.PSU__DDRC__PARITY_ENABLE {0} \
   CONFIG.PSU__DDRC__PER_BANK_REFRESH {0} \
   CONFIG.PSU__DDRC__PHY_DBI_MODE {0} \
   CONFIG.PSU__DDRC__PLL_BYPASS {0} \
   CONFIG.PSU__DDRC__PWR_DOWN_EN {0} \
   CONFIG.PSU__DDRC__RANK_ADDR_COUNT {0} \
   CONFIG.PSU__DDRC__RD_DQS_CENTER {0} \
   CONFIG.PSU__DDRC__ROW_ADDR_COUNT {16} \
   CONFIG.PSU__DDRC__SB_TARGET {16-16-16} \
   CONFIG.PSU__DDRC__SELF_REF_ABORT {0} \
   CONFIG.PSU__DDRC__SPEED_BIN {DDR4_2400R} \
   CONFIG.PSU__DDRC__STATIC_RD_MODE {0} \
   CONFIG.PSU__DDRC__TRAIN_DATA_EYE {1} \
   CONFIG.PSU__DDRC__TRAIN_READ_GATE {1} \
   CONFIG.PSU__DDRC__TRAIN_WRITE_LEVEL {1} \
   CONFIG.PSU__DDRC__T_FAW {30.0} \
   CONFIG.PSU__DDRC__T_RAS_MIN {32.0} \
   CONFIG.PSU__DDRC__T_RC {45.32} \
   CONFIG.PSU__DDRC__T_RCD {16} \
   CONFIG.PSU__DDRC__T_RP {16} \
   CONFIG.PSU__DDRC__VENDOR_PART {OTHERS} \
   CONFIG.PSU__DDRC__VIDEO_BUFFER_SIZE {0} \
   CONFIG.PSU__DDRC__VREF {1} \
   CONFIG.PSU__DDR_HIGH_ADDRESS_GUI_ENABLE {1} \
   CONFIG.PSU__DDR_QOS_ENABLE {0} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_FIX_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP0_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP1_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP2_WRQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_RDQOS {} \
   CONFIG.PSU__DDR_QOS_HP3_WRQOS {} \
   CONFIG.PSU__DDR_QOS_RD_HPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_RD_LPR_THRSHLD {} \
   CONFIG.PSU__DDR_QOS_WR_THRSHLD {} \
   CONFIG.PSU__DDR_SW_REFRESH_ENABLED {1} \
   CONFIG.PSU__DDR__INTERFACE__FREQMHZ {600.000} \
   CONFIG.PSU__DEVICE_TYPE {EV} \
   CONFIG.PSU__DISPLAYPORT__LANE0__ENABLE {1} \
   CONFIG.PSU__DISPLAYPORT__LANE0__IO {GT Lane3} \
   CONFIG.PSU__DISPLAYPORT__LANE1__ENABLE {0} \
   CONFIG.PSU__DISPLAYPORT__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__DLL__ISUSED {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__DPAUX__PERIPHERAL__IO {MIO 27 .. 30} \
   CONFIG.PSU__DP__LANE_SEL {Single Higher} \
   CONFIG.PSU__DP__REF_CLK_FREQ {108} \
   CONFIG.PSU__DP__REF_CLK_SEL {Ref Clk3} \
   CONFIG.PSU__ENABLE__DDR__REFRESH__SIGNALS {0} \
   CONFIG.PSU__ENET0__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET0__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET0__PTP__ENABLE {0} \
   CONFIG.PSU__ENET0__TSU__ENABLE {0} \
   CONFIG.PSU__ENET1__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET1__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET1__PTP__ENABLE {0} \
   CONFIG.PSU__ENET1__TSU__ENABLE {0} \
   CONFIG.PSU__ENET2__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET2__GRP_MDIO__ENABLE {0} \
   CONFIG.PSU__ENET2__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__ENET2__PTP__ENABLE {0} \
   CONFIG.PSU__ENET2__TSU__ENABLE {0} \
   CONFIG.PSU__ENET3__FIFO__ENABLE {0} \
   CONFIG.PSU__ENET3__GRP_MDIO__ENABLE {1} \
   CONFIG.PSU__ENET3__GRP_MDIO__IO {MIO 76 .. 77} \
   CONFIG.PSU__ENET3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__ENET3__PERIPHERAL__IO {MIO 64 .. 75} \
   CONFIG.PSU__ENET3__PTP__ENABLE {0} \
   CONFIG.PSU__ENET3__TSU__ENABLE {0} \
   CONFIG.PSU__EN_AXI_STATUS_PORTS {0} \
   CONFIG.PSU__EN_EMIO_TRACE {0} \
   CONFIG.PSU__EP__IP {0} \
   CONFIG.PSU__EXPAND__CORESIGHT {0} \
   CONFIG.PSU__EXPAND__FPD_SLAVES {0} \
   CONFIG.PSU__EXPAND__GIC {0} \
   CONFIG.PSU__EXPAND__LOWER_LPS_SLAVES {0} \
   CONFIG.PSU__EXPAND__UPPER_LPS_SLAVES {0} \
   CONFIG.PSU__FPDMASTERS_COHERENCY {0} \
   CONFIG.PSU__FPD_SLCR__WDT1__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__FPD_SLCR__WDT1__FREQMHZ {99.999001} \
   CONFIG.PSU__FPD_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__FPGA_PL0_ENABLE {1} \
   CONFIG.PSU__FPGA_PL1_ENABLE {1} \
   CONFIG.PSU__FPGA_PL2_ENABLE {0} \
   CONFIG.PSU__FPGA_PL3_ENABLE {0} \
   CONFIG.PSU__FP__POWER__ON {1} \
   CONFIG.PSU__FTM__CTI_IN_0 {0} \
   CONFIG.PSU__FTM__CTI_IN_1 {0} \
   CONFIG.PSU__FTM__CTI_IN_2 {0} \
   CONFIG.PSU__FTM__CTI_IN_3 {0} \
   CONFIG.PSU__FTM__CTI_OUT_0 {0} \
   CONFIG.PSU__FTM__CTI_OUT_1 {0} \
   CONFIG.PSU__FTM__CTI_OUT_2 {0} \
   CONFIG.PSU__FTM__CTI_OUT_3 {0} \
   CONFIG.PSU__FTM__GPI {0} \
   CONFIG.PSU__FTM__GPO {0} \
   CONFIG.PSU__GEM0_COHERENCY {0} \
   CONFIG.PSU__GEM0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM1_COHERENCY {0} \
   CONFIG.PSU__GEM1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM2_COHERENCY {0} \
   CONFIG.PSU__GEM2_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM3_COHERENCY {0} \
   CONFIG.PSU__GEM3_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__GEM__TSU__ENABLE {0} \
   CONFIG.PSU__GEN_IPI_0__MASTER {APU} \
   CONFIG.PSU__GEN_IPI_10__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_1__MASTER {RPU0} \
   CONFIG.PSU__GEN_IPI_2__MASTER {RPU1} \
   CONFIG.PSU__GEN_IPI_3__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_4__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_5__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_6__MASTER {PMU} \
   CONFIG.PSU__GEN_IPI_7__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_8__MASTER {NONE} \
   CONFIG.PSU__GEN_IPI_9__MASTER {NONE} \
   CONFIG.PSU__GPIO0_MIO__IO {MIO 0 .. 25} \
   CONFIG.PSU__GPIO0_MIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO1_MIO__IO {MIO 26 .. 51} \
   CONFIG.PSU__GPIO1_MIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO2_MIO__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__GPIO_EMIO_WIDTH {95} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__GPIO_EMIO__PERIPHERAL__IO {95} \
   CONFIG.PSU__GPIO_EMIO__WIDTH {[94:0]} \
   CONFIG.PSU__GPU_PP0__POWER__ON {1} \
   CONFIG.PSU__GPU_PP1__POWER__ON {1} \
   CONFIG.PSU__GT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__GT__LINK_SPEED {HBR} \
   CONFIG.PSU__GT__PRE_EMPH_LVL_4 {0} \
   CONFIG.PSU__GT__VLT_SWNG_LVL_4 {0} \
   CONFIG.PSU__HIGH_ADDRESS__ENABLE {1} \
   CONFIG.PSU__HPM0_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM0_LPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_READ_THREADS {4} \
   CONFIG.PSU__HPM1_FPD__NUM_WRITE_THREADS {4} \
   CONFIG.PSU__I2C0_LOOP_I2C1__ENABLE {0} \
   CONFIG.PSU__I2C0__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C0__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__I2C1__GRP_INT__ENABLE {0} \
   CONFIG.PSU__I2C1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__I2C1__PERIPHERAL__IO {MIO 24 .. 25} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC0_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC1_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC2_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__IOU_TTC_APB_CLK__TTC3_SEL {APB} \
   CONFIG.PSU__IOU_SLCR__TTC0__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC0__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC1__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC2__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__ACT_FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__TTC3__FREQMHZ {100.000000} \
   CONFIG.PSU__IOU_SLCR__WDT0__ACT_FREQMHZ {99.999001} \
   CONFIG.PSU__IOU_SLCR__WDT0__FREQMHZ {99.999001} \
   CONFIG.PSU__IOU_SLCR__WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__IRQ_P2F_ADMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_AIB_AXI__INT {0} \
   CONFIG.PSU__IRQ_P2F_AMS__INT {0} \
   CONFIG.PSU__IRQ_P2F_APM_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_COMM__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CPUMNT__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_CTI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_EXTERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_L2ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_PMU__INT {0} \
   CONFIG.PSU__IRQ_P2F_APU_REGS__INT {0} \
   CONFIG.PSU__IRQ_P2F_ATB_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN0__INT {0} \
   CONFIG.PSU__IRQ_P2F_CAN1__INT {0} \
   CONFIG.PSU__IRQ_P2F_CLKMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSUPMU_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_CSU__INT {0} \
   CONFIG.PSU__IRQ_P2F_DDR_SS__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPDMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_DPORT__INT {0} \
   CONFIG.PSU__IRQ_P2F_EFUSE__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT0__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT1__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT2__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_ENT3__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_FPD_ATB_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_FP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_GDMA_CHAN__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPIO__INT {0} \
   CONFIG.PSU__IRQ_P2F_GPU__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C0__INT {0} \
   CONFIG.PSU__IRQ_P2F_I2C1__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APB__INT {0} \
   CONFIG.PSU__IRQ_P2F_LPD_APM__INT {0} \
   CONFIG.PSU__IRQ_P2F_LP_WDT__INT {0} \
   CONFIG.PSU__IRQ_P2F_NAND__INT {0} \
   CONFIG.PSU__IRQ_P2F_OCM_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_DMA__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_LEGACY__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSC__INT {0} \
   CONFIG.PSU__IRQ_P2F_PCIE_MSI__INT {0} \
   CONFIG.PSU__IRQ_P2F_PL_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_QSPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE0_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_R5_CORE1_ECC_ERR__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_IPI__INT {0} \
   CONFIG.PSU__IRQ_P2F_RPU_PERMON__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_ALARM__INT {0} \
   CONFIG.PSU__IRQ_P2F_RTC_SECONDS__INT {0} \
   CONFIG.PSU__IRQ_P2F_SATA__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1_WAKE__INT {0} \
   CONFIG.PSU__IRQ_P2F_SDIO1__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI0__INT {0} \
   CONFIG.PSU__IRQ_P2F_SPI1__INT {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC0__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC1__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC2__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_TTC3__INT2 {0} \
   CONFIG.PSU__IRQ_P2F_UART0__INT {0} \
   CONFIG.PSU__IRQ_P2F_UART1__INT {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_ENDPOINT__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT0 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_OTG__INT1 {0} \
   CONFIG.PSU__IRQ_P2F_USB3_PMU_WAKEUP__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_FPD__INT {0} \
   CONFIG.PSU__IRQ_P2F_XMPU_LPD__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_FPD_SMMU__INT {0} \
   CONFIG.PSU__IRQ_P2F__INTF_PPD_CCI__INT {0} \
   CONFIG.PSU__L2_BANK0__POWER__ON {1} \
   CONFIG.PSU__LPDMA0_COHERENCY {0} \
   CONFIG.PSU__LPDMA1_COHERENCY {0} \
   CONFIG.PSU__LPDMA2_COHERENCY {0} \
   CONFIG.PSU__LPDMA3_COHERENCY {0} \
   CONFIG.PSU__LPDMA4_COHERENCY {0} \
   CONFIG.PSU__LPDMA5_COHERENCY {0} \
   CONFIG.PSU__LPDMA6_COHERENCY {0} \
   CONFIG.PSU__LPDMA7_COHERENCY {0} \
   CONFIG.PSU__LPD_SLCR__CSUPMU_WDT_CLK_SEL__SELECT {APB} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__ACT_FREQMHZ {100} \
   CONFIG.PSU__LPD_SLCR__CSUPMU__FREQMHZ {100} \
   CONFIG.PSU__MAXIGP0__DATA_WIDTH {32} \
   CONFIG.PSU__MAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__MAXIGP2__DATA_WIDTH {32} \
   CONFIG.PSU__M_AXI_GP0_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP1_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__M_AXI_GP2_SUPPORTS_NARROW_BURST {1} \
   CONFIG.PSU__NAND_COHERENCY {0} \
   CONFIG.PSU__NAND_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__NAND__CHIP_ENABLE__ENABLE {0} \
   CONFIG.PSU__NAND__DATA_STROBE__ENABLE {0} \
   CONFIG.PSU__NAND__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__NAND__READY0_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY1_BUSY__ENABLE {0} \
   CONFIG.PSU__NAND__READY_BUSY__ENABLE {0} \
   CONFIG.PSU__NUM_FABRIC_RESETS {1} \
   CONFIG.PSU__OCM_BANK0__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK1__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK2__POWER__ON {1} \
   CONFIG.PSU__OCM_BANK3__POWER__ON {1} \
   CONFIG.PSU__OVERRIDE_HPX_QOS {0} \
   CONFIG.PSU__OVERRIDE__BASIC_CLOCK {0} \
   CONFIG.PSU__PCIE__ACS_VIOLAION {0} \
   CONFIG.PSU__PCIE__ACS_VIOLATION {0} \
   CONFIG.PSU__PCIE__AER_CAPABILITY {0} \
   CONFIG.PSU__PCIE__ATOMICOP_EGRESS_BLOCKED {0} \
   CONFIG.PSU__PCIE__BAR0_64BIT {0} \
   CONFIG.PSU__PCIE__BAR0_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR0_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR0_VAL {} \
   CONFIG.PSU__PCIE__BAR1_64BIT {0} \
   CONFIG.PSU__PCIE__BAR1_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR1_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR1_VAL {} \
   CONFIG.PSU__PCIE__BAR2_64BIT {0} \
   CONFIG.PSU__PCIE__BAR2_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR2_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR2_VAL {} \
   CONFIG.PSU__PCIE__BAR3_64BIT {0} \
   CONFIG.PSU__PCIE__BAR3_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR3_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR3_VAL {} \
   CONFIG.PSU__PCIE__BAR4_64BIT {0} \
   CONFIG.PSU__PCIE__BAR4_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR4_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR4_VAL {} \
   CONFIG.PSU__PCIE__BAR5_64BIT {0} \
   CONFIG.PSU__PCIE__BAR5_ENABLE {0} \
   CONFIG.PSU__PCIE__BAR5_PREFETCHABLE {0} \
   CONFIG.PSU__PCIE__BAR5_VAL {} \
   CONFIG.PSU__PCIE__CLASS_CODE_BASE {} \
   CONFIG.PSU__PCIE__CLASS_CODE_INTERFACE {} \
   CONFIG.PSU__PCIE__CLASS_CODE_SUB {} \
   CONFIG.PSU__PCIE__CLASS_CODE_VALUE {} \
   CONFIG.PSU__PCIE__COMPLETER_ABORT {0} \
   CONFIG.PSU__PCIE__COMPLTION_TIMEOUT {0} \
   CONFIG.PSU__PCIE__CORRECTABLE_INT_ERR {0} \
   CONFIG.PSU__PCIE__CRS_SW_VISIBILITY {0} \
   CONFIG.PSU__PCIE__DEVICE_ID {} \
   CONFIG.PSU__PCIE__ECRC_CHECK {0} \
   CONFIG.PSU__PCIE__ECRC_ERR {0} \
   CONFIG.PSU__PCIE__ECRC_GEN {0} \
   CONFIG.PSU__PCIE__EROM_ENABLE {0} \
   CONFIG.PSU__PCIE__EROM_VAL {} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_ERR {0} \
   CONFIG.PSU__PCIE__FLOW_CONTROL_PROTOCOL_ERR {0} \
   CONFIG.PSU__PCIE__HEADER_LOG_OVERFLOW {0} \
   CONFIG.PSU__PCIE__INTX_GENERATION {0} \
   CONFIG.PSU__PCIE__LANE0__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE1__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE2__ENABLE {0} \
   CONFIG.PSU__PCIE__LANE3__ENABLE {0} \
   CONFIG.PSU__PCIE__MC_BLOCKED_TLP {0} \
   CONFIG.PSU__PCIE__MSIX_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MSIX_PBA_BAR_INDICATOR {} \
   CONFIG.PSU__PCIE__MSIX_PBA_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_OFFSET {0} \
   CONFIG.PSU__PCIE__MSIX_TABLE_SIZE {0} \
   CONFIG.PSU__PCIE__MSI_64BIT_ADDR_CAPABLE {0} \
   CONFIG.PSU__PCIE__MSI_CAPABILITY {0} \
   CONFIG.PSU__PCIE__MULTIHEADER {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PCIE__PERIPHERAL__ENDPOINT_ENABLE {1} \
   CONFIG.PSU__PCIE__PERIPHERAL__ROOTPORT_ENABLE {0} \
   CONFIG.PSU__PCIE__PERM_ROOT_ERR_UPDATE {0} \
   CONFIG.PSU__PCIE__RECEIVER_ERR {0} \
   CONFIG.PSU__PCIE__RECEIVER_OVERFLOW {0} \
   CONFIG.PSU__PCIE__RESET__POLARITY {Active Low} \
   CONFIG.PSU__PCIE__REVISION_ID {} \
   CONFIG.PSU__PCIE__SUBSYSTEM_ID {} \
   CONFIG.PSU__PCIE__SUBSYSTEM_VENDOR_ID {} \
   CONFIG.PSU__PCIE__SURPRISE_DOWN {0} \
   CONFIG.PSU__PCIE__TLP_PREFIX_BLOCKED {0} \
   CONFIG.PSU__PCIE__UNCORRECTABL_INT_ERR {0} \
   CONFIG.PSU__PCIE__VENDOR_ID {} \
   CONFIG.PSU__PJTAG__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PL_CLK0_BUF {TRUE} \
   CONFIG.PSU__PL_CLK1_BUF {TRUE} \
   CONFIG.PSU__PL_CLK2_BUF {FALSE} \
   CONFIG.PSU__PL_CLK3_BUF {FALSE} \
   CONFIG.PSU__PL__POWER__ON {1} \
   CONFIG.PSU__PMU_COHERENCY {0} \
   CONFIG.PSU__PMU__AIBACK__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPI__ENABLE {0} \
   CONFIG.PSU__PMU__EMIO_GPO__ENABLE {0} \
   CONFIG.PSU__PMU__GPI0__ENABLE {0} \
   CONFIG.PSU__PMU__GPI1__ENABLE {0} \
   CONFIG.PSU__PMU__GPI2__ENABLE {0} \
   CONFIG.PSU__PMU__GPI3__ENABLE {0} \
   CONFIG.PSU__PMU__GPI4__ENABLE {0} \
   CONFIG.PSU__PMU__GPI5__ENABLE {0} \
   CONFIG.PSU__PMU__GPO0__ENABLE {0} \
   CONFIG.PSU__PMU__GPO1__ENABLE {0} \
   CONFIG.PSU__PMU__GPO2__ENABLE {0} \
   CONFIG.PSU__PMU__GPO3__ENABLE {0} \
   CONFIG.PSU__PMU__GPO4__ENABLE {0} \
   CONFIG.PSU__PMU__GPO5__ENABLE {0} \
   CONFIG.PSU__PMU__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__PMU__PLERROR__ENABLE {0} \
   CONFIG.PSU__PRESET_APPLIED {0} \
   CONFIG.PSU__PROTECTION__DDR_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__DEBUG {0} \
   CONFIG.PSU__PROTECTION__ENABLE {0} \
   CONFIG.PSU__PROTECTION__FPD_SEGMENTS {SA:0xFD1A0000; SIZE:1280; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD000000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD010000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD020000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD030000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD040000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD050000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD610000; SIZE:512; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |   SA:0xFD5D0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware  |  SA:0xFD1A0000 ; SIZE:1280; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__LOCK_UNUSED_SEGMENTS {0} \
   CONFIG.PSU__PROTECTION__LPD_SEGMENTS {SA:0xFF980000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF5E0000; SIZE:2560; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFCC0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF180000; SIZE:768; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF410000; SIZE:640; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFFA70000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware| SA:0xFF9A0000; SIZE:64; UNIT:KB; RegionTZ:Secure; WrAllowed:Read/Write; subsystemId:PMU Firmware|SA:0xFF5E0000 ; SIZE:2560; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFFCC0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF180000 ; SIZE:768; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem|SA:0xFF9A0000 ; SIZE:64; UNIT:KB; RegionTZ:Secure ; WrAllowed:Read/Write; subsystemId:Secure Subsystem} \
   CONFIG.PSU__PROTECTION__MASTERS {USB1:NonSecure;0|USB0:NonSecure;1|S_AXI_LPD:NA;0|S_AXI_HPC1_FPD:NA;0|S_AXI_HPC0_FPD:NA;0|S_AXI_HP3_FPD:NA;0|S_AXI_HP2_FPD:NA;0|S_AXI_HP1_FPD:NA;0|S_AXI_HP0_FPD:NA;0|S_AXI_ACP:NA;0|S_AXI_ACE:NA;0|SD1:NonSecure;1|SD0:NonSecure;1|SATA1:NonSecure;1|SATA0:NonSecure;1|RPU1:Secure;1|RPU0:Secure;1|QSPI:NonSecure;1|PMU:NA;1|PCIe:NonSecure;0|NAND:NonSecure;0|LDMA:NonSecure;1|GPU:NonSecure;1|GEM3:NonSecure;1|GEM2:NonSecure;0|GEM1:NonSecure;0|GEM0:NonSecure;0|FDMA:NonSecure;1|DP:NonSecure;1|DAP:NA;1|Coresight:NA;1|CSU:NA;1|APU:NA;1} \
   CONFIG.PSU__PROTECTION__MASTERS_TZ {GEM0:NonSecure|SD1:NonSecure|GEM2:NonSecure|GEM1:NonSecure|GEM3:NonSecure|PCIe:NonSecure|DP:NonSecure|NAND:NonSecure|GPU:NonSecure|USB1:NonSecure|USB0:NonSecure|LDMA:NonSecure|FDMA:NonSecure|QSPI:NonSecure|SD0:NonSecure} \
   CONFIG.PSU__PROTECTION__OCM_SEGMENTS {NONE} \
   CONFIG.PSU__PROTECTION__PRESUBSYSTEMS {NONE} \
   CONFIG.PSU__PROTECTION__SLAVES {LPD;USB3_1_XHCI;FE300000;FE3FFFFF;0|LPD;USB3_1;FF9E0000;FF9EFFFF;0|LPD;USB3_0_XHCI;FE200000;FE2FFFFF;1|LPD;USB3_0;FF9D0000;FF9DFFFF;1|LPD;UART1;FF010000;FF01FFFF;1|LPD;UART0;FF000000;FF00FFFF;1|LPD;TTC3;FF140000;FF14FFFF;1|LPD;TTC2;FF130000;FF13FFFF;1|LPD;TTC1;FF120000;FF12FFFF;1|LPD;TTC0;FF110000;FF11FFFF;1|FPD;SWDT1;FD4D0000;FD4DFFFF;1|LPD;SWDT0;FF150000;FF15FFFF;1|LPD;SPI1;FF050000;FF05FFFF;0|LPD;SPI0;FF040000;FF04FFFF;0|FPD;SMMU_REG;FD5F0000;FD5FFFFF;1|FPD;SMMU;FD800000;FDFFFFFF;1|FPD;SIOU;FD3D0000;FD3DFFFF;1|FPD;SERDES;FD400000;FD47FFFF;1|LPD;SD1;FF170000;FF17FFFF;1|LPD;SD0;FF160000;FF16FFFF;1|FPD;SATA;FD0C0000;FD0CFFFF;1|LPD;RTC;FFA60000;FFA6FFFF;1|LPD;RSA_CORE;FFCE0000;FFCEFFFF;1|LPD;RPU;FF9A0000;FF9AFFFF;1|LPD;R5_TCM_RAM_GLOBAL;FFE00000;FFE3FFFF;1|LPD;R5_1_Instruction_Cache;FFEC0000;FFECFFFF;1|LPD;R5_1_Data_Cache;FFED0000;FFEDFFFF;1|LPD;R5_1_BTCM_GLOBAL;FFEB0000;FFEBFFFF;1|LPD;R5_1_ATCM_GLOBAL;FFE90000;FFE9FFFF;1|LPD;R5_0_Instruction_Cache;FFE40000;FFE4FFFF;1|LPD;R5_0_Data_Cache;FFE50000;FFE5FFFF;1|LPD;R5_0_BTCM_GLOBAL;FFE20000;FFE2FFFF;1|LPD;R5_0_ATCM_GLOBAL;FFE00000;FFE0FFFF;1|LPD;QSPI_Linear_Address;C0000000;DFFFFFFF;1|LPD;QSPI;FF0F0000;FF0FFFFF;1|LPD;PMU_RAM;FFDC0000;FFDDFFFF;1|LPD;PMU_GLOBAL;FFD80000;FFDBFFFF;1|FPD;PCIE_MAIN;FD0E0000;FD0EFFFF;0|FPD;PCIE_LOW;E0000000;EFFFFFFF;0|FPD;PCIE_HIGH2;8000000000;BFFFFFFFFF;0|FPD;PCIE_HIGH1;600000000;7FFFFFFFF;0|FPD;PCIE_DMA;FD0F0000;FD0FFFFF;0|FPD;PCIE_ATTRIB;FD480000;FD48FFFF;0|LPD;OCM_XMPU_CFG;FFA70000;FFA7FFFF;1|LPD;OCM_SLCR;FF960000;FF96FFFF;1|OCM;OCM;FFFC0000;FFFFFFFF;1|LPD;NAND;FF100000;FF10FFFF;0|LPD;MBISTJTAG;FFCF0000;FFCFFFFF;1|LPD;LPD_XPPU_SINK;FF9C0000;FF9CFFFF;1|LPD;LPD_XPPU;FF980000;FF98FFFF;1|LPD;LPD_SLCR_SECURE;FF4B0000;FF4DFFFF;1|LPD;LPD_SLCR;FF410000;FF4AFFFF;1|LPD;LPD_GPV;FE100000;FE1FFFFF;1|LPD;LPD_DMA_7;FFAF0000;FFAFFFFF;1|LPD;LPD_DMA_6;FFAE0000;FFAEFFFF;1|LPD;LPD_DMA_5;FFAD0000;FFADFFFF;1|LPD;LPD_DMA_4;FFAC0000;FFACFFFF;1|LPD;LPD_DMA_3;FFAB0000;FFABFFFF;1|LPD;LPD_DMA_2;FFAA0000;FFAAFFFF;1|LPD;LPD_DMA_1;FFA90000;FFA9FFFF;1|LPD;LPD_DMA_0;FFA80000;FFA8FFFF;1|LPD;IPI_CTRL;FF380000;FF3FFFFF;1|LPD;IOU_SLCR;FF180000;FF23FFFF;1|LPD;IOU_SECURE_SLCR;FF240000;FF24FFFF;1|LPD;IOU_SCNTRS;FF260000;FF26FFFF;1|LPD;IOU_SCNTR;FF250000;FF25FFFF;1|LPD;IOU_GPV;FE000000;FE0FFFFF;1|LPD;I2C1;FF030000;FF03FFFF;1|LPD;I2C0;FF020000;FF02FFFF;1|FPD;GPU;FD4B0000;FD4BFFFF;1|LPD;GPIO;FF0A0000;FF0AFFFF;1|LPD;GEM3;FF0E0000;FF0EFFFF;1|LPD;GEM2;FF0D0000;FF0DFFFF;0|LPD;GEM1;FF0C0000;FF0CFFFF;0|LPD;GEM0;FF0B0000;FF0BFFFF;0|FPD;FPD_XMPU_SINK;FD4F0000;FD4FFFFF;1|FPD;FPD_XMPU_CFG;FD5D0000;FD5DFFFF;1|FPD;FPD_SLCR_SECURE;FD690000;FD6CFFFF;1|FPD;FPD_SLCR;FD610000;FD68FFFF;1|FPD;FPD_GPV;FD700000;FD7FFFFF;1|FPD;FPD_DMA_CH7;FD570000;FD57FFFF;1|FPD;FPD_DMA_CH6;FD560000;FD56FFFF;1|FPD;FPD_DMA_CH5;FD550000;FD55FFFF;1|FPD;FPD_DMA_CH4;FD540000;FD54FFFF;1|FPD;FPD_DMA_CH3;FD530000;FD53FFFF;1|FPD;FPD_DMA_CH2;FD520000;FD52FFFF;1|FPD;FPD_DMA_CH1;FD510000;FD51FFFF;1|FPD;FPD_DMA_CH0;FD500000;FD50FFFF;1|LPD;EFUSE;FFCC0000;FFCCFFFF;1|FPD;Display Port;FD4A0000;FD4AFFFF;1|FPD;DPDMA;FD4C0000;FD4CFFFF;1|FPD;DDR_XMPU5_CFG;FD050000;FD05FFFF;1|FPD;DDR_XMPU4_CFG;FD040000;FD04FFFF;1|FPD;DDR_XMPU3_CFG;FD030000;FD03FFFF;1|FPD;DDR_XMPU2_CFG;FD020000;FD02FFFF;1|FPD;DDR_XMPU1_CFG;FD010000;FD01FFFF;1|FPD;DDR_XMPU0_CFG;FD000000;FD00FFFF;1|FPD;DDR_QOS_CTRL;FD090000;FD09FFFF;1|FPD;DDR_PHY;FD080000;FD08FFFF;1|DDR;DDR_LOW;0;7FFFFFFF;1|DDR;DDR_HIGH;800000000;87FFFFFFF;1|FPD;DDDR_CTRL;FD070000;FD070FFF;1|LPD;Coresight;FE800000;FEFFFFFF;1|LPD;CSU_DMA;FFC80000;FFC9FFFF;1|LPD;CSU;FFCA0000;FFCAFFFF;1|LPD;CRL_APB;FF5E0000;FF85FFFF;1|FPD;CRF_APB;FD1A0000;FD2DFFFF;1|FPD;CCI_REG;FD5E0000;FD5EFFFF;1|FPD;CCI_GPV;FD6E0000;FD6EFFFF;1|LPD;CAN1;FF070000;FF07FFFF;0|LPD;CAN0;FF060000;FF06FFFF;1|FPD;APU;FD5C0000;FD5CFFFF;1|LPD;APM_INTC_IOU;FFA20000;FFA2FFFF;1|LPD;APM_FPD_LPD;FFA30000;FFA3FFFF;1|FPD;APM_5;FD490000;FD49FFFF;1|FPD;APM_0;FD0B0000;FD0BFFFF;1|LPD;APM2;FFA10000;FFA1FFFF;1|LPD;APM1;FFA00000;FFA0FFFF;1|LPD;AMS;FFA50000;FFA5FFFF;1|FPD;AFI_5;FD3B0000;FD3BFFFF;1|FPD;AFI_4;FD3A0000;FD3AFFFF;1|FPD;AFI_3;FD390000;FD39FFFF;1|FPD;AFI_2;FD380000;FD38FFFF;1|FPD;AFI_1;FD370000;FD37FFFF;1|FPD;AFI_0;FD360000;FD36FFFF;1|LPD;AFIFM6;FF9B0000;FF9BFFFF;1|FPD;ACPU_GIC;F9010000;F907FFFF;1} \
   CONFIG.PSU__PROTECTION__SUBSYSTEMS {PMU Firmware:PMU|Secure Subsystem:} \
   CONFIG.PSU__PSS_ALT_REF_CLK__ENABLE {0} \
   CONFIG.PSU__PSS_ALT_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__PSS_REF_CLK__FREQMHZ {33.333} \
   CONFIG.PSU__QSPI_COHERENCY {0} \
   CONFIG.PSU__QSPI_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__QSPI__GRP_FBCLK__ENABLE {0} \
   CONFIG.PSU__QSPI__PERIPHERAL__DATA_MODE {x4} \
   CONFIG.PSU__QSPI__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__QSPI__PERIPHERAL__IO {MIO 0 .. 12} \
   CONFIG.PSU__QSPI__PERIPHERAL__MODE {Dual Parallel} \
   CONFIG.PSU__REPORT__DBGLOG {0} \
   CONFIG.PSU__RPU_COHERENCY {0} \
   CONFIG.PSU__RPU__POWER__ON {1} \
   CONFIG.PSU__SATA__LANE0__ENABLE {0} \
   CONFIG.PSU__SATA__LANE1__ENABLE {1} \
   CONFIG.PSU__SATA__LANE1__IO {GT Lane1} \
   CONFIG.PSU__SATA__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SATA__REF_CLK_FREQ {125} \
   CONFIG.PSU__SATA__REF_CLK_SEL {Ref Clk1} \
   CONFIG.PSU__SAXIGP0__DATA_WIDTH {64} \
   CONFIG.PSU__SAXIGP1__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP2__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP3__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP4__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP5__DATA_WIDTH {128} \
   CONFIG.PSU__SAXIGP6__DATA_WIDTH {128} \
   CONFIG.PSU__SD0_COHERENCY {0} \
   CONFIG.PSU__SD0_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD0__DATA_TRANSFER_MODE {8Bit} \
   CONFIG.PSU__SD0__GRP_CD__ENABLE {0} \
   CONFIG.PSU__SD0__GRP_POW__ENABLE {1} \
   CONFIG.PSU__SD0__GRP_POW__IO {MIO 23} \
   CONFIG.PSU__SD0__GRP_WP__ENABLE {0} \
   CONFIG.PSU__SD0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD0__PERIPHERAL__IO {MIO 13 .. 22} \
   CONFIG.PSU__SD0__RESET__ENABLE {1} \
   CONFIG.PSU__SD0__SLOT_TYPE {eMMC} \
   CONFIG.PSU__SD1_COHERENCY {0} \
   CONFIG.PSU__SD1_ROUTE_THROUGH_FPD {0} \
   CONFIG.PSU__SD1__DATA_TRANSFER_MODE {4Bit} \
   CONFIG.PSU__SD1__GRP_CD__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_CD__IO {MIO 45} \
   CONFIG.PSU__SD1__GRP_POW__ENABLE {0} \
   CONFIG.PSU__SD1__GRP_WP__ENABLE {1} \
   CONFIG.PSU__SD1__GRP_WP__IO {MIO 44} \
   CONFIG.PSU__SD1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SD1__PERIPHERAL__IO {MIO 46 .. 51} \
   CONFIG.PSU__SD1__RESET__ENABLE {0} \
   CONFIG.PSU__SD1__SLOT_TYPE {SD 2.0} \
   CONFIG.PSU__SPI0_LOOP_SPI1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI0__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI0__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS0__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS1__ENABLE {0} \
   CONFIG.PSU__SPI1__GRP_SS2__ENABLE {0} \
   CONFIG.PSU__SPI1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__SWDT0__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SWDT0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT0__RESET__ENABLE {0} \
   CONFIG.PSU__SWDT1__CLOCK__ENABLE {0} \
   CONFIG.PSU__SWDT1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__SWDT1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__SWDT1__RESET__ENABLE {0} \
   CONFIG.PSU__TCM0A__POWER__ON {1} \
   CONFIG.PSU__TCM0B__POWER__ON {1} \
   CONFIG.PSU__TCM1A__POWER__ON {1} \
   CONFIG.PSU__TCM1B__POWER__ON {1} \
   CONFIG.PSU__TESTSCAN__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRACE_PIPELINE_WIDTH {8} \
   CONFIG.PSU__TRACE__INTERNAL_WIDTH {32} \
   CONFIG.PSU__TRACE__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__TRISTATE__INVERTED {1} \
   CONFIG.PSU__TSU__BUFG_PORT_PAIR {0} \
   CONFIG.PSU__TTC0__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC0__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC0__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC1__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC1__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC1__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC2__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC2__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC2__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC2__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__TTC3__CLOCK__ENABLE {0} \
   CONFIG.PSU__TTC3__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__TTC3__PERIPHERAL__IO {NA} \
   CONFIG.PSU__TTC3__WAVEOUT__ENABLE {0} \
   CONFIG.PSU__UART0_LOOP_UART1__ENABLE {0} \
   CONFIG.PSU__UART0__BAUD_RATE {115200} \
   CONFIG.PSU__UART0__MODEM__ENABLE {0} \
   CONFIG.PSU__UART0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART0__PERIPHERAL__IO {MIO 34 .. 35} \
   CONFIG.PSU__UART1__BAUD_RATE {115200} \
   CONFIG.PSU__UART1__MODEM__ENABLE {0} \
   CONFIG.PSU__UART1__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__UART1__PERIPHERAL__IO {EMIO} \
   CONFIG.PSU__USB0_COHERENCY {0} \
   CONFIG.PSU__USB0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB0__PERIPHERAL__IO {MIO 52 .. 63} \
   CONFIG.PSU__USB0__REF_CLK_FREQ {52} \
   CONFIG.PSU__USB0__REF_CLK_SEL {Ref Clk2} \
   CONFIG.PSU__USB0__RESET__ENABLE {0} \
   CONFIG.PSU__USB1_COHERENCY {0} \
   CONFIG.PSU__USB1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB1__RESET__ENABLE {0} \
   CONFIG.PSU__USB2_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB2_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_0__PERIPHERAL__ENABLE {1} \
   CONFIG.PSU__USB3_0__PERIPHERAL__IO {GT Lane2} \
   CONFIG.PSU__USB3_1__EMIO__ENABLE {0} \
   CONFIG.PSU__USB3_1__PERIPHERAL__ENABLE {0} \
   CONFIG.PSU__USB__RESET__MODE {Boot Pin} \
   CONFIG.PSU__USB__RESET__POLARITY {Active Low} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP0 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP1 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP2 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP3 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP4 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP5 {0} \
   CONFIG.PSU__USE_DIFF_RW_CLK_GP6 {0} \
   CONFIG.PSU__USE__ADMA {0} \
   CONFIG.PSU__USE__APU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__AUDIO {0} \
   CONFIG.PSU__USE__CLK {0} \
   CONFIG.PSU__USE__CLK0 {0} \
   CONFIG.PSU__USE__CLK1 {0} \
   CONFIG.PSU__USE__CLK2 {0} \
   CONFIG.PSU__USE__CLK3 {0} \
   CONFIG.PSU__USE__CROSS_TRIGGER {0} \
   CONFIG.PSU__USE__DDR_INTF_REQUESTED {0} \
   CONFIG.PSU__USE__DEBUG__TEST {0} \
   CONFIG.PSU__USE__EVENT_RPU {0} \
   CONFIG.PSU__USE__FABRIC__RST {1} \
   CONFIG.PSU__USE__FTM {0} \
   CONFIG.PSU__USE__GDMA {0} \
   CONFIG.PSU__USE__IRQ {0} \
   CONFIG.PSU__USE__IRQ0 {0} \
   CONFIG.PSU__USE__IRQ1 {0} \
   CONFIG.PSU__USE__M_AXI_GP0 {1} \
   CONFIG.PSU__USE__M_AXI_GP1 {0} \
   CONFIG.PSU__USE__M_AXI_GP2 {0} \
   CONFIG.PSU__USE__PROC_EVENT_BUS {0} \
   CONFIG.PSU__USE__RPU_LEGACY_INTERRUPT {0} \
   CONFIG.PSU__USE__RST0 {0} \
   CONFIG.PSU__USE__RST1 {0} \
   CONFIG.PSU__USE__RST2 {0} \
   CONFIG.PSU__USE__RST3 {0} \
   CONFIG.PSU__USE__RTC {0} \
   CONFIG.PSU__USE__STM {0} \
   CONFIG.PSU__USE__S_AXI_ACE {0} \
   CONFIG.PSU__USE__S_AXI_ACP {0} \
   CONFIG.PSU__USE__S_AXI_GP0 {0} \
   CONFIG.PSU__USE__S_AXI_GP1 {0} \
   CONFIG.PSU__USE__S_AXI_GP2 {0} \
   CONFIG.PSU__USE__S_AXI_GP3 {0} \
   CONFIG.PSU__USE__S_AXI_GP4 {0} \
   CONFIG.PSU__USE__S_AXI_GP5 {0} \
   CONFIG.PSU__USE__S_AXI_GP6 {0} \
   CONFIG.PSU__USE__USB3_0_HUB {0} \
   CONFIG.PSU__USE__USB3_1_HUB {0} \
   CONFIG.PSU__USE__VIDEO {0} \
   CONFIG.PSU__VIDEO_REF_CLK__ENABLE {0} \
   CONFIG.PSU__VIDEO_REF_CLK__FREQMHZ {33.333} \
   CONFIG.QSPI_BOARD_INTERFACE {custom} \
   CONFIG.SATA_BOARD_INTERFACE {custom} \
   CONFIG.SD0_BOARD_INTERFACE {custom} \
   CONFIG.SD1_BOARD_INTERFACE {custom} \
   CONFIG.SPI0_BOARD_INTERFACE {custom} \
   CONFIG.SPI1_BOARD_INTERFACE {custom} \
   CONFIG.SUBPRESET1 {Custom} \
   CONFIG.SUBPRESET2 {Custom} \
   CONFIG.SWDT0_BOARD_INTERFACE {custom} \
   CONFIG.SWDT1_BOARD_INTERFACE {custom} \
   CONFIG.TRACE_BOARD_INTERFACE {custom} \
   CONFIG.TTC0_BOARD_INTERFACE {custom} \
   CONFIG.TTC1_BOARD_INTERFACE {custom} \
   CONFIG.TTC2_BOARD_INTERFACE {custom} \
   CONFIG.TTC3_BOARD_INTERFACE {custom} \
   CONFIG.UART0_BOARD_INTERFACE {custom} \
   CONFIG.UART1_BOARD_INTERFACE {custom} \
   CONFIG.USB0_BOARD_INTERFACE {custom} \
   CONFIG.USB1_BOARD_INTERFACE {custom} \
 ] $zynq_ultra_ps_e_0

  # Create port connections
  connect_bd_net -net MMIO_uart_addr [get_bd_pins MMIO/uart_addr] [get_bd_pins UART/addr]
  connect_bd_net -net MMIO_uart_be [get_bd_pins MMIO/uart_be] [get_bd_pins UART/be]
  connect_bd_net -net MMIO_uart_valid [get_bd_pins MMIO/uart_valid] [get_bd_pins UART/valid]
  connect_bd_net -net MMIO_uart_wdata [get_bd_pins MMIO/uart_wdata] [get_bd_pins UART/wdata]
  connect_bd_net -net MMIO_uart_we [get_bd_pins MMIO/uart_we] [get_bd_pins UART/we]
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins Core_RV32I/dmem_addr] [get_bd_pins MMIO/cpu_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins Core_RV32I/dmem_be] [get_bd_pins MMIO/cpu_be]
  connect_bd_net -net RV32I_MEM_dmem_re [get_bd_pins Core_RV32I/dmem_re] [get_bd_pins MMIO/Op2]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins Core_RV32I/dmem_wdata] [get_bd_pins MMIO/cpu_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins Core_RV32I/dmem_we] [get_bd_pins MMIO/Op1]
  connect_bd_net -net RV32I_RAM_MEMORY_rdata [get_bd_pins MMIO/ram_rdata] [get_bd_pins RV32I_RAM_MEMORY/rdata]
  connect_bd_net -net addr_1 [get_bd_pins MMIO/ram_addr] [get_bd_pins RV32I_RAM_MEMORY/addr]
  connect_bd_net -net be_1 [get_bd_pins MMIO/ram_be] [get_bd_pins RV32I_RAM_MEMORY/be]
  connect_bd_net -net gpio_0_gpio_out [get_bd_pins GPIO/gpio_out] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net gpio_0_rdata [get_bd_pins GPIO/rdata] [get_bd_pins MMIO/gpio_rdata]
  connect_bd_net -net gpio_0_ready [get_bd_pins GPIO/ready] [get_bd_pins MMIO/gpio_ready]
  connect_bd_net -net mmio_0_cpu_rdata [get_bd_pins Core_RV32I/mem_data] [get_bd_pins MMIO/cpu_rdata]
  connect_bd_net -net mmio_0_gpio_addr [get_bd_pins GPIO/addr] [get_bd_pins MMIO/gpio_addr]
  connect_bd_net -net mmio_0_gpio_be [get_bd_pins GPIO/be] [get_bd_pins MMIO/gpio_be]
  connect_bd_net -net mmio_0_gpio_valid [get_bd_pins GPIO/valid] [get_bd_pins MMIO/gpio_valid]
  connect_bd_net -net mmio_0_gpio_wdata [get_bd_pins GPIO/wdata] [get_bd_pins MMIO/gpio_wdata]
  connect_bd_net -net mmio_0_gpio_we [get_bd_pins GPIO/we] [get_bd_pins MMIO/gpio_we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins Core_RV32I/rst] [get_bd_pins GPIO/rst] [get_bd_pins MMIO/rst] [get_bd_pins UART/rst] [get_bd_pins util_vector_logic_2/Res]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset1 [get_bd_pins proc_sys_reset_0/peripheral_reset] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net uart_tx_0_rdata [get_bd_pins MMIO/uart_rdata] [get_bd_pins UART/rdata]
  connect_bd_net -net uart_tx_0_ready [get_bd_pins MMIO/uart_ready1] [get_bd_pins UART/ready]
  connect_bd_net -net vio_0_probe_out0 [get_bd_pins util_vector_logic_2/Op2] [get_bd_pins vio_0/probe_out0]
  connect_bd_net -net wdata_1 [get_bd_pins MMIO/ram_wdata] [get_bd_pins RV32I_RAM_MEMORY/wdata]
  connect_bd_net -net we_1 [get_bd_pins MMIO/ram_we] [get_bd_pins RV32I_RAM_MEMORY/we]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_ports gpio_out_0] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins Core_RV32I/clk] [get_bd_pins GPIO/clk] [get_bd_pins MMIO/clk] [get_bd_pins RV32I_RAM_MEMORY/clk] [get_bd_pins UART/clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins vio_0/clk] [get_bd_pins zynq_ultra_ps_e_0/maxihpm0_fpd_aclk] [get_bd_pins zynq_ultra_ps_e_0/pl_clk0]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_resetn0 [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins zynq_ultra_ps_e_0/pl_resetn0]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


