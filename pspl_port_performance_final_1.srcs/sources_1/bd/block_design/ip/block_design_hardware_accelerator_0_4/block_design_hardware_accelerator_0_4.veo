// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:user:hardware_accelerator:1.0
// IP Revision: 103

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
block_design_hardware_accelerator_0_4 your_instance_name (
  .s_axi_aclk(s_axi_aclk),                                      // input wire s_axi_aclk
  .s_axi_aresetn(s_axi_aresetn),                                // input wire s_axi_aresetn
  .enable(enable),                                              // input wire enable
  .ready(ready),                                                // output wire ready
  .s_axi_lite_registers_awaddr(s_axi_lite_registers_awaddr),    // input wire [7 : 0] s_axi_lite_registers_awaddr
  .s_axi_lite_registers_awprot(s_axi_lite_registers_awprot),    // input wire [2 : 0] s_axi_lite_registers_awprot
  .s_axi_lite_registers_awvalid(s_axi_lite_registers_awvalid),  // input wire s_axi_lite_registers_awvalid
  .s_axi_lite_registers_awready(s_axi_lite_registers_awready),  // output wire s_axi_lite_registers_awready
  .s_axi_lite_registers_wdata(s_axi_lite_registers_wdata),      // input wire [31 : 0] s_axi_lite_registers_wdata
  .s_axi_lite_registers_wstrb(s_axi_lite_registers_wstrb),      // input wire [3 : 0] s_axi_lite_registers_wstrb
  .s_axi_lite_registers_wvalid(s_axi_lite_registers_wvalid),    // input wire s_axi_lite_registers_wvalid
  .s_axi_lite_registers_wready(s_axi_lite_registers_wready),    // output wire s_axi_lite_registers_wready
  .s_axi_lite_registers_bresp(s_axi_lite_registers_bresp),      // output wire [1 : 0] s_axi_lite_registers_bresp
  .s_axi_lite_registers_bvalid(s_axi_lite_registers_bvalid),    // output wire s_axi_lite_registers_bvalid
  .s_axi_lite_registers_bready(s_axi_lite_registers_bready),    // input wire s_axi_lite_registers_bready
  .s_axi_lite_registers_araddr(s_axi_lite_registers_araddr),    // input wire [7 : 0] s_axi_lite_registers_araddr
  .s_axi_lite_registers_arprot(s_axi_lite_registers_arprot),    // input wire [2 : 0] s_axi_lite_registers_arprot
  .s_axi_lite_registers_arvalid(s_axi_lite_registers_arvalid),  // input wire s_axi_lite_registers_arvalid
  .s_axi_lite_registers_arready(s_axi_lite_registers_arready),  // output wire s_axi_lite_registers_arready
  .s_axi_lite_registers_rdata(s_axi_lite_registers_rdata),      // output wire [31 : 0] s_axi_lite_registers_rdata
  .s_axi_lite_registers_rresp(s_axi_lite_registers_rresp),      // output wire [1 : 0] s_axi_lite_registers_rresp
  .s_axi_lite_registers_rvalid(s_axi_lite_registers_rvalid),    // output wire s_axi_lite_registers_rvalid
  .s_axi_lite_registers_rready(s_axi_lite_registers_rready),    // input wire s_axi_lite_registers_rready
  .m_axi_full_data_awid(m_axi_full_data_awid),                  // output wire [5 : 0] m_axi_full_data_awid
  .m_axi_full_data_awaddr_wire(m_axi_full_data_awaddr_wire),    // output wire [31 : 0] m_axi_full_data_awaddr_wire
  .m_axi_full_data_awlen(m_axi_full_data_awlen),                // output wire [7 : 0] m_axi_full_data_awlen
  .m_axi_full_data_awsize(m_axi_full_data_awsize),              // output wire [2 : 0] m_axi_full_data_awsize
  .m_axi_full_data_awburst(m_axi_full_data_awburst),            // output wire [1 : 0] m_axi_full_data_awburst
  .m_axi_full_data_awlock(m_axi_full_data_awlock),              // output wire m_axi_full_data_awlock
  .m_axi_full_data_awcache(m_axi_full_data_awcache),            // output wire [3 : 0] m_axi_full_data_awcache
  .m_axi_full_data_awprot(m_axi_full_data_awprot),              // output wire [2 : 0] m_axi_full_data_awprot
  .m_axi_full_data_awqos(m_axi_full_data_awqos),                // output wire [3 : 0] m_axi_full_data_awqos
  .m_axi_full_data_awuser(m_axi_full_data_awuser),              // output wire [0 : 0] m_axi_full_data_awuser
  .m_axi_full_data_awvalid(m_axi_full_data_awvalid),            // output wire m_axi_full_data_awvalid
  .m_axi_full_data_awready(m_axi_full_data_awready),            // input wire m_axi_full_data_awready
  .m_axi_full_data_wdata(m_axi_full_data_wdata),                // output wire [63 : 0] m_axi_full_data_wdata
  .m_axi_full_data_wstrb(m_axi_full_data_wstrb),                // output wire [7 : 0] m_axi_full_data_wstrb
  .m_axi_full_data_wlast(m_axi_full_data_wlast),                // output wire m_axi_full_data_wlast
  .m_axi_full_data_wuser(m_axi_full_data_wuser),                // output wire [0 : 0] m_axi_full_data_wuser
  .m_axi_full_data_wvalid(m_axi_full_data_wvalid),              // output wire m_axi_full_data_wvalid
  .m_axi_full_data_wready(m_axi_full_data_wready),              // input wire m_axi_full_data_wready
  .m_axi_full_data_bid(m_axi_full_data_bid),                    // input wire [5 : 0] m_axi_full_data_bid
  .m_axi_full_data_bresp(m_axi_full_data_bresp),                // input wire [1 : 0] m_axi_full_data_bresp
  .m_axi_full_data_buser(m_axi_full_data_buser),                // input wire [0 : 0] m_axi_full_data_buser
  .m_axi_full_data_bvalid(m_axi_full_data_bvalid),              // input wire m_axi_full_data_bvalid
  .m_axi_full_data_bready(m_axi_full_data_bready),              // output wire m_axi_full_data_bready
  .m_axi_full_data_arid(m_axi_full_data_arid),                  // output wire [5 : 0] m_axi_full_data_arid
  .m_axi_full_data_araddr_wire(m_axi_full_data_araddr_wire),    // output wire [31 : 0] m_axi_full_data_araddr_wire
  .m_axi_full_data_arlen(m_axi_full_data_arlen),                // output wire [7 : 0] m_axi_full_data_arlen
  .m_axi_full_data_arsize(m_axi_full_data_arsize),              // output wire [2 : 0] m_axi_full_data_arsize
  .m_axi_full_data_arburst(m_axi_full_data_arburst),            // output wire [1 : 0] m_axi_full_data_arburst
  .m_axi_full_data_arlock(m_axi_full_data_arlock),              // output wire m_axi_full_data_arlock
  .m_axi_full_data_arcache(m_axi_full_data_arcache),            // output wire [3 : 0] m_axi_full_data_arcache
  .m_axi_full_data_arprot(m_axi_full_data_arprot),              // output wire [2 : 0] m_axi_full_data_arprot
  .m_axi_full_data_arqos(m_axi_full_data_arqos),                // output wire [3 : 0] m_axi_full_data_arqos
  .m_axi_full_data_aruser(m_axi_full_data_aruser),              // output wire [0 : 0] m_axi_full_data_aruser
  .m_axi_full_data_arvalid(m_axi_full_data_arvalid),            // output wire m_axi_full_data_arvalid
  .m_axi_full_data_arready(m_axi_full_data_arready),            // input wire m_axi_full_data_arready
  .m_axi_full_data_rid(m_axi_full_data_rid),                    // input wire [5 : 0] m_axi_full_data_rid
  .m_axi_full_data_rdata(m_axi_full_data_rdata),                // input wire [63 : 0] m_axi_full_data_rdata
  .m_axi_full_data_rresp(m_axi_full_data_rresp),                // input wire [1 : 0] m_axi_full_data_rresp
  .m_axi_full_data_rlast(m_axi_full_data_rlast),                // input wire m_axi_full_data_rlast
  .m_axi_full_data_ruser(m_axi_full_data_ruser),                // input wire [0 : 0] m_axi_full_data_ruser
  .m_axi_full_data_rvalid(m_axi_full_data_rvalid),              // input wire m_axi_full_data_rvalid
  .m_axi_full_data_rready(m_axi_full_data_rready)              // output wire m_axi_full_data_rready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file block_design_hardware_accelerator_0_4.v when simulating
// the core, block_design_hardware_accelerator_0_4. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

