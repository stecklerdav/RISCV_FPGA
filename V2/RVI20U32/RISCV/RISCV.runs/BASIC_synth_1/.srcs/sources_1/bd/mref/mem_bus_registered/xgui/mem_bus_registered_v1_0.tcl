# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "GPIO_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "GPIO_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAM_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RAM_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TIMER_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TIMER_SIZE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UART_BASE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "UART_SIZE" -parent ${Page_0}


}

proc update_PARAM_VALUE.GPIO_BASE { PARAM_VALUE.GPIO_BASE } {
	# Procedure called to update GPIO_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_BASE { PARAM_VALUE.GPIO_BASE } {
	# Procedure called to validate GPIO_BASE
	return true
}

proc update_PARAM_VALUE.GPIO_SIZE { PARAM_VALUE.GPIO_SIZE } {
	# Procedure called to update GPIO_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.GPIO_SIZE { PARAM_VALUE.GPIO_SIZE } {
	# Procedure called to validate GPIO_SIZE
	return true
}

proc update_PARAM_VALUE.RAM_BASE { PARAM_VALUE.RAM_BASE } {
	# Procedure called to update RAM_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_BASE { PARAM_VALUE.RAM_BASE } {
	# Procedure called to validate RAM_BASE
	return true
}

proc update_PARAM_VALUE.RAM_SIZE { PARAM_VALUE.RAM_SIZE } {
	# Procedure called to update RAM_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RAM_SIZE { PARAM_VALUE.RAM_SIZE } {
	# Procedure called to validate RAM_SIZE
	return true
}

proc update_PARAM_VALUE.TIMER_BASE { PARAM_VALUE.TIMER_BASE } {
	# Procedure called to update TIMER_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_BASE { PARAM_VALUE.TIMER_BASE } {
	# Procedure called to validate TIMER_BASE
	return true
}

proc update_PARAM_VALUE.TIMER_SIZE { PARAM_VALUE.TIMER_SIZE } {
	# Procedure called to update TIMER_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TIMER_SIZE { PARAM_VALUE.TIMER_SIZE } {
	# Procedure called to validate TIMER_SIZE
	return true
}

proc update_PARAM_VALUE.UART_BASE { PARAM_VALUE.UART_BASE } {
	# Procedure called to update UART_BASE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_BASE { PARAM_VALUE.UART_BASE } {
	# Procedure called to validate UART_BASE
	return true
}

proc update_PARAM_VALUE.UART_SIZE { PARAM_VALUE.UART_SIZE } {
	# Procedure called to update UART_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.UART_SIZE { PARAM_VALUE.UART_SIZE } {
	# Procedure called to validate UART_SIZE
	return true
}


proc update_MODELPARAM_VALUE.RAM_BASE { MODELPARAM_VALUE.RAM_BASE PARAM_VALUE.RAM_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_BASE}] ${MODELPARAM_VALUE.RAM_BASE}
}

proc update_MODELPARAM_VALUE.RAM_SIZE { MODELPARAM_VALUE.RAM_SIZE PARAM_VALUE.RAM_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RAM_SIZE}] ${MODELPARAM_VALUE.RAM_SIZE}
}

proc update_MODELPARAM_VALUE.GPIO_BASE { MODELPARAM_VALUE.GPIO_BASE PARAM_VALUE.GPIO_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_BASE}] ${MODELPARAM_VALUE.GPIO_BASE}
}

proc update_MODELPARAM_VALUE.GPIO_SIZE { MODELPARAM_VALUE.GPIO_SIZE PARAM_VALUE.GPIO_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.GPIO_SIZE}] ${MODELPARAM_VALUE.GPIO_SIZE}
}

proc update_MODELPARAM_VALUE.UART_BASE { MODELPARAM_VALUE.UART_BASE PARAM_VALUE.UART_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UART_BASE}] ${MODELPARAM_VALUE.UART_BASE}
}

proc update_MODELPARAM_VALUE.UART_SIZE { MODELPARAM_VALUE.UART_SIZE PARAM_VALUE.UART_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.UART_SIZE}] ${MODELPARAM_VALUE.UART_SIZE}
}

proc update_MODELPARAM_VALUE.TIMER_BASE { MODELPARAM_VALUE.TIMER_BASE PARAM_VALUE.TIMER_BASE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_BASE}] ${MODELPARAM_VALUE.TIMER_BASE}
}

proc update_MODELPARAM_VALUE.TIMER_SIZE { MODELPARAM_VALUE.TIMER_SIZE PARAM_VALUE.TIMER_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TIMER_SIZE}] ${MODELPARAM_VALUE.TIMER_SIZE}
}

