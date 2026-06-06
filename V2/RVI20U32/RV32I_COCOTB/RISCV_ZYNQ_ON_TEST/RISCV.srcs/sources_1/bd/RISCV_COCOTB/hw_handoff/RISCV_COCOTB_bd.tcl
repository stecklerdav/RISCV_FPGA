
################################################################
# This is a generated script based on design: RISCV_COCOTB
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
# source RISCV_COCOTB_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# xlconcat_8, xlslice_2bit, load_use_detection, priority_branch_OR_load_use, gpio, mem_bus_registered, csr_access_unit, csr_file, csr_regfile_wb_mux, csr_use_detection, exception_mux, mem_exception_merge, privileged_pc_redirect_mux, system_decoder, trap_controller, util_vector_and, util_vector_not, ram_data, timer, uart, alu, branch, constant_zero, ex_mem_reg, forward_mux, forward_mux, forward_mux, forwarding, operand_a_mux, operand_b_mux, util_vector_and, util_vector_and, control, decoder, id_ex_reg, imm_mux, regfile, branch_predictor_btb_bht, constant_one, if_id_reg, pc_to_imem_addr, pc_unit, rom_memory, util_vector_and, util_vector_and, util_vector_not, util_vector_not, util_vector_or, util_vector_or, constant_zero, mem_stage, mem_wb_reg, regfile_we_gen, wb_mux

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
set design_name RISCV_COCOTB

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
  create_bd_pin -dir I -from 2 -to 0 wb_sel

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
  connect_bd_net -net alu_y_1 [get_bd_pins alu_y] [get_bd_pins wb_mux_0/alu_y]
  connect_bd_net -net imm_u_1 [get_bd_pins imm_u] [get_bd_pins wb_mux_0/imm_u]
  connect_bd_net -net load_data_1 [get_bd_pins load_data] [get_bd_pins wb_mux_0/load_data]
  connect_bd_net -net pc_plus4_1 [get_bd_pins pc_plus4] [get_bd_pins wb_mux_0/pc_plus4]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins rd_wdata] [get_bd_pins wb_mux_0/rd_wdata]
  connect_bd_net -net wb_sel_1 [get_bd_pins wb_sel] [get_bd_pins wb_mux_0/wb_sel]

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
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 dmem_addr
  create_bd_pin -dir O -from 3 -to 0 dmem_be
  create_bd_pin -dir I dmem_error
  create_bd_pin -dir O dmem_re
  create_bd_pin -dir I dmem_ready
  create_bd_pin -dir I dmem_req_ready
  create_bd_pin -dir O dmem_valid
  create_bd_pin -dir O -from 31 -to 0 dmem_wdata
  create_bd_pin -dir O dmem_we
  create_bd_pin -dir O load_access_fault
  create_bd_pin -dir I -from 4 -to 0 mem_csr_rd_addr
  create_bd_pin -dir I -from 31 -to 0 mem_csr_rd_data
  create_bd_pin -dir I mem_csr_rd_we
  create_bd_pin -dir I -from 31 -to 0 mem_data
  create_bd_pin -dir O -from 3 -to 0 mem_fault_cause
  create_bd_pin -dir O -from 31 -to 0 mem_fault_tval
  create_bd_pin -dir O mem_fault_valid
  create_bd_pin -dir O -from 31 -to 0 mem_forward_data
  create_bd_pin -dir I -from 31 -to 0 mem_in_alu_result
  create_bd_pin -dir I -from 31 -to 0 mem_in_imm_u
  create_bd_pin -dir I mem_in_mem_re
  create_bd_pin -dir I -from 1 -to 0 mem_in_mem_size
  create_bd_pin -dir I mem_in_mem_unsigned
  create_bd_pin -dir I mem_in_mem_we
  create_bd_pin -dir I -from 31 -to 0 mem_in_pc_plus4
  create_bd_pin -dir I -from 4 -to 0 mem_in_rd
  create_bd_pin -dir I mem_in_rd_we
  create_bd_pin -dir I -from 31 -to 0 mem_in_store_data
  create_bd_pin -dir I mem_in_valid
  create_bd_pin -dir I -from 2 -to 0 mem_in_wb_sel
  create_bd_pin -dir O -from 4 -to 0 mem_rd
  create_bd_pin -dir O mem_stage_out_valid
  create_bd_pin -dir O mem_stage_rd_out_we
  create_bd_pin -dir O -from 0 -to 0 mem_stall_req
  create_bd_pin -dir O regfile_we
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir O store_access_fault
  create_bd_pin -dir O -from 31 -to 0 wb_alu_result
  create_bd_pin -dir O -from 4 -to 0 wb_csr_rd_addr
  create_bd_pin -dir O -from 31 -to 0 wb_csr_rd_data
  create_bd_pin -dir O wb_csr_rd_we
  create_bd_pin -dir O -from 31 -to 0 wb_data
  create_bd_pin -dir O -from 31 -to 0 wb_imm_u
  create_bd_pin -dir O -from 31 -to 0 wb_pc_plus4
  create_bd_pin -dir O -from 4 -to 0 wb_rd
  create_bd_pin -dir O -from 2 -to 0 wb_sel
  create_bd_pin -dir O wb_valid

  # Create instance: constant_zero_0, and set properties
  set block_name constant_zero
  set block_cell_name constant_zero_0
  if { [catch {set constant_zero_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $constant_zero_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
  
  # Create port connections
  connect_bd_net -net dmem_error_1 [get_bd_pins dmem_error] [get_bd_pins mem_stage_0/dmem_error]
  connect_bd_net -net dmem_ready_1 [get_bd_pins dmem_ready] [get_bd_pins mem_stage_0/dmem_ready]
  connect_bd_net -net dmem_req_ready_1 [get_bd_pins dmem_req_ready] [get_bd_pins mem_stage_0/dmem_req_ready]
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
  connect_bd_net -net mem_csr_rd_addr_1 [get_bd_pins mem_csr_rd_addr] [get_bd_pins mem_wb_reg_0/mem_csr_rd_addr]
  connect_bd_net -net mem_csr_rd_data_1 [get_bd_pins mem_csr_rd_data] [get_bd_pins mem_wb_reg_0/mem_csr_rd_data]
  connect_bd_net -net mem_csr_rd_we_1 [get_bd_pins mem_csr_rd_we] [get_bd_pins mem_wb_reg_0/mem_csr_rd_we]
  connect_bd_net -net mem_data_1 [get_bd_pins mem_data] [get_bd_pins mem_stage_0/dmem_rdata]
  connect_bd_net -net mem_in_mem_we_1 [get_bd_pins mem_in_mem_we] [get_bd_pins mem_stage_0/mem_in_mem_we]
  connect_bd_net -net mem_stage_0_dmem_addr [get_bd_pins dmem_addr] [get_bd_pins mem_stage_0/dmem_addr]
  connect_bd_net -net mem_stage_0_dmem_be [get_bd_pins dmem_be] [get_bd_pins mem_stage_0/dmem_be]
  connect_bd_net -net mem_stage_0_dmem_re [get_bd_pins dmem_re] [get_bd_pins mem_stage_0/dmem_re]
  connect_bd_net -net mem_stage_0_dmem_valid [get_bd_pins dmem_valid] [get_bd_pins mem_stage_0/dmem_valid]
  connect_bd_net -net mem_stage_0_dmem_wdata [get_bd_pins dmem_wdata] [get_bd_pins mem_stage_0/dmem_wdata]
  connect_bd_net -net mem_stage_0_dmem_we [get_bd_pins dmem_we] [get_bd_pins mem_stage_0/dmem_we]
  connect_bd_net -net mem_stage_0_mem_fault_cause [get_bd_pins mem_fault_cause] [get_bd_pins mem_stage_0/mem_fault_cause]
  connect_bd_net -net mem_stage_0_mem_fault_tval [get_bd_pins mem_fault_tval] [get_bd_pins mem_stage_0/mem_fault_tval]
  connect_bd_net -net mem_stage_0_mem_fault_valid [get_bd_pins mem_fault_valid] [get_bd_pins mem_stage_0/mem_fault_valid]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins mem_forward_data] [get_bd_pins mem_stage_0/mem_forward_data]
  connect_bd_net -net mem_stage_0_mem_out_alu_result [get_bd_pins mem_stage_0/mem_out_alu_result] [get_bd_pins mem_wb_reg_0/mem_alu_result]
  connect_bd_net -net mem_stage_0_mem_out_data [get_bd_pins mem_stage_0/mem_out_data] [get_bd_pins mem_wb_reg_0/mem_data]
  connect_bd_net -net mem_stage_0_mem_out_imm_u [get_bd_pins mem_stage_0/mem_out_imm_u] [get_bd_pins mem_wb_reg_0/mem_imm_u]
  connect_bd_net -net mem_stage_0_mem_out_pc_plus4 [get_bd_pins mem_stage_0/mem_out_pc_plus4] [get_bd_pins mem_wb_reg_0/mem_pc_plus4]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins mem_rd] [get_bd_pins mem_stage_0/mem_out_rd] [get_bd_pins mem_wb_reg_0/mem_rd]
  connect_bd_net -net mem_stage_0_mem_out_rd_we [get_bd_pins mem_stage_rd_out_we] [get_bd_pins mem_stage_0/mem_out_rd_we] [get_bd_pins mem_wb_reg_0/mem_rd_we]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins mem_stage_out_valid] [get_bd_pins mem_stage_0/mem_out_valid] [get_bd_pins mem_wb_reg_0/mem_valid]
  connect_bd_net -net mem_stage_0_mem_out_wb_sel [get_bd_pins mem_stage_0/mem_out_wb_sel] [get_bd_pins mem_wb_reg_0/mem_wb_sel]
  connect_bd_net -net mem_stage_0_mem_stall_req [get_bd_pins mem_stall_req] [get_bd_pins mem_stage_0/mem_stall_req]
  connect_bd_net -net mem_wb_reg_0_wb_alu_result [get_bd_pins wb_alu_result] [get_bd_pins mem_wb_reg_0/wb_alu_result]
  connect_bd_net -net mem_wb_reg_0_wb_csr_rd_addr [get_bd_pins wb_csr_rd_addr] [get_bd_pins mem_wb_reg_0/wb_csr_rd_addr]
  connect_bd_net -net mem_wb_reg_0_wb_csr_rd_data [get_bd_pins wb_csr_rd_data] [get_bd_pins mem_wb_reg_0/wb_csr_rd_data]
  connect_bd_net -net mem_wb_reg_0_wb_csr_rd_we [get_bd_pins wb_csr_rd_we] [get_bd_pins mem_wb_reg_0/wb_csr_rd_we]
  connect_bd_net -net mem_wb_reg_0_wb_data [get_bd_pins wb_data] [get_bd_pins mem_wb_reg_0/wb_data]
  connect_bd_net -net mem_wb_reg_0_wb_imm_u [get_bd_pins wb_imm_u] [get_bd_pins mem_wb_reg_0/wb_imm_u]
  connect_bd_net -net mem_wb_reg_0_wb_pc_plus4 [get_bd_pins wb_pc_plus4] [get_bd_pins mem_wb_reg_0/wb_pc_plus4]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins wb_rd] [get_bd_pins mem_wb_reg_0/wb_rd] [get_bd_pins regfile_we_gen_0/wb_rd]
  connect_bd_net -net mem_wb_reg_0_wb_rd_we [get_bd_pins mem_wb_reg_0/wb_rd_we] [get_bd_pins regfile_we_gen_0/wb_rd_we]
  connect_bd_net -net mem_wb_reg_0_wb_sel [get_bd_pins wb_sel] [get_bd_pins mem_wb_reg_0/wb_sel]
  connect_bd_net -net mem_wb_reg_0_wb_valid [get_bd_pins wb_valid] [get_bd_pins mem_wb_reg_0/wb_valid] [get_bd_pins regfile_we_gen_0/wb_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins mem_stage_0/rst] [get_bd_pins mem_wb_reg_0/rst]
  connect_bd_net -net regfile_we_gen_0_regfile_we [get_bd_pins regfile_we] [get_bd_pins regfile_we_gen_0/regfile_we]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins constant_zero_0/dout] [get_bd_pins mem_stage_0/kill] [get_bd_pins mem_stage_0/stall] [get_bd_pins mem_wb_reg_0/flush] [get_bd_pins mem_wb_reg_0/stall]
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
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I flush
  create_bd_pin -dir I hold
  create_bd_pin -dir O -from 31 -to 0 id_instr_out
  create_bd_pin -dir O -from 31 -to 0 id_pc4_out
  create_bd_pin -dir O -from 31 -to 0 id_pc_out
  create_bd_pin -dir O -from 31 -to 0 id_pred_next_pc_out
  create_bd_pin -dir O id_valid_out
  create_bd_pin -dir I pc_en
  create_bd_pin -dir I -from 31 -to 0 pc_redirect_target
  create_bd_pin -dir I pc_redirect_valid
  create_bd_pin -dir I -from 31 -to 0 priv_redirect_target
  create_bd_pin -dir I priv_redirect_valid
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -from 0 -to 0 stall
  create_bd_pin -dir I -from 0 -to 0 trap_flush
  create_bd_pin -dir I update_is_control
  create_bd_pin -dir I -from 31 -to 0 update_pc
  create_bd_pin -dir I update_taken
  create_bd_pin -dir I -from 31 -to 0 update_target
  create_bd_pin -dir I update_valid

  # Create instance: branch_predictor_btb_0, and set properties
  set block_name branch_predictor_btb_bht
  set block_cell_name branch_predictor_btb_0
  if { [catch {set branch_predictor_btb_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $branch_predictor_btb_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: constant_one_0, and set properties
  set block_name constant_one
  set block_cell_name constant_one_0
  if { [catch {set constant_one_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $constant_one_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
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
    set_property -dict [ list \
   CONFIG.RESET_PC {0x80000000} \
 ] $pc_unit_0

  # Create instance: rom_memory_0, and set properties
  set block_name rom_memory
  set block_cell_name rom_memory_0
  if { [catch {set rom_memory_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rom_memory_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_0, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_0
  if { [catch {set util_vector_and_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_1, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_1
  if { [catch {set util_vector_and_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_not_0, and set properties
  set block_name util_vector_not
  set block_cell_name util_vector_not_0
  if { [catch {set util_vector_not_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_not_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_not_1, and set properties
  set block_name util_vector_not
  set block_cell_name util_vector_not_1
  if { [catch {set util_vector_not_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_not_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_or_0, and set properties
  set block_name util_vector_or
  set block_cell_name util_vector_or_0
  if { [catch {set util_vector_or_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_or_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_or_1, and set properties
  set block_name util_vector_or
  set block_cell_name util_vector_or_1
  if { [catch {set util_vector_or_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_or_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Op3_1 [get_bd_pins stall] [get_bd_pins util_vector_not_0/Op1] [get_bd_pins util_vector_or_1/Op2]
  connect_bd_net -net Op4_1 [get_bd_pins trap_flush] [get_bd_pins util_vector_or_0/Op2]
  connect_bd_net -net branch_0_pc_redirect_target [get_bd_pins pc_redirect_target] [get_bd_pins pc_unit_0/pc_redirect_target]
  connect_bd_net -net branch_predictor_btb_0_pred_taken [get_bd_pins branch_predictor_btb_0/pred_taken] [get_bd_pins util_vector_and_0/Op2]
  connect_bd_net -net branch_predictor_btb_0_pred_valid [get_bd_pins branch_predictor_btb_0/pred_valid] [get_bd_pins util_vector_and_0/Op1]
  connect_bd_net -net constant_one_0_dout [get_bd_pins constant_one_0/dout] [get_bd_pins if_id_reg_0/if_valid_in]
  connect_bd_net -net ena_1 [get_bd_pins rom_memory_0/en] [get_bd_pins util_vector_not_1/Res]
  connect_bd_net -net flush_1 [get_bd_pins flush] [get_bd_pins util_vector_or_0/Op1]
  connect_bd_net -net hold_1 [get_bd_pins hold] [get_bd_pins util_vector_or_1/Op1]
  connect_bd_net -net if_id_reg_0_id_instr_out [get_bd_pins id_instr_out] [get_bd_pins if_id_reg_0/id_instr_out]
  connect_bd_net -net if_id_reg_0_id_pc4_out [get_bd_pins id_pc4_out] [get_bd_pins if_id_reg_0/id_pc4_out]
  connect_bd_net -net if_id_reg_0_id_pc_out [get_bd_pins id_pc_out] [get_bd_pins if_id_reg_0/id_pc_out]
  connect_bd_net -net if_id_reg_0_id_pred_next_pc_out [get_bd_pins id_pred_next_pc_out] [get_bd_pins if_id_reg_0/id_pred_next_pc_out]
  connect_bd_net -net if_id_reg_0_id_valid_out [get_bd_pins id_valid_out] [get_bd_pins if_id_reg_0/id_valid_out]
  connect_bd_net -net pc_en_1 [get_bd_pins pc_en] [get_bd_pins util_vector_and_1/Op1]
  connect_bd_net -net pc_redirect_valid_1 [get_bd_pins pc_redirect_valid] [get_bd_pins pc_unit_0/pc_redirect_valid]
  connect_bd_net -net pc_to_imem_addr_0_addr [get_bd_pins pc_to_imem_addr_0/addr] [get_bd_pins rom_memory_0/addr]
  connect_bd_net -net pc_unit_0_pc [get_bd_pins branch_predictor_btb_0/if_pc] [get_bd_pins if_id_reg_0/if_pc_in] [get_bd_pins pc_to_imem_addr_0/pc] [get_bd_pins pc_unit_0/pc]
  connect_bd_net -net pc_unit_0_pc_plus4 [get_bd_pins if_id_reg_0/if_pc4_in] [get_bd_pins pc_unit_0/pc_plus4]
  connect_bd_net -net priv_redirect_target_1 [get_bd_pins priv_redirect_target] [get_bd_pins pc_unit_0/priv_redirect_target]
  connect_bd_net -net priv_redirect_valid_1 [get_bd_pins priv_redirect_valid] [get_bd_pins pc_unit_0/priv_redirect_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins branch_predictor_btb_0/rst] [get_bd_pins if_id_reg_0/rst] [get_bd_pins pc_unit_0/rst]
  connect_bd_net -net rom_memory_0_dout [get_bd_pins if_id_reg_0/if_instr_in] [get_bd_pins rom_memory_0/dout]
  connect_bd_net -net update_is_control_1 [get_bd_pins update_is_control] [get_bd_pins branch_predictor_btb_0/update_is_control]
  connect_bd_net -net update_pc_1 [get_bd_pins update_pc] [get_bd_pins branch_predictor_btb_0/update_pc]
  connect_bd_net -net update_taken_1 [get_bd_pins update_taken] [get_bd_pins branch_predictor_btb_0/update_taken]
  connect_bd_net -net update_target_1 [get_bd_pins update_target] [get_bd_pins branch_predictor_btb_0/update_target]
  connect_bd_net -net update_valid1_1 [get_bd_pins update_valid] [get_bd_pins branch_predictor_btb_0/update_valid]
  connect_bd_net -net util_vector_and_1_Res [get_bd_pins pc_unit_0/pc_en] [get_bd_pins util_vector_and_1/Res]
  connect_bd_net -net util_vector_not_0_Res [get_bd_pins util_vector_and_1/Op2] [get_bd_pins util_vector_not_0/Res]
  connect_bd_net -net util_vector_or_0_Res [get_bd_pins if_id_reg_0/flush] [get_bd_pins util_vector_or_0/Res]
  connect_bd_net -net util_vector_or_1_Res [get_bd_pins if_id_reg_0/hold] [get_bd_pins util_vector_not_1/Op1] [get_bd_pins util_vector_or_1/Res]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins branch_predictor_btb_0/clk] [get_bd_pins if_id_reg_0/clk] [get_bd_pins pc_unit_0/clk] [get_bd_pins rom_memory_0/clk]

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
  create_bd_pin -dir O ex_illegal_instr
  create_bd_pin -dir O -from 31 -to 0 ex_imm
  create_bd_pin -dir O -from 31 -to 0 ex_imm_u
  create_bd_pin -dir O -from 31 -to 0 ex_instr
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
  create_bd_pin -dir O -from 31 -to 0 ex_pred_next_pc
  create_bd_pin -dir O -from 4 -to 0 ex_rd
  create_bd_pin -dir O ex_rd_we
  create_bd_pin -dir O -from 4 -to 0 ex_rs1
  create_bd_pin -dir O -from 31 -to 0 ex_rs1_data
  create_bd_pin -dir O -from 4 -to 0 ex_rs2
  create_bd_pin -dir O -from 31 -to 0 ex_rs2_data
  create_bd_pin -dir O ex_valid
  create_bd_pin -dir O -from 2 -to 0 ex_wb_sel
  create_bd_pin -dir I -from 31 -to 0 id_pc
  create_bd_pin -dir I -from 31 -to 0 id_pc_plus4
  create_bd_pin -dir I -from 31 -to 0 id_pred_next_pc
  create_bd_pin -dir I id_valid
  create_bd_pin -dir I -from 31 -to 0 instr
  create_bd_pin -dir I -from 4 -to 0 rd_addr
  create_bd_pin -dir I -from 31 -to 0 rd_wdata
  create_bd_pin -dir I rd_we
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
  
  # Create instance: id_ex_reg, and set properties
  set block_name id_ex_reg
  set block_cell_name id_ex_reg
  if { [catch {set id_ex_reg [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $id_ex_reg eq "" } {
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
  
  # Create port connections
  connect_bd_net -net bubble_1 [get_bd_pins bubble] [get_bd_pins id_ex_reg/bubble]
  connect_bd_net -net control_0_alu_op [get_bd_pins control_0/alu_op] [get_bd_pins id_ex_reg/id_alu_op]
  connect_bd_net -net control_0_branch_en [get_bd_pins control_0/branch_en] [get_bd_pins id_ex_reg/id_branch_en]
  connect_bd_net -net control_0_branch_funct3 [get_bd_pins control_0/branch_funct3] [get_bd_pins id_ex_reg/id_branch_funct3]
  connect_bd_net -net control_0_imm_sel [get_bd_pins control_0/imm_sel] [get_bd_pins imm_mux_0/imm_sel]
  connect_bd_net -net control_0_jal [get_bd_pins control_0/jal] [get_bd_pins id_ex_reg/id_jal]
  connect_bd_net -net control_0_jalr [get_bd_pins control_0/jalr] [get_bd_pins id_ex_reg/id_jalr]
  connect_bd_net -net control_0_mem_re [get_bd_pins control_0/mem_re] [get_bd_pins id_ex_reg/id_mem_re]
  connect_bd_net -net control_0_mem_size [get_bd_pins control_0/mem_size] [get_bd_pins id_ex_reg/id_mem_size]
  connect_bd_net -net control_0_mem_unsigned [get_bd_pins control_0/mem_unsigned] [get_bd_pins id_ex_reg/id_mem_unsigned]
  connect_bd_net -net control_0_mem_we [get_bd_pins control_0/mem_we] [get_bd_pins id_ex_reg/id_mem_we]
  connect_bd_net -net control_0_op_a_sel [get_bd_pins control_0/op_a_sel] [get_bd_pins id_ex_reg/id_op_a_sel]
  connect_bd_net -net control_0_op_b_sel [get_bd_pins control_0/op_b_sel] [get_bd_pins id_ex_reg/id_op_b_sel]
  connect_bd_net -net control_0_rd_we [get_bd_pins control_0/rd_we] [get_bd_pins id_ex_reg/id_rd_we]
  connect_bd_net -net control_0_wb_sel [get_bd_pins control_0/wb_sel] [get_bd_pins id_ex_reg/id_wb_sel]
  connect_bd_net -net decoder_0_bit30 [get_bd_pins control_0/bit30] [get_bd_pins decoder_0/bit30]
  connect_bd_net -net decoder_0_fmt [get_bd_pins control_0/fmt] [get_bd_pins decoder_0/fmt]
  connect_bd_net -net decoder_0_funct3 [get_bd_pins control_0/funct3] [get_bd_pins decoder_0/funct3]
  connect_bd_net -net decoder_0_funct7 [get_bd_pins control_0/funct7] [get_bd_pins decoder_0/funct7]
  connect_bd_net -net decoder_0_illegal_opcode [get_bd_pins decoder_0/illegal_opcode] [get_bd_pins id_ex_reg/id_illegal_instr]
  connect_bd_net -net decoder_0_imm_b [get_bd_pins decoder_0/imm_b] [get_bd_pins imm_mux_0/imm_b]
  connect_bd_net -net decoder_0_imm_i [get_bd_pins decoder_0/imm_i] [get_bd_pins imm_mux_0/imm_i]
  connect_bd_net -net decoder_0_imm_j [get_bd_pins decoder_0/imm_j] [get_bd_pins imm_mux_0/imm_j]
  connect_bd_net -net decoder_0_imm_s [get_bd_pins decoder_0/imm_s] [get_bd_pins imm_mux_0/imm_s]
  connect_bd_net -net decoder_0_imm_u [get_bd_pins decoder_0/imm_u] [get_bd_pins id_ex_reg/id_imm_u] [get_bd_pins imm_mux_0/imm_u]
  connect_bd_net -net decoder_0_opcode [get_bd_pins control_0/opcode] [get_bd_pins decoder_0/opcode]
  connect_bd_net -net decoder_0_rd [get_bd_pins decoder_0/rd] [get_bd_pins id_ex_reg/id_rd]
  connect_bd_net -net decoder_0_rs1 [get_bd_pins rs1] [get_bd_pins decoder_0/rs1] [get_bd_pins id_ex_reg/id_rs1] [get_bd_pins regfile_0/rs1_addr]
  connect_bd_net -net decoder_0_rs1_used [get_bd_pins rs1_used] [get_bd_pins decoder_0/rs1_used]
  connect_bd_net -net decoder_0_rs2 [get_bd_pins rs2] [get_bd_pins decoder_0/rs2] [get_bd_pins id_ex_reg/id_rs2] [get_bd_pins regfile_0/rs2_addr]
  connect_bd_net -net decoder_0_rs2_used [get_bd_pins rs2_used] [get_bd_pins decoder_0/rs2_used]
  connect_bd_net -net id_ex_reg_1_ex_alu_op [get_bd_pins ex_alu_op] [get_bd_pins id_ex_reg/ex_alu_op]
  connect_bd_net -net id_ex_reg_1_ex_branch_en [get_bd_pins ex_branch_en] [get_bd_pins id_ex_reg/ex_branch_en]
  connect_bd_net -net id_ex_reg_1_ex_branch_funct3 [get_bd_pins ex_branch_funct3] [get_bd_pins id_ex_reg/ex_branch_funct3]
  connect_bd_net -net id_ex_reg_1_ex_illegal_instr [get_bd_pins ex_illegal_instr] [get_bd_pins id_ex_reg/ex_illegal_instr]
  connect_bd_net -net id_ex_reg_1_ex_imm [get_bd_pins ex_imm] [get_bd_pins id_ex_reg/ex_imm]
  connect_bd_net -net id_ex_reg_1_ex_imm_u [get_bd_pins ex_imm_u] [get_bd_pins id_ex_reg/ex_imm_u]
  connect_bd_net -net id_ex_reg_1_ex_instr [get_bd_pins ex_instr] [get_bd_pins id_ex_reg/ex_instr]
  connect_bd_net -net id_ex_reg_1_ex_jal [get_bd_pins ex_jal] [get_bd_pins id_ex_reg/ex_jal]
  connect_bd_net -net id_ex_reg_1_ex_jalr [get_bd_pins ex_jalr] [get_bd_pins id_ex_reg/ex_jalr]
  connect_bd_net -net id_ex_reg_1_ex_mem_re [get_bd_pins ex_mem_re] [get_bd_pins id_ex_reg/ex_mem_re]
  connect_bd_net -net id_ex_reg_1_ex_mem_size [get_bd_pins ex_mem_size] [get_bd_pins id_ex_reg/ex_mem_size]
  connect_bd_net -net id_ex_reg_1_ex_mem_unsigned [get_bd_pins ex_mem_unsigned] [get_bd_pins id_ex_reg/ex_mem_unsigned]
  connect_bd_net -net id_ex_reg_1_ex_mem_we [get_bd_pins ex_mem_we] [get_bd_pins id_ex_reg/ex_mem_we]
  connect_bd_net -net id_ex_reg_1_ex_op_a_sel [get_bd_pins ex_op_a_sel] [get_bd_pins id_ex_reg/ex_op_a_sel]
  connect_bd_net -net id_ex_reg_1_ex_op_b_sel [get_bd_pins ex_op_b_sel] [get_bd_pins id_ex_reg/ex_op_b_sel]
  connect_bd_net -net id_ex_reg_1_ex_pc [get_bd_pins ex_pc] [get_bd_pins id_ex_reg/ex_pc]
  connect_bd_net -net id_ex_reg_1_ex_pc_plus4 [get_bd_pins ex_pc_plus4] [get_bd_pins id_ex_reg/ex_pc_plus4]
  connect_bd_net -net id_ex_reg_1_ex_pred_next_pc [get_bd_pins ex_pred_next_pc] [get_bd_pins id_ex_reg/ex_pred_next_pc]
  connect_bd_net -net id_ex_reg_1_ex_rd [get_bd_pins ex_rd] [get_bd_pins id_ex_reg/ex_rd]
  connect_bd_net -net id_ex_reg_1_ex_rd_we [get_bd_pins ex_rd_we] [get_bd_pins id_ex_reg/ex_rd_we]
  connect_bd_net -net id_ex_reg_1_ex_rs1 [get_bd_pins ex_rs1] [get_bd_pins id_ex_reg/ex_rs1]
  connect_bd_net -net id_ex_reg_1_ex_rs1_data [get_bd_pins ex_rs1_data] [get_bd_pins id_ex_reg/ex_rs1_data]
  connect_bd_net -net id_ex_reg_1_ex_rs2 [get_bd_pins ex_rs2] [get_bd_pins id_ex_reg/ex_rs2]
  connect_bd_net -net id_ex_reg_1_ex_rs2_data [get_bd_pins ex_rs2_data] [get_bd_pins id_ex_reg/ex_rs2_data]
  connect_bd_net -net id_ex_reg_1_ex_valid [get_bd_pins ex_valid] [get_bd_pins id_ex_reg/ex_valid]
  connect_bd_net -net id_ex_reg_1_ex_wb_sel [get_bd_pins ex_wb_sel] [get_bd_pins id_ex_reg/ex_wb_sel]
  connect_bd_net -net id_pred_next_pc_1 [get_bd_pins id_pred_next_pc] [get_bd_pins id_ex_reg/id_pred_next_pc]
  connect_bd_net -net if_id_reg_0_id_instr_out [get_bd_pins instr] [get_bd_pins decoder_0/instr] [get_bd_pins id_ex_reg/id_instr]
  connect_bd_net -net if_id_reg_0_id_pc4_out [get_bd_pins id_pc_plus4] [get_bd_pins id_ex_reg/id_pc_plus4]
  connect_bd_net -net if_id_reg_0_id_pc_out [get_bd_pins id_pc] [get_bd_pins id_ex_reg/id_pc]
  connect_bd_net -net if_id_reg_0_id_valid_out [get_bd_pins id_valid] [get_bd_pins id_ex_reg/id_valid]
  connect_bd_net -net imm_mux_0_imm_out [get_bd_pins id_ex_reg/id_imm] [get_bd_pins imm_mux_0/imm_out]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins id_ex_reg/rst]
  connect_bd_net -net rd_addr1_1 [get_bd_pins rd_addr] [get_bd_pins regfile_0/rd_addr]
  connect_bd_net -net rd_wdata1_1 [get_bd_pins rd_wdata] [get_bd_pins regfile_0/rd_wdata]
  connect_bd_net -net rd_we1_1 [get_bd_pins rd_we] [get_bd_pins regfile_0/rd_we]
  connect_bd_net -net regfile_0_rs1_rdata [get_bd_pins id_ex_reg/id_rs1_data] [get_bd_pins regfile_0/rs1_rdata]
  connect_bd_net -net regfile_0_rs2_rdata [get_bd_pins id_ex_reg/id_rs2_data] [get_bd_pins regfile_0/rs2_rdata]
  connect_bd_net -net stall1_1 [get_bd_pins stall] [get_bd_pins id_ex_reg/stall]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins id_ex_reg/clk] [get_bd_pins regfile_0/clk]

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
  create_bd_pin -dir O bp_update_is_control
  create_bd_pin -dir O bp_update_taken
  create_bd_pin -dir O -from 31 -to 0 bp_update_target
  create_bd_pin -dir O bp_update_valid
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 31 -to 0 ex_actual_next_pc
  create_bd_pin -dir I ex_branch_en
  create_bd_pin -dir I -from 2 -to 0 ex_branch_funct3
  create_bd_pin -dir I -from 4 -to 0 ex_csr_rd_addr
  create_bd_pin -dir I -from 31 -to 0 ex_csr_rd_data
  create_bd_pin -dir I ex_csr_rd_we
  create_bd_pin -dir O -from 3 -to 0 ex_exception_cause
  create_bd_pin -dir O -from 31 -to 0 ex_exception_tval
  create_bd_pin -dir O ex_exception_valid
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
  create_bd_pin -dir I -from 31 -to 0 ex_pred_next_pc
  create_bd_pin -dir I -from 4 -to 0 ex_rd
  create_bd_pin -dir I ex_rd_we
  create_bd_pin -dir I -from 4 -to 0 ex_rs1
  create_bd_pin -dir I -from 31 -to 0 ex_rs1_data
  create_bd_pin -dir I -from 4 -to 0 ex_rs2
  create_bd_pin -dir I -from 31 -to 0 ex_rs2_data
  create_bd_pin -dir I ex_valid
  create_bd_pin -dir I -from 2 -to 0 ex_wb_sel
  create_bd_pin -dir O -from 4 -to 0 mem_csr_rd_addr
  create_bd_pin -dir O -from 31 -to 0 mem_csr_rd_data
  create_bd_pin -dir O mem_csr_rd_we
  create_bd_pin -dir O -from 3 -to 0 mem_exception_cause
  create_bd_pin -dir O -from 31 -to 0 mem_exception_tval
  create_bd_pin -dir O mem_exception_valid
  create_bd_pin -dir O -from 31 -to 0 mem_imm_u
  create_bd_pin -dir O mem_mem_re
  create_bd_pin -dir O -from 1 -to 0 mem_mem_size
  create_bd_pin -dir O mem_mem_unsigned
  create_bd_pin -dir O mem_mem_we
  create_bd_pin -dir O -from 31 -to 0 mem_pc
  create_bd_pin -dir O -from 31 -to 0 mem_pc_plus4
  create_bd_pin -dir O -from 4 -to 0 mem_rd
  create_bd_pin -dir O mem_rd_we
  create_bd_pin -dir I -from 31 -to 0 mem_stage_data
  create_bd_pin -dir I mem_stage_out_valid
  create_bd_pin -dir I -from 4 -to 0 mem_stage_rd
  create_bd_pin -dir I -from 0 -to 0 mem_stage_rd_out_we
  create_bd_pin -dir O -from 31 -to 0 mem_store_data
  create_bd_pin -dir O mem_valid
  create_bd_pin -dir I -from 31 -to 0 mem_wb_data
  create_bd_pin -dir O -from 2 -to 0 mem_wb_sel
  create_bd_pin -dir I -from 1 -to 0 op_a_sel
  create_bd_pin -dir O -from 31 -to 0 out_data
  create_bd_pin -dir I -from 31 -to 0 pc
  create_bd_pin -dir O -from 31 -to 0 pc_redirect_target
  create_bd_pin -dir O pc_redirect_valid
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I stall
  create_bd_pin -dir I -from 4 -to 0 wb_rd
  create_bd_pin -dir I wb_rd_we
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
  
  # Create instance: constant_zero_0, and set properties
  set block_name constant_zero
  set block_cell_name constant_zero_0
  if { [catch {set constant_zero_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $constant_zero_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ex_mem_reg, and set properties
  set block_name ex_mem_reg
  set block_cell_name ex_mem_reg
  if { [catch {set ex_mem_reg [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ex_mem_reg eq "" } {
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
  
  # Create instance: util_vector_and_0, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_0
  if { [catch {set util_vector_and_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_1, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_1
  if { [catch {set util_vector_and_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Net [get_bd_pins ex_valid] [get_bd_pins branch_0/ex_valid] [get_bd_pins ex_mem_reg/ex_valid]
  connect_bd_net -net Op2_1 [get_bd_pins mem_stage_rd_out_we] [get_bd_pins util_vector_and_1/Op2]
  connect_bd_net -net alu_0_y [get_bd_pins alu_0/y] [get_bd_pins ex_mem_reg/ex_alu_result]
  connect_bd_net -net branch_0_bp_update_is_control [get_bd_pins bp_update_is_control] [get_bd_pins branch_0/bp_update_is_control]
  connect_bd_net -net branch_0_bp_update_taken [get_bd_pins bp_update_taken] [get_bd_pins branch_0/bp_update_taken]
  connect_bd_net -net branch_0_bp_update_target [get_bd_pins bp_update_target] [get_bd_pins branch_0/bp_update_target]
  connect_bd_net -net branch_0_bp_update_valid [get_bd_pins bp_update_valid] [get_bd_pins branch_0/bp_update_valid]
  connect_bd_net -net branch_0_ex_actual_next_pc [get_bd_pins ex_actual_next_pc] [get_bd_pins branch_0/ex_actual_next_pc]
  connect_bd_net -net branch_0_ex_exception_cause [get_bd_pins ex_exception_cause] [get_bd_pins branch_0/ex_exception_cause] [get_bd_pins ex_mem_reg/ex_exception_cause]
  connect_bd_net -net branch_0_ex_exception_tval [get_bd_pins ex_exception_tval] [get_bd_pins branch_0/ex_exception_tval] [get_bd_pins ex_mem_reg/ex_exception_tval]
  connect_bd_net -net branch_0_ex_exception_valid [get_bd_pins ex_exception_valid] [get_bd_pins branch_0/ex_exception_valid] [get_bd_pins ex_mem_reg/ex_exception_valid]
  connect_bd_net -net branch_0_ex_flush_req [get_bd_pins ex_flush_req] [get_bd_pins branch_0/ex_flush_req]
  connect_bd_net -net branch_0_pc_redirect_target [get_bd_pins pc_redirect_target] [get_bd_pins branch_0/pc_redirect_target]
  connect_bd_net -net branch_0_pc_redirect_valid [get_bd_pins pc_redirect_valid] [get_bd_pins branch_0/pc_redirect_valid]
  connect_bd_net -net constant_zero_0_dout [get_bd_pins constant_zero_0/dout] [get_bd_pins ex_mem_reg/flush]
  connect_bd_net -net ex_csr_rd_addr_1 [get_bd_pins ex_csr_rd_addr] [get_bd_pins ex_mem_reg/ex_csr_rd_addr]
  connect_bd_net -net ex_csr_rd_data_1 [get_bd_pins ex_csr_rd_data] [get_bd_pins ex_mem_reg/ex_csr_rd_data]
  connect_bd_net -net ex_csr_rd_we_1 [get_bd_pins ex_csr_rd_we] [get_bd_pins ex_mem_reg/ex_csr_rd_we]
  connect_bd_net -net ex_mem_reg_1_mem_alu_result [get_bd_pins ex_mem_data] [get_bd_pins ex_mem_reg/mem_alu_result] [get_bd_pins forward_mux_0/ex_mem_data] [get_bd_pins forward_mux_1/ex_mem_data] [get_bd_pins forward_mux_2/ex_mem_data]
  connect_bd_net -net ex_mem_reg_1_mem_imm_u [get_bd_pins mem_imm_u] [get_bd_pins ex_mem_reg/mem_imm_u]
  connect_bd_net -net ex_mem_reg_1_mem_mem_re [get_bd_pins mem_mem_re] [get_bd_pins ex_mem_reg/mem_mem_re] [get_bd_pins forwarding_0/mem_is_load]
  connect_bd_net -net ex_mem_reg_1_mem_mem_size [get_bd_pins mem_mem_size] [get_bd_pins ex_mem_reg/mem_mem_size]
  connect_bd_net -net ex_mem_reg_1_mem_mem_unsigned [get_bd_pins mem_mem_unsigned] [get_bd_pins ex_mem_reg/mem_mem_unsigned]
  connect_bd_net -net ex_mem_reg_1_mem_mem_we [get_bd_pins mem_mem_we] [get_bd_pins ex_mem_reg/mem_mem_we]
  connect_bd_net -net ex_mem_reg_1_mem_pc_plus4 [get_bd_pins mem_pc_plus4] [get_bd_pins ex_mem_reg/mem_pc_plus4]
  connect_bd_net -net ex_mem_reg_1_mem_rd [get_bd_pins mem_rd] [get_bd_pins ex_mem_reg/mem_rd] [get_bd_pins forwarding_0/mem_rd]
  connect_bd_net -net ex_mem_reg_1_mem_rd_we [get_bd_pins mem_rd_we] [get_bd_pins ex_mem_reg/mem_rd_we] [get_bd_pins util_vector_and_0/Op2]
  connect_bd_net -net ex_mem_reg_1_mem_store_data [get_bd_pins mem_store_data] [get_bd_pins ex_mem_reg/mem_store_data]
  connect_bd_net -net ex_mem_reg_1_mem_valid [get_bd_pins mem_valid] [get_bd_pins ex_mem_reg/mem_valid] [get_bd_pins forwarding_0/mem_valid] [get_bd_pins util_vector_and_0/Op1]
  connect_bd_net -net ex_mem_reg_1_mem_wb_sel [get_bd_pins mem_wb_sel] [get_bd_pins ex_mem_reg/mem_wb_sel]
  connect_bd_net -net ex_mem_reg_mem_csr_rd_addr [get_bd_pins mem_csr_rd_addr] [get_bd_pins ex_mem_reg/mem_csr_rd_addr]
  connect_bd_net -net ex_mem_reg_mem_csr_rd_data [get_bd_pins mem_csr_rd_data] [get_bd_pins ex_mem_reg/mem_csr_rd_data]
  connect_bd_net -net ex_mem_reg_mem_csr_rd_we [get_bd_pins mem_csr_rd_we] [get_bd_pins ex_mem_reg/mem_csr_rd_we]
  connect_bd_net -net ex_mem_reg_mem_exception_cause [get_bd_pins mem_exception_cause] [get_bd_pins ex_mem_reg/mem_exception_cause]
  connect_bd_net -net ex_mem_reg_mem_exception_tval [get_bd_pins mem_exception_tval] [get_bd_pins ex_mem_reg/mem_exception_tval]
  connect_bd_net -net ex_mem_reg_mem_exception_valid [get_bd_pins mem_exception_valid] [get_bd_pins ex_mem_reg/mem_exception_valid]
  connect_bd_net -net ex_mem_reg_mem_pc [get_bd_pins mem_pc] [get_bd_pins ex_mem_reg/mem_pc]
  connect_bd_net -net ex_pred_next_pc_1 [get_bd_pins ex_pred_next_pc] [get_bd_pins branch_0/ex_pred_next_pc]
  connect_bd_net -net forward_mux_0_out_data [get_bd_pins out_data] [get_bd_pins branch_0/ex_rs1_data] [get_bd_pins forward_mux_0/out_data] [get_bd_pins operand_a_mux_0/rs1_data]
  connect_bd_net -net forward_mux_1_out_data [get_bd_pins branch_0/ex_rs2_data] [get_bd_pins forward_mux_1/out_data] [get_bd_pins operand_b_mux_0/rs2_data]
  connect_bd_net -net forward_mux_2_out_data [get_bd_pins ex_mem_reg/ex_store_data] [get_bd_pins forward_mux_2/out_data]
  connect_bd_net -net forwarding_0_forward_a [get_bd_pins forward_mux_0/forward_sel] [get_bd_pins forwarding_0/forward_a]
  connect_bd_net -net forwarding_0_forward_b [get_bd_pins forward_mux_1/forward_sel] [get_bd_pins forwarding_0/forward_b]
  connect_bd_net -net forwarding_0_forward_store [get_bd_pins forward_mux_2/forward_sel] [get_bd_pins forwarding_0/forward_store]
  connect_bd_net -net id_ex_reg_0_ex_alu_op [get_bd_pins alu_op] [get_bd_pins alu_0/alu_op]
  connect_bd_net -net id_ex_reg_0_ex_branch_en [get_bd_pins ex_branch_en] [get_bd_pins branch_0/ex_branch_en]
  connect_bd_net -net id_ex_reg_0_ex_branch_funct3 [get_bd_pins ex_branch_funct3] [get_bd_pins branch_0/ex_branch_funct3]
  connect_bd_net -net id_ex_reg_0_ex_imm [get_bd_pins ex_imm] [get_bd_pins branch_0/ex_imm] [get_bd_pins operand_b_mux_0/imm]
  connect_bd_net -net id_ex_reg_0_ex_imm_u [get_bd_pins ex_imm_u] [get_bd_pins ex_mem_reg/ex_imm_u]
  connect_bd_net -net id_ex_reg_0_ex_jal [get_bd_pins ex_jal] [get_bd_pins branch_0/ex_jal]
  connect_bd_net -net id_ex_reg_0_ex_jalr [get_bd_pins ex_jalr] [get_bd_pins branch_0/ex_jalr]
  connect_bd_net -net id_ex_reg_0_ex_mem_re [get_bd_pins ex_mem_re] [get_bd_pins ex_mem_reg/ex_mem_re]
  connect_bd_net -net id_ex_reg_0_ex_mem_size [get_bd_pins ex_mem_size] [get_bd_pins ex_mem_reg/ex_mem_size]
  connect_bd_net -net id_ex_reg_0_ex_mem_unsigned [get_bd_pins ex_mem_unsigned] [get_bd_pins ex_mem_reg/ex_mem_unsigned]
  connect_bd_net -net id_ex_reg_0_ex_mem_we [get_bd_pins ex_mem_we] [get_bd_pins ex_mem_reg/ex_mem_we]
  connect_bd_net -net id_ex_reg_0_ex_op_a_sel [get_bd_pins op_a_sel] [get_bd_pins operand_a_mux_0/op_a_sel]
  connect_bd_net -net id_ex_reg_0_ex_op_b_sel [get_bd_pins ex_op_b_sel] [get_bd_pins forwarding_0/ex_op_b_sel] [get_bd_pins operand_b_mux_0/op_b_sel]
  connect_bd_net -net id_ex_reg_0_ex_pc [get_bd_pins pc] [get_bd_pins branch_0/ex_pc] [get_bd_pins ex_mem_reg/ex_pc] [get_bd_pins operand_a_mux_0/pc]
  connect_bd_net -net id_ex_reg_0_ex_pc_plus4 [get_bd_pins ex_pc_plus4] [get_bd_pins ex_mem_reg/ex_pc_plus4]
  connect_bd_net -net id_ex_reg_0_ex_rd [get_bd_pins ex_rd] [get_bd_pins ex_mem_reg/ex_rd]
  connect_bd_net -net id_ex_reg_0_ex_rd_we [get_bd_pins ex_rd_we] [get_bd_pins ex_mem_reg/ex_rd_we]
  connect_bd_net -net id_ex_reg_0_ex_rs1 [get_bd_pins ex_rs1] [get_bd_pins forwarding_0/ex_rs1]
  connect_bd_net -net id_ex_reg_0_ex_rs1_data [get_bd_pins ex_rs1_data] [get_bd_pins forward_mux_0/base_data]
  connect_bd_net -net id_ex_reg_0_ex_rs2 [get_bd_pins ex_rs2] [get_bd_pins forwarding_0/ex_rs2]
  connect_bd_net -net id_ex_reg_0_ex_rs2_data [get_bd_pins ex_rs2_data] [get_bd_pins forward_mux_1/base_data] [get_bd_pins forward_mux_2/base_data]
  connect_bd_net -net id_ex_reg_0_ex_wb_sel [get_bd_pins ex_wb_sel] [get_bd_pins ex_mem_reg/ex_wb_sel]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins mem_stage_data] [get_bd_pins forward_mux_0/mem_stage_data] [get_bd_pins forward_mux_1/mem_stage_data] [get_bd_pins forward_mux_2/mem_stage_data]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins mem_stage_rd] [get_bd_pins forwarding_0/mem_stage_rd]
  connect_bd_net -net mem_stage_valid_1 [get_bd_pins mem_stage_out_valid] [get_bd_pins forwarding_0/mem_stage_valid] [get_bd_pins util_vector_and_1/Op1]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins wb_rd] [get_bd_pins forwarding_0/wb_rd]
  connect_bd_net -net operand_a_mux_0_operand_a [get_bd_pins alu_0/a] [get_bd_pins operand_a_mux_0/operand_a]
  connect_bd_net -net operand_b_mux_0_operand_b [get_bd_pins alu_0/b] [get_bd_pins operand_b_mux_0/operand_b]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins ex_mem_reg/rst]
  connect_bd_net -net stall_1 [get_bd_pins stall] [get_bd_pins ex_mem_reg/stall]
  connect_bd_net -net util_vector_and_0_Res [get_bd_pins forwarding_0/mem_rd_we] [get_bd_pins util_vector_and_0/Res]
  connect_bd_net -net util_vector_and_1_Res [get_bd_pins forwarding_0/mem_stage_rd_we] [get_bd_pins util_vector_and_1/Res]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins mem_wb_data] [get_bd_pins forward_mux_0/mem_wb_data] [get_bd_pins forward_mux_1/mem_wb_data] [get_bd_pins forward_mux_2/mem_wb_data]
  connect_bd_net -net wb_rd_we1_1 [get_bd_pins wb_rd_we] [get_bd_pins forwarding_0/wb_rd_we]
  connect_bd_net -net wb_valid_1 [get_bd_pins wb_valid] [get_bd_pins forwarding_0/wb_valid]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins ex_mem_reg/clk]

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
  create_bd_pin -dir I rx
  create_bd_pin -dir O tx
  create_bd_pin -dir I valid
  create_bd_pin -dir I -from 31 -to 0 wdata
  create_bd_pin -dir I we

  # Create instance: uart_0, and set properties
  set block_name uart
  set block_cell_name uart_0
  if { [catch {set uart_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net MMIO_uart_addr [get_bd_pins addr] [get_bd_pins uart_0/addr]
  connect_bd_net -net MMIO_uart_be [get_bd_pins be] [get_bd_pins uart_0/be]
  connect_bd_net -net MMIO_uart_valid [get_bd_pins valid] [get_bd_pins uart_0/valid]
  connect_bd_net -net MMIO_uart_wdata [get_bd_pins wdata] [get_bd_pins uart_0/wdata]
  connect_bd_net -net MMIO_uart_we [get_bd_pins we] [get_bd_pins uart_0/we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins uart_0/rst]
  connect_bd_net -net rx_1 [get_bd_pins rx] [get_bd_pins uart_0/rx]
  connect_bd_net -net uart_0_rdata [get_bd_pins rdata] [get_bd_pins uart_0/rdata]
  connect_bd_net -net uart_0_ready [get_bd_pins ready] [get_bd_pins uart_0/ready]
  connect_bd_net -net uart_0_tx [get_bd_pins tx] [get_bd_pins uart_0/tx]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins uart_0/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: TIMER
proc create_hier_cell_TIMER { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_TIMER() - Empty argument(s)!"}
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
  create_bd_pin -dir O error
  create_bd_pin -dir O -from 31 -to 0 rdata
  create_bd_pin -dir O ready
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir O -type intr timer_irq
  create_bd_pin -dir I valid
  create_bd_pin -dir I -from 31 -to 0 wdata
  create_bd_pin -dir I we

  # Create instance: timer_0, and set properties
  set block_name timer
  set block_cell_name timer_0
  if { [catch {set timer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $timer_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.RESET_CMP {0x0002E7CA} \
 ] $timer_0

  # Create port connections
  connect_bd_net -net MMIO_timer_addr [get_bd_pins addr] [get_bd_pins timer_0/addr]
  connect_bd_net -net MMIO_timer_be [get_bd_pins be] [get_bd_pins timer_0/be]
  connect_bd_net -net MMIO_timer_valid [get_bd_pins valid] [get_bd_pins timer_0/valid]
  connect_bd_net -net MMIO_timer_wdata [get_bd_pins wdata] [get_bd_pins timer_0/wdata]
  connect_bd_net -net MMIO_timer_we [get_bd_pins we] [get_bd_pins timer_0/we]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins timer_0/rst]
  connect_bd_net -net timer_0_error [get_bd_pins error] [get_bd_pins timer_0/error]
  connect_bd_net -net timer_0_rdata [get_bd_pins rdata] [get_bd_pins timer_0/rdata]
  connect_bd_net -net timer_0_ready [get_bd_pins ready] [get_bd_pins timer_0/ready]
  connect_bd_net -net timer_0_timer_irq [get_bd_pins timer_irq] [get_bd_pins timer_0/timer_irq]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins timer_0/clk]

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
  create_bd_pin -dir O ready
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I valid
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
  connect_bd_net -net ram_data_1_ready [get_bd_pins ready] [get_bd_pins ram_data_1/ready]
  connect_bd_net -net rst_1 [get_bd_pins rst] [get_bd_pins ram_data_1/rst]
  connect_bd_net -net valid_1 [get_bd_pins valid] [get_bd_pins ram_data_1/valid]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins ram_data_1/clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: PRIVILEGED
proc create_hier_cell_PRIVILEGED { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_PRIVILEGED() - Empty argument(s)!"}
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
  create_bd_pin -dir O -from 4 -to 0 csr_rd_addr
  create_bd_pin -dir I -from 4 -to 0 csr_rd_addr1
  create_bd_pin -dir O -from 31 -to 0 csr_rd_data1
  create_bd_pin -dir I -from 31 -to 0 csr_rd_data2
  create_bd_pin -dir O csr_rd_we
  create_bd_pin -dir I csr_rd_we1
  create_bd_pin -dir I -from 31 -to 0 current_pc
  create_bd_pin -dir I -from 3 -to 0 ex_exception_cause
  create_bd_pin -dir I -from 31 -to 0 ex_exception_tval
  create_bd_pin -dir I ex_exception_valid
  create_bd_pin -dir O -from 4 -to 0 final_rd
  create_bd_pin -dir O -from 31 -to 0 final_wdata
  create_bd_pin -dir O final_we
  create_bd_pin -dir O id_ex_flush
  create_bd_pin -dir O if_id_hold
  create_bd_pin -dir I -from 4 -to 0 if_id_rs1
  create_bd_pin -dir I if_id_rs1_used
  create_bd_pin -dir I -from 4 -to 0 if_id_rs2
  create_bd_pin -dir I if_id_rs2_used
  create_bd_pin -dir I if_id_valid
  create_bd_pin -dir I illegal_instr
  create_bd_pin -dir I -from 31 -to 0 instr
  create_bd_pin -dir I instr_valid
  create_bd_pin -dir I -from 3 -to 0 mem_exception_cause
  create_bd_pin -dir I -from 31 -to 0 mem_exception_pc
  create_bd_pin -dir I -from 31 -to 0 mem_exception_tval
  create_bd_pin -dir I mem_exception_valid
  create_bd_pin -dir I -from 3 -to 0 mem_fault_cause
  create_bd_pin -dir I -from 31 -to 0 mem_fault_tval
  create_bd_pin -dir I mem_fault_valid
  create_bd_pin -dir I mem_stall_req
  create_bd_pin -dir I -from 4 -to 0 normal_rd
  create_bd_pin -dir I -from 31 -to 0 normal_wdata
  create_bd_pin -dir I normal_we
  create_bd_pin -dir O pc_en
  create_bd_pin -dir O -from 31 -to 0 priv_redirect_target
  create_bd_pin -dir O priv_redirect_valid
  create_bd_pin -dir I -from 31 -to 0 rs1_data
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -type intr timer_irq
  create_bd_pin -dir O trap_flush

  # Create instance: csr_access_unit_0, and set properties
  set block_name csr_access_unit
  set block_cell_name csr_access_unit_0
  if { [catch {set csr_access_unit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $csr_access_unit_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: csr_file_0, and set properties
  set block_name csr_file
  set block_cell_name csr_file_0
  if { [catch {set csr_file_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $csr_file_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: csr_regfile_wb_mux_0, and set properties
  set block_name csr_regfile_wb_mux
  set block_cell_name csr_regfile_wb_mux_0
  if { [catch {set csr_regfile_wb_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $csr_regfile_wb_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: csr_use_detection_0, and set properties
  set block_name csr_use_detection
  set block_cell_name csr_use_detection_0
  if { [catch {set csr_use_detection_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $csr_use_detection_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: exception_mux_0, and set properties
  set block_name exception_mux
  set block_cell_name exception_mux_0
  if { [catch {set exception_mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $exception_mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mem_exception_merge_0, and set properties
  set block_name mem_exception_merge
  set block_cell_name mem_exception_merge_0
  if { [catch {set mem_exception_merge_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_exception_merge_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: privileged_pc_redire_0, and set properties
  set block_name privileged_pc_redirect_mux
  set block_cell_name privileged_pc_redire_0
  if { [catch {set privileged_pc_redire_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $privileged_pc_redire_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: system_decoder_0, and set properties
  set block_name system_decoder
  set block_cell_name system_decoder_0
  if { [catch {set system_decoder_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $system_decoder_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: trap_controller_0, and set properties
  set block_name trap_controller
  set block_cell_name trap_controller_0
  if { [catch {set trap_controller_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $trap_controller_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_0, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_0
  if { [catch {set util_vector_and_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_not_0, and set properties
  set block_name util_vector_not
  set block_cell_name util_vector_not_0
  if { [catch {set util_vector_not_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_not_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Core_RV32I_ex_instr [get_bd_pins instr] [get_bd_pins csr_use_detection_0/ex_instr] [get_bd_pins system_decoder_0/instr]
  connect_bd_net -net Core_RV32I_ex_pc [get_bd_pins current_pc] [get_bd_pins exception_mux_0/ex_exception_pc] [get_bd_pins trap_controller_0/current_pc]
  connect_bd_net -net Core_RV32I_ex_valid [get_bd_pins instr_valid] [get_bd_pins csr_access_unit_0/ex_valid] [get_bd_pins csr_use_detection_0/ex_valid] [get_bd_pins trap_controller_0/instr_valid]
  connect_bd_net -net Core_RV32I_mem_stall_req [get_bd_pins mem_stall_req] [get_bd_pins trap_controller_0/mem_stall_req]
  connect_bd_net -net Core_RV32I_rd_wdata [get_bd_pins normal_wdata] [get_bd_pins csr_regfile_wb_mux_0/normal_wdata]
  connect_bd_net -net Core_RV32I_wb_rd [get_bd_pins normal_rd] [get_bd_pins csr_regfile_wb_mux_0/normal_rd]
  connect_bd_net -net TIMER_timer_irq [get_bd_pins timer_irq] [get_bd_pins csr_file_0/timer_irq] [get_bd_pins trap_controller_0/timer_irq]
  connect_bd_net -net csr_access_unit_0_csr_rd_addr [get_bd_pins csr_rd_addr] [get_bd_pins csr_access_unit_0/csr_rd_addr]
  connect_bd_net -net csr_access_unit_0_csr_rd_data [get_bd_pins csr_rd_data1] [get_bd_pins csr_access_unit_0/csr_rd_data]
  connect_bd_net -net csr_access_unit_0_csr_rd_we [get_bd_pins csr_rd_we] [get_bd_pins csr_access_unit_0/csr_rd_we]
  connect_bd_net -net csr_access_unit_0_csr_wdata [get_bd_pins csr_access_unit_0/csr_wdata] [get_bd_pins csr_file_0/csr_wdata]
  connect_bd_net -net csr_access_unit_0_csr_we [get_bd_pins csr_access_unit_0/csr_we] [get_bd_pins csr_file_0/csr_we]
  connect_bd_net -net csr_file_0_csr_mepc [get_bd_pins csr_file_0/csr_mepc] [get_bd_pins trap_controller_0/csr_mepc]
  connect_bd_net -net csr_file_0_csr_mie [get_bd_pins csr_file_0/csr_mie] [get_bd_pins trap_controller_0/csr_mie]
  connect_bd_net -net csr_file_0_csr_mip [get_bd_pins csr_file_0/csr_mip] [get_bd_pins trap_controller_0/csr_mip]
  connect_bd_net -net csr_file_0_csr_mstatus [get_bd_pins csr_file_0/csr_mstatus] [get_bd_pins trap_controller_0/csr_mstatus]
  connect_bd_net -net csr_file_0_csr_mtvec [get_bd_pins csr_file_0/csr_mtvec] [get_bd_pins trap_controller_0/csr_mtvec]
  connect_bd_net -net csr_file_0_csr_rdata [get_bd_pins csr_access_unit_0/csr_rdata] [get_bd_pins csr_file_0/csr_rdata]
  connect_bd_net -net csr_rd_addr1_1 [get_bd_pins csr_rd_addr1] [get_bd_pins csr_regfile_wb_mux_0/csr_rd_addr]
  connect_bd_net -net csr_rd_data2_1 [get_bd_pins csr_rd_data2] [get_bd_pins csr_regfile_wb_mux_0/csr_rd_data]
  connect_bd_net -net csr_rd_we1_1 [get_bd_pins csr_rd_we1] [get_bd_pins csr_regfile_wb_mux_0/csr_rd_we]
  connect_bd_net -net csr_regfile_wb_mux_0_final_rd [get_bd_pins final_rd] [get_bd_pins csr_regfile_wb_mux_0/final_rd]
  connect_bd_net -net csr_regfile_wb_mux_0_final_wdata [get_bd_pins final_wdata] [get_bd_pins csr_regfile_wb_mux_0/final_wdata]
  connect_bd_net -net csr_regfile_wb_mux_0_final_we [get_bd_pins final_we] [get_bd_pins csr_regfile_wb_mux_0/final_we]
  connect_bd_net -net csr_use_detection_0_id_ex_flush [get_bd_pins id_ex_flush] [get_bd_pins csr_use_detection_0/id_ex_flush]
  connect_bd_net -net csr_use_detection_0_if_id_hold [get_bd_pins if_id_hold] [get_bd_pins csr_use_detection_0/if_id_hold]
  connect_bd_net -net csr_use_detection_0_pc_en [get_bd_pins pc_en] [get_bd_pins csr_use_detection_0/pc_en]
  connect_bd_net -net ex_exception_cause_1 [get_bd_pins ex_exception_cause] [get_bd_pins exception_mux_0/ex_exception_cause]
  connect_bd_net -net ex_exception_tval_1 [get_bd_pins ex_exception_tval] [get_bd_pins exception_mux_0/ex_exception_tval]
  connect_bd_net -net ex_exception_valid_1 [get_bd_pins ex_exception_valid] [get_bd_pins exception_mux_0/ex_exception_valid]
  connect_bd_net -net exception_mux_0_exception_cause [get_bd_pins exception_mux_0/exception_cause] [get_bd_pins trap_controller_0/exception_cause]
  connect_bd_net -net exception_mux_0_exception_pc [get_bd_pins exception_mux_0/exception_pc] [get_bd_pins trap_controller_0/exception_pc]
  connect_bd_net -net exception_mux_0_exception_tval [get_bd_pins exception_mux_0/exception_tval] [get_bd_pins trap_controller_0/exception_tval]
  connect_bd_net -net exception_mux_0_exception_valid [get_bd_pins exception_mux_0/exception_valid] [get_bd_pins trap_controller_0/exception_valid]
  connect_bd_net -net if_id_rs1_1 [get_bd_pins if_id_rs1] [get_bd_pins csr_use_detection_0/if_id_rs1]
  connect_bd_net -net if_id_rs1_used_1 [get_bd_pins if_id_rs1_used] [get_bd_pins csr_use_detection_0/if_id_rs1_used]
  connect_bd_net -net if_id_rs2_1 [get_bd_pins if_id_rs2] [get_bd_pins csr_use_detection_0/if_id_rs2]
  connect_bd_net -net if_id_rs2_used_1 [get_bd_pins if_id_rs2_used] [get_bd_pins csr_use_detection_0/if_id_rs2_used]
  connect_bd_net -net if_id_valid_1 [get_bd_pins if_id_valid] [get_bd_pins csr_use_detection_0/if_id_valid]
  connect_bd_net -net illegal_instr_1 [get_bd_pins illegal_instr] [get_bd_pins util_vector_and_0/Op1]
  connect_bd_net -net mem_exception_cause_1 [get_bd_pins mem_exception_cause] [get_bd_pins mem_exception_merge_0/mem_exception_cause]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_cause [get_bd_pins exception_mux_0/mem_exception_cause] [get_bd_pins mem_exception_merge_0/final_mem_exception_cause]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_pc [get_bd_pins exception_mux_0/mem_exception_pc] [get_bd_pins mem_exception_merge_0/final_mem_exception_pc]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_tval [get_bd_pins exception_mux_0/mem_exception_tval] [get_bd_pins mem_exception_merge_0/final_mem_exception_tval]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_valid [get_bd_pins exception_mux_0/mem_exception_valid] [get_bd_pins mem_exception_merge_0/final_mem_exception_valid]
  connect_bd_net -net mem_exception_pc_1 [get_bd_pins mem_exception_pc] [get_bd_pins mem_exception_merge_0/mem_exception_pc]
  connect_bd_net -net mem_exception_tval_1 [get_bd_pins mem_exception_tval] [get_bd_pins mem_exception_merge_0/mem_exception_tval]
  connect_bd_net -net mem_exception_valid_1 [get_bd_pins mem_exception_valid] [get_bd_pins mem_exception_merge_0/mem_exception_valid]
  connect_bd_net -net mem_fault_cause_1 [get_bd_pins mem_fault_cause] [get_bd_pins mem_exception_merge_0/mem_fault_cause]
  connect_bd_net -net mem_fault_tval_1 [get_bd_pins mem_fault_tval] [get_bd_pins mem_exception_merge_0/mem_fault_tval]
  connect_bd_net -net mem_fault_valid_1 [get_bd_pins mem_fault_valid] [get_bd_pins mem_exception_merge_0/mem_fault_valid]
  connect_bd_net -net normal_we1_1 [get_bd_pins normal_we] [get_bd_pins csr_regfile_wb_mux_0/normal_we]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_target [get_bd_pins priv_redirect_target] [get_bd_pins privileged_pc_redire_0/priv_redirect_target]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_valid [get_bd_pins priv_redirect_valid] [get_bd_pins privileged_pc_redire_0/priv_redirect_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins csr_file_0/rst] [get_bd_pins csr_use_detection_0/rst] [get_bd_pins trap_controller_0/rst]
  connect_bd_net -net rs1_data1_1 [get_bd_pins rs1_data] [get_bd_pins csr_access_unit_0/rs1_data]
  connect_bd_net -net system_decoder_0_csr_addr [get_bd_pins csr_file_0/csr_addr] [get_bd_pins system_decoder_0/csr_addr]
  connect_bd_net -net system_decoder_0_csr_rd [get_bd_pins csr_access_unit_0/csr_rd] [get_bd_pins system_decoder_0/csr_rd]
  connect_bd_net -net system_decoder_0_csr_rs1 [get_bd_pins csr_access_unit_0/csr_rs1] [get_bd_pins system_decoder_0/csr_rs1]
  connect_bd_net -net system_decoder_0_is_csrrc [get_bd_pins csr_access_unit_0/is_csrrc] [get_bd_pins system_decoder_0/is_csrrc]
  connect_bd_net -net system_decoder_0_is_csrrci [get_bd_pins csr_access_unit_0/is_csrrci] [get_bd_pins system_decoder_0/is_csrrci]
  connect_bd_net -net system_decoder_0_is_csrrs [get_bd_pins csr_access_unit_0/is_csrrs] [get_bd_pins system_decoder_0/is_csrrs]
  connect_bd_net -net system_decoder_0_is_csrrsi [get_bd_pins csr_access_unit_0/is_csrrsi] [get_bd_pins system_decoder_0/is_csrrsi]
  connect_bd_net -net system_decoder_0_is_csrrw [get_bd_pins csr_access_unit_0/is_csrrw] [get_bd_pins system_decoder_0/is_csrrw]
  connect_bd_net -net system_decoder_0_is_csrrwi [get_bd_pins csr_access_unit_0/is_csrrwi] [get_bd_pins system_decoder_0/is_csrrwi]
  connect_bd_net -net system_decoder_0_is_ecall [get_bd_pins system_decoder_0/is_ecall] [get_bd_pins trap_controller_0/ecall]
  connect_bd_net -net system_decoder_0_is_mret [get_bd_pins system_decoder_0/is_mret] [get_bd_pins trap_controller_0/mret]
  connect_bd_net -net system_decoder_0_is_system [get_bd_pins system_decoder_0/is_system] [get_bd_pins util_vector_not_0/Op1]
  connect_bd_net -net trap_controller_0_mret_taken [get_bd_pins csr_file_0/mret] [get_bd_pins privileged_pc_redire_0/mret_taken] [get_bd_pins trap_controller_0/mret_taken]
  connect_bd_net -net trap_controller_0_mret_target [get_bd_pins privileged_pc_redire_0/mret_target] [get_bd_pins trap_controller_0/mret_target]
  connect_bd_net -net trap_controller_0_trap_enter [get_bd_pins csr_file_0/trap_enter] [get_bd_pins privileged_pc_redire_0/trap_enter] [get_bd_pins trap_controller_0/trap_enter]
  connect_bd_net -net trap_controller_0_trap_flush [get_bd_pins trap_flush] [get_bd_pins trap_controller_0/trap_flush]
  connect_bd_net -net trap_controller_0_trap_mcause [get_bd_pins csr_file_0/trap_mcause] [get_bd_pins trap_controller_0/trap_mcause]
  connect_bd_net -net trap_controller_0_trap_mepc [get_bd_pins csr_file_0/trap_mepc] [get_bd_pins trap_controller_0/trap_mepc]
  connect_bd_net -net trap_controller_0_trap_mtval [get_bd_pins csr_file_0/trap_mtval] [get_bd_pins trap_controller_0/trap_mtval]
  connect_bd_net -net trap_controller_0_trap_target [get_bd_pins privileged_pc_redire_0/trap_target] [get_bd_pins trap_controller_0/trap_target]
  connect_bd_net -net util_vector_and_0_Res [get_bd_pins trap_controller_0/illegal_instr] [get_bd_pins util_vector_and_0/Res]
  connect_bd_net -net util_vector_not_0_Res [get_bd_pins util_vector_and_0/Op2] [get_bd_pins util_vector_not_0/Res]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins csr_file_0/clk] [get_bd_pins csr_use_detection_0/clk] [get_bd_pins trap_controller_0/clk]

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
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 31 -to 0 cpu_addr
  create_bd_pin -dir I -from 3 -to 0 cpu_be
  create_bd_pin -dir I -from 31 -to 0 cpu_wdata
  create_bd_pin -dir I -from 0 -to 0 cpu_we
  create_bd_pin -dir O -from 31 -to 0 gpio_addr
  create_bd_pin -dir O -from 3 -to 0 gpio_be
  create_bd_pin -dir I -from 31 -to 0 gpio_rdata
  create_bd_pin -dir I gpio_ready
  create_bd_pin -dir O gpio_valid
  create_bd_pin -dir O -from 31 -to 0 gpio_wdata
  create_bd_pin -dir O gpio_we
  create_bd_pin -dir O mem_req_ready
  create_bd_pin -dir I mem_req_valid
  create_bd_pin -dir O mem_rsp_error
  create_bd_pin -dir O -from 31 -to 0 mem_rsp_rdata
  create_bd_pin -dir O mem_rsp_valid
  create_bd_pin -dir O -from 31 -to 0 ram_addr
  create_bd_pin -dir O -from 3 -to 0 ram_be
  create_bd_pin -dir I -from 31 -to 0 ram_rdata
  create_bd_pin -dir I ram_ready
  create_bd_pin -dir O ram_valid
  create_bd_pin -dir O -from 31 -to 0 ram_wdata
  create_bd_pin -dir O ram_we
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir O -from 31 -to 0 timer_addr
  create_bd_pin -dir O -from 3 -to 0 timer_be
  create_bd_pin -dir I timer_error
  create_bd_pin -dir I -from 31 -to 0 timer_rdata
  create_bd_pin -dir I timer_ready
  create_bd_pin -dir O timer_valid
  create_bd_pin -dir O -from 31 -to 0 timer_wdata
  create_bd_pin -dir O timer_we
  create_bd_pin -dir O -from 31 -to 0 uart_addr
  create_bd_pin -dir O -from 3 -to 0 uart_be
  create_bd_pin -dir I -from 31 -to 0 uart_rdata
  create_bd_pin -dir I uart_ready
  create_bd_pin -dir O uart_valid
  create_bd_pin -dir O -from 31 -to 0 uart_wdata
  create_bd_pin -dir O uart_we

  # Create instance: mem_bus_registered_0, and set properties
  set block_name mem_bus_registered
  set block_cell_name mem_bus_registered_0
  if { [catch {set mem_bus_registered_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mem_bus_registered_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins cpu_we] [get_bd_pins mem_bus_registered_0/mem_req_we]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins mem_bus_registered_0/clk]
  connect_bd_net -net cpu_addr_1 [get_bd_pins cpu_addr] [get_bd_pins mem_bus_registered_0/mem_req_addr]
  connect_bd_net -net cpu_be_1 [get_bd_pins cpu_be] [get_bd_pins mem_bus_registered_0/mem_req_be]
  connect_bd_net -net cpu_wdata_1 [get_bd_pins cpu_wdata] [get_bd_pins mem_bus_registered_0/mem_req_wdata]
  connect_bd_net -net gpio_rdata_1 [get_bd_pins gpio_rdata] [get_bd_pins mem_bus_registered_0/gpio_rdata]
  connect_bd_net -net gpio_ready_1 [get_bd_pins gpio_ready] [get_bd_pins mem_bus_registered_0/gpio_ready]
  connect_bd_net -net mem_bus_registered_0_gpio_addr [get_bd_pins gpio_addr] [get_bd_pins mem_bus_registered_0/gpio_addr]
  connect_bd_net -net mem_bus_registered_0_gpio_be [get_bd_pins gpio_be] [get_bd_pins mem_bus_registered_0/gpio_be]
  connect_bd_net -net mem_bus_registered_0_gpio_valid [get_bd_pins gpio_valid] [get_bd_pins mem_bus_registered_0/gpio_valid]
  connect_bd_net -net mem_bus_registered_0_gpio_wdata [get_bd_pins gpio_wdata] [get_bd_pins mem_bus_registered_0/gpio_wdata]
  connect_bd_net -net mem_bus_registered_0_gpio_we [get_bd_pins gpio_we] [get_bd_pins mem_bus_registered_0/gpio_we]
  connect_bd_net -net mem_bus_registered_0_mem_req_ready [get_bd_pins mem_req_ready] [get_bd_pins mem_bus_registered_0/mem_req_ready]
  connect_bd_net -net mem_bus_registered_0_mem_rsp_error [get_bd_pins mem_rsp_error] [get_bd_pins mem_bus_registered_0/mem_rsp_error]
  connect_bd_net -net mem_bus_registered_0_mem_rsp_rdata [get_bd_pins mem_rsp_rdata] [get_bd_pins mem_bus_registered_0/mem_rsp_rdata]
  connect_bd_net -net mem_bus_registered_0_mem_rsp_valid [get_bd_pins mem_rsp_valid] [get_bd_pins mem_bus_registered_0/mem_rsp_valid]
  connect_bd_net -net mem_bus_registered_0_ram_addr [get_bd_pins ram_addr] [get_bd_pins mem_bus_registered_0/ram_addr]
  connect_bd_net -net mem_bus_registered_0_ram_be [get_bd_pins ram_be] [get_bd_pins mem_bus_registered_0/ram_be]
  connect_bd_net -net mem_bus_registered_0_ram_valid [get_bd_pins ram_valid] [get_bd_pins mem_bus_registered_0/ram_valid]
  connect_bd_net -net mem_bus_registered_0_ram_wdata [get_bd_pins ram_wdata] [get_bd_pins mem_bus_registered_0/ram_wdata]
  connect_bd_net -net mem_bus_registered_0_ram_we [get_bd_pins ram_we] [get_bd_pins mem_bus_registered_0/ram_we]
  connect_bd_net -net mem_bus_registered_0_timer_addr [get_bd_pins timer_addr] [get_bd_pins mem_bus_registered_0/timer_addr]
  connect_bd_net -net mem_bus_registered_0_timer_be [get_bd_pins timer_be] [get_bd_pins mem_bus_registered_0/timer_be]
  connect_bd_net -net mem_bus_registered_0_timer_valid [get_bd_pins timer_valid] [get_bd_pins mem_bus_registered_0/timer_valid]
  connect_bd_net -net mem_bus_registered_0_timer_wdata [get_bd_pins timer_wdata] [get_bd_pins mem_bus_registered_0/timer_wdata]
  connect_bd_net -net mem_bus_registered_0_timer_we [get_bd_pins timer_we] [get_bd_pins mem_bus_registered_0/timer_we]
  connect_bd_net -net mem_bus_registered_0_uart_addr [get_bd_pins uart_addr] [get_bd_pins mem_bus_registered_0/uart_addr]
  connect_bd_net -net mem_bus_registered_0_uart_be [get_bd_pins uart_be] [get_bd_pins mem_bus_registered_0/uart_be]
  connect_bd_net -net mem_bus_registered_0_uart_valid [get_bd_pins uart_valid] [get_bd_pins mem_bus_registered_0/uart_valid]
  connect_bd_net -net mem_bus_registered_0_uart_wdata [get_bd_pins uart_wdata] [get_bd_pins mem_bus_registered_0/uart_wdata]
  connect_bd_net -net mem_bus_registered_0_uart_we [get_bd_pins uart_we] [get_bd_pins mem_bus_registered_0/uart_we]
  connect_bd_net -net mem_req_valid_1 [get_bd_pins mem_req_valid] [get_bd_pins mem_bus_registered_0/mem_req_valid]
  connect_bd_net -net ram_rdata_1 [get_bd_pins ram_rdata] [get_bd_pins mem_bus_registered_0/ram_rdata]
  connect_bd_net -net ram_ready_1 [get_bd_pins ram_ready] [get_bd_pins mem_bus_registered_0/ram_ready]
  connect_bd_net -net rst_1 [get_bd_pins rst] [get_bd_pins mem_bus_registered_0/rst]
  connect_bd_net -net timer_error_1 [get_bd_pins timer_error] [get_bd_pins mem_bus_registered_0/timer_error]
  connect_bd_net -net timer_rdata_1 [get_bd_pins timer_rdata] [get_bd_pins mem_bus_registered_0/timer_rdata]
  connect_bd_net -net timer_ready_1 [get_bd_pins timer_ready] [get_bd_pins mem_bus_registered_0/timer_ready]
  connect_bd_net -net uart_rdata_1 [get_bd_pins uart_rdata] [get_bd_pins mem_bus_registered_0/uart_rdata]
  connect_bd_net -net uart_ready1_1 [get_bd_pins uart_ready] [get_bd_pins mem_bus_registered_0/uart_ready]

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
  create_bd_pin -dir I -from 7 -to 0 gpio_in
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
  connect_bd_net -net gpio_in_0_1 [get_bd_pins gpio_in] [get_bd_pins gpio_0/gpio_in]
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
  create_bd_pin -dir I csr_use_id_ex_flush
  create_bd_pin -dir I csr_use_if_id_hold
  create_bd_pin -dir I csr_use_pc_en
  create_bd_pin -dir O -from 31 -to 0 dmem_addr
  create_bd_pin -dir O -from 3 -to 0 dmem_be
  create_bd_pin -dir I dmem_error
  create_bd_pin -dir I dmem_ready
  create_bd_pin -dir I dmem_req_ready
  create_bd_pin -dir O dmem_valid
  create_bd_pin -dir O -from 31 -to 0 dmem_wdata
  create_bd_pin -dir O dmem_we
  create_bd_pin -dir I -from 4 -to 0 ex_csr_rd_addr
  create_bd_pin -dir I -from 31 -to 0 ex_csr_rd_data
  create_bd_pin -dir I ex_csr_rd_we
  create_bd_pin -dir O -from 3 -to 0 ex_exception_cause
  create_bd_pin -dir O -from 31 -to 0 ex_exception_tval
  create_bd_pin -dir O ex_exception_valid
  create_bd_pin -dir O ex_illegal_instr
  create_bd_pin -dir O -from 31 -to 0 ex_instr
  create_bd_pin -dir O -from 31 -to 0 ex_pc
  create_bd_pin -dir O ex_valid
  create_bd_pin -dir O id_valid_out
  create_bd_pin -dir I -from 31 -to 0 mem_data
  create_bd_pin -dir O -from 3 -to 0 mem_exception_cause
  create_bd_pin -dir O -from 31 -to 0 mem_exception_tval
  create_bd_pin -dir O mem_exception_valid
  create_bd_pin -dir O -from 3 -to 0 mem_fault_cause
  create_bd_pin -dir O -from 31 -to 0 mem_fault_tval
  create_bd_pin -dir O mem_fault_valid
  create_bd_pin -dir O -from 31 -to 0 mem_pc
  create_bd_pin -dir O -from 0 -to 0 mem_stall_req
  create_bd_pin -dir O -from 31 -to 0 out_data
  create_bd_pin -dir I -from 31 -to 0 priv_redirect_target
  create_bd_pin -dir I priv_redirect_valid
  create_bd_pin -dir I -from 4 -to 0 rd_addr
  create_bd_pin -dir I -from 31 -to 0 rd_wdata
  create_bd_pin -dir O -from 31 -to 0 rd_wdata1
  create_bd_pin -dir I rd_we
  create_bd_pin -dir O regfile_we
  create_bd_pin -dir O -from 4 -to 0 rs1
  create_bd_pin -dir O rs1_used
  create_bd_pin -dir O -from 4 -to 0 rs2
  create_bd_pin -dir O rs2_used
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -from 0 -to 0 trap_flush
  create_bd_pin -dir O -from 4 -to 0 wb_csr_rd_addr
  create_bd_pin -dir O -from 31 -to 0 wb_csr_rd_data
  create_bd_pin -dir O wb_csr_rd_we
  create_bd_pin -dir O -from 4 -to 0 wb_rd

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
  connect_bd_net -net Op3_1 [get_bd_pins mem_stall_req] [get_bd_pins RV32I_EX/stall] [get_bd_pins RV32I_ID/stall] [get_bd_pins RV32I_IF/stall] [get_bd_pins RV32I_MEM/mem_stall_req] [get_bd_pins priority_branch_OR_l_0/mem_stall_req]
  connect_bd_net -net Op4_1 [get_bd_pins trap_flush] [get_bd_pins RV32I_IF/trap_flush]
  connect_bd_net -net RV32I_EX_bp_update_taken [get_bd_pins RV32I_EX/bp_update_taken] [get_bd_pins RV32I_IF/update_taken]
  connect_bd_net -net RV32I_EX_bp_update_target [get_bd_pins RV32I_EX/bp_update_target] [get_bd_pins RV32I_IF/update_target]
  connect_bd_net -net RV32I_EX_bp_update_valid [get_bd_pins RV32I_EX/bp_update_valid] [get_bd_pins RV32I_IF/update_valid]
  connect_bd_net -net RV32I_EX_ex_exception_cause [get_bd_pins ex_exception_cause] [get_bd_pins RV32I_EX/ex_exception_cause]
  connect_bd_net -net RV32I_EX_ex_exception_tval [get_bd_pins ex_exception_tval] [get_bd_pins RV32I_EX/ex_exception_tval]
  connect_bd_net -net RV32I_EX_ex_exception_valid [get_bd_pins ex_exception_valid] [get_bd_pins RV32I_EX/ex_exception_valid]
  connect_bd_net -net RV32I_EX_ex_flush_req [get_bd_pins RV32I_EX/ex_flush_req] [get_bd_pins priority_branch_OR_l_0/ex_flush_req]
  connect_bd_net -net RV32I_EX_mem_csr_rd_data [get_bd_pins RV32I_EX/mem_csr_rd_data] [get_bd_pins RV32I_MEM/mem_csr_rd_data]
  connect_bd_net -net RV32I_EX_mem_csr_rd_we [get_bd_pins RV32I_EX/mem_csr_rd_we] [get_bd_pins RV32I_MEM/mem_csr_rd_we]
  connect_bd_net -net RV32I_EX_mem_exception_cause [get_bd_pins mem_exception_cause] [get_bd_pins RV32I_EX/mem_exception_cause]
  connect_bd_net -net RV32I_EX_mem_exception_tval [get_bd_pins mem_exception_tval] [get_bd_pins RV32I_EX/mem_exception_tval]
  connect_bd_net -net RV32I_EX_mem_exception_valid [get_bd_pins mem_exception_valid] [get_bd_pins RV32I_EX/mem_exception_valid]
  connect_bd_net -net RV32I_EX_mem_pc [get_bd_pins mem_pc] [get_bd_pins RV32I_EX/mem_pc]
  connect_bd_net -net RV32I_EX_out_data [get_bd_pins out_data] [get_bd_pins RV32I_EX/out_data]
  connect_bd_net -net RV32I_EX_pc_redirect_target [get_bd_pins RV32I_EX/pc_redirect_target] [get_bd_pins RV32I_IF/pc_redirect_target]
  connect_bd_net -net RV32I_EX_pc_redirect_valid [get_bd_pins RV32I_EX/pc_redirect_valid] [get_bd_pins RV32I_IF/pc_redirect_valid]
  connect_bd_net -net RV32I_ID_ex_illegal_instr [get_bd_pins ex_illegal_instr] [get_bd_pins RV32I_ID/ex_illegal_instr]
  connect_bd_net -net RV32I_ID_ex_instr [get_bd_pins ex_instr] [get_bd_pins RV32I_ID/ex_instr]
  connect_bd_net -net RV32I_ID_ex_pred_next_pc [get_bd_pins RV32I_EX/ex_pred_next_pc] [get_bd_pins RV32I_ID/ex_pred_next_pc]
  connect_bd_net -net RV32I_ID_ex_rd [get_bd_pins RV32I_EX/ex_rd] [get_bd_pins RV32I_ID/ex_rd] [get_bd_pins load_use_detection_0/id_ex_rd]
  connect_bd_net -net RV32I_ID_rs1 [get_bd_pins rs1] [get_bd_pins RV32I_ID/rs1] [get_bd_pins load_use_detection_0/if_id_rs1]
  connect_bd_net -net RV32I_ID_rs1_used [get_bd_pins rs1_used] [get_bd_pins RV32I_ID/rs1_used] [get_bd_pins load_use_detection_0/if_id_rs1_used]
  connect_bd_net -net RV32I_ID_rs2 [get_bd_pins rs2] [get_bd_pins RV32I_ID/rs2] [get_bd_pins load_use_detection_0/if_id_rs2]
  connect_bd_net -net RV32I_ID_rs2_used [get_bd_pins rs2_used] [get_bd_pins RV32I_ID/rs2_used] [get_bd_pins load_use_detection_0/if_id_rs2_used]
  connect_bd_net -net RV32I_IF_id_instr_out [get_bd_pins RV32I_ID/instr] [get_bd_pins RV32I_IF/id_instr_out]
  connect_bd_net -net RV32I_IF_id_pc4_out [get_bd_pins RV32I_ID/id_pc_plus4] [get_bd_pins RV32I_IF/id_pc4_out]
  connect_bd_net -net RV32I_IF_id_pc_out [get_bd_pins RV32I_ID/id_pc] [get_bd_pins RV32I_IF/id_pc_out]
  connect_bd_net -net RV32I_IF_id_pred_next_pc_out [get_bd_pins RV32I_ID/id_pred_next_pc] [get_bd_pins RV32I_IF/id_pred_next_pc_out]
  connect_bd_net -net RV32I_IF_id_valid_out [get_bd_pins id_valid_out] [get_bd_pins RV32I_ID/id_valid] [get_bd_pins RV32I_IF/id_valid_out] [get_bd_pins load_use_detection_0/if_id_valid]
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins dmem_addr] [get_bd_pins RV32I_MEM/dmem_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins dmem_be] [get_bd_pins RV32I_MEM/dmem_be]
  connect_bd_net -net RV32I_MEM_dmem_valid [get_bd_pins dmem_valid] [get_bd_pins RV32I_MEM/dmem_valid]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins dmem_wdata] [get_bd_pins RV32I_MEM/dmem_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins dmem_we] [get_bd_pins RV32I_MEM/dmem_we]
  connect_bd_net -net RV32I_MEM_mem_fault_cause [get_bd_pins mem_fault_cause] [get_bd_pins RV32I_MEM/mem_fault_cause]
  connect_bd_net -net RV32I_MEM_mem_fault_tval [get_bd_pins mem_fault_tval] [get_bd_pins RV32I_MEM/mem_fault_tval]
  connect_bd_net -net RV32I_MEM_mem_fault_valid [get_bd_pins mem_fault_valid] [get_bd_pins RV32I_MEM/mem_fault_valid]
  connect_bd_net -net RV32I_MEM_mem_rd_we [get_bd_pins RV32I_EX/mem_stage_rd_out_we] [get_bd_pins RV32I_MEM/mem_stage_rd_out_we]
  connect_bd_net -net RV32I_MEM_regfile_we [get_bd_pins regfile_we] [get_bd_pins RV32I_EX/wb_rd_we] [get_bd_pins RV32I_MEM/regfile_we]
  connect_bd_net -net RV32I_MEM_wb_alu_result [get_bd_pins RV32I_MEM/wb_alu_result] [get_bd_pins RV32I_WB/alu_y]
  connect_bd_net -net RV32I_MEM_wb_csr_rd_addr [get_bd_pins wb_csr_rd_addr] [get_bd_pins RV32I_MEM/wb_csr_rd_addr]
  connect_bd_net -net RV32I_MEM_wb_csr_rd_data [get_bd_pins wb_csr_rd_data] [get_bd_pins RV32I_MEM/wb_csr_rd_data]
  connect_bd_net -net RV32I_MEM_wb_csr_rd_we [get_bd_pins wb_csr_rd_we] [get_bd_pins RV32I_MEM/wb_csr_rd_we]
  connect_bd_net -net RV32I_MEM_wb_data [get_bd_pins RV32I_MEM/wb_data] [get_bd_pins RV32I_WB/load_data]
  connect_bd_net -net RV32I_MEM_wb_imm_u [get_bd_pins RV32I_MEM/wb_imm_u] [get_bd_pins RV32I_WB/imm_u]
  connect_bd_net -net RV32I_MEM_wb_pc_plus4 [get_bd_pins RV32I_MEM/wb_pc_plus4] [get_bd_pins RV32I_WB/pc_plus4]
  connect_bd_net -net RV32I_MEM_wb_sel [get_bd_pins RV32I_MEM/wb_sel] [get_bd_pins RV32I_WB/wb_sel]
  connect_bd_net -net RV32I_MEM_wb_valid [get_bd_pins RV32I_EX/wb_valid] [get_bd_pins RV32I_MEM/wb_valid]
  connect_bd_net -net alu_op_1 [get_bd_pins RV32I_EX/alu_op] [get_bd_pins RV32I_ID/ex_alu_op]
  connect_bd_net -net bubble_1 [get_bd_pins RV32I_ID/bubble] [get_bd_pins priority_branch_OR_l_0/id_ex_flush_final]
  connect_bd_net -net csr_use_id_ex_flush_1 [get_bd_pins csr_use_id_ex_flush] [get_bd_pins priority_branch_OR_l_0/csr_use_id_ex_flush]
  connect_bd_net -net csr_use_if_id_hold_1 [get_bd_pins csr_use_if_id_hold] [get_bd_pins priority_branch_OR_l_0/csr_use_if_id_hold]
  connect_bd_net -net csr_use_pc_en_1 [get_bd_pins csr_use_pc_en] [get_bd_pins priority_branch_OR_l_0/csr_use_pc_en]
  connect_bd_net -net dmem_error_1 [get_bd_pins dmem_error] [get_bd_pins RV32I_MEM/dmem_error]
  connect_bd_net -net dmem_ready_1 [get_bd_pins dmem_ready] [get_bd_pins RV32I_MEM/dmem_ready]
  connect_bd_net -net dmem_req_ready_1 [get_bd_pins dmem_req_ready] [get_bd_pins RV32I_MEM/dmem_req_ready]
  connect_bd_net -net ex_branch_en_1 [get_bd_pins RV32I_EX/ex_branch_en] [get_bd_pins RV32I_ID/ex_branch_en]
  connect_bd_net -net ex_branch_funct3_1 [get_bd_pins RV32I_EX/ex_branch_funct3] [get_bd_pins RV32I_ID/ex_branch_funct3]
  connect_bd_net -net ex_csr_rd_addr_1 [get_bd_pins ex_csr_rd_addr] [get_bd_pins RV32I_EX/ex_csr_rd_addr]
  connect_bd_net -net ex_csr_rd_data_1 [get_bd_pins ex_csr_rd_data] [get_bd_pins RV32I_EX/ex_csr_rd_data]
  connect_bd_net -net ex_csr_rd_we_1 [get_bd_pins ex_csr_rd_we] [get_bd_pins RV32I_EX/ex_csr_rd_we]
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
  connect_bd_net -net ex_rd_we_1 [get_bd_pins RV32I_EX/ex_rd_we] [get_bd_pins RV32I_ID/ex_rd_we] [get_bd_pins load_use_detection_0/id_ex_rd_we]
  connect_bd_net -net ex_rs1_1 [get_bd_pins RV32I_EX/ex_rs1] [get_bd_pins RV32I_ID/ex_rs1]
  connect_bd_net -net ex_rs1_data_1 [get_bd_pins RV32I_EX/ex_rs1_data] [get_bd_pins RV32I_ID/ex_rs1_data]
  connect_bd_net -net ex_rs2_1 [get_bd_pins RV32I_EX/ex_rs2] [get_bd_pins RV32I_ID/ex_rs2]
  connect_bd_net -net ex_rs2_data_1 [get_bd_pins RV32I_EX/ex_rs2_data] [get_bd_pins RV32I_ID/ex_rs2_data]
  connect_bd_net -net ex_valid_1 [get_bd_pins ex_valid] [get_bd_pins RV32I_EX/ex_valid] [get_bd_pins RV32I_ID/ex_valid] [get_bd_pins load_use_detection_0/id_ex_valid]
  connect_bd_net -net ex_wb_sel_1 [get_bd_pins RV32I_EX/ex_wb_sel] [get_bd_pins RV32I_ID/ex_wb_sel]
  connect_bd_net -net flush_1 [get_bd_pins RV32I_IF/flush] [get_bd_pins priority_branch_OR_l_0/if_id_flush_final]
  connect_bd_net -net hold_1 [get_bd_pins RV32I_IF/hold] [get_bd_pins priority_branch_OR_l_0/if_id_hold_final]
  connect_bd_net -net load_use_detection_0_id_ex_flush [get_bd_pins load_use_detection_0/id_ex_flush] [get_bd_pins priority_branch_OR_l_0/load_use_id_ex_flush]
  connect_bd_net -net load_use_detection_0_if_id_hold [get_bd_pins load_use_detection_0/if_id_hold] [get_bd_pins priority_branch_OR_l_0/load_use_if_id_hold]
  connect_bd_net -net load_use_detection_0_pc_en [get_bd_pins load_use_detection_0/pc_en] [get_bd_pins priority_branch_OR_l_0/load_use_pc_en]
  connect_bd_net -net mem_csr_rd_addr_1 [get_bd_pins RV32I_EX/mem_csr_rd_addr] [get_bd_pins RV32I_MEM/mem_csr_rd_addr]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins RV32I_EX/mem_stage_data] [get_bd_pins RV32I_MEM/mem_forward_data]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins RV32I_EX/mem_stage_rd] [get_bd_pins RV32I_MEM/mem_rd]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins RV32I_EX/mem_stage_out_valid] [get_bd_pins RV32I_MEM/mem_stage_out_valid]
  connect_bd_net -net mem_wb_reg_0_wb_rd [get_bd_pins wb_rd] [get_bd_pins RV32I_EX/wb_rd] [get_bd_pins RV32I_MEM/wb_rd]
  connect_bd_net -net mmio_0_cpu_rdata [get_bd_pins mem_data] [get_bd_pins RV32I_MEM/mem_data]
  connect_bd_net -net op_a_sel_1 [get_bd_pins RV32I_EX/op_a_sel] [get_bd_pins RV32I_ID/ex_op_a_sel]
  connect_bd_net -net pc_1 [get_bd_pins ex_pc] [get_bd_pins RV32I_EX/pc] [get_bd_pins RV32I_ID/ex_pc] [get_bd_pins RV32I_IF/update_pc]
  connect_bd_net -net pc_en_1 [get_bd_pins RV32I_IF/pc_en] [get_bd_pins priority_branch_OR_l_0/pc_en_final]
  connect_bd_net -net priv_redirect_target_1 [get_bd_pins priv_redirect_target] [get_bd_pins RV32I_IF/priv_redirect_target]
  connect_bd_net -net priv_redirect_valid_1 [get_bd_pins priv_redirect_valid] [get_bd_pins RV32I_IF/priv_redirect_valid] [get_bd_pins priority_branch_OR_l_0/priv_redirect_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_pins rst] [get_bd_pins RV32I_EX/rst] [get_bd_pins RV32I_ID/rst] [get_bd_pins RV32I_IF/rst] [get_bd_pins RV32I_MEM/rst]
  connect_bd_net -net rd_addr1_1 [get_bd_pins rd_addr] [get_bd_pins RV32I_ID/rd_addr]
  connect_bd_net -net rd_wdata1_1 [get_bd_pins rd_wdata] [get_bd_pins RV32I_ID/rd_wdata]
  connect_bd_net -net rd_we1_1 [get_bd_pins rd_we] [get_bd_pins RV32I_ID/rd_we]
  connect_bd_net -net update_is_control_1 [get_bd_pins RV32I_EX/bp_update_is_control] [get_bd_pins RV32I_IF/update_is_control]
  connect_bd_net -net wb_mux_0_rd_wdata [get_bd_pins rd_wdata1] [get_bd_pins RV32I_EX/mem_wb_data] [get_bd_pins RV32I_WB/rd_wdata]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_pins clk] [get_bd_pins RV32I_EX/clk] [get_bd_pins RV32I_ID/clk] [get_bd_pins RV32I_IF/clk] [get_bd_pins RV32I_MEM/clk]

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
  set Reset [ create_bd_port -dir I -from 0 -to 0 Reset ]
  set SW1 [ create_bd_port -dir I -from 0 -to 0 SW1 ]
  set clk [ create_bd_port -dir I clk ]
  set gpio_out_0 [ create_bd_port -dir O -from 1 -to 0 gpio_out_0 ]

  # Create instance: Core_RV32I
  create_hier_cell_Core_RV32I [current_bd_instance .] Core_RV32I

  # Create instance: GPIO
  create_hier_cell_GPIO [current_bd_instance .] GPIO

  # Create instance: MMIO
  create_hier_cell_MMIO [current_bd_instance .] MMIO

  # Create instance: PRIVILEGED
  create_hier_cell_PRIVILEGED [current_bd_instance .] PRIVILEGED

  # Create instance: RV32I_RAM_MEMORY
  create_hier_cell_RV32I_RAM_MEMORY [current_bd_instance .] RV32I_RAM_MEMORY

  # Create instance: TIMER
  create_hier_cell_TIMER [current_bd_instance .] TIMER

  # Create instance: UART
  create_hier_cell_UART [current_bd_instance .] UART

  # Create instance: xlconcat_8_0, and set properties
  set block_name xlconcat_8
  set block_cell_name xlconcat_8_0
  if { [catch {set xlconcat_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xlconcat_8_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlslice_2bit_0, and set properties
  set block_name xlslice_2bit
  set block_cell_name xlslice_2bit_0
  if { [catch {set xlslice_2bit_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $xlslice_2bit_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Core_RV32I_ex_exception_cause [get_bd_pins Core_RV32I/ex_exception_cause] [get_bd_pins PRIVILEGED/ex_exception_cause]
  connect_bd_net -net Core_RV32I_ex_exception_tval [get_bd_pins Core_RV32I/ex_exception_tval] [get_bd_pins PRIVILEGED/ex_exception_tval]
  connect_bd_net -net Core_RV32I_ex_exception_valid [get_bd_pins Core_RV32I/ex_exception_valid] [get_bd_pins PRIVILEGED/ex_exception_valid]
  connect_bd_net -net Core_RV32I_ex_illegal_instr [get_bd_pins Core_RV32I/ex_illegal_instr] [get_bd_pins PRIVILEGED/illegal_instr]
  connect_bd_net -net Core_RV32I_ex_instr [get_bd_pins Core_RV32I/ex_instr] [get_bd_pins PRIVILEGED/instr]
  connect_bd_net -net Core_RV32I_ex_pc [get_bd_pins Core_RV32I/ex_pc] [get_bd_pins PRIVILEGED/current_pc]
  connect_bd_net -net Core_RV32I_ex_valid [get_bd_pins Core_RV32I/ex_valid] [get_bd_pins PRIVILEGED/instr_valid]
  connect_bd_net -net Core_RV32I_id_valid_out [get_bd_pins Core_RV32I/id_valid_out] [get_bd_pins PRIVILEGED/if_id_valid]
  connect_bd_net -net Core_RV32I_mem_exception_cause [get_bd_pins Core_RV32I/mem_exception_cause] [get_bd_pins PRIVILEGED/mem_exception_cause]
  connect_bd_net -net Core_RV32I_mem_exception_tval [get_bd_pins Core_RV32I/mem_exception_tval] [get_bd_pins PRIVILEGED/mem_exception_tval]
  connect_bd_net -net Core_RV32I_mem_exception_valid [get_bd_pins Core_RV32I/mem_exception_valid] [get_bd_pins PRIVILEGED/mem_exception_valid]
  connect_bd_net -net Core_RV32I_mem_fault_cause [get_bd_pins Core_RV32I/mem_fault_cause] [get_bd_pins PRIVILEGED/mem_fault_cause]
  connect_bd_net -net Core_RV32I_mem_fault_tval [get_bd_pins Core_RV32I/mem_fault_tval] [get_bd_pins PRIVILEGED/mem_fault_tval]
  connect_bd_net -net Core_RV32I_mem_fault_valid [get_bd_pins Core_RV32I/mem_fault_valid] [get_bd_pins PRIVILEGED/mem_fault_valid]
  connect_bd_net -net Core_RV32I_mem_pc [get_bd_pins Core_RV32I/mem_pc] [get_bd_pins PRIVILEGED/mem_exception_pc]
  connect_bd_net -net Core_RV32I_mem_stall_req [get_bd_pins Core_RV32I/mem_stall_req] [get_bd_pins PRIVILEGED/mem_stall_req]
  connect_bd_net -net Core_RV32I_out_data [get_bd_pins Core_RV32I/out_data] [get_bd_pins PRIVILEGED/rs1_data]
  connect_bd_net -net Core_RV32I_rd_wdata [get_bd_pins Core_RV32I/rd_wdata1] [get_bd_pins PRIVILEGED/normal_wdata]
  connect_bd_net -net Core_RV32I_regfile_we [get_bd_pins Core_RV32I/regfile_we] [get_bd_pins PRIVILEGED/normal_we]
  connect_bd_net -net Core_RV32I_rs1 [get_bd_pins Core_RV32I/rs1] [get_bd_pins PRIVILEGED/if_id_rs1]
  connect_bd_net -net Core_RV32I_rs2_used [get_bd_pins Core_RV32I/rs2_used] [get_bd_pins PRIVILEGED/if_id_rs2_used]
  connect_bd_net -net Core_RV32I_wb_csr_rd_data [get_bd_pins Core_RV32I/wb_csr_rd_data] [get_bd_pins PRIVILEGED/csr_rd_data2]
  connect_bd_net -net Core_RV32I_wb_csr_rd_we [get_bd_pins Core_RV32I/wb_csr_rd_we] [get_bd_pins PRIVILEGED/csr_rd_we1]
  connect_bd_net -net Core_RV32I_wb_rd [get_bd_pins Core_RV32I/wb_rd] [get_bd_pins PRIVILEGED/normal_rd]
  connect_bd_net -net MMIO_mem_rsp_error [get_bd_pins Core_RV32I/dmem_error] [get_bd_pins MMIO/mem_rsp_error]
  connect_bd_net -net MMIO_ram_valid [get_bd_pins MMIO/ram_valid] [get_bd_pins RV32I_RAM_MEMORY/valid]
  connect_bd_net -net PRIVILEGED_csr_rd_data1 [get_bd_pins Core_RV32I/ex_csr_rd_data] [get_bd_pins PRIVILEGED/csr_rd_data1]
  connect_bd_net -net PRIVILEGED_csr_rd_we [get_bd_pins Core_RV32I/ex_csr_rd_we] [get_bd_pins PRIVILEGED/csr_rd_we]
  connect_bd_net -net PRIVILEGED_id_ex_flush [get_bd_pins Core_RV32I/csr_use_id_ex_flush] [get_bd_pins PRIVILEGED/id_ex_flush]
  connect_bd_net -net PRIVILEGED_if_id_hold [get_bd_pins Core_RV32I/csr_use_if_id_hold] [get_bd_pins PRIVILEGED/if_id_hold]
  connect_bd_net -net PRIVILEGED_pc_en [get_bd_pins Core_RV32I/csr_use_pc_en] [get_bd_pins PRIVILEGED/pc_en]
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins Core_RV32I/dmem_addr] [get_bd_pins MMIO/cpu_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins Core_RV32I/dmem_be] [get_bd_pins MMIO/cpu_be]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins Core_RV32I/dmem_wdata] [get_bd_pins MMIO/cpu_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins Core_RV32I/dmem_we] [get_bd_pins MMIO/cpu_we]
  connect_bd_net -net RV32I_RAM_MEMORY_rdata [get_bd_pins MMIO/ram_rdata] [get_bd_pins RV32I_RAM_MEMORY/rdata]
  create_bd_net UART_tx
  connect_bd_net -net [get_bd_nets UART_tx] [get_bd_pins UART/rx] [get_bd_pins UART/tx]
  connect_bd_net -net addr_1 [get_bd_pins MMIO/ram_addr] [get_bd_pins RV32I_RAM_MEMORY/addr]
  connect_bd_net -net addr_2 [get_bd_pins GPIO/addr] [get_bd_pins MMIO/gpio_addr]
  connect_bd_net -net addr_3 [get_bd_pins MMIO/uart_addr] [get_bd_pins UART/addr]
  connect_bd_net -net addr_4 [get_bd_pins MMIO/timer_addr] [get_bd_pins TIMER/addr]
  connect_bd_net -net be_1 [get_bd_pins MMIO/ram_be] [get_bd_pins RV32I_RAM_MEMORY/be]
  connect_bd_net -net be_2 [get_bd_pins GPIO/be] [get_bd_pins MMIO/gpio_be]
  connect_bd_net -net be_3 [get_bd_pins MMIO/uart_be] [get_bd_pins UART/be]
  connect_bd_net -net be_4 [get_bd_pins MMIO/timer_be] [get_bd_pins TIMER/be]
  connect_bd_net -net csr_rd_addr1_1 [get_bd_pins Core_RV32I/wb_csr_rd_addr] [get_bd_pins PRIVILEGED/csr_rd_addr1]
  connect_bd_net -net csr_regfile_wb_mux_0_final_rd [get_bd_pins Core_RV32I/rd_addr] [get_bd_pins PRIVILEGED/final_rd]
  connect_bd_net -net csr_regfile_wb_mux_0_final_wdata [get_bd_pins Core_RV32I/rd_wdata] [get_bd_pins PRIVILEGED/final_wdata]
  connect_bd_net -net csr_regfile_wb_mux_0_final_we [get_bd_pins Core_RV32I/rd_we] [get_bd_pins PRIVILEGED/final_we]
  connect_bd_net -net dmem_ready_1 [get_bd_pins Core_RV32I/dmem_ready] [get_bd_pins MMIO/mem_rsp_valid]
  connect_bd_net -net dmem_req_ready_1 [get_bd_pins Core_RV32I/dmem_req_ready] [get_bd_pins MMIO/mem_req_ready]
  connect_bd_net -net ex_csr_rd_addr_1 [get_bd_pins Core_RV32I/ex_csr_rd_addr] [get_bd_pins PRIVILEGED/csr_rd_addr]
  connect_bd_net -net gpio_0_gpio_out [get_bd_pins GPIO/gpio_out] [get_bd_pins xlslice_2bit_0/Din]
  connect_bd_net -net gpio_0_rdata [get_bd_pins GPIO/rdata] [get_bd_pins MMIO/gpio_rdata]
  connect_bd_net -net gpio_0_ready [get_bd_pins GPIO/ready] [get_bd_pins MMIO/gpio_ready]
  connect_bd_net -net if_id_rs1_used_1 [get_bd_pins Core_RV32I/rs1_used] [get_bd_pins PRIVILEGED/if_id_rs1_used]
  connect_bd_net -net if_id_rs2_1 [get_bd_pins Core_RV32I/rs2] [get_bd_pins PRIVILEGED/if_id_rs2]
  connect_bd_net -net mem_data_1 [get_bd_pins Core_RV32I/mem_data] [get_bd_pins MMIO/mem_rsp_rdata]
  connect_bd_net -net mem_req_valid_1 [get_bd_pins Core_RV32I/dmem_valid] [get_bd_pins MMIO/mem_req_valid]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_target [get_bd_pins Core_RV32I/priv_redirect_target] [get_bd_pins PRIVILEGED/priv_redirect_target]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_valid [get_bd_pins Core_RV32I/priv_redirect_valid] [get_bd_pins PRIVILEGED/priv_redirect_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_ports Reset] [get_bd_pins Core_RV32I/rst] [get_bd_pins GPIO/rst] [get_bd_pins MMIO/rst] [get_bd_pins PRIVILEGED/rst] [get_bd_pins RV32I_RAM_MEMORY/rst] [get_bd_pins TIMER/rst] [get_bd_pins UART/rst]
  connect_bd_net -net ram_ready_1 [get_bd_pins MMIO/ram_ready] [get_bd_pins RV32I_RAM_MEMORY/ready]
  connect_bd_net -net timer_0_rdata [get_bd_pins MMIO/timer_rdata] [get_bd_pins TIMER/rdata]
  connect_bd_net -net timer_0_ready [get_bd_pins MMIO/timer_ready] [get_bd_pins TIMER/ready]
  connect_bd_net -net timer_error_1 [get_bd_pins MMIO/timer_error] [get_bd_pins TIMER/error]
  connect_bd_net -net timer_irq_1 [get_bd_pins PRIVILEGED/timer_irq] [get_bd_pins TIMER/timer_irq]
  connect_bd_net -net trap_controller_0_trap_flush [get_bd_pins Core_RV32I/trap_flush] [get_bd_pins PRIVILEGED/trap_flush]
  connect_bd_net -net uart_tx_0_rdata [get_bd_pins MMIO/uart_rdata] [get_bd_pins UART/rdata]
  connect_bd_net -net uart_tx_0_ready [get_bd_pins MMIO/uart_ready] [get_bd_pins UART/ready]
  connect_bd_net -net valid_1 [get_bd_pins GPIO/valid] [get_bd_pins MMIO/gpio_valid]
  connect_bd_net -net valid_2 [get_bd_pins MMIO/uart_valid] [get_bd_pins UART/valid]
  connect_bd_net -net valid_3 [get_bd_pins MMIO/timer_valid] [get_bd_pins TIMER/valid]
  connect_bd_net -net wdata_1 [get_bd_pins MMIO/ram_wdata] [get_bd_pins RV32I_RAM_MEMORY/wdata]
  connect_bd_net -net wdata_2 [get_bd_pins GPIO/wdata] [get_bd_pins MMIO/gpio_wdata]
  connect_bd_net -net wdata_3 [get_bd_pins MMIO/uart_wdata] [get_bd_pins UART/wdata]
  connect_bd_net -net wdata_4 [get_bd_pins MMIO/timer_wdata] [get_bd_pins TIMER/wdata]
  connect_bd_net -net we_1 [get_bd_pins MMIO/ram_we] [get_bd_pins RV32I_RAM_MEMORY/we]
  connect_bd_net -net we_2 [get_bd_pins GPIO/we] [get_bd_pins MMIO/gpio_we]
  connect_bd_net -net we_3 [get_bd_pins MMIO/uart_we] [get_bd_pins UART/we]
  connect_bd_net -net we_4 [get_bd_pins MMIO/timer_we] [get_bd_pins TIMER/we]
  connect_bd_net -net xlconcat_8_0_dout [get_bd_pins GPIO/gpio_in] [get_bd_pins xlconcat_8_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports SW1] [get_bd_pins xlconcat_8_0/in0] [get_bd_pins xlconcat_8_0/in1] [get_bd_pins xlconcat_8_0/in2] [get_bd_pins xlconcat_8_0/in3] [get_bd_pins xlconcat_8_0/in4] [get_bd_pins xlconcat_8_0/in5] [get_bd_pins xlconcat_8_0/in6] [get_bd_pins xlconcat_8_0/in7]
  connect_bd_net -net xlslice_2bit_0_Dout [get_bd_ports gpio_out_0] [get_bd_pins xlslice_2bit_0/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_ports clk] [get_bd_pins Core_RV32I/clk] [get_bd_pins GPIO/clk] [get_bd_pins MMIO/clk] [get_bd_pins PRIVILEGED/clk] [get_bd_pins RV32I_RAM_MEMORY/clk] [get_bd_pins TIMER/clk] [get_bd_pins UART/clk]

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


