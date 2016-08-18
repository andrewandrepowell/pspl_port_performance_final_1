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

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module block_design_hardware_accelerator_0_2 (
  s_axi_aclk,
  s_axi_aresetn,
  enable,
  ready,
  s_axi_lite_registers_awaddr,
  s_axi_lite_registers_awprot,
  s_axi_lite_registers_awvalid,
  s_axi_lite_registers_awready,
  s_axi_lite_registers_wdata,
  s_axi_lite_registers_wstrb,
  s_axi_lite_registers_wvalid,
  s_axi_lite_registers_wready,
  s_axi_lite_registers_bresp,
  s_axi_lite_registers_bvalid,
  s_axi_lite_registers_bready,
  s_axi_lite_registers_araddr,
  s_axi_lite_registers_arprot,
  s_axi_lite_registers_arvalid,
  s_axi_lite_registers_arready,
  s_axi_lite_registers_rdata,
  s_axi_lite_registers_rresp,
  s_axi_lite_registers_rvalid,
  s_axi_lite_registers_rready,
  m_axi_full_data_awid,
  m_axi_full_data_awaddr_wire,
  m_axi_full_data_awlen,
  m_axi_full_data_awsize,
  m_axi_full_data_awburst,
  m_axi_full_data_awlock,
  m_axi_full_data_awcache,
  m_axi_full_data_awprot,
  m_axi_full_data_awqos,
  m_axi_full_data_awuser,
  m_axi_full_data_awvalid,
  m_axi_full_data_awready,
  m_axi_full_data_wdata,
  m_axi_full_data_wstrb,
  m_axi_full_data_wlast,
  m_axi_full_data_wuser,
  m_axi_full_data_wvalid,
  m_axi_full_data_wready,
  m_axi_full_data_bid,
  m_axi_full_data_bresp,
  m_axi_full_data_buser,
  m_axi_full_data_bvalid,
  m_axi_full_data_bready,
  m_axi_full_data_arid,
  m_axi_full_data_araddr_wire,
  m_axi_full_data_arlen,
  m_axi_full_data_arsize,
  m_axi_full_data_arburst,
  m_axi_full_data_arlock,
  m_axi_full_data_arcache,
  m_axi_full_data_arprot,
  m_axi_full_data_arqos,
  m_axi_full_data_aruser,
  m_axi_full_data_arvalid,
  m_axi_full_data_arready,
  m_axi_full_data_rid,
  m_axi_full_data_rdata,
  m_axi_full_data_rresp,
  m_axi_full_data_rlast,
  m_axi_full_data_ruser,
  m_axi_full_data_rvalid,
  m_axi_full_data_rready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axi_clk CLK" *)
input wire s_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axi_resetn RST" *)
input wire s_axi_aresetn;
input wire enable;
output wire ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers AWADDR" *)
input wire [7 : 0] s_axi_lite_registers_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers AWPROT" *)
input wire [2 : 0] s_axi_lite_registers_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers AWVALID" *)
input wire s_axi_lite_registers_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers AWREADY" *)
output wire s_axi_lite_registers_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers WDATA" *)
input wire [31 : 0] s_axi_lite_registers_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers WSTRB" *)
input wire [3 : 0] s_axi_lite_registers_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers WVALID" *)
input wire s_axi_lite_registers_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers WREADY" *)
output wire s_axi_lite_registers_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers BRESP" *)
output wire [1 : 0] s_axi_lite_registers_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers BVALID" *)
output wire s_axi_lite_registers_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers BREADY" *)
input wire s_axi_lite_registers_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers ARADDR" *)
input wire [7 : 0] s_axi_lite_registers_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers ARPROT" *)
input wire [2 : 0] s_axi_lite_registers_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers ARVALID" *)
input wire s_axi_lite_registers_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers ARREADY" *)
output wire s_axi_lite_registers_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers RDATA" *)
output wire [31 : 0] s_axi_lite_registers_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers RRESP" *)
output wire [1 : 0] s_axi_lite_registers_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers RVALID" *)
output wire s_axi_lite_registers_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_lite_registers RREADY" *)
input wire s_axi_lite_registers_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWID" *)
output wire [5 : 0] m_axi_full_data_awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWADDR" *)
output wire [31 : 0] m_axi_full_data_awaddr_wire;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWLEN" *)
output wire [7 : 0] m_axi_full_data_awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWSIZE" *)
output wire [2 : 0] m_axi_full_data_awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWBURST" *)
output wire [1 : 0] m_axi_full_data_awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWLOCK" *)
output wire m_axi_full_data_awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWCACHE" *)
output wire [3 : 0] m_axi_full_data_awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWPROT" *)
output wire [2 : 0] m_axi_full_data_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWQOS" *)
output wire [3 : 0] m_axi_full_data_awqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWUSER" *)
output wire [0 : 0] m_axi_full_data_awuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWVALID" *)
output wire m_axi_full_data_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data AWREADY" *)
input wire m_axi_full_data_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WDATA" *)
output wire [31 : 0] m_axi_full_data_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WSTRB" *)
output wire [3 : 0] m_axi_full_data_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WLAST" *)
output wire m_axi_full_data_wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WUSER" *)
output wire [0 : 0] m_axi_full_data_wuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WVALID" *)
output wire m_axi_full_data_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data WREADY" *)
input wire m_axi_full_data_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data BID" *)
input wire [5 : 0] m_axi_full_data_bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data BRESP" *)
input wire [1 : 0] m_axi_full_data_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data BUSER" *)
input wire [0 : 0] m_axi_full_data_buser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data BVALID" *)
input wire m_axi_full_data_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data BREADY" *)
output wire m_axi_full_data_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARID" *)
output wire [5 : 0] m_axi_full_data_arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARADDR" *)
output wire [31 : 0] m_axi_full_data_araddr_wire;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARLEN" *)
output wire [7 : 0] m_axi_full_data_arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARSIZE" *)
output wire [2 : 0] m_axi_full_data_arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARBURST" *)
output wire [1 : 0] m_axi_full_data_arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARLOCK" *)
output wire m_axi_full_data_arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARCACHE" *)
output wire [3 : 0] m_axi_full_data_arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARPROT" *)
output wire [2 : 0] m_axi_full_data_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARQOS" *)
output wire [3 : 0] m_axi_full_data_arqos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARUSER" *)
output wire [0 : 0] m_axi_full_data_aruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARVALID" *)
output wire m_axi_full_data_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data ARREADY" *)
input wire m_axi_full_data_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RID" *)
input wire [5 : 0] m_axi_full_data_rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RDATA" *)
input wire [31 : 0] m_axi_full_data_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RRESP" *)
input wire [1 : 0] m_axi_full_data_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RLAST" *)
input wire m_axi_full_data_rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RUSER" *)
input wire [0 : 0] m_axi_full_data_ruser;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RVALID" *)
input wire m_axi_full_data_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_full_data RREADY" *)
output wire m_axi_full_data_rready;

  hardware_accelerator_v1_0 #(
    .C_bram_size(8192),
    .C_fsm_width(8),
    .C_buffer_size(4),
    .C_s_axi_lite_registers_DATA_WIDTH(32),
    .C_s_axi_lite_registers_ADDR_WIDTH(8),
    .C_m_axi_full_data_ID(0),
    .C_m_axi_full_data_ID_WIDTH(6),
    .C_m_axi_full_data_ADDR_WIDTH(32),
    .C_m_axi_full_data_DATA_WIDTH(32),
    .C_m_axi_full_data_AWUSER_WIDTH(1),
    .C_m_axi_full_data_ARUSER_WIDTH(1),
    .C_m_axi_full_data_WUSER_WIDTH(0),
    .C_m_axi_full_data_RUSER_WIDTH(0),
    .C_m_axi_full_data_BUSER_WIDTH(0)
  ) inst (
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .enable(enable),
    .ready(ready),
    .s_axi_lite_registers_awaddr(s_axi_lite_registers_awaddr),
    .s_axi_lite_registers_awprot(s_axi_lite_registers_awprot),
    .s_axi_lite_registers_awvalid(s_axi_lite_registers_awvalid),
    .s_axi_lite_registers_awready(s_axi_lite_registers_awready),
    .s_axi_lite_registers_wdata(s_axi_lite_registers_wdata),
    .s_axi_lite_registers_wstrb(s_axi_lite_registers_wstrb),
    .s_axi_lite_registers_wvalid(s_axi_lite_registers_wvalid),
    .s_axi_lite_registers_wready(s_axi_lite_registers_wready),
    .s_axi_lite_registers_bresp(s_axi_lite_registers_bresp),
    .s_axi_lite_registers_bvalid(s_axi_lite_registers_bvalid),
    .s_axi_lite_registers_bready(s_axi_lite_registers_bready),
    .s_axi_lite_registers_araddr(s_axi_lite_registers_araddr),
    .s_axi_lite_registers_arprot(s_axi_lite_registers_arprot),
    .s_axi_lite_registers_arvalid(s_axi_lite_registers_arvalid),
    .s_axi_lite_registers_arready(s_axi_lite_registers_arready),
    .s_axi_lite_registers_rdata(s_axi_lite_registers_rdata),
    .s_axi_lite_registers_rresp(s_axi_lite_registers_rresp),
    .s_axi_lite_registers_rvalid(s_axi_lite_registers_rvalid),
    .s_axi_lite_registers_rready(s_axi_lite_registers_rready),
    .m_axi_full_data_awid(m_axi_full_data_awid),
    .m_axi_full_data_awaddr_wire(m_axi_full_data_awaddr_wire),
    .m_axi_full_data_awlen(m_axi_full_data_awlen),
    .m_axi_full_data_awsize(m_axi_full_data_awsize),
    .m_axi_full_data_awburst(m_axi_full_data_awburst),
    .m_axi_full_data_awlock(m_axi_full_data_awlock),
    .m_axi_full_data_awcache(m_axi_full_data_awcache),
    .m_axi_full_data_awprot(m_axi_full_data_awprot),
    .m_axi_full_data_awqos(m_axi_full_data_awqos),
    .m_axi_full_data_awuser(m_axi_full_data_awuser),
    .m_axi_full_data_awvalid(m_axi_full_data_awvalid),
    .m_axi_full_data_awready(m_axi_full_data_awready),
    .m_axi_full_data_wdata(m_axi_full_data_wdata),
    .m_axi_full_data_wstrb(m_axi_full_data_wstrb),
    .m_axi_full_data_wlast(m_axi_full_data_wlast),
    .m_axi_full_data_wuser(m_axi_full_data_wuser),
    .m_axi_full_data_wvalid(m_axi_full_data_wvalid),
    .m_axi_full_data_wready(m_axi_full_data_wready),
    .m_axi_full_data_bid(m_axi_full_data_bid),
    .m_axi_full_data_bresp(m_axi_full_data_bresp),
    .m_axi_full_data_buser(m_axi_full_data_buser),
    .m_axi_full_data_bvalid(m_axi_full_data_bvalid),
    .m_axi_full_data_bready(m_axi_full_data_bready),
    .m_axi_full_data_arid(m_axi_full_data_arid),
    .m_axi_full_data_araddr_wire(m_axi_full_data_araddr_wire),
    .m_axi_full_data_arlen(m_axi_full_data_arlen),
    .m_axi_full_data_arsize(m_axi_full_data_arsize),
    .m_axi_full_data_arburst(m_axi_full_data_arburst),
    .m_axi_full_data_arlock(m_axi_full_data_arlock),
    .m_axi_full_data_arcache(m_axi_full_data_arcache),
    .m_axi_full_data_arprot(m_axi_full_data_arprot),
    .m_axi_full_data_arqos(m_axi_full_data_arqos),
    .m_axi_full_data_aruser(m_axi_full_data_aruser),
    .m_axi_full_data_arvalid(m_axi_full_data_arvalid),
    .m_axi_full_data_arready(m_axi_full_data_arready),
    .m_axi_full_data_rid(m_axi_full_data_rid),
    .m_axi_full_data_rdata(m_axi_full_data_rdata),
    .m_axi_full_data_rresp(m_axi_full_data_rresp),
    .m_axi_full_data_rlast(m_axi_full_data_rlast),
    .m_axi_full_data_ruser(m_axi_full_data_ruser),
    .m_axi_full_data_rvalid(m_axi_full_data_rvalid),
    .m_axi_full_data_rready(m_axi_full_data_rready)
  );
endmodule
