
################################################################
# This is a generated script based on design: RV32_IF_EX
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
# source RV32_IF_EX_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# control, decoder, id_ex_reg, if_id_reg, imm_mux, pc_to_imem_addr, pc_unit, regfile, rom_memory, sim_constant, sim_constant, sim_constant

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
set design_name RV32_IF_EX

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
  set clk [ create_bd_port -dir I clk ]
  set ex_alu_op [ create_bd_port -dir O -from 3 -to 0 ex_alu_op ]
  set ex_imm [ create_bd_port -dir O -from 31 -to 0 ex_imm ]
  set ex_instr [ create_bd_port -dir O -from 31 -to 0 ex_instr ]
  set ex_pc [ create_bd_port -dir O -from 31 -to 0 ex_pc ]
  set ex_pc_plus4 [ create_bd_port -dir O -from 31 -to 0 ex_pc_plus4 ]
  set ex_rd [ create_bd_port -dir O -from 4 -to 0 ex_rd ]
  set ex_rd_we [ create_bd_port -dir O ex_rd_we ]
  set ex_rs1 [ create_bd_port -dir O -from 4 -to 0 ex_rs1 ]
  set ex_rs1_data [ create_bd_port -dir O -from 31 -to 0 ex_rs1_data ]
  set ex_rs2 [ create_bd_port -dir O -from 4 -to 0 ex_rs2 ]
  set ex_rs2_data [ create_bd_port -dir O -from 31 -to 0 ex_rs2_data ]
  set ex_valid [ create_bd_port -dir O ex_valid ]
  set id_instr_debug [ create_bd_port -dir O -from 31 -to 0 id_instr_debug ]
  set id_pc_debug [ create_bd_port -dir O -from 31 -to 0 id_pc_debug ]
  set id_pc_plus4_debug [ create_bd_port -dir O -from 31 -to 0 id_pc_plus4_debug ]
  set if_id_enable [ create_bd_port -dir I if_id_enable ]
  set if_id_flush [ create_bd_port -dir I if_id_flush ]
  set if_instr_debug [ create_bd_port -dir O -from 31 -to 0 if_instr_debug ]
  set if_pc_debug [ create_bd_port -dir O -from 31 -to 0 -type data if_pc_debug ]
  set if_pc_plus4_debug [ create_bd_port -dir O -from 31 -to 0 if_pc_plus4_debug ]
  set rd_addr [ create_bd_port -dir I -from 4 -to 0 rd_addr ]
  set rd_wdata [ create_bd_port -dir I -from 31 -to 0 rd_wdata ]
  set rd_we [ create_bd_port -dir I rd_we ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst

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
  
  # Create instance: id_ex_reg_0, and set properties
  set block_name id_ex_reg
  set block_cell_name id_ex_reg_0
  if { [catch {set id_ex_reg_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $id_ex_reg_0 eq "" } {
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
  
  # Create instance: sim_constant_0, and set properties
  set block_name sim_constant
  set block_cell_name sim_constant_0
  if { [catch {set sim_constant_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sim_constant_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VALUE {1} \
 ] $sim_constant_0

  # Create instance: sim_constant_1, and set properties
  set block_name sim_constant
  set block_cell_name sim_constant_1
  if { [catch {set sim_constant_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sim_constant_1 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VALUE {0} \
 ] $sim_constant_1

  # Create instance: sim_constant_2, and set properties
  set block_name sim_constant
  set block_cell_name sim_constant_2
  if { [catch {set sim_constant_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sim_constant_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.VALUE {1} \
 ] $sim_constant_2

  # Create port connections
  connect_bd_net -net Net [get_bd_ports clk] [get_bd_pins id_ex_reg_0/clk] [get_bd_pins if_id_reg_0/clk] [get_bd_pins pc_unit_0/clk] [get_bd_pins regfile_0/clk] [get_bd_pins rom_memory_0/clk]
  connect_bd_net -net Net1 [get_bd_pins pc_unit_0/pc_en] [get_bd_pins rom_memory_0/en] [get_bd_pins sim_constant_0/dout]
  connect_bd_net -net control_0_alu_op [get_bd_pins control_0/alu_op] [get_bd_pins id_ex_reg_0/id_alu_op]
  connect_bd_net -net control_0_branch_en [get_bd_pins control_0/branch_en] [get_bd_pins id_ex_reg_0/id_branch_en]
  connect_bd_net -net control_0_branch_funct3 [get_bd_pins control_0/branch_funct3] [get_bd_pins id_ex_reg_0/id_branch_funct3]
  connect_bd_net -net control_0_imm_sel [get_bd_pins control_0/imm_sel] [get_bd_pins imm_mux_0/imm_sel]
  connect_bd_net -net control_0_jal [get_bd_pins control_0/jal] [get_bd_pins id_ex_reg_0/id_jal]
  connect_bd_net -net control_0_jalr [get_bd_pins control_0/jalr] [get_bd_pins id_ex_reg_0/id_jalr]
  connect_bd_net -net control_0_mem_re [get_bd_pins control_0/mem_re] [get_bd_pins id_ex_reg_0/id_mem_re]
  connect_bd_net -net control_0_mem_size [get_bd_pins control_0/mem_size] [get_bd_pins id_ex_reg_0/id_mem_size]
  connect_bd_net -net control_0_mem_unsigned [get_bd_pins control_0/mem_unsigned] [get_bd_pins id_ex_reg_0/id_mem_unsigned]
  connect_bd_net -net control_0_mem_we [get_bd_pins control_0/mem_we] [get_bd_pins id_ex_reg_0/id_mem_we]
  connect_bd_net -net control_0_op_a_sel [get_bd_pins control_0/op_a_sel] [get_bd_pins id_ex_reg_0/id_op_a_sel]
  connect_bd_net -net control_0_op_b_sel [get_bd_pins control_0/op_b_sel] [get_bd_pins id_ex_reg_0/id_op_b_sel]
  connect_bd_net -net control_0_rd_we [get_bd_pins control_0/rd_we] [get_bd_pins id_ex_reg_0/id_rd_we]
  connect_bd_net -net control_0_wb_sel [get_bd_pins control_0/wb_sel] [get_bd_pins id_ex_reg_0/id_wb_sel]
  connect_bd_net -net decoder_0_bit30 [get_bd_pins control_0/bit30] [get_bd_pins decoder_0/bit30]
  connect_bd_net -net decoder_0_fmt [get_bd_pins control_0/fmt] [get_bd_pins decoder_0/fmt]
  connect_bd_net -net decoder_0_funct3 [get_bd_pins control_0/funct3] [get_bd_pins decoder_0/funct3]
  connect_bd_net -net decoder_0_funct7 [get_bd_pins control_0/funct7] [get_bd_pins decoder_0/funct7]
  connect_bd_net -net decoder_0_illegal_opcode [get_bd_pins decoder_0/illegal_opcode] [get_bd_pins id_ex_reg_0/id_illegal_instr]
  connect_bd_net -net decoder_0_imm_b [get_bd_pins decoder_0/imm_b] [get_bd_pins imm_mux_0/imm_b]
  connect_bd_net -net decoder_0_imm_i [get_bd_pins decoder_0/imm_i] [get_bd_pins imm_mux_0/imm_i]
  connect_bd_net -net decoder_0_imm_j [get_bd_pins decoder_0/imm_j] [get_bd_pins imm_mux_0/imm_j]
  connect_bd_net -net decoder_0_imm_s [get_bd_pins decoder_0/imm_s] [get_bd_pins imm_mux_0/imm_s]
  connect_bd_net -net decoder_0_imm_u [get_bd_pins decoder_0/imm_u] [get_bd_pins id_ex_reg_0/id_imm_u] [get_bd_pins imm_mux_0/imm_u]
  connect_bd_net -net decoder_0_opcode [get_bd_pins control_0/opcode] [get_bd_pins decoder_0/opcode]
  connect_bd_net -net decoder_0_rd [get_bd_pins decoder_0/rd] [get_bd_pins id_ex_reg_0/id_rd]
  connect_bd_net -net decoder_0_rs1 [get_bd_pins decoder_0/rs1] [get_bd_pins id_ex_reg_0/id_rs1] [get_bd_pins regfile_0/rs1_addr]
  connect_bd_net -net decoder_0_rs2 [get_bd_pins decoder_0/rs2] [get_bd_pins id_ex_reg_0/id_rs2] [get_bd_pins regfile_0/rs2_addr]
  connect_bd_net -net id_ex_reg_0_ex_alu_op [get_bd_ports ex_alu_op] [get_bd_pins id_ex_reg_0/ex_alu_op]
  connect_bd_net -net id_ex_reg_0_ex_imm [get_bd_ports ex_imm] [get_bd_pins id_ex_reg_0/ex_imm]
  connect_bd_net -net id_ex_reg_0_ex_instr [get_bd_ports ex_instr] [get_bd_pins id_ex_reg_0/ex_instr]
  connect_bd_net -net id_ex_reg_0_ex_pc [get_bd_ports ex_pc] [get_bd_pins id_ex_reg_0/ex_pc]
  connect_bd_net -net id_ex_reg_0_ex_pc_plus4 [get_bd_ports ex_pc_plus4] [get_bd_pins id_ex_reg_0/ex_pc_plus4]
  connect_bd_net -net id_ex_reg_0_ex_rd [get_bd_ports ex_rd] [get_bd_pins id_ex_reg_0/ex_rd]
  connect_bd_net -net id_ex_reg_0_ex_rd_we [get_bd_ports ex_rd_we] [get_bd_pins id_ex_reg_0/ex_rd_we]
  connect_bd_net -net id_ex_reg_0_ex_rs1 [get_bd_ports ex_rs1] [get_bd_pins id_ex_reg_0/ex_rs1]
  connect_bd_net -net id_ex_reg_0_ex_rs1_data [get_bd_ports ex_rs1_data] [get_bd_pins id_ex_reg_0/ex_rs1_data]
  connect_bd_net -net id_ex_reg_0_ex_rs2 [get_bd_ports ex_rs2] [get_bd_pins id_ex_reg_0/ex_rs2]
  connect_bd_net -net id_ex_reg_0_ex_rs2_data [get_bd_ports ex_rs2_data] [get_bd_pins id_ex_reg_0/ex_rs2_data]
  connect_bd_net -net id_ex_reg_0_ex_valid [get_bd_ports ex_valid] [get_bd_pins id_ex_reg_0/ex_valid]
  connect_bd_net -net if_id_enable_1 [get_bd_ports if_id_enable] [get_bd_pins if_id_reg_0/enable]
  connect_bd_net -net if_id_flush_1 [get_bd_ports if_id_flush] [get_bd_pins if_id_reg_0/flush]
  connect_bd_net -net if_id_reg_0_id_instr [get_bd_ports id_instr_debug] [get_bd_pins decoder_0/instr] [get_bd_pins id_ex_reg_0/id_instr] [get_bd_pins if_id_reg_0/id_instr]
  connect_bd_net -net if_id_reg_0_id_pc [get_bd_ports id_pc_debug] [get_bd_pins id_ex_reg_0/id_pc] [get_bd_pins if_id_reg_0/id_pc]
  connect_bd_net -net if_id_reg_0_id_pc_plus4 [get_bd_ports id_pc_plus4_debug] [get_bd_pins id_ex_reg_0/id_pc_plus4] [get_bd_pins if_id_reg_0/id_pc_plus4]
  connect_bd_net -net imm_mux_0_imm_out [get_bd_pins id_ex_reg_0/id_imm] [get_bd_pins imm_mux_0/imm_out]
  connect_bd_net -net pc_to_imem_addr_0_addr [get_bd_pins pc_to_imem_addr_0/addr] [get_bd_pins rom_memory_0/addr]
  connect_bd_net -net pc_unit_0_pc [get_bd_ports if_pc_debug] [get_bd_pins if_id_reg_0/if_pc] [get_bd_pins pc_to_imem_addr_0/pc] [get_bd_pins pc_unit_0/pc]
  connect_bd_net -net pc_unit_0_pc_plus4 [get_bd_ports if_pc_plus4_debug] [get_bd_pins if_id_reg_0/if_pc_plus4] [get_bd_pins pc_unit_0/pc_plus4]
  connect_bd_net -net rd_addr_1 [get_bd_ports rd_addr] [get_bd_pins regfile_0/rd_addr]
  connect_bd_net -net rd_wdata_1 [get_bd_ports rd_wdata] [get_bd_pins regfile_0/rd_wdata]
  connect_bd_net -net rd_we_1 [get_bd_ports rd_we] [get_bd_pins regfile_0/rd_we]
  connect_bd_net -net regfile_0_rs1_rdata [get_bd_pins id_ex_reg_0/id_rs1_data] [get_bd_pins regfile_0/rs1_rdata]
  connect_bd_net -net regfile_0_rs2_rdata [get_bd_pins id_ex_reg_0/id_rs2_data] [get_bd_pins regfile_0/rs2_rdata]
  connect_bd_net -net rom_memory_0_instr [get_bd_ports if_instr_debug] [get_bd_pins if_id_reg_0/if_instr] [get_bd_pins rom_memory_0/instr]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins id_ex_reg_0/rst] [get_bd_pins if_id_reg_0/rst] [get_bd_pins pc_unit_0/rst]
  connect_bd_net -net sim_constant_1_dout [get_bd_pins id_ex_reg_0/bubble] [get_bd_pins id_ex_reg_0/stall] [get_bd_pins sim_constant_1/dout]
  connect_bd_net -net sim_constant_2_dout [get_bd_pins id_ex_reg_0/id_valid] [get_bd_pins sim_constant_2/dout]

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


