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

// IP VLNV: xilinx.com:user:axi3_metrics_counter:1.0
// IP Revision: 18

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
block_design_axi3_metrics_counter_0_5 your_instance_name (
  .aclk(aclk),                                  // input wire aclk
  .aresetn(aresetn),                            // input wire aresetn
  .s_axi_lite_awaddr(s_axi_lite_awaddr),        // input wire [7 : 0] s_axi_lite_awaddr
  .s_axi_lite_awprot(s_axi_lite_awprot),        // input wire [2 : 0] s_axi_lite_awprot
  .s_axi_lite_awvalid(s_axi_lite_awvalid),      // input wire s_axi_lite_awvalid
  .s_axi_lite_awready(s_axi_lite_awready),      // output wire s_axi_lite_awready
  .s_axi_lite_wdata(s_axi_lite_wdata),          // input wire [31 : 0] s_axi_lite_wdata
  .s_axi_lite_wstrb(s_axi_lite_wstrb),          // input wire [3 : 0] s_axi_lite_wstrb
  .s_axi_lite_wvalid(s_axi_lite_wvalid),        // input wire s_axi_lite_wvalid
  .s_axi_lite_wready(s_axi_lite_wready),        // output wire s_axi_lite_wready
  .s_axi_lite_bresp(s_axi_lite_bresp),          // output wire [1 : 0] s_axi_lite_bresp
  .s_axi_lite_bvalid(s_axi_lite_bvalid),        // output wire s_axi_lite_bvalid
  .s_axi_lite_bready(s_axi_lite_bready),        // input wire s_axi_lite_bready
  .s_axi_lite_araddr(s_axi_lite_araddr),        // input wire [7 : 0] s_axi_lite_araddr
  .s_axi_lite_arprot(s_axi_lite_arprot),        // input wire [2 : 0] s_axi_lite_arprot
  .s_axi_lite_arvalid(s_axi_lite_arvalid),      // input wire s_axi_lite_arvalid
  .s_axi_lite_arready(s_axi_lite_arready),      // output wire s_axi_lite_arready
  .s_axi_lite_rdata(s_axi_lite_rdata),          // output wire [31 : 0] s_axi_lite_rdata
  .s_axi_lite_rresp(s_axi_lite_rresp),          // output wire [1 : 0] s_axi_lite_rresp
  .s_axi_lite_rvalid(s_axi_lite_rvalid),        // output wire s_axi_lite_rvalid
  .s_axi_lite_rready(s_axi_lite_rready),        // input wire s_axi_lite_rready
  .axi3_monitor_awid(axi3_monitor_awid),        // input wire [1 : 0] axi3_monitor_awid
  .axi3_monitor_awaddr(axi3_monitor_awaddr),    // input wire [5 : 0] axi3_monitor_awaddr
  .axi3_monitor_awlen(axi3_monitor_awlen),      // input wire [7 : 0] axi3_monitor_awlen
  .axi3_monitor_awsize(axi3_monitor_awsize),    // input wire [2 : 0] axi3_monitor_awsize
  .axi3_monitor_awburst(axi3_monitor_awburst),  // input wire [1 : 0] axi3_monitor_awburst
  .axi3_monitor_awlock(axi3_monitor_awlock),    // input wire axi3_monitor_awlock
  .axi3_monitor_awcache(axi3_monitor_awcache),  // input wire [3 : 0] axi3_monitor_awcache
  .axi3_monitor_awprot(axi3_monitor_awprot),    // input wire [2 : 0] axi3_monitor_awprot
  .axi3_monitor_awvalid(axi3_monitor_awvalid),  // input wire axi3_monitor_awvalid
  .axi3_monitor_awready(axi3_monitor_awready),  // input wire axi3_monitor_awready
  .axi3_monitor_wdata(axi3_monitor_wdata),      // input wire [63 : 0] axi3_monitor_wdata
  .axi3_monitor_wstrb(axi3_monitor_wstrb),      // input wire [7 : 0] axi3_monitor_wstrb
  .axi3_monitor_wlast(axi3_monitor_wlast),      // input wire axi3_monitor_wlast
  .axi3_monitor_wvalid(axi3_monitor_wvalid),    // input wire axi3_monitor_wvalid
  .axi3_monitor_wready(axi3_monitor_wready),    // input wire axi3_monitor_wready
  .counter_start(counter_start),                // input wire counter_start
  .counter_finish(counter_finish),              // input wire counter_finish
  .axi3_monitor_bid(axi3_monitor_bid),          // input wire [1 : 0] axi3_monitor_bid
  .axi3_monitor_bresp(axi3_monitor_bresp),      // input wire [1 : 0] axi3_monitor_bresp
  .axi3_monitor_bvalid(axi3_monitor_bvalid),    // input wire axi3_monitor_bvalid
  .axi3_monitor_bready(axi3_monitor_bready),    // input wire axi3_monitor_bready
  .axi3_monitor_arid(axi3_monitor_arid),        // input wire [1 : 0] axi3_monitor_arid
  .axi3_monitor_araddr(axi3_monitor_araddr),    // input wire [5 : 0] axi3_monitor_araddr
  .axi3_monitor_arlen(axi3_monitor_arlen),      // input wire [7 : 0] axi3_monitor_arlen
  .axi3_monitor_arsize(axi3_monitor_arsize),    // input wire [2 : 0] axi3_monitor_arsize
  .axi3_monitor_arburst(axi3_monitor_arburst),  // input wire [1 : 0] axi3_monitor_arburst
  .axi3_monitor_arlock(axi3_monitor_arlock),    // input wire axi3_monitor_arlock
  .axi3_monitor_arcache(axi3_monitor_arcache),  // input wire [3 : 0] axi3_monitor_arcache
  .axi3_monitor_arprot(axi3_monitor_arprot),    // input wire [2 : 0] axi3_monitor_arprot
  .axi3_monitor_arvalid(axi3_monitor_arvalid),  // input wire axi3_monitor_arvalid
  .axi3_monitor_arready(axi3_monitor_arready),  // input wire axi3_monitor_arready
  .axi3_monitor_rid(axi3_monitor_rid),          // input wire [1 : 0] axi3_monitor_rid
  .axi3_monitor_rdata(axi3_monitor_rdata),      // input wire [63 : 0] axi3_monitor_rdata
  .axi3_monitor_rresp(axi3_monitor_rresp),      // input wire [1 : 0] axi3_monitor_rresp
  .axi3_monitor_rlast(axi3_monitor_rlast),      // input wire axi3_monitor_rlast
  .axi3_monitor_rvalid(axi3_monitor_rvalid),    // input wire axi3_monitor_rvalid
  .axi3_monitor_rready(axi3_monitor_rready),    // input wire axi3_monitor_rready
  .axi3_monitor_wid(axi3_monitor_wid)          // input wire [1 : 0] axi3_monitor_wid
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file block_design_axi3_metrics_counter_0_5.v when simulating
// the core, block_design_axi3_metrics_counter_0_5. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

