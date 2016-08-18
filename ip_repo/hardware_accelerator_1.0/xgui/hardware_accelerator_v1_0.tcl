# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "C_s_axi_lite_registers_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "C_s_axi_lite_registers_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_s_axi_lite_registers_HIGHADDR"
  ipgui::add_param $IPINST -name "C_s_axi_lite_registers_BASEADDR"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_ID"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_ID_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_ADDR_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_DATA_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_AWUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_ARUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_WUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_RUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_m_axi_full_data_BUSER_WIDTH"
  ipgui::add_param $IPINST -name "C_buffer_size"

}

proc update_PARAM_VALUE.C_bram_size { PARAM_VALUE.C_bram_size } {
	# Procedure called to update C_bram_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_bram_size { PARAM_VALUE.C_bram_size } {
	# Procedure called to validate C_bram_size
	return true
}

proc update_PARAM_VALUE.C_buffer_size { PARAM_VALUE.C_buffer_size } {
	# Procedure called to update C_buffer_size when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_buffer_size { PARAM_VALUE.C_buffer_size } {
	# Procedure called to validate C_buffer_size
	return true
}

proc update_PARAM_VALUE.C_fsm_width { PARAM_VALUE.C_fsm_width } {
	# Procedure called to update C_fsm_width when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_fsm_width { PARAM_VALUE.C_fsm_width } {
	# Procedure called to validate C_fsm_width
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH { PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH } {
	# Procedure called to update C_m_axi_full_data_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH { PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH } {
	# Procedure called to update C_m_axi_full_data_ARUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_ARUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH } {
	# Procedure called to update C_m_axi_full_data_AWUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_AWUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH } {
	# Procedure called to update C_m_axi_full_data_BUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_BUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_ID { PARAM_VALUE.C_m_axi_full_data_ID } {
	# Procedure called to update C_m_axi_full_data_ID when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_ID { PARAM_VALUE.C_m_axi_full_data_ID } {
	# Procedure called to validate C_m_axi_full_data_ID
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_ID_WIDTH { PARAM_VALUE.C_m_axi_full_data_ID_WIDTH } {
	# Procedure called to update C_m_axi_full_data_ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_ID_WIDTH { PARAM_VALUE.C_m_axi_full_data_ID_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_ID_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH } {
	# Procedure called to update C_m_axi_full_data_RUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_RUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH } {
	# Procedure called to update C_m_axi_full_data_WUSER_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH { PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_WUSER_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH { PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH } {
	# Procedure called to update C_s_axi_lite_registers_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH { PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH } {
	# Procedure called to validate C_s_axi_lite_registers_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH { PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH } {
	# Procedure called to update C_s_axi_lite_registers_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH { PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH } {
	# Procedure called to validate C_s_axi_lite_registers_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_s_axi_lite_registers_BASEADDR { PARAM_VALUE.C_s_axi_lite_registers_BASEADDR } {
	# Procedure called to update C_s_axi_lite_registers_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_lite_registers_BASEADDR { PARAM_VALUE.C_s_axi_lite_registers_BASEADDR } {
	# Procedure called to validate C_s_axi_lite_registers_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_s_axi_lite_registers_HIGHADDR { PARAM_VALUE.C_s_axi_lite_registers_HIGHADDR } {
	# Procedure called to update C_s_axi_lite_registers_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_s_axi_lite_registers_HIGHADDR { PARAM_VALUE.C_s_axi_lite_registers_HIGHADDR } {
	# Procedure called to validate C_s_axi_lite_registers_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH { PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH } {
	# Procedure called to update C_m_axi_full_data_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH { PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH } {
	# Procedure called to validate C_m_axi_full_data_DATA_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.C_bram_size { MODELPARAM_VALUE.C_bram_size PARAM_VALUE.C_bram_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_bram_size}] ${MODELPARAM_VALUE.C_bram_size}
}

proc update_MODELPARAM_VALUE.C_fsm_width { MODELPARAM_VALUE.C_fsm_width PARAM_VALUE.C_fsm_width } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_fsm_width}] ${MODELPARAM_VALUE.C_fsm_width}
}

proc update_MODELPARAM_VALUE.C_buffer_size { MODELPARAM_VALUE.C_buffer_size PARAM_VALUE.C_buffer_size } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_buffer_size}] ${MODELPARAM_VALUE.C_buffer_size}
}

proc update_MODELPARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH { MODELPARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_lite_registers_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH { MODELPARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_s_axi_lite_registers_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_ID { MODELPARAM_VALUE.C_m_axi_full_data_ID PARAM_VALUE.C_m_axi_full_data_ID } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_ID}] ${MODELPARAM_VALUE.C_m_axi_full_data_ID}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_ID_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_ID_WIDTH PARAM_VALUE.C_m_axi_full_data_ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_ID_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_ID_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_DATA_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_DATA_WIDTH PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_DATA_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_AWUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_ARUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_WUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_RUSER_WIDTH}
}

proc update_MODELPARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH { MODELPARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH}] ${MODELPARAM_VALUE.C_m_axi_full_data_BUSER_WIDTH}
}

