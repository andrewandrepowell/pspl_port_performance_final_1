

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "hardware_accelerator" "NUM_INSTANCES" "DEVICE_ID"  "C_s_axi_lite_registers_BASEADDR" "C_s_axi_lite_registers_HIGHADDR"
}
