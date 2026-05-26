
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
# alu, branch, branch_predictor_btb_bht, control, csr_access_unit, csr_file, csr_regfile_wb_mux, decoder, ex_mem_reg, exception_mux, forward_mux, forward_mux, forward_mux, forwarding, gpio, id_ex_reg, if_id_reg, imm_mux, load_use_detection, mem_bus_registered, mem_exception_merge, mem_stage, mem_wb_reg, operand_a_mux, operand_b_mux, pc_to_imem_addr, pc_unit, priority_branch_OR_load_use, privileged_pc_redirect_mux, ram_data, regfile, regfile_we_gen, rom_memory, sim_constant, sim_constant, sim_constant, system_decoder, timer, trap_controller, uart_tx, util_vector_and, util_vector_and, util_vector_and, util_vector_and, util_vector_and, util_vector_not, util_vector_not, util_vector_not, util_vector_or, util_vector_or, wb_mux, xlconcat_8, xlslice_2bit

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
  set SW1 [ create_bd_port -dir I -from 0 -to 0 SW1 ]
  set clk [ create_bd_port -dir I -type clk -freq_hz 100000000 clk ]
  set gpio_out_0 [ create_bd_port -dir O -from 1 -to 0 gpio_out_0 ]
  set rst [ create_bd_port -dir I rst ]

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
   CONFIG.CLK_FREQ {190474289} \
 ] $uart_tx_0

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
  
  # Create instance: util_vector_and_2, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_2
  if { [catch {set util_vector_and_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_2 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_3, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_3
  if { [catch {set util_vector_and_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_3 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_and_4, and set properties
  set block_name util_vector_and
  set block_cell_name util_vector_and_4
  if { [catch {set util_vector_and_4 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_and_4 eq "" } {
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
  
  # Create instance: util_vector_not_2, and set properties
  set block_name util_vector_not
  set block_cell_name util_vector_not_2
  if { [catch {set util_vector_not_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $util_vector_not_2 eq "" } {
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
  connect_bd_net -net Core_RV32I_ex_exception_cause [get_bd_pins branch_0/ex_exception_cause] [get_bd_pins ex_mem_reg/ex_exception_cause] [get_bd_pins exception_mux_0/ex_exception_cause]
  connect_bd_net -net Core_RV32I_ex_exception_tval [get_bd_pins branch_0/ex_exception_tval] [get_bd_pins ex_mem_reg/ex_exception_tval] [get_bd_pins exception_mux_0/ex_exception_tval]
  connect_bd_net -net Core_RV32I_ex_exception_valid [get_bd_pins branch_0/ex_exception_valid] [get_bd_pins ex_mem_reg/ex_exception_valid] [get_bd_pins exception_mux_0/ex_exception_valid]
  connect_bd_net -net Core_RV32I_ex_illegal_instr [get_bd_pins id_ex_reg/ex_illegal_instr] [get_bd_pins util_vector_and_0/Op1]
  connect_bd_net -net Core_RV32I_ex_instr [get_bd_pins id_ex_reg/ex_instr] [get_bd_pins system_decoder_0/instr]
  connect_bd_net -net Core_RV32I_ex_pc [get_bd_pins branch_0/ex_pc] [get_bd_pins branch_predictor_btb_0/update_pc] [get_bd_pins ex_mem_reg/ex_pc] [get_bd_pins exception_mux_0/ex_exception_pc] [get_bd_pins id_ex_reg/ex_pc] [get_bd_pins operand_a_mux_0/pc] [get_bd_pins trap_controller_0/current_pc]
  connect_bd_net -net Core_RV32I_ex_valid [get_bd_pins branch_0/ex_valid] [get_bd_pins csr_access_unit_0/ex_valid] [get_bd_pins ex_mem_reg/ex_valid] [get_bd_pins id_ex_reg/ex_valid] [get_bd_pins load_use_detection_0/id_ex_valid] [get_bd_pins trap_controller_0/instr_valid]
  connect_bd_net -net Core_RV32I_mem_exception_cause [get_bd_pins ex_mem_reg/mem_exception_cause] [get_bd_pins mem_exception_merge_0/mem_exception_cause]
  connect_bd_net -net Core_RV32I_mem_exception_tval [get_bd_pins ex_mem_reg/mem_exception_tval] [get_bd_pins mem_exception_merge_0/mem_exception_tval]
  connect_bd_net -net Core_RV32I_mem_exception_valid [get_bd_pins ex_mem_reg/mem_exception_valid] [get_bd_pins mem_exception_merge_0/mem_exception_valid]
  connect_bd_net -net Core_RV32I_mem_fault_cause [get_bd_pins mem_exception_merge_0/mem_fault_cause] [get_bd_pins mem_stage_0/mem_fault_cause]
  connect_bd_net -net Core_RV32I_mem_fault_tval [get_bd_pins mem_exception_merge_0/mem_fault_tval] [get_bd_pins mem_stage_0/mem_fault_tval]
  connect_bd_net -net Core_RV32I_mem_fault_valid [get_bd_pins mem_exception_merge_0/mem_fault_valid] [get_bd_pins mem_stage_0/mem_fault_valid]
  connect_bd_net -net Core_RV32I_mem_pc [get_bd_pins ex_mem_reg/mem_pc] [get_bd_pins mem_exception_merge_0/mem_exception_pc]
  connect_bd_net -net Core_RV32I_mem_stall_req [get_bd_pins ex_mem_reg/stall] [get_bd_pins id_ex_reg/stall] [get_bd_pins mem_stage_0/mem_stall_req] [get_bd_pins trap_controller_0/mem_stall_req] [get_bd_pins util_vector_not_2/Op1] [get_bd_pins util_vector_or_1/Op1]
  connect_bd_net -net Core_RV32I_out_data [get_bd_pins branch_0/ex_rs1_data] [get_bd_pins csr_access_unit_0/rs1_data] [get_bd_pins forward_mux_0/out_data] [get_bd_pins operand_a_mux_0/rs1_data]
  connect_bd_net -net Core_RV32I_rd_wdata1 [get_bd_pins csr_regfile_wb_mux_0/normal_wdata] [get_bd_pins forward_mux_0/mem_wb_data] [get_bd_pins forward_mux_1/mem_wb_data] [get_bd_pins forward_mux_2/mem_wb_data] [get_bd_pins wb_mux_0/rd_wdata]
  connect_bd_net -net Core_RV32I_regfile_we [get_bd_pins csr_regfile_wb_mux_0/normal_we] [get_bd_pins forwarding_0/wb_rd_we] [get_bd_pins regfile_we_gen_0/regfile_we]
  connect_bd_net -net Core_RV32I_wb_csr_rd_data [get_bd_pins csr_regfile_wb_mux_0/csr_rd_data] [get_bd_pins mem_wb_reg_0/wb_csr_rd_data]
  connect_bd_net -net Core_RV32I_wb_csr_rd_we [get_bd_pins csr_regfile_wb_mux_0/csr_rd_we] [get_bd_pins mem_wb_reg_0/wb_csr_rd_we]
  connect_bd_net -net Core_RV32I_wb_rd [get_bd_pins csr_regfile_wb_mux_0/normal_rd] [get_bd_pins forwarding_0/wb_rd] [get_bd_pins mem_wb_reg_0/wb_rd] [get_bd_pins regfile_we_gen_0/wb_rd]
  connect_bd_net -net MMIO_mem_rsp_error [get_bd_pins mem_bus_registered_0/mem_rsp_error] [get_bd_pins mem_stage_0/dmem_error]
  connect_bd_net -net MMIO_ram_valid [get_bd_pins mem_bus_registered_0/ram_valid] [get_bd_pins ram_data_1/valid]
  connect_bd_net -net PRIVILEGED_csr_rd_data1 [get_bd_pins csr_access_unit_0/csr_rd_data] [get_bd_pins ex_mem_reg/ex_csr_rd_data]
  connect_bd_net -net PRIVILEGED_csr_rd_we [get_bd_pins csr_access_unit_0/csr_rd_we] [get_bd_pins ex_mem_reg/ex_csr_rd_we]
  connect_bd_net -net RV32I_EX_bp_update_taken [get_bd_pins branch_0/bp_update_taken] [get_bd_pins branch_predictor_btb_0/update_taken]
  connect_bd_net -net RV32I_EX_bp_update_target [get_bd_pins branch_0/bp_update_target] [get_bd_pins branch_predictor_btb_0/update_target]
  connect_bd_net -net RV32I_EX_bp_update_valid [get_bd_pins branch_0/bp_update_valid] [get_bd_pins branch_predictor_btb_0/update_valid]
  connect_bd_net -net RV32I_EX_ex_flush_req [get_bd_pins branch_0/ex_flush_req] [get_bd_pins priority_branch_OR_l_0/ex_flush_req]
  connect_bd_net -net RV32I_EX_mem_csr_rd_data [get_bd_pins ex_mem_reg/mem_csr_rd_data] [get_bd_pins mem_wb_reg_0/mem_csr_rd_data]
  connect_bd_net -net RV32I_EX_mem_csr_rd_we [get_bd_pins ex_mem_reg/mem_csr_rd_we] [get_bd_pins mem_wb_reg_0/mem_csr_rd_we]
  connect_bd_net -net RV32I_EX_pc_redirect_target [get_bd_pins branch_0/pc_redirect_target] [get_bd_pins pc_unit_0/pc_redirect_target]
  connect_bd_net -net RV32I_EX_pc_redirect_valid [get_bd_pins branch_0/pc_redirect_valid] [get_bd_pins pc_unit_0/pc_redirect_valid]
  connect_bd_net -net RV32I_ID_ex_pred_next_pc [get_bd_pins branch_0/ex_pred_next_pc] [get_bd_pins id_ex_reg/ex_pred_next_pc]
  connect_bd_net -net RV32I_ID_ex_rd [get_bd_pins ex_mem_reg/ex_rd] [get_bd_pins id_ex_reg/ex_rd] [get_bd_pins load_use_detection_0/id_ex_rd]
  connect_bd_net -net RV32I_ID_rs1 [get_bd_pins decoder_0/rs1] [get_bd_pins id_ex_reg/id_rs1] [get_bd_pins load_use_detection_0/if_id_rs1] [get_bd_pins regfile_0/rs1_addr]
  connect_bd_net -net RV32I_ID_rs1_used [get_bd_pins decoder_0/rs1_used] [get_bd_pins load_use_detection_0/if_id_rs1_used]
  connect_bd_net -net RV32I_ID_rs2 [get_bd_pins decoder_0/rs2] [get_bd_pins id_ex_reg/id_rs2] [get_bd_pins load_use_detection_0/if_id_rs2] [get_bd_pins regfile_0/rs2_addr]
  connect_bd_net -net RV32I_ID_rs2_used [get_bd_pins decoder_0/rs2_used] [get_bd_pins load_use_detection_0/if_id_rs2_used]
  connect_bd_net -net RV32I_IF_id_instr_out [get_bd_pins decoder_0/instr] [get_bd_pins id_ex_reg/id_instr] [get_bd_pins if_id_reg_0/id_instr_out]
  connect_bd_net -net RV32I_IF_id_pc4_out [get_bd_pins id_ex_reg/id_pc_plus4] [get_bd_pins if_id_reg_0/id_pc4_out]
  connect_bd_net -net RV32I_IF_id_pc_out [get_bd_pins id_ex_reg/id_pc] [get_bd_pins if_id_reg_0/id_pc_out]
  connect_bd_net -net RV32I_IF_id_pred_next_pc_out [get_bd_pins id_ex_reg/id_pred_next_pc] [get_bd_pins if_id_reg_0/id_pred_next_pc_out]
  connect_bd_net -net RV32I_IF_id_valid_out [get_bd_pins id_ex_reg/id_valid] [get_bd_pins if_id_reg_0/id_valid_out] [get_bd_pins load_use_detection_0/if_id_valid]
  connect_bd_net -net RV32I_MEM_dmem_addr [get_bd_pins mem_bus_registered_0/mem_req_addr] [get_bd_pins mem_stage_0/dmem_addr]
  connect_bd_net -net RV32I_MEM_dmem_be [get_bd_pins mem_bus_registered_0/mem_req_be] [get_bd_pins mem_stage_0/dmem_be]
  connect_bd_net -net RV32I_MEM_dmem_wdata [get_bd_pins mem_bus_registered_0/mem_req_wdata] [get_bd_pins mem_stage_0/dmem_wdata]
  connect_bd_net -net RV32I_MEM_dmem_we [get_bd_pins mem_bus_registered_0/mem_req_we] [get_bd_pins mem_stage_0/dmem_we]
  connect_bd_net -net RV32I_MEM_mem_rd_we [get_bd_pins mem_stage_0/mem_out_rd_we] [get_bd_pins mem_wb_reg_0/mem_rd_we] [get_bd_pins util_vector_and_1/Op2]
  connect_bd_net -net RV32I_MEM_wb_alu_result [get_bd_pins mem_wb_reg_0/wb_alu_result] [get_bd_pins wb_mux_0/alu_y]
  connect_bd_net -net RV32I_MEM_wb_data [get_bd_pins mem_wb_reg_0/wb_data] [get_bd_pins wb_mux_0/load_data]
  connect_bd_net -net RV32I_MEM_wb_imm_u [get_bd_pins mem_wb_reg_0/wb_imm_u] [get_bd_pins wb_mux_0/imm_u]
  connect_bd_net -net RV32I_MEM_wb_pc_plus4 [get_bd_pins mem_wb_reg_0/wb_pc_plus4] [get_bd_pins wb_mux_0/pc_plus4]
  connect_bd_net -net RV32I_MEM_wb_sel [get_bd_pins mem_wb_reg_0/wb_sel] [get_bd_pins wb_mux_0/wb_sel]
  connect_bd_net -net RV32I_MEM_wb_valid [get_bd_pins forwarding_0/wb_valid] [get_bd_pins mem_wb_reg_0/wb_valid] [get_bd_pins regfile_we_gen_0/wb_valid]
  connect_bd_net -net RV32I_RAM_MEMORY_rdata [get_bd_pins mem_bus_registered_0/ram_rdata] [get_bd_pins ram_data_1/rdata]
  connect_bd_net -net addr_1 [get_bd_pins mem_bus_registered_0/ram_addr] [get_bd_pins ram_data_1/addr]
  connect_bd_net -net addr_2 [get_bd_pins gpio_0/addr] [get_bd_pins mem_bus_registered_0/gpio_addr]
  connect_bd_net -net addr_3 [get_bd_pins mem_bus_registered_0/uart_addr] [get_bd_pins uart_tx_0/addr]
  connect_bd_net -net addr_4 [get_bd_pins mem_bus_registered_0/timer_addr] [get_bd_pins timer_0/addr]
  connect_bd_net -net alu_0_y [get_bd_pins alu_0/y] [get_bd_pins ex_mem_reg/ex_alu_result]
  connect_bd_net -net alu_op_1 [get_bd_pins alu_0/alu_op] [get_bd_pins id_ex_reg/ex_alu_op]
  connect_bd_net -net be_1 [get_bd_pins mem_bus_registered_0/ram_be] [get_bd_pins ram_data_1/be]
  connect_bd_net -net be_2 [get_bd_pins gpio_0/be] [get_bd_pins mem_bus_registered_0/gpio_be]
  connect_bd_net -net be_3 [get_bd_pins mem_bus_registered_0/uart_be] [get_bd_pins uart_tx_0/be]
  connect_bd_net -net be_4 [get_bd_pins mem_bus_registered_0/timer_be] [get_bd_pins timer_0/be]
  connect_bd_net -net branch_predictor_btb_0_pred_next_pc [get_bd_pins branch_predictor_btb_0/pred_next_pc] [get_bd_pins if_id_reg_0/if_pred_next_pc_in] [get_bd_pins pc_unit_0/pc_predict_next]
  connect_bd_net -net branch_predictor_btb_0_pred_taken [get_bd_pins branch_predictor_btb_0/pred_taken] [get_bd_pins util_vector_and_2/Op2]
  connect_bd_net -net branch_predictor_btb_0_pred_valid [get_bd_pins branch_predictor_btb_0/pred_valid] [get_bd_pins util_vector_and_2/Op1]
  connect_bd_net -net bubble_1 [get_bd_pins id_ex_reg/bubble] [get_bd_pins priority_branch_OR_l_0/id_ex_flush_final]
  connect_bd_net -net control_0_alu_op [get_bd_pins control_0/alu_op] [get_bd_pins id_ex_reg/id_alu_op]
  connect_bd_net -net control_0_branch_en [get_bd_pins control_0/branch_en] [get_bd_pins id_ex_reg/id_branch_en]
  connect_bd_net -net control_0_branch_funct3 [get_bd_pins control_0/branch_funct3] [get_bd_pins id_ex_reg/id_branch_funct3]
  connect_bd_net -net control_0_imm_sel [get_bd_pins control_0/imm_sel] [get_bd_pins imm_mux_0/imm_sel]
  connect_bd_net -net control_0_jal [get_bd_pins control_0/jal] [get_bd_pins id_ex_reg/id_jal]
  connect_bd_net -net control_0_jalr [get_bd_pins control_0/jalr] [get_bd_pins id_ex_reg/id_jalr]
  connect_bd_net -net control_0_mem_re [get_bd_pins control_0/mem_re] [get_bd_pins id_ex_reg/id_mem_re]
  connect_bd_net -net control_0_mem_sign_ext [get_bd_pins control_0/mem_sign_ext] [get_bd_pins id_ex_reg/id_mem_unsigned]
  connect_bd_net -net control_0_mem_size [get_bd_pins control_0/mem_size] [get_bd_pins id_ex_reg/id_mem_size]
  connect_bd_net -net control_0_mem_we [get_bd_pins control_0/mem_we] [get_bd_pins id_ex_reg/id_mem_we]
  connect_bd_net -net control_0_op_a_sel [get_bd_pins control_0/op_a_sel] [get_bd_pins id_ex_reg/id_op_a_sel]
  connect_bd_net -net control_0_op_b_sel [get_bd_pins control_0/op_b_sel] [get_bd_pins id_ex_reg/id_op_b_sel]
  connect_bd_net -net control_0_rd_we [get_bd_pins control_0/rd_we] [get_bd_pins id_ex_reg/id_rd_we]
  connect_bd_net -net control_0_wb_sel [get_bd_pins control_0/wb_sel] [get_bd_pins id_ex_reg/id_wb_sel]
  connect_bd_net -net csr_access_unit_0_csr_wdata [get_bd_pins csr_access_unit_0/csr_wdata] [get_bd_pins csr_file_0/csr_wdata]
  connect_bd_net -net csr_access_unit_0_csr_we [get_bd_pins csr_access_unit_0/csr_we] [get_bd_pins csr_file_0/csr_we]
  connect_bd_net -net csr_file_0_csr_mepc [get_bd_pins csr_file_0/csr_mepc] [get_bd_pins trap_controller_0/csr_mepc]
  connect_bd_net -net csr_file_0_csr_mie [get_bd_pins csr_file_0/csr_mie] [get_bd_pins trap_controller_0/csr_mie]
  connect_bd_net -net csr_file_0_csr_mip [get_bd_pins csr_file_0/csr_mip] [get_bd_pins trap_controller_0/csr_mip]
  connect_bd_net -net csr_file_0_csr_mstatus [get_bd_pins csr_file_0/csr_mstatus] [get_bd_pins trap_controller_0/csr_mstatus]
  connect_bd_net -net csr_file_0_csr_mtvec [get_bd_pins csr_file_0/csr_mtvec] [get_bd_pins trap_controller_0/csr_mtvec]
  connect_bd_net -net csr_file_0_csr_rdata [get_bd_pins csr_access_unit_0/csr_rdata] [get_bd_pins csr_file_0/csr_rdata]
  connect_bd_net -net csr_rd_addr1_1 [get_bd_pins csr_regfile_wb_mux_0/csr_rd_addr] [get_bd_pins mem_wb_reg_0/wb_csr_rd_addr]
  connect_bd_net -net csr_regfile_wb_mux_0_final_rd [get_bd_pins csr_regfile_wb_mux_0/final_rd] [get_bd_pins regfile_0/rd_addr]
  connect_bd_net -net csr_regfile_wb_mux_0_final_wdata [get_bd_pins csr_regfile_wb_mux_0/final_wdata] [get_bd_pins regfile_0/rd_wdata]
  connect_bd_net -net csr_regfile_wb_mux_0_final_we [get_bd_pins csr_regfile_wb_mux_0/final_we] [get_bd_pins regfile_0/rd_we]
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
  connect_bd_net -net dmem_ready_1 [get_bd_pins mem_bus_registered_0/mem_rsp_valid] [get_bd_pins mem_stage_0/dmem_ready]
  connect_bd_net -net dmem_req_ready_1 [get_bd_pins mem_bus_registered_0/mem_req_ready] [get_bd_pins mem_stage_0/dmem_req_ready]
  connect_bd_net -net ex_branch_en_1 [get_bd_pins branch_0/ex_branch_en] [get_bd_pins id_ex_reg/ex_branch_en]
  connect_bd_net -net ex_branch_funct3_1 [get_bd_pins branch_0/ex_branch_funct3] [get_bd_pins id_ex_reg/ex_branch_funct3]
  connect_bd_net -net ex_csr_rd_addr_1 [get_bd_pins csr_access_unit_0/csr_rd_addr] [get_bd_pins ex_mem_reg/ex_csr_rd_addr]
  connect_bd_net -net ex_imm_1 [get_bd_pins branch_0/ex_imm] [get_bd_pins id_ex_reg/ex_imm] [get_bd_pins operand_b_mux_0/imm]
  connect_bd_net -net ex_imm_u_1 [get_bd_pins ex_mem_reg/ex_imm_u] [get_bd_pins id_ex_reg/ex_imm_u]
  connect_bd_net -net ex_jal_1 [get_bd_pins branch_0/ex_jal] [get_bd_pins id_ex_reg/ex_jal]
  connect_bd_net -net ex_jalr_1 [get_bd_pins branch_0/ex_jalr] [get_bd_pins id_ex_reg/ex_jalr]
  connect_bd_net -net ex_mem_re_1 [get_bd_pins ex_mem_reg/ex_mem_re] [get_bd_pins id_ex_reg/ex_mem_re] [get_bd_pins load_use_detection_0/id_ex_mem_re]
  connect_bd_net -net ex_mem_reg_1_mem_alu_result [get_bd_pins ex_mem_reg/mem_alu_result] [get_bd_pins forward_mux_0/ex_mem_data] [get_bd_pins forward_mux_1/ex_mem_data] [get_bd_pins forward_mux_2/ex_mem_data] [get_bd_pins mem_stage_0/mem_in_alu_result]
  connect_bd_net -net ex_mem_reg_1_mem_imm_u [get_bd_pins ex_mem_reg/mem_imm_u] [get_bd_pins mem_stage_0/mem_in_imm_u]
  connect_bd_net -net ex_mem_reg_1_mem_mem_re [get_bd_pins ex_mem_reg/mem_mem_re] [get_bd_pins forwarding_0/mem_is_load] [get_bd_pins mem_stage_0/mem_in_mem_re]
  connect_bd_net -net ex_mem_reg_1_mem_mem_size [get_bd_pins ex_mem_reg/mem_mem_size] [get_bd_pins mem_stage_0/mem_in_mem_size]
  connect_bd_net -net ex_mem_reg_1_mem_mem_unsigned [get_bd_pins ex_mem_reg/mem_mem_unsigned] [get_bd_pins mem_stage_0/mem_in_mem_unsigned]
  connect_bd_net -net ex_mem_reg_1_mem_mem_we [get_bd_pins ex_mem_reg/mem_mem_we] [get_bd_pins mem_stage_0/mem_in_mem_we]
  connect_bd_net -net ex_mem_reg_1_mem_pc_plus4 [get_bd_pins ex_mem_reg/mem_pc_plus4] [get_bd_pins mem_stage_0/mem_in_pc_plus4]
  connect_bd_net -net ex_mem_reg_1_mem_rd [get_bd_pins ex_mem_reg/mem_rd] [get_bd_pins forwarding_0/mem_rd] [get_bd_pins mem_stage_0/mem_in_rd]
  connect_bd_net -net ex_mem_reg_1_mem_rd_we [get_bd_pins ex_mem_reg/mem_rd_we] [get_bd_pins mem_stage_0/mem_in_rd_we] [get_bd_pins util_vector_and_4/Op2]
  connect_bd_net -net ex_mem_reg_1_mem_store_data [get_bd_pins ex_mem_reg/mem_store_data] [get_bd_pins mem_stage_0/mem_in_store_data]
  connect_bd_net -net ex_mem_reg_1_mem_valid [get_bd_pins ex_mem_reg/mem_valid] [get_bd_pins forwarding_0/mem_valid] [get_bd_pins mem_stage_0/mem_in_valid] [get_bd_pins util_vector_and_4/Op1]
  connect_bd_net -net ex_mem_reg_1_mem_wb_sel [get_bd_pins ex_mem_reg/mem_wb_sel] [get_bd_pins mem_stage_0/mem_in_wb_sel]
  connect_bd_net -net ex_mem_size_1 [get_bd_pins ex_mem_reg/ex_mem_size] [get_bd_pins id_ex_reg/ex_mem_size]
  connect_bd_net -net ex_mem_unsigned_1 [get_bd_pins ex_mem_reg/ex_mem_unsigned] [get_bd_pins id_ex_reg/ex_mem_unsigned]
  connect_bd_net -net ex_mem_we_1 [get_bd_pins ex_mem_reg/ex_mem_we] [get_bd_pins id_ex_reg/ex_mem_we]
  connect_bd_net -net ex_op_b_sel_1 [get_bd_pins forwarding_0/ex_op_b_sel] [get_bd_pins id_ex_reg/ex_op_b_sel] [get_bd_pins operand_b_mux_0/op_b_sel]
  connect_bd_net -net ex_pc_plus4_1 [get_bd_pins ex_mem_reg/ex_pc_plus4] [get_bd_pins id_ex_reg/ex_pc_plus4]
  connect_bd_net -net ex_rd_we_1 [get_bd_pins ex_mem_reg/ex_rd_we] [get_bd_pins id_ex_reg/ex_rd_we]
  connect_bd_net -net ex_rs1_1 [get_bd_pins forwarding_0/ex_rs1] [get_bd_pins id_ex_reg/ex_rs1]
  connect_bd_net -net ex_rs1_data_1 [get_bd_pins forward_mux_0/base_data] [get_bd_pins id_ex_reg/ex_rs1_data]
  connect_bd_net -net ex_rs2_1 [get_bd_pins forwarding_0/ex_rs2] [get_bd_pins id_ex_reg/ex_rs2]
  connect_bd_net -net ex_rs2_data_1 [get_bd_pins forward_mux_1/base_data] [get_bd_pins forward_mux_2/base_data] [get_bd_pins id_ex_reg/ex_rs2_data]
  connect_bd_net -net ex_wb_sel_1 [get_bd_pins ex_mem_reg/ex_wb_sel] [get_bd_pins id_ex_reg/ex_wb_sel]
  connect_bd_net -net exception_mux_0_exception_cause [get_bd_pins exception_mux_0/exception_cause] [get_bd_pins trap_controller_0/exception_cause]
  connect_bd_net -net exception_mux_0_exception_pc [get_bd_pins exception_mux_0/exception_pc] [get_bd_pins trap_controller_0/exception_pc]
  connect_bd_net -net exception_mux_0_exception_tval [get_bd_pins exception_mux_0/exception_tval] [get_bd_pins trap_controller_0/exception_tval]
  connect_bd_net -net exception_mux_0_exception_valid [get_bd_pins exception_mux_0/exception_valid] [get_bd_pins trap_controller_0/exception_valid]
  connect_bd_net -net flush_1 [get_bd_pins priority_branch_OR_l_0/if_id_flush_final] [get_bd_pins util_vector_or_0/Op1]
  connect_bd_net -net forward_mux_1_out_data [get_bd_pins branch_0/ex_rs2_data] [get_bd_pins forward_mux_1/out_data] [get_bd_pins operand_b_mux_0/rs2_data]
  connect_bd_net -net forward_mux_2_out_data [get_bd_pins ex_mem_reg/ex_store_data] [get_bd_pins forward_mux_2/out_data]
  connect_bd_net -net forwarding_0_forward_a [get_bd_pins forward_mux_0/forward_sel] [get_bd_pins forwarding_0/forward_a]
  connect_bd_net -net forwarding_0_forward_b [get_bd_pins forward_mux_1/forward_sel] [get_bd_pins forwarding_0/forward_b]
  connect_bd_net -net forwarding_0_forward_store [get_bd_pins forward_mux_2/forward_sel] [get_bd_pins forwarding_0/forward_store]
  connect_bd_net -net gpio_0_gpio_out [get_bd_pins gpio_0/gpio_out] [get_bd_pins xlslice_2bit_0/Din]
  connect_bd_net -net gpio_0_rdata [get_bd_pins gpio_0/rdata] [get_bd_pins mem_bus_registered_0/gpio_rdata]
  connect_bd_net -net gpio_0_ready [get_bd_pins gpio_0/ready] [get_bd_pins mem_bus_registered_0/gpio_ready]
  connect_bd_net -net hold_1 [get_bd_pins priority_branch_OR_l_0/if_id_hold_final] [get_bd_pins util_vector_or_1/Op2]
  connect_bd_net -net imm_mux_0_imm_out [get_bd_pins id_ex_reg/id_imm] [get_bd_pins imm_mux_0/imm_out]
  connect_bd_net -net load_use_detection_0_id_ex_flush [get_bd_pins load_use_detection_0/id_ex_flush] [get_bd_pins priority_branch_OR_l_0/load_use_id_ex_flush]
  connect_bd_net -net load_use_detection_0_if_id_hold [get_bd_pins load_use_detection_0/if_id_hold] [get_bd_pins priority_branch_OR_l_0/load_use_if_id_hold]
  connect_bd_net -net load_use_detection_0_pc_en [get_bd_pins load_use_detection_0/pc_en] [get_bd_pins priority_branch_OR_l_0/load_use_pc_en]
  connect_bd_net -net mem_csr_rd_addr_1 [get_bd_pins ex_mem_reg/mem_csr_rd_addr] [get_bd_pins mem_wb_reg_0/mem_csr_rd_addr]
  connect_bd_net -net mem_data_1 [get_bd_pins mem_bus_registered_0/mem_rsp_rdata] [get_bd_pins mem_stage_0/dmem_rdata]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_cause [get_bd_pins exception_mux_0/mem_exception_cause] [get_bd_pins mem_exception_merge_0/final_mem_exception_cause]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_pc [get_bd_pins exception_mux_0/mem_exception_pc] [get_bd_pins mem_exception_merge_0/final_mem_exception_pc]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_tval [get_bd_pins exception_mux_0/mem_exception_tval] [get_bd_pins mem_exception_merge_0/final_mem_exception_tval]
  connect_bd_net -net mem_exception_merge_0_final_mem_exception_valid [get_bd_pins exception_mux_0/mem_exception_valid] [get_bd_pins mem_exception_merge_0/final_mem_exception_valid]
  connect_bd_net -net mem_req_valid_1 [get_bd_pins mem_bus_registered_0/mem_req_valid] [get_bd_pins mem_stage_0/dmem_valid]
  connect_bd_net -net mem_stage_0_mem_forward_data [get_bd_pins forward_mux_0/mem_stage_data] [get_bd_pins forward_mux_1/mem_stage_data] [get_bd_pins forward_mux_2/mem_stage_data] [get_bd_pins mem_stage_0/mem_forward_data]
  connect_bd_net -net mem_stage_0_mem_out_alu_result [get_bd_pins mem_stage_0/mem_out_alu_result] [get_bd_pins mem_wb_reg_0/mem_alu_result]
  connect_bd_net -net mem_stage_0_mem_out_data [get_bd_pins mem_stage_0/mem_out_data] [get_bd_pins mem_wb_reg_0/mem_data]
  connect_bd_net -net mem_stage_0_mem_out_imm_u [get_bd_pins mem_stage_0/mem_out_imm_u] [get_bd_pins mem_wb_reg_0/mem_imm_u]
  connect_bd_net -net mem_stage_0_mem_out_pc_plus4 [get_bd_pins mem_stage_0/mem_out_pc_plus4] [get_bd_pins mem_wb_reg_0/mem_pc_plus4]
  connect_bd_net -net mem_stage_0_mem_out_rd [get_bd_pins forwarding_0/mem_stage_rd] [get_bd_pins mem_stage_0/mem_out_rd] [get_bd_pins mem_wb_reg_0/mem_rd]
  connect_bd_net -net mem_stage_0_mem_out_valid [get_bd_pins forwarding_0/mem_stage_valid] [get_bd_pins mem_stage_0/mem_out_valid] [get_bd_pins mem_wb_reg_0/mem_valid] [get_bd_pins util_vector_and_1/Op1]
  connect_bd_net -net mem_stage_0_mem_out_wb_sel [get_bd_pins mem_stage_0/mem_out_wb_sel] [get_bd_pins mem_wb_reg_0/mem_wb_sel]
  connect_bd_net -net mem_wb_reg_0_wb_rd_we [get_bd_pins mem_wb_reg_0/wb_rd_we] [get_bd_pins regfile_we_gen_0/wb_rd_we]
  connect_bd_net -net op_a_sel_1 [get_bd_pins id_ex_reg/ex_op_a_sel] [get_bd_pins operand_a_mux_0/op_a_sel]
  connect_bd_net -net operand_a_mux_0_operand_a [get_bd_pins alu_0/a] [get_bd_pins operand_a_mux_0/operand_a]
  connect_bd_net -net operand_b_mux_0_operand_b [get_bd_pins alu_0/b] [get_bd_pins operand_b_mux_0/operand_b]
  connect_bd_net -net pc_en_1 [get_bd_pins priority_branch_OR_l_0/pc_en_final] [get_bd_pins util_vector_and_3/Op1]
  connect_bd_net -net pc_to_imem_addr_0_addr [get_bd_pins pc_to_imem_addr_0/addr] [get_bd_pins rom_memory_0/addr]
  connect_bd_net -net pc_unit_0_pc [get_bd_pins branch_predictor_btb_0/if_pc] [get_bd_pins if_id_reg_0/if_pc_in] [get_bd_pins pc_to_imem_addr_0/pc] [get_bd_pins pc_unit_0/pc]
  connect_bd_net -net pc_unit_0_pc_plus4 [get_bd_pins if_id_reg_0/if_pc4_in] [get_bd_pins pc_unit_0/pc_plus4]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_target [get_bd_pins pc_unit_0/priv_redirect_target] [get_bd_pins privileged_pc_redire_0/priv_redirect_target]
  connect_bd_net -net privileged_pc_redire_0_priv_redirect_valid [get_bd_pins pc_unit_0/priv_redirect_valid] [get_bd_pins priority_branch_OR_l_0/priv_redirect_valid] [get_bd_pins privileged_pc_redire_0/priv_redirect_valid]
  connect_bd_net -net proc_sys_reset_0_peripheral_reset [get_bd_ports rst] [get_bd_pins branch_predictor_btb_0/rst] [get_bd_pins csr_file_0/rst] [get_bd_pins ex_mem_reg/rst] [get_bd_pins gpio_0/rst] [get_bd_pins id_ex_reg/rst] [get_bd_pins if_id_reg_0/rst] [get_bd_pins mem_bus_registered_0/rst] [get_bd_pins mem_stage_0/rst] [get_bd_pins mem_wb_reg_0/rst] [get_bd_pins pc_unit_0/rst] [get_bd_pins ram_data_1/rst] [get_bd_pins timer_0/rst] [get_bd_pins trap_controller_0/rst] [get_bd_pins uart_tx_0/rst]
  connect_bd_net -net ram_ready_1 [get_bd_pins mem_bus_registered_0/ram_ready] [get_bd_pins ram_data_1/ready]
  connect_bd_net -net regfile_0_rs1_rdata [get_bd_pins id_ex_reg/id_rs1_data] [get_bd_pins regfile_0/rs1_rdata]
  connect_bd_net -net regfile_0_rs2_rdata [get_bd_pins id_ex_reg/id_rs2_data] [get_bd_pins regfile_0/rs2_rdata]
  connect_bd_net -net rom_memory_0_dout [get_bd_pins if_id_reg_0/if_instr_in] [get_bd_pins rom_memory_0/dout]
  connect_bd_net -net sim_constant_0_dout [get_bd_pins ex_mem_reg/flush] [get_bd_pins sim_constant_1/dout]
  connect_bd_net -net sim_constant_2_dout [get_bd_pins if_id_reg_0/if_valid_in] [get_bd_pins sim_constant_2/dout]
  connect_bd_net -net system_decoder_0_csr_addr [get_bd_pins csr_file_0/csr_addr] [get_bd_pins system_decoder_0/csr_addr]
  connect_bd_net -net system_decoder_0_csr_rd [get_bd_pins csr_access_unit_0/csr_rd] [get_bd_pins system_decoder_0/csr_rd]
  connect_bd_net -net system_decoder_0_csr_rs1 [get_bd_pins csr_access_unit_0/csr_rs1] [get_bd_pins system_decoder_0/csr_rs1]
  connect_bd_net -net system_decoder_0_is_csrrc [get_bd_pins csr_access_unit_0/is_csrrc] [get_bd_pins system_decoder_0/is_csrrc]
  connect_bd_net -net system_decoder_0_is_csrrs [get_bd_pins csr_access_unit_0/is_csrrs] [get_bd_pins system_decoder_0/is_csrrs]
  connect_bd_net -net system_decoder_0_is_csrrw [get_bd_pins csr_access_unit_0/is_csrrw] [get_bd_pins system_decoder_0/is_csrrw]
  connect_bd_net -net system_decoder_0_is_ecall [get_bd_pins system_decoder_0/is_ecall] [get_bd_pins trap_controller_0/ecall]
  connect_bd_net -net system_decoder_0_is_mret [get_bd_pins system_decoder_0/is_mret] [get_bd_pins trap_controller_0/mret]
  connect_bd_net -net system_decoder_0_is_system [get_bd_pins system_decoder_0/is_system] [get_bd_pins util_vector_not_0/Op1]
  connect_bd_net -net timer_0_rdata [get_bd_pins mem_bus_registered_0/timer_rdata] [get_bd_pins timer_0/rdata]
  connect_bd_net -net timer_0_ready [get_bd_pins mem_bus_registered_0/timer_ready] [get_bd_pins timer_0/ready]
  connect_bd_net -net timer_error_1 [get_bd_pins mem_bus_registered_0/timer_error] [get_bd_pins timer_0/error]
  connect_bd_net -net timer_irq_1 [get_bd_pins csr_file_0/timer_irq] [get_bd_pins timer_0/timer_irq] [get_bd_pins trap_controller_0/timer_irq]
  connect_bd_net -net trap_controller_0_mret_taken [get_bd_pins csr_file_0/mret] [get_bd_pins privileged_pc_redire_0/mret_taken] [get_bd_pins trap_controller_0/mret_taken]
  connect_bd_net -net trap_controller_0_mret_target [get_bd_pins privileged_pc_redire_0/mret_target] [get_bd_pins trap_controller_0/mret_target]
  connect_bd_net -net trap_controller_0_trap_enter [get_bd_pins csr_file_0/trap_enter] [get_bd_pins privileged_pc_redire_0/trap_enter] [get_bd_pins trap_controller_0/trap_enter]
  connect_bd_net -net trap_controller_0_trap_flush [get_bd_pins trap_controller_0/trap_flush] [get_bd_pins util_vector_or_0/Op2]
  connect_bd_net -net trap_controller_0_trap_mcause [get_bd_pins csr_file_0/trap_mcause] [get_bd_pins trap_controller_0/trap_mcause]
  connect_bd_net -net trap_controller_0_trap_mepc [get_bd_pins csr_file_0/trap_mepc] [get_bd_pins trap_controller_0/trap_mepc]
  connect_bd_net -net trap_controller_0_trap_mtval [get_bd_pins csr_file_0/trap_mtval] [get_bd_pins trap_controller_0/trap_mtval]
  connect_bd_net -net trap_controller_0_trap_target [get_bd_pins privileged_pc_redire_0/trap_target] [get_bd_pins trap_controller_0/trap_target]
  connect_bd_net -net uart_tx_0_rdata [get_bd_pins mem_bus_registered_0/uart_rdata] [get_bd_pins uart_tx_0/rdata]
  connect_bd_net -net uart_tx_0_ready [get_bd_pins mem_bus_registered_0/uart_ready] [get_bd_pins uart_tx_0/ready]
  connect_bd_net -net uart_tx_0_tx [get_bd_pins uart_tx_0/rx] [get_bd_pins uart_tx_0/tx]
  connect_bd_net -net update_is_control_1 [get_bd_pins branch_0/bp_update_is_control] [get_bd_pins branch_predictor_btb_0/update_is_control]
  connect_bd_net -net util_vector_and_0_Res [get_bd_pins trap_controller_0/illegal_instr] [get_bd_pins util_vector_and_0/Res]
  connect_bd_net -net util_vector_and_0_Res_1 [get_bd_pins pc_unit_0/pc_predict_valid] [get_bd_pins util_vector_and_2/Res]
  connect_bd_net -net util_vector_and_0_Res_2 [get_bd_pins forwarding_0/mem_rd_we] [get_bd_pins util_vector_and_4/Res]
  connect_bd_net -net util_vector_and_1_Res [get_bd_pins forwarding_0/mem_stage_rd_we] [get_bd_pins util_vector_and_1/Res]
  connect_bd_net -net util_vector_and_1_Res_1 [get_bd_pins pc_unit_0/pc_en] [get_bd_pins util_vector_and_3/Res]
  connect_bd_net -net util_vector_logic_7_Res [get_bd_pins if_id_reg_0/hold] [get_bd_pins util_vector_not_1/Op1] [get_bd_pins util_vector_or_1/Res]
  connect_bd_net -net util_vector_not_0_Res [get_bd_pins util_vector_and_0/Op2] [get_bd_pins util_vector_not_0/Res]
  connect_bd_net -net util_vector_not_0_Res_1 [get_bd_pins util_vector_and_3/Op2] [get_bd_pins util_vector_not_2/Res]
  connect_bd_net -net util_vector_not_1_Res [get_bd_pins rom_memory_0/en] [get_bd_pins util_vector_not_1/Res]
  connect_bd_net -net util_vector_or_0_Res [get_bd_pins if_id_reg_0/flush] [get_bd_pins util_vector_or_0/Res]
  connect_bd_net -net valid_1 [get_bd_pins gpio_0/valid] [get_bd_pins mem_bus_registered_0/gpio_valid]
  connect_bd_net -net valid_2 [get_bd_pins mem_bus_registered_0/uart_valid] [get_bd_pins uart_tx_0/valid]
  connect_bd_net -net valid_3 [get_bd_pins mem_bus_registered_0/timer_valid] [get_bd_pins timer_0/valid]
  connect_bd_net -net wdata_1 [get_bd_pins mem_bus_registered_0/ram_wdata] [get_bd_pins ram_data_1/wdata]
  connect_bd_net -net wdata_2 [get_bd_pins gpio_0/wdata] [get_bd_pins mem_bus_registered_0/gpio_wdata]
  connect_bd_net -net wdata_3 [get_bd_pins mem_bus_registered_0/uart_wdata] [get_bd_pins uart_tx_0/wdata]
  connect_bd_net -net wdata_4 [get_bd_pins mem_bus_registered_0/timer_wdata] [get_bd_pins timer_0/wdata]
  connect_bd_net -net we_1 [get_bd_pins mem_bus_registered_0/ram_we] [get_bd_pins ram_data_1/we]
  connect_bd_net -net we_2 [get_bd_pins gpio_0/we] [get_bd_pins mem_bus_registered_0/gpio_we]
  connect_bd_net -net we_3 [get_bd_pins mem_bus_registered_0/uart_we] [get_bd_pins uart_tx_0/we]
  connect_bd_net -net we_4 [get_bd_pins mem_bus_registered_0/timer_we] [get_bd_pins timer_0/we]
  connect_bd_net -net xlconcat_8_0_dout [get_bd_pins gpio_0/gpio_in] [get_bd_pins xlconcat_8_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_ports SW1] [get_bd_pins xlconcat_8_0/in0] [get_bd_pins xlconcat_8_0/in1] [get_bd_pins xlconcat_8_0/in2] [get_bd_pins xlconcat_8_0/in3] [get_bd_pins xlconcat_8_0/in4] [get_bd_pins xlconcat_8_0/in5] [get_bd_pins xlconcat_8_0/in6] [get_bd_pins xlconcat_8_0/in7]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins mem_stage_0/kill] [get_bd_pins mem_stage_0/stall] [get_bd_pins mem_wb_reg_0/flush] [get_bd_pins mem_wb_reg_0/stall] [get_bd_pins sim_constant_0/dout]
  connect_bd_net -net xlslice_2bit_0_Dout [get_bd_ports gpio_out_0] [get_bd_pins xlslice_2bit_0/Dout]
  connect_bd_net -net zynq_ultra_ps_e_0_pl_clk0 [get_bd_ports clk] [get_bd_pins branch_predictor_btb_0/clk] [get_bd_pins csr_file_0/clk] [get_bd_pins ex_mem_reg/clk] [get_bd_pins gpio_0/clk] [get_bd_pins id_ex_reg/clk] [get_bd_pins if_id_reg_0/clk] [get_bd_pins mem_bus_registered_0/clk] [get_bd_pins mem_stage_0/clk] [get_bd_pins mem_wb_reg_0/clk] [get_bd_pins pc_unit_0/clk] [get_bd_pins ram_data_1/clk] [get_bd_pins regfile_0/clk] [get_bd_pins rom_memory_0/clk] [get_bd_pins timer_0/clk] [get_bd_pins trap_controller_0/clk] [get_bd_pins uart_tx_0/clk]

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


