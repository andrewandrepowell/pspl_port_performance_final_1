//Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
//Date        : Tue Jun 16 20:03:14 2015
//Host        : idea-PC running 64-bit major release  (build 9200)
//Command     : generate_target bram64.bd
//Design      : bram64
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bram64
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

  wire [12:0]S_AXI_1_ARADDR;
  wire [1:0]S_AXI_1_ARBURST;
  wire [3:0]S_AXI_1_ARCACHE;
  wire [7:0]S_AXI_1_ARLEN;
  wire S_AXI_1_ARLOCK;
  wire [2:0]S_AXI_1_ARPROT;
  wire S_AXI_1_ARREADY;
  wire [2:0]S_AXI_1_ARSIZE;
  wire S_AXI_1_ARVALID;
  wire [12:0]S_AXI_1_AWADDR;
  wire [1:0]S_AXI_1_AWBURST;
  wire [3:0]S_AXI_1_AWCACHE;
  wire [7:0]S_AXI_1_AWLEN;
  wire S_AXI_1_AWLOCK;
  wire [2:0]S_AXI_1_AWPROT;
  wire S_AXI_1_AWREADY;
  wire [2:0]S_AXI_1_AWSIZE;
  wire S_AXI_1_AWVALID;
  wire S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire S_AXI_1_BVALID;
  wire [63:0]S_AXI_1_RDATA;
  wire S_AXI_1_RLAST;
  wire S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire S_AXI_1_RVALID;
  wire [63:0]S_AXI_1_WDATA;
  wire S_AXI_1_WLAST;
  wire S_AXI_1_WREADY;
  wire [7:0]S_AXI_1_WSTRB;
  wire S_AXI_1_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [7:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTB_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTB_CLK;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTB_DIN;
  wire [63:0]axi_bram_ctrl_0_BRAM_PORTB_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTB_EN;
  wire axi_bram_ctrl_0_BRAM_PORTB_RST;
  wire [7:0]axi_bram_ctrl_0_BRAM_PORTB_WE;
  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;

  assign S_AXI_1_ARADDR = s_axi_full_araddr[12:0];
  assign S_AXI_1_ARBURST = s_axi_full_arburst[1:0];
  assign S_AXI_1_ARCACHE = s_axi_full_arcache[3:0];
  assign S_AXI_1_ARLEN = s_axi_full_arlen[7:0];
  assign S_AXI_1_ARLOCK = s_axi_full_arlock;
  assign S_AXI_1_ARPROT = s_axi_full_arprot[2:0];
  assign S_AXI_1_ARSIZE = s_axi_full_arsize[2:0];
  assign S_AXI_1_ARVALID = s_axi_full_arvalid;
  assign S_AXI_1_AWADDR = s_axi_full_awaddr[12:0];
  assign S_AXI_1_AWBURST = s_axi_full_awburst[1:0];
  assign S_AXI_1_AWCACHE = s_axi_full_awcache[3:0];
  assign S_AXI_1_AWLEN = s_axi_full_awlen[7:0];
  assign S_AXI_1_AWLOCK = s_axi_full_awlock;
  assign S_AXI_1_AWPROT = s_axi_full_awprot[2:0];
  assign S_AXI_1_AWSIZE = s_axi_full_awsize[2:0];
  assign S_AXI_1_AWVALID = s_axi_full_awvalid;
  assign S_AXI_1_BREADY = s_axi_full_bready;
  assign S_AXI_1_RREADY = s_axi_full_rready;
  assign S_AXI_1_WDATA = s_axi_full_wdata[63:0];
  assign S_AXI_1_WLAST = s_axi_full_wlast;
  assign S_AXI_1_WSTRB = s_axi_full_wstrb[7:0];
  assign S_AXI_1_WVALID = s_axi_full_wvalid;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_full_arready = S_AXI_1_ARREADY;
  assign s_axi_full_awready = S_AXI_1_AWREADY;
  assign s_axi_full_bresp[1:0] = S_AXI_1_BRESP;
  assign s_axi_full_bvalid = S_AXI_1_BVALID;
  assign s_axi_full_rdata[63:0] = S_AXI_1_RDATA;
  assign s_axi_full_rlast = S_AXI_1_RLAST;
  assign s_axi_full_rresp[1:0] = S_AXI_1_RRESP;
  assign s_axi_full_rvalid = S_AXI_1_RVALID;
  assign s_axi_full_wready = S_AXI_1_WREADY;
bram64_axi_bram_ctrl_0_1 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_addr_b(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_clk_b(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_en_b(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rddata_b(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_rst_b(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_we_b(axi_bram_ctrl_0_BRAM_PORTB_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .bram_wrdata_b(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(S_AXI_1_ARADDR),
        .s_axi_arburst(S_AXI_1_ARBURST),
        .s_axi_arcache(S_AXI_1_ARCACHE),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arlen(S_AXI_1_ARLEN),
        .s_axi_arlock(S_AXI_1_ARLOCK),
        .s_axi_arprot(S_AXI_1_ARPROT),
        .s_axi_arready(S_AXI_1_ARREADY),
        .s_axi_arsize(S_AXI_1_ARSIZE),
        .s_axi_arvalid(S_AXI_1_ARVALID),
        .s_axi_awaddr(S_AXI_1_AWADDR),
        .s_axi_awburst(S_AXI_1_AWBURST),
        .s_axi_awcache(S_AXI_1_AWCACHE),
        .s_axi_awlen(S_AXI_1_AWLEN),
        .s_axi_awlock(S_AXI_1_AWLOCK),
        .s_axi_awprot(S_AXI_1_AWPROT),
        .s_axi_awready(S_AXI_1_AWREADY),
        .s_axi_awsize(S_AXI_1_AWSIZE),
        .s_axi_awvalid(S_AXI_1_AWVALID),
        .s_axi_bready(S_AXI_1_BREADY),
        .s_axi_bresp(S_AXI_1_BRESP),
        .s_axi_bvalid(S_AXI_1_BVALID),
        .s_axi_rdata(S_AXI_1_RDATA),
        .s_axi_rlast(S_AXI_1_RLAST),
        .s_axi_rready(S_AXI_1_RREADY),
        .s_axi_rresp(S_AXI_1_RRESP),
        .s_axi_rvalid(S_AXI_1_RVALID),
        .s_axi_wdata(S_AXI_1_WDATA),
        .s_axi_wlast(S_AXI_1_WLAST),
        .s_axi_wready(S_AXI_1_WREADY),
        .s_axi_wstrb(S_AXI_1_WSTRB),
        .s_axi_wvalid(S_AXI_1_WVALID));
bram64_blk_mem_gen_0_1 blk_mem_gen_0
       (.addra(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .addrb(axi_bram_ctrl_0_BRAM_PORTB_ADDR),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTB_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTB_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTB_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTB_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTB_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTB_WE));
endmodule
