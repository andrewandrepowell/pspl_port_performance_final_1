#-----------------------
#Creating new core.
ipx::create_core {xilinx.com} {ip} {bram32} {1.0}
#-----------------------
set_property root_directory {} [ipx::current_core]
ipx::add_user_parameter Component_Name [ipx::current_core]
set_property {value_resolve_type} {user} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
set_property {value_format} {string} [ipx::get_user_parameters  Component_Name -of_objects [ipx::current_core]]
#-----------------------
# SUPORTED FAMILIES     
#-----------------------
set_property supported_families {{zynq} {Production}} [ipx::current_core]

#-----------------------
# OTHER ATTRIBUTES      
#-----------------------
set_property taxonomy {{/Packaged_BlockDiagram_Designs}} [ipx::current_core]
set_property company_url {http://www.xilinx.com} [ipx::current_core]
set_property description {bram32} [ipx::current_core]
set_property display_name {bram32} [ipx::current_core]

ipx::remove_all_port [ipx::current_core]
ipx::remove_all_file_group [ipx::current_core]
ipx::remove_all_bus_interface [ipx::current_core]

#-----------------------
# SYNTHESIS FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogsynthesis} [ipx::current_core]
ipx::add_file bram32_ooc.xdc [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/bram32.hwh [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/bram32_bd.tcl [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/bram32_axi_bram_ctrl_0_0/bram32_axi_bram_ctrl_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file ip/bram32_blk_mem_gen_0_0/bram32_blk_mem_gen_0_0.xci [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
ipx::add_file hdl/bram32.v [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]
set_property {model_name} {bram32} [ipx::get_file_groups xilinx_verilogsynthesis -of_objects [ipx::current_core]]

#-----------------------
# SIMULATION FILESET
#-----------------------
ipx::add_file_group {xilinx_verilogbehavioralsimulation} [ipx::current_core]
ipx::add_file bram32_ooc.xdc [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/bram32.hwh [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hw_handoff/bram32_bd.tcl [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/bram32_axi_bram_ctrl_0_0/bram32_axi_bram_ctrl_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file ip/bram32_blk_mem_gen_0_0/bram32_blk_mem_gen_0_0.xci [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
ipx::add_file hdl/bram32.v [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]
set_property {model_name} {bram32} [ipx::get_file_groups xilinx_verilogbehavioralsimulation -of_objects [ipx::current_core]]

#-----------------------
# PORTS 
#-----------------------
ipx::add_ports_from_hdl [::ipx::current_core] -top_level_hdl_file ./hdl/bram32.v -top_module_name bram32

#-----------------------
# BUS INTERFACES 
#-----------------------
#------------------
#   Adding s_axi_full
#------------------
ipx::add_bus_interface {s_axi_full} [ipx::current_core]
set_property interface_mode {slave} [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]
set_property display_name {s_axi_full} [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:interface:aximm:1.0
set_property {bus_type_vlnv} {xilinx.com:interface:aximm:1.0}  [ipx::get_bus_interfaces s_axi_full -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:interface:aximm_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:interface:aximm_rtl:1.0}  [ipx::get_bus_interfaces s_axi_full -of_objects [ipx::current_core]]

#   Adding PortMaps
set_property {physical_name} {s_axi_full_araddr} [ipx::add_port_map {ARADDR}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arburst} [ipx::add_port_map {ARBURST}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arcache} [ipx::add_port_map {ARCACHE}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arlen} [ipx::add_port_map {ARLEN}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arlock} [ipx::add_port_map {ARLOCK}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arprot} [ipx::add_port_map {ARPROT}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arready} [ipx::add_port_map {ARREADY}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arsize} [ipx::add_port_map {ARSIZE}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_arvalid} [ipx::add_port_map {ARVALID}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awaddr} [ipx::add_port_map {AWADDR}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awburst} [ipx::add_port_map {AWBURST}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awcache} [ipx::add_port_map {AWCACHE}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awlen} [ipx::add_port_map {AWLEN}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awlock} [ipx::add_port_map {AWLOCK}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awprot} [ipx::add_port_map {AWPROT}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awready} [ipx::add_port_map {AWREADY}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awsize} [ipx::add_port_map {AWSIZE}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_awvalid} [ipx::add_port_map {AWVALID}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_bready} [ipx::add_port_map {BREADY}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_bresp} [ipx::add_port_map {BRESP}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_bvalid} [ipx::add_port_map {BVALID}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_rdata} [ipx::add_port_map {RDATA}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_rlast} [ipx::add_port_map {RLAST}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_rready} [ipx::add_port_map {RREADY}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_rresp} [ipx::add_port_map {RRESP}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_rvalid} [ipx::add_port_map {RVALID}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_wdata} [ipx::add_port_map {WDATA}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_wlast} [ipx::add_port_map {WLAST}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_wready} [ipx::add_port_map {WREADY}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_wstrb} [ipx::add_port_map {WSTRB}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
set_property {physical_name} {s_axi_full_wvalid} [ipx::add_port_map {WVALID}  [ipx::get_bus_interfaces {s_axi_full} -of_objects [ipx::current_core]]]
#------------------
#   Adding Parameters
#------------------
#   Adding CLK.s_axi_aclk
#------------------
ipx::add_bus_interface {CLK.s_axi_aclk} [ipx::current_core]
set_property display_name {Clk} [ipx::get_bus_interfaces {CLK.s_axi_aclk} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {CLK.s_axi_aclk} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:clock:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:clock:1.0}  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:clock_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:clock_rtl:1.0}  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {s_axi_aclk} [ipx::add_port_map {CLK}  [ipx::get_bus_interfaces {CLK.s_axi_aclk} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {ASSOCIATED_BUSIF}  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]
set_property {value} {s_axi_full} [ipx::get_bus_parameters {ASSOCIATED_BUSIF} -of_objects  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]]

ipx::add_bus_parameter {ASSOCIATED_RESET}  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]
set_property {value} {s_axi_aresetn} [ipx::get_bus_parameters {ASSOCIATED_RESET} -of_objects  [ipx::get_bus_interfaces CLK.s_axi_aclk -of_objects [ipx::current_core]]]

#------------------
#   Adding RST.s_axi_aresetn
#------------------
ipx::add_bus_interface {RST.s_axi_aresetn} [ipx::current_core]
set_property display_name {Reset} [ipx::get_bus_interfaces {RST.s_axi_aresetn} -of_objects [ipx::current_core]]
set_property interface_mode {slave} [ipx::get_bus_interfaces {RST.s_axi_aresetn} -of_objects [ipx::current_core]]

#   Adding Bus Type VNLV xilinx.com:signal:reset:1.0
set_property {bus_type_vlnv} {xilinx.com:signal:reset:1.0}  [ipx::get_bus_interfaces RST.s_axi_aresetn -of_objects [ipx::current_core]]

#   Adding Abstraction VNLV xilinx.com:signal:reset_rtl:1.0
set_property {abstraction_type_vlnv} {xilinx.com:signal:reset_rtl:1.0}  [ipx::get_bus_interfaces RST.s_axi_aresetn -of_objects [ipx::current_core]]

#   Adding PortMap
set_property {physical_name} {s_axi_aresetn} [ipx::add_port_map {RST}  [ipx::get_bus_interfaces {RST.s_axi_aresetn} -of_objects [ipx::current_core]]]
#   Adding Parameters
ipx::add_bus_parameter {POLARITY}  [ipx::get_bus_interfaces RST.s_axi_aresetn -of_objects [ipx::current_core]]
set_property {value} {ACTIVE_LOW} [ipx::get_bus_parameters {POLARITY} -of_objects  [ipx::get_bus_interfaces RST.s_axi_aresetn -of_objects [ipx::current_core]]]


#-----------------------
# SAVE CORE TO REPOS
#-----------------------
ipx::create_default_gui_files [ipx::current_core]
ipx::save_core [ipx::current_core]
ipx::check_integrity  [ipx::current_core]
update_ip_catalog
