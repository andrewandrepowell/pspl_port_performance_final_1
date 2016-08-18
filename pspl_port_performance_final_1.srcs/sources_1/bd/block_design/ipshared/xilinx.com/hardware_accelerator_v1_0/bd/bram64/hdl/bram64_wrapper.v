//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Tue Jun 16 20:03:14 2015
//Host        : idea-PC running 64-bit major release  (build 9200)
//Command     : generate_target bram64_wrapper.bd
//Design      : bram64_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bram64_wrapper
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_full_araddr,
    s_axi_full_arburst,
    s_axi_full_arcache,
    s_axi_full_arlen,
    s_axi_full_arlock,
    s_axi_full_arprot,
    s_axi_full_arready,
    s_axi_full_arsize,
    s_axi_full_arvalid,
    s_axi_full_awaddr,
    s_axi_full_awburst,
    s_axi_full_awcache,
    s_axi_full_awlen,
    s_axi_full_awlock,
    s_axi_full_awprot,
    s_axi_full_awready,
    s_axi_full_awsize,
    s_axi_full_awvalid,
    s_axi_full_bready,
    s_axi_full_bresp,
    s_axi_full_bvalid,
    s_axi_full_rdata,
    s_axi_full_rlast,
    s_axi_full_rready,
    s_axi_full_rresp,
    s_axi_full_rvalid,
    s_axi_full_wdata,
    s_axi_full_wlast,
    s_axi_full_wready,
    s_axi_full_wstrb,
    s_axi_full_wvalid);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [12:0]s_axi_full_araddr;
  input [1:0]s_axi_full_arburst;
  input [3:0]s_axi_full_arcache;
  input [7:0]s_axi_full_arlen;
  input s_axi_full_arlock;
  input [2:0]s_axi_full_arprot;
  output s_axi_full_arready;
  input [2:0]s_axi_full_arsize;
  input s_axi_full_arvalid;
  input [12:0]s_axi_full_awaddr;
  input [1:0]s_axi_full_awburst;
  input [3:0]s_axi_full_awcache;
  input [7:0]s_axi_full_awlen;
  input s_axi_full_awlock;
  input [2:0]s_axi_full_awprot;
  output s_axi_full_awready;
  input [2:0]s_axi_full_awsize;
  input s_axi_full_awvalid;
  input s_axi_full_bready;
  output [1:0]s_axi_full_bresp;
  output s_axi_full_bvalid;
  output [63:0]s_axi_full_rdata;
  output s_axi_full_rlast;
  input s_axi_full_rready;
  output [1:0]s_axi_full_rresp;
  output s_axi_full_rvalid;
  input [63:0]s_axi_full_wdata;
  input s_axi_full_wlast;
  output s_axi_full_wready;
  input [7:0]s_axi_full_wstrb;
  input s_axi_full_wvalid;

  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [12:0]s_axi_full_araddr;
  wire [1:0]s_axi_full_arburst;
  wire [3:0]s_axi_full_arcache;
  wire [7:0]s_axi_full_arlen;
  wire s_axi_full_arlock;
  wire [2:0]s_axi_full_arprot;
  wire s_axi_full_arready;
  wire [2:0]s_axi_full_arsize;
  wire s_axi_full_arvalid;
  wire [12:0]s_axi_full_awaddr;
  wire [1:0]s_axi_full_awburst;
  wire [3:0]s_axi_full_awcache;
  wire [7:0]s_axi_full_awlen;
  wire s_axi_full_awlock;
  wire [2:0]s_axi_full_awprot;
  wire s_axi_full_awready;
  wire [2:0]s_axi_full_awsize;
  wire s_axi_full_awvalid;
  wire s_axi_full_bready;
  wire [1:0]s_axi_full_bresp;
  wire s_axi_full_bvalid;
  wire [63:0]s_axi_full_rdata;
  wire s_axi_full_rlast;
  wire s_axi_full_rready;
  wire [1:0]s_axi_full_rresp;
  wire s_axi_full_rvalid;
  wire [63:0]s_axi_full_wdata;
  wire s_axi_full_wlast;
  wire s_axi_full_wready;
  wire [7:0]s_axi_full_wstrb;
  wire s_axi_full_wvalid;

bram64 bram64_i
       (.s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_full_araddr(s_axi_full_araddr),
        .s_axi_full_arburst(s_axi_full_arburst),
        .s_axi_full_arcache(s_axi_full_arcache),
        .s_axi_full_arlen(s_axi_full_arlen),
        .s_axi_full_arlock(s_axi_full_arlock),
        .s_axi_full_arprot(s_axi_full_arprot),
        .s_axi_full_arready(s_axi_full_arready),
        .s_axi_full_arsize(s_axi_full_arsize),
        .s_axi_full_arvalid(s_axi_full_arvalid),
        .s_axi_full_awaddr(s_axi_full_awaddr),
        .s_axi_full_awburst(s_axi_full_awburst),
        .s_axi_full_awcache(s_axi_full_awcache),
        .s_axi_full_awlen(s_axi_full_awlen),
        .s_axi_full_awlock(s_axi_full_awlock),
        .s_axi_full_awprot(s_axi_full_awprot),
        .s_axi_full_awready(s_axi_full_awready),
        .s_axi_full_awsize(s_axi_full_awsize),
        .s_axi_full_awvalid(s_axi_full_awvalid),
        .s_axi_full_bready(s_axi_full_bready),
        .s_axi_full_bresp(s_axi_full_bresp),
        .s_axi_full_bvalid(s_axi_full_bvalid),
        .s_axi_full_rdata(s_axi_full_rdata),
        .s_axi_full_rlast(s_axi_full_rlast),
        .s_axi_full_rready(s_axi_full_rready),
        .s_axi_full_rresp(s_axi_full_rresp),
        .s_axi_full_rvalid(s_axi_full_rvalid),
        .s_axi_full_wdata(s_axi_full_wdata),
        .s_axi_full_wlast(s_axi_full_wlast),
        .s_axi_full_wready(s_axi_full_wready),
        .s_axi_full_wstrb(s_axi_full_wstrb),
        .s_axi_full_wvalid(s_axi_full_wvalid));
endmodule
