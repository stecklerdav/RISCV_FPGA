# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "RESET_PC" -parent ${Page_0}


}

proc update_PARAM_VALUE.RESET_PC { PARAM_VALUE.RESET_PC } {
	# Procedure called to update RESET_PC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RESET_PC { PARAM_VALUE.RESET_PC } {
	# Procedure called to validate RESET_PC
	return true
}


proc update_MODELPARAM_VALUE.RESET_PC { MODELPARAM_VALUE.RESET_PC PARAM_VALUE.RESET_PC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RESET_PC}] ${MODELPARAM_VALUE.RESET_PC}
}

