// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Tue Jun 16 20:07:11 2015
// Host        : idea-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/ip_repo/hardware_accelerator_1.0/bd/bram64/ip/bram64_axi_bram_ctrl_0_1/bram64_axi_bram_ctrl_0_1_funcsim.v
// Design      : bram64_axi_bram_ctrl_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2014.4" *) (* CHECK_LICENSE_TYPE = "bram64_axi_bram_ctrl_0_1,axi_bram_ctrl,{}" *) 
(* core_generation_info = "bram64_axi_bram_ctrl_0_1,axi_bram_ctrl,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=1024,C_BRAM_ADDR_WIDTH=10,C_S_AXI_ADDR_WIDTH=13,C_S_AXI_DATA_WIDTH=64,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=0,C_FAMILY=zynq,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}" *) 
(* NotValidForBitStream *)
module bram64_axi_bram_ctrl_0_1
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) input s_axi_aresetn;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) output bram_rst_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) output bram_clk_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) output bram_en_a;
  output [7:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [63:0]bram_wrdata_a;
  input [63:0]bram_rddata_a;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) output bram_rst_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) output bram_clk_b;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) output bram_en_b;
  output [7:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [63:0]bram_wrdata_b;
  input [63:0]bram_rddata_b;

  wire [12:0]bram_addr_a;
  wire [12:0]bram_addr_b;
  wire bram_clk_a;
  wire bram_clk_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [63:0]bram_rddata_a;
  wire [63:0]bram_rddata_b;
  wire bram_rst_a;
  wire bram_rst_b;
  wire [7:0]bram_we_a;
  wire [7:0]bram_we_b;
  wire [63:0]bram_wrdata_a;
  wire [63:0]bram_wrdata_b;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;

(* C_BRAM_ADDR_WIDTH = "10" *) 
   (* C_BRAM_INST_MODE = "EXTERNAL" *) 
   (* C_ECC = "0" *) 
   (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
   (* C_ECC_TYPE = "0" *) 
   (* C_FAMILY = "zynq" *) 
   (* C_FAULT_INJECT = "0" *) 
   (* C_MEMORY_DEPTH = "1024" *) 
   (* C_SINGLE_PORT_BRAM = "0" *) 
   (* C_S_AXI_ADDR_WIDTH = "13" *) 
   (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
   (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
   (* C_S_AXI_DATA_WIDTH = "64" *) 
   (* C_S_AXI_ID_WIDTH = "1" *) 
   (* C_S_AXI_PROTOCOL = "AXI4" *) 
   (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
   (* DONT_TOUCH *) 
   (* downgradeipidentifiedwarnings = "yes" *) 
   bram64_axi_bram_ctrl_0_1_axi_bram_ctrl__parameterized0 U0
       (.bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_clk_a(bram_clk_a),
        .bram_clk_b(bram_clk_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_a(bram_rddata_a),
        .bram_rddata_b(bram_rddata_b),
        .bram_rst_a(bram_rst_a),
        .bram_rst_b(bram_rst_b),
        .bram_we_a(bram_we_a),
        .bram_we_b(bram_we_b),
        .bram_wrdata_a(bram_wrdata_a),
        .bram_wrdata_b(bram_wrdata_b),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module bram64_axi_bram_ctrl_0_1_SRL_FIFO
   (clr_bram_we_cmb7_out,
    O1,
    bvalid_cnt_inc12_out,
    O2,
    axi_wdata_full_cmb116_out,
    bid_gets_fifo_load,
    O3,
    I1,
    s_axi_aclk,
    bid_gets_fifo_load_d1,
    out,
    s_axi_wlast,
    s_axi_wvalid,
    axi_awaddr_full,
    axi_aresetn_d2,
    I2,
    axi_wr_burst,
    I3,
    I4,
    s_axi_awvalid,
    bram_addr_ld_en,
    bvalid_cnt_inc,
    I5,
    wr_addr_sm_cs,
    bvalid_cnt,
    s_axi_bready,
    I6,
    axi_awid_pipe,
    s_axi_awid,
    s_axi_bid);
  output clr_bram_we_cmb7_out;
  output O1;
  output bvalid_cnt_inc12_out;
  output O2;
  output axi_wdata_full_cmb116_out;
  output bid_gets_fifo_load;
  output O3;
  input I1;
  input s_axi_aclk;
  input bid_gets_fifo_load_d1;
  input [2:0]out;
  input s_axi_wlast;
  input s_axi_wvalid;
  input axi_awaddr_full;
  input axi_aresetn_d2;
  input I2;
  input axi_wr_burst;
  input I3;
  input I4;
  input s_axi_awvalid;
  input bram_addr_ld_en;
  input bvalid_cnt_inc;
  input I5;
  input wr_addr_sm_cs;
  input [2:0]bvalid_cnt;
  input s_axi_bready;
  input I6;
  input axi_awid_pipe;
  input [0:0]s_axi_awid;
  input [0:0]s_axi_bid;

  wire CI;
  wire D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire O1;
  wire O2;
  wire O3;
  wire S;
  wire S2_out;
  wire S4_out;
  wire S6_out;
  wire axi_aresetn_d2;
  wire axi_awaddr_full;
  wire axi_awid_pipe;
  wire axi_wdata_full_cmb116_out;
  wire axi_wr_burst;
  wire bid_fifo_ld;
  wire bid_fifo_not_empty;
  wire bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bram_addr_ld_en;
  wire [2:0]bvalid_cnt;
  wire bvalid_cnt_inc;
  wire bvalid_cnt_inc12_out;
  wire clr_bram_we_cmb7_out;
  wire \n_0_Addr_Counters[0].FDRE_I ;
  wire \n_0_Addr_Counters[0].MUXCY_L_I_i_2 ;
  wire \n_0_Addr_Counters[1].FDRE_I ;
  wire \n_0_Addr_Counters[1].MUXCY_L_I ;
  wire \n_0_Addr_Counters[1].XORCY_I ;
  wire \n_0_Addr_Counters[2].FDRE_I ;
  wire \n_0_Addr_Counters[2].XORCY_I ;
  wire \n_0_Addr_Counters[3].FDRE_I ;
  wire \n_0_Addr_Counters[3].XORCY_I ;
  wire n_0_Data_Exists_DFF_i_1;
  wire n_0_Data_Exists_DFF_i_2;
  wire n_0_Data_Exists_DFF_i_3;
  wire n_0_Data_Exists_DFF_i_4;
  wire n_0_Data_Exists_DFF_i_5;
  wire n_0_Data_Exists_DFF_i_6;
  wire \n_0_axi_bid_int[0]_i_2 ;
  wire n_0_axi_bvalid_int_i_6;
  wire n_0_bid_gets_fifo_load_d1_i_2;
  wire [2:0]out;
  wire s_axi_aclk;
  wire [0:0]s_axi_awid;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
  wire [3:2]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(D),
        .Q(\n_0_Addr_Counters[0].FDRE_I ),
        .R(I1));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
   CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3:2],\n_0_Addr_Counters[1].MUXCY_L_I ,CI}),
        .CYINIT(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\n_0_Addr_Counters[2].FDRE_I ,\n_0_Addr_Counters[1].FDRE_I ,\n_0_Addr_Counters[0].FDRE_I }),
        .O({\n_0_Addr_Counters[3].XORCY_I ,\n_0_Addr_Counters[2].XORCY_I ,\n_0_Addr_Counters[1].XORCY_I ,D}),
        .S({S,S2_out,S4_out,S6_out}));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(bram_addr_ld_en),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[0].FDRE_I ),
        .O(S6_out));
LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
     \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_axi_bid_int[0]_i_2 ),
        .I2(\n_0_Addr_Counters[2].FDRE_I ),
        .I3(\n_0_Addr_Counters[3].FDRE_I ),
        .I4(\n_0_Addr_Counters[1].FDRE_I ),
        .I5(\n_0_Addr_Counters[0].FDRE_I ),
        .O(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[1].XORCY_I ),
        .Q(\n_0_Addr_Counters[1].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(bram_addr_ld_en),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[1].FDRE_I ),
        .O(S4_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[2].XORCY_I ),
        .Q(\n_0_Addr_Counters[2].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\n_0_Addr_Counters[3].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(bram_addr_ld_en),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[2].FDRE_I ),
        .O(S2_out));
(* BOX_TYPE = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(\n_0_Addr_Counters[3].XORCY_I ),
        .Q(\n_0_Addr_Counters[3].FDRE_I ),
        .R(I1));
LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
     \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[1].FDRE_I ),
        .I2(\n_0_Addr_Counters[0].FDRE_I ),
        .I3(bram_addr_ld_en),
        .I4(\n_0_axi_bid_int[0]_i_2 ),
        .I5(\n_0_Addr_Counters[3].FDRE_I ),
        .O(S));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_Data_Exists_DFF_i_1),
        .Q(bid_fifo_not_empty),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT4 #(
    .INIT(16'hFE0A)) 
     Data_Exists_DFF_i_1
       (.I0(bram_addr_ld_en),
        .I1(n_0_Data_Exists_DFF_i_2),
        .I2(n_0_Data_Exists_DFF_i_3),
        .I3(bid_fifo_not_empty),
        .O(n_0_Data_Exists_DFF_i_1));
LUT6 #(
    .INIT(64'h000000000000F4F7)) 
     Data_Exists_DFF_i_2
       (.I0(n_0_Data_Exists_DFF_i_4),
        .I1(clr_bram_we_cmb7_out),
        .I2(n_0_bid_gets_fifo_load_d1_i_2),
        .I3(n_0_Data_Exists_DFF_i_5),
        .I4(O1),
        .I5(bid_gets_fifo_load_d1),
        .O(n_0_Data_Exists_DFF_i_2));
LUT4 #(
    .INIT(16'hFFFE)) 
     Data_Exists_DFF_i_3
       (.I0(\n_0_Addr_Counters[2].FDRE_I ),
        .I1(\n_0_Addr_Counters[3].FDRE_I ),
        .I2(\n_0_Addr_Counters[1].FDRE_I ),
        .I3(\n_0_Addr_Counters[0].FDRE_I ),
        .O(n_0_Data_Exists_DFF_i_3));
LUT6 #(
    .INIT(64'h000080800000EAAA)) 
     Data_Exists_DFF_i_4
       (.I0(out[0]),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_cmb116_out),
        .I4(out[2]),
        .I5(out[1]),
        .O(n_0_Data_Exists_DFF_i_4));
LUT6 #(
    .INIT(64'h0000888800000004)) 
     Data_Exists_DFF_i_5
       (.I0(out[0]),
        .I1(bvalid_cnt_inc12_out),
        .I2(O2),
        .I3(n_0_Data_Exists_DFF_i_6),
        .I4(out[2]),
        .I5(out[1]),
        .O(n_0_Data_Exists_DFF_i_5));
LUT3 #(
    .INIT(8'h15)) 
     Data_Exists_DFF_i_6
       (.I0(I3),
        .I1(I4),
        .I2(s_axi_awvalid),
        .O(n_0_Data_Exists_DFF_i_6));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* srl_bus_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
   (* srl_name = "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
   SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
     \FIFO_RAM[0].SRL16E_I 
       (.A0(\n_0_Addr_Counters[0].FDRE_I ),
        .A1(\n_0_Addr_Counters[1].FDRE_I ),
        .A2(\n_0_Addr_Counters[2].FDRE_I ),
        .A3(\n_0_Addr_Counters[3].FDRE_I ),
        .CE(\n_0_Addr_Counters[0].MUXCY_L_I_i_2 ),
        .CLK(s_axi_aclk),
        .D(bid_fifo_ld),
        .Q(bid_fifo_rd));
LUT3 #(
    .INIT(8'hB8)) 
     \FIFO_RAM[0].SRL16E_I_i_1 
       (.I0(axi_awid_pipe),
        .I1(axi_awaddr_full),
        .I2(s_axi_awid),
        .O(bid_fifo_ld));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe[3]_i_4 
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .O(O2));
LUT6 #(
    .INIT(64'h7F7F7F7F7F000000)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2 
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .I3(s_axi_awvalid),
        .I4(I4),
        .I5(I3),
        .O(axi_wdata_full_cmb116_out));
LUT5 #(
    .INIT(32'hAACFAAC0)) 
     \axi_bid_int[0]_i_1 
       (.I0(bid_fifo_ld),
        .I1(bid_fifo_rd),
        .I2(\n_0_axi_bid_int[0]_i_2 ),
        .I3(bid_gets_fifo_load),
        .I4(s_axi_bid),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \axi_bid_int[0]_i_2 
       (.I0(bid_fifo_not_empty),
        .I1(n_0_Data_Exists_DFF_i_2),
        .O(\n_0_axi_bid_int[0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT5 #(
    .INIT(32'hFE000000)) 
     axi_bvalid_int_i_3
       (.I0(bvalid_cnt[0]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[2]),
        .I3(s_axi_bready),
        .I4(I6),
        .O(O1));
LUT6 #(
    .INIT(64'h00000000FFFF8880)) 
     axi_bvalid_int_i_4
       (.I0(axi_awaddr_full),
        .I1(axi_aresetn_d2),
        .I2(n_0_axi_bvalid_int_i_6),
        .I3(I2),
        .I4(axi_wdata_full_cmb116_out),
        .I5(axi_wr_burst),
        .O(clr_bram_we_cmb7_out));
LUT2 #(
    .INIT(4'h8)) 
     axi_bvalid_int_i_5
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .O(bvalid_cnt_inc12_out));
LUT5 #(
    .INIT(32'h00001110)) 
     axi_bvalid_int_i_6
       (.I0(O2),
        .I1(I3),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .I4(wr_addr_sm_cs),
        .O(n_0_axi_bvalid_int_i_6));
LUT6 #(
    .INIT(64'h0808088808080808)) 
     bid_gets_fifo_load_d1_i_1
       (.I0(bram_addr_ld_en),
        .I1(bvalid_cnt_inc),
        .I2(n_0_bid_gets_fifo_load_d1_i_2),
        .I3(I5),
        .I4(bid_fifo_not_empty),
        .I5(O1),
        .O(bid_gets_fifo_load));
LUT3 #(
    .INIT(8'hFE)) 
     bid_gets_fifo_load_d1_i_2
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[1]),
        .I2(bvalid_cnt[0]),
        .O(n_0_bid_gets_fifo_load_d1_i_2));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* C_BRAM_INST_MODE = "EXTERNAL" *) (* C_MEMORY_DEPTH = "1024" *) 
(* C_BRAM_ADDR_WIDTH = "10" *) (* C_S_AXI_ADDR_WIDTH = "13" *) (* C_S_AXI_DATA_WIDTH = "64" *) 
(* C_S_AXI_ID_WIDTH = "1" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* C_SINGLE_PORT_BRAM = "0" *) (* C_FAMILY = "zynq" *) (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
(* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_ECC = "0" *) (* C_ECC_TYPE = "0" *) 
(* C_FAULT_INJECT = "0" *) (* C_ECC_ONOFF_RESET_VALUE = "0" *) (* downgradeipidentifiedwarnings = "yes" *) 
module bram64_axi_bram_ctrl_0_1_axi_bram_ctrl__parameterized0
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [0:0]s_axi_awid;
  input [12:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [12:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [7:0]bram_we_a;
  output [12:0]bram_addr_a;
  output [63:0]bram_wrdata_a;
  input [63:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [7:0]bram_we_b;
  output [12:0]bram_addr_b;
  output [63:0]bram_wrdata_b;
  input [63:0]bram_rddata_b;

  wire \<const0> ;
  wire [12:3]\^bram_addr_a ;
  wire [12:3]\^bram_addr_b ;
  wire bram_en_a;
  wire bram_en_b;
  wire [63:0]bram_rddata_a;
  wire [63:0]bram_rddata_b;
  wire bram_rst_a;
  wire [7:0]bram_we_a;
  wire [63:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_ctrl_araddr;
  wire s_axi_ctrl_arvalid;
  wire [31:0]s_axi_ctrl_awaddr;
  wire s_axi_ctrl_awvalid;
  wire s_axi_ctrl_bready;
  wire s_axi_ctrl_rready;
  wire [31:0]s_axi_ctrl_wdata;
  wire s_axi_ctrl_wvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign bram_addr_a[12:3] = \^bram_addr_a [12:3];
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[12:3] = \^bram_addr_b [12:3];
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = s_axi_aclk;
  assign bram_clk_b = s_axi_aclk;
  assign bram_rst_b = bram_rst_a;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
bram64_axi_bram_ctrl_0_1_axi_bram_ctrl_top \gext_inst.abcv4_0_ext_inst 
       (.O1(s_axi_rlast),
        .O10(bram_rst_a),
        .O11(\^bram_addr_a [6]),
        .O12(\^bram_addr_a [7]),
        .O13(\^bram_addr_a [8]),
        .O14(\^bram_addr_a [9]),
        .O15(s_axi_bvalid),
        .O2(s_axi_rvalid),
        .O3(s_axi_awready),
        .O4(\^bram_addr_a [3]),
        .O5(\^bram_addr_a [5]),
        .O6(\^bram_addr_a [4]),
        .O7(\^bram_addr_b [3]),
        .O8(\^bram_addr_b [5]),
        .O9(\^bram_addr_b [4]),
        .bram_addr_a(\^bram_addr_a [12:10]),
        .bram_addr_b(\^bram_addr_b [12:6]),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module bram64_axi_bram_ctrl_0_1_axi_bram_ctrl_top
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    bram_addr_a,
    O15,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    s_axi_bid,
    s_axi_rid,
    bram_en_b,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_aclk,
    s_axi_awburst,
    s_axi_arburst,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_b);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output [2:0]bram_addr_a;
  output O15;
  output bram_en_a;
  output [7:0]bram_we_a;
  output [63:0]bram_wrdata_a;
  output [6:0]bram_addr_b;
  output [63:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_b;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [12:0]s_axi_awaddr;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [12:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input s_axi_aclk;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_arburst;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [7:0]s_axi_wstrb;
  input [63:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [63:0]bram_rddata_b;

  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [2:0]bram_addr_a;
  wire [6:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [63:0]bram_rddata_b;
  wire [7:0]bram_we_a;
  wire [63:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

bram64_axi_bram_ctrl_0_1_full_axi \GEN_AXI4.I_FULL_AXI 
       (.O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .bram_addr_a(bram_addr_a),
        .bram_addr_b(bram_addr_b),
        .bram_en_a(bram_en_a),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module bram64_axi_bram_ctrl_0_1_full_axi
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    bram_addr_a,
    O15,
    bram_en_a,
    bram_we_a,
    bram_wrdata_a,
    bram_addr_b,
    s_axi_rdata,
    s_axi_wready,
    s_axi_arready,
    s_axi_bid,
    s_axi_rid,
    bram_en_b,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_awvalid,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_awaddr,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_aclk,
    s_axi_awburst,
    s_axi_arburst,
    s_axi_bready,
    s_axi_awid,
    s_axi_wstrb,
    s_axi_wdata,
    s_axi_arid,
    bram_rddata_b);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output [2:0]bram_addr_a;
  output O15;
  output bram_en_a;
  output [7:0]bram_we_a;
  output [63:0]bram_wrdata_a;
  output [6:0]bram_addr_b;
  output [63:0]s_axi_rdata;
  output s_axi_wready;
  output s_axi_arready;
  output [0:0]s_axi_bid;
  output [0:0]s_axi_rid;
  output bram_en_b;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [12:0]s_axi_awaddr;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input [12:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input s_axi_aclk;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_arburst;
  input s_axi_bready;
  input [0:0]s_axi_awid;
  input [7:0]s_axi_wstrb;
  input [63:0]s_axi_wdata;
  input [0:0]s_axi_arid;
  input [63:0]bram_rddata_b;

  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [2:0]bram_addr_a;
  wire [6:0]bram_addr_b;
  wire bram_en_a;
  wire bram_en_b;
  wire [63:0]bram_rddata_b;
  wire [7:0]bram_we_a;
  wire [63:0]bram_wrdata_a;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;

bram64_axi_bram_ctrl_0_1_rd_chnl I_RD_CHNL
       (.O1(O10),
        .O10(bram_addr_b[0]),
        .O2(O1),
        .O3(O2),
        .O4(O7),
        .O5(O8),
        .O6(O9),
        .O7(bram_addr_b[3]),
        .O8(bram_addr_b[1]),
        .O9(bram_addr_b[2]),
        .bram_addr_b(bram_addr_b[6:4]),
        .bram_en_b(bram_en_b),
        .bram_rddata_b(bram_rddata_b),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready));
bram64_axi_bram_ctrl_0_1_wr_chnl I_WR_CHNL
       (.I1(O10),
        .O1(O15),
        .O2(O3),
        .O3(O4),
        .O4(O5),
        .O5(O6),
        .O6(O14),
        .O7(O12),
        .O8(O13),
        .O9(O11),
        .bram_addr_a(bram_addr_a),
        .bram_en_a(bram_en_a),
        .bram_we_a(bram_we_a),
        .bram_wrdata_a(bram_wrdata_a),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module bram64_axi_bram_ctrl_0_1_rd_chnl
   (O1,
    s_axi_rdata,
    O2,
    s_axi_rid,
    bram_en_b,
    O3,
    O4,
    O5,
    O6,
    s_axi_arready,
    O7,
    O8,
    O9,
    O10,
    bram_addr_b,
    s_axi_araddr,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_arid,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    bram_rddata_b);
  output O1;
  output [63:0]s_axi_rdata;
  output O2;
  output [0:0]s_axi_rid;
  output bram_en_b;
  output O3;
  output O4;
  output O5;
  output O6;
  output s_axi_arready;
  output O7;
  output O8;
  output O9;
  output O10;
  output [2:0]bram_addr_b;
  input [12:0]s_axi_araddr;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [0:0]s_axi_arid;
  input s_axi_rready;
  input s_axi_arvalid;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [63:0]bram_rddata_b;

  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire O1;
  wire O10;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active;
  wire araddr_pipe_ld46_out;
  wire axi_araddr_full;
  wire [1:0]axi_arburst_pipe;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_arid_pipe;
  wire [7:0]axi_arlen_pipe;
  wire axi_arlen_pipe_1_or_2;
  wire [2:0]axi_arsize_pipe;
  wire axi_b2b_brst;
  wire axi_early_arready_int;
  wire axi_rd_burst;
  wire axi_rd_burst0;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire axi_rid_temp;
  wire axi_rid_temp2;
  wire axi_rid_temp2_full;
  wire axi_rid_temp_full;
  wire axi_rid_temp_full_d1;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire [2:0]bram_addr_b;
  wire bram_addr_inc;
  wire bram_addr_inc8_out;
  wire bram_addr_ld_en;
  wire bram_en_b;
  wire [63:0]bram_rddata_b;
  wire brst_cnt_max9_out;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire brst_one0;
  wire brst_zero;
  wire [2:0]curr_araddr_lsb;
  wire [7:0]curr_arlen;
  wire [2:0]curr_arsize;
  wire curr_fixed_burst;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ;
  wire \n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ;
  wire \n_0_GEN_ARREADY.axi_arready_int_i_1 ;
  wire \n_0_GEN_ARREADY.axi_arready_int_i_2 ;
  wire \n_0_GEN_ARREADY.axi_arready_int_reg ;
  wire \n_0_GEN_ARREADY.axi_early_arready_int_i_2 ;
  wire \n_0_GEN_ARREADY.axi_early_arready_int_i_3 ;
  wire \n_0_GEN_ARREADY.axi_early_arready_int_i_4 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_1 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_2 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_3 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_4 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_5 ;
  wire \n_0_GEN_AR_DUAL.ar_active_i_6 ;
  wire \n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1 ;
  wire \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ;
  wire \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ;
  wire \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ;
  wire \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_2 ;
  wire \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_3 ;
  wire \n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 ;
  wire \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 ;
  wire \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ;
  wire \n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ;
  wire \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_21 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_21 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_30 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_33 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_22 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ;
  wire \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ;
  wire \n_0_GEN_RID.axi_rid_int[0]_i_1 ;
  wire \n_0_GEN_RID.axi_rid_int[0]_i_2 ;
  wire \n_0_GEN_RID.axi_rid_temp2[0]_i_1 ;
  wire \n_0_GEN_RID.axi_rid_temp2_full_i_1 ;
  wire \n_0_GEN_RID.axi_rid_temp2_reg[0] ;
  wire \n_0_GEN_RID.axi_rid_temp[0]_i_1 ;
  wire \n_0_GEN_RID.axi_rid_temp[0]_i_3 ;
  wire \n_0_GEN_RID.axi_rid_temp_full_i_1 ;
  wire n_0_I_WRAP_BRST;
  wire n_0_act_rd_burst_i_1;
  wire n_0_act_rd_burst_i_3;
  wire n_0_act_rd_burst_i_4;
  wire n_0_act_rd_burst_i_5;
  wire n_0_act_rd_burst_i_6;
  wire n_0_act_rd_burst_two_i_1;
  wire n_0_axi_arsize_pipe_max_i_1;
  wire n_0_axi_arsize_pipe_max_reg;
  wire n_0_axi_b2b_brst_i_1;
  wire n_0_axi_b2b_brst_i_3;
  wire n_0_axi_rd_burst_i_1;
  wire n_0_axi_rd_burst_i_3;
  wire n_0_axi_rd_burst_two_i_1;
  wire n_0_axi_rd_burst_two_reg;
  wire n_0_axi_rlast_int_i_1;
  wire n_0_axi_rlast_int_i_2;
  wire n_0_axi_rvalid_clr_ok_i_1;
  wire n_0_axi_rvalid_clr_ok_i_2;
  wire n_0_axi_rvalid_clr_ok_i_3;
  wire n_0_axi_rvalid_int_i_1;
  wire n_0_bram_en_int_i_1;
  wire n_0_bram_en_int_i_10;
  wire n_0_bram_en_int_i_11;
  wire n_0_bram_en_int_i_12;
  wire n_0_bram_en_int_i_13;
  wire n_0_bram_en_int_i_2;
  wire n_0_bram_en_int_i_3;
  wire n_0_bram_en_int_i_4;
  wire n_0_bram_en_int_i_5;
  wire n_0_bram_en_int_i_7;
  wire n_0_bram_en_int_i_8;
  wire n_0_bram_en_int_i_9;
  wire \n_0_brst_cnt[0]_i_1 ;
  wire \n_0_brst_cnt[1]_i_1 ;
  wire \n_0_brst_cnt[2]_i_1 ;
  wire \n_0_brst_cnt[3]_i_1 ;
  wire \n_0_brst_cnt[3]_i_2 ;
  wire \n_0_brst_cnt[4]_i_1 ;
  wire \n_0_brst_cnt[4]_i_3 ;
  wire \n_0_brst_cnt[5]_i_1 ;
  wire \n_0_brst_cnt[5]_i_3 ;
  wire \n_0_brst_cnt[6]_i_1 ;
  wire \n_0_brst_cnt[7]_i_1 ;
  wire \n_0_brst_cnt[7]_i_3 ;
  wire \n_0_brst_cnt_reg[0] ;
  wire \n_0_brst_cnt_reg[1] ;
  wire \n_0_brst_cnt_reg[2] ;
  wire \n_0_brst_cnt_reg[3] ;
  wire \n_0_brst_cnt_reg[4] ;
  wire \n_0_brst_cnt_reg[5] ;
  wire \n_0_brst_cnt_reg[6] ;
  wire \n_0_brst_cnt_reg[7] ;
  wire n_0_brst_one_i_1;
  wire n_0_brst_one_i_3;
  wire n_0_brst_one_i_5;
  wire n_0_brst_zero_i_1;
  wire n_0_brst_zero_i_2;
  wire n_0_curr_fixed_burst_reg_reg;
  wire n_0_disable_b2b_brst_i_2;
  wire n_0_disable_b2b_brst_i_3;
  wire n_0_disable_b2b_brst_i_4;
  wire n_0_end_brst_rd_clr_i_1;
  wire n_0_end_brst_rd_i_1;
  wire n_0_last_bram_addr_i_2;
  wire n_0_last_bram_addr_i_3;
  wire n_0_last_bram_addr_i_4;
  wire n_0_no_ar_ack_i_1;
  wire n_0_pend_rd_op_i_1;
  wire n_0_pend_rd_op_i_2;
  wire n_0_pend_rd_op_i_3;
  wire n_0_pend_rd_op_i_4;
  wire n_0_pend_rd_op_i_5;
  wire n_0_pend_rd_op_i_6;
  wire n_0_pend_rd_op_i_7;
  wire n_0_pend_rd_op_i_8;
  wire n_0_pend_rd_op_i_9;
  wire n_0_pend_rd_op_reg;
  wire \n_0_rd_data_sm_cs[0]_i_1 ;
  wire \n_0_rd_data_sm_cs[0]_i_2 ;
  wire \n_0_rd_data_sm_cs[0]_i_3 ;
  wire \n_0_rd_data_sm_cs[1]_i_1 ;
  wire \n_0_rd_data_sm_cs[1]_i_2 ;
  wire \n_0_rd_data_sm_cs[1]_i_3 ;
  wire \n_0_rd_data_sm_cs[2]_i_1 ;
  wire \n_0_rd_data_sm_cs[2]_i_2 ;
  wire \n_0_rd_data_sm_cs[2]_i_3 ;
  wire \n_0_rd_data_sm_cs[3]_i_1 ;
  wire \n_0_rd_data_sm_cs[3]_i_2 ;
  wire \n_0_rd_data_sm_cs[3]_i_3 ;
  wire \n_0_rd_data_sm_cs[3]_i_4 ;
  wire \n_0_rd_data_sm_cs[3]_i_5 ;
  wire n_0_rddata_mux_sel_i_1;
  wire n_0_rddata_mux_sel_i_3;
  wire n_10_I_WRAP_BRST;
  wire n_11_I_WRAP_BRST;
  wire n_12_I_WRAP_BRST;
  wire n_13_I_WRAP_BRST;
  wire n_14_I_WRAP_BRST;
  wire n_16_I_WRAP_BRST;
  wire n_17_I_WRAP_BRST;
  wire n_19_I_WRAP_BRST;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ;
  wire n_27_I_WRAP_BRST;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ;
  wire n_5_I_WRAP_BRST;
  wire n_6_I_WRAP_BRST;
  wire n_7_I_WRAP_BRST;
  wire n_8_I_WRAP_BRST;
  wire n_9_I_WRAP_BRST;
  wire [2:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [2:0]narrow_burst_cnt_ld_mod;
  wire [2:0]narrow_burst_cnt_ld_reg;
  wire no_ar_ack;
  wire p_15_out;
  wire p_1_out;
  wire p_4_out;
  wire p_57_out;
  wire rd_addr_sm_cs;
  wire rd_adv_buf79_out;
  wire [3:0]rd_data_sm_cs;
  wire [63:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire rddata_mux_sel;
  wire rddata_mux_sel_cmb;
(* RTL_KEEP = "yes" *)   wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [63:0]s_axi_rdata;
  wire [0:0]s_axi_rid;
  wire s_axi_rready;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9_O_UNCONNECTED ;

LUT5 #(
    .INIT(32'h10FF1000)) 
     \FSM_sequential_rlast_sm_cs[0]_i_1 
       (.I0(rlast_sm_cs[2]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[0]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hAAFEFEFEAFFFFFFF)) 
     \FSM_sequential_rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(act_rd_burst_two),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(s_axi_rready),
        .I4(O3),
        .I5(axi_rd_burst),
        .O(\n_0_FSM_sequential_rlast_sm_cs[0]_i_2 ));
LUT5 #(
    .INIT(32'h01FF0100)) 
     \FSM_sequential_rlast_sm_cs[1]_i_1 
       (.I0(rlast_sm_cs[1]),
        .I1(rlast_sm_cs[0]),
        .I2(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I4(rlast_sm_cs[1]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'h0011001300130013)) 
     \FSM_sequential_rlast_sm_cs[1]_i_2 
       (.I0(axi_rd_burst),
        .I1(rlast_sm_cs[2]),
        .I2(act_rd_burst_two),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(O3),
        .I5(s_axi_rready),
        .O(\n_0_FSM_sequential_rlast_sm_cs[1]_i_2 ));
LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
     \FSM_sequential_rlast_sm_cs[2]_i_1 
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(act_rd_burst_two),
        .I2(axi_rd_burst),
        .I3(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ),
        .I4(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ),
        .I5(rlast_sm_cs[2]),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ));
LUT5 #(
    .INIT(32'h00010101)) 
     \FSM_sequential_rlast_sm_cs[2]_i_2 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .I2(rlast_sm_cs[2]),
        .I3(s_axi_rready),
        .I4(O3),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'h1000F1111000E000)) 
     \FSM_sequential_rlast_sm_cs[2]_i_3 
       (.I0(rlast_sm_cs[0]),
        .I1(rlast_sm_cs[1]),
        .I2(O3),
        .I3(s_axi_rready),
        .I4(rlast_sm_cs[2]),
        .I5(last_bram_addr),
        .O(\n_0_FSM_sequential_rlast_sm_cs[2]_i_3 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[0]_i_1 ),
        .Q(rlast_sm_cs[0]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[1]_i_1 ),
        .Q(rlast_sm_cs[1]),
        .R(O1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_rlast_sm_cs[2]_i_1 ),
        .Q(rlast_sm_cs[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \GEN_ARREADY.axi_aresetn_re_reg_i_1 
       (.I0(s_axi_aresetn),
        .I1(axi_aresetn_d1),
        .O(axi_aresetn_re));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h55555DDD00000000)) 
     \GEN_ARREADY.axi_arready_int_i_1 
       (.I0(\n_0_GEN_ARREADY.axi_arready_int_i_2 ),
        .I1(\n_0_GEN_ARREADY.axi_arready_int_reg ),
        .I2(s_axi_arvalid),
        .I3(axi_araddr_full),
        .I4(araddr_pipe_ld46_out),
        .I5(s_axi_aresetn),
        .O(\n_0_GEN_ARREADY.axi_arready_int_i_1 ));
LUT4 #(
    .INIT(16'h5515)) 
     \GEN_ARREADY.axi_arready_int_i_2 
       (.I0(axi_aresetn_re_reg),
        .I1(axi_araddr_full),
        .I2(bram_addr_ld_en),
        .I3(axi_early_arready_int),
        .O(\n_0_GEN_ARREADY.axi_arready_int_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_ARREADY.axi_arready_int_i_1 ),
        .Q(\n_0_GEN_ARREADY.axi_arready_int_reg ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0F800F0000000000)) 
     \GEN_ARREADY.axi_early_arready_int_i_1 
       (.I0(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ),
        .I1(rd_adv_buf79_out),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(brst_one),
        .I5(\n_0_GEN_ARREADY.axi_early_arready_int_i_3 ),
        .O(p_57_out));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \GEN_ARREADY.axi_early_arready_int_i_2 
       (.I0(brst_zero),
        .I1(end_brst_rd),
        .O(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ));
LUT6 #(
    .INIT(64'h0000000010000000)) 
     \GEN_ARREADY.axi_early_arready_int_i_3 
       (.I0(\n_0_GEN_ARREADY.axi_arready_int_reg ),
        .I1(rd_data_sm_cs[3]),
        .I2(s_axi_arvalid),
        .I3(axi_araddr_full),
        .I4(\n_0_GEN_ARREADY.axi_early_arready_int_i_4 ),
        .I5(n_16_I_WRAP_BRST),
        .O(\n_0_GEN_ARREADY.axi_early_arready_int_i_3 ));
LUT6 #(
    .INIT(64'h8080000000F0FFFF)) 
     \GEN_ARREADY.axi_early_arready_int_i_4 
       (.I0(O3),
        .I1(s_axi_rready),
        .I2(brst_one),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_GEN_ARREADY.axi_early_arready_int_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_ARREADY.axi_early_arready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_57_out),
        .Q(axi_early_arready_int),
        .R(O1));
LUT5 #(
    .INIT(32'hF7005500)) 
     \GEN_AR_DUAL.ar_active_i_1 
       (.I0(\n_0_GEN_AR_DUAL.ar_active_i_2 ),
        .I1(\n_0_GEN_AR_DUAL.ar_active_i_3 ),
        .I2(rd_data_sm_cs[3]),
        .I3(axi_aresetn_d2),
        .I4(ar_active),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_1 ));
LUT6 #(
    .INIT(64'hB0B0B0BBBBBBBBBB)) 
     \GEN_AR_DUAL.ar_active_i_2 
       (.I0(n_16_I_WRAP_BRST),
        .I1(last_bram_addr),
        .I2(rd_addr_sm_cs),
        .I3(s_axi_arvalid),
        .I4(axi_araddr_full),
        .I5(\n_0_GEN_AR_DUAL.ar_active_i_4 ),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_2 ));
LUT6 #(
    .INIT(64'h0F0F00000F4F0040)) 
     \GEN_AR_DUAL.ar_active_i_3 
       (.I0(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ),
        .I1(rd_adv_buf79_out),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(\n_0_GEN_AR_DUAL.ar_active_i_5 ),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \GEN_AR_DUAL.ar_active_i_4 
       (.I0(n_0_pend_rd_op_reg),
        .I1(no_ar_ack),
        .I2(ar_active),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_4 ));
LUT6 #(
    .INIT(64'h10F0100010F01F00)) 
     \GEN_AR_DUAL.ar_active_i_5 
       (.I0(n_17_I_WRAP_BRST),
        .I1(\n_0_GEN_AR_DUAL.ar_active_i_6 ),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(axi_rd_burst),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'h23FFFFFF)) 
     \GEN_AR_DUAL.ar_active_i_6 
       (.I0(axi_b2b_brst),
        .I1(brst_zero),
        .I2(end_brst_rd),
        .I3(O3),
        .I4(s_axi_rready),
        .O(\n_0_GEN_AR_DUAL.ar_active_i_6 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_DUAL.ar_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AR_DUAL.ar_active_i_1 ),
        .Q(ar_active),
        .R(1'b0));
LUT6 #(
    .INIT(64'h88888888A0008800)) 
     \GEN_AR_DUAL.rd_addr_sm_cs_i_1 
       (.I0(axi_aresetn_d2),
        .I1(s_axi_arvalid),
        .I2(rd_addr_sm_cs),
        .I3(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_2 ),
        .I4(axi_araddr_full),
        .I5(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_3 ),
        .O(\n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1 ));
FDRE \GEN_AR_DUAL.rd_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1 ),
        .Q(rd_addr_sm_cs),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[0]),
        .Q(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[10]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[11]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[12]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[1]),
        .Q(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[2]),
        .Q(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ),
        .R(1'b0));
LUT5 #(
    .INIT(32'hC0C00080)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_1 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_2 ),
        .I1(s_axi_arvalid),
        .I2(axi_aresetn_d2),
        .I3(axi_araddr_full),
        .I4(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_3 ),
        .O(araddr_pipe_ld46_out));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h5554)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_2 
       (.I0(rd_addr_sm_cs),
        .I1(ar_active),
        .I2(no_ar_ack),
        .I3(n_0_pend_rd_op_reg),
        .O(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_3 
       (.I0(last_bram_addr),
        .I1(n_16_I_WRAP_BRST),
        .O(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe[3]_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[3]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[4]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[5]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[6]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[7]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[8]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_araddr[9]),
        .Q(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h8A88)) 
     \GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 
       (.I0(s_axi_aresetn),
        .I1(araddr_pipe_ld46_out),
        .I2(bram_addr_ld_en),
        .I3(axi_araddr_full),
        .O(\n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_araddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1 ),
        .Q(axi_araddr_full),
        .R(1'b0));
LUT4 #(
    .INIT(16'h03AA)) 
     \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ),
        .I1(s_axi_arburst[1]),
        .I2(s_axi_arburst[0]),
        .I3(araddr_pipe_ld46_out),
        .O(\n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1 ),
        .Q(\n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arburst[0]),
        .Q(axi_arburst_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arburst[1]),
        .Q(axi_arburst_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arid),
        .Q(axi_arid_pipe),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 ),
        .I1(s_axi_arlen[4]),
        .O(p_15_out));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .I5(s_axi_arlen[3]),
        .O(\n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(p_15_out),
        .Q(axi_arlen_pipe_1_or_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[0]),
        .Q(axi_arlen_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[1]),
        .Q(axi_arlen_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[2]),
        .Q(axi_arlen_pipe[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[3]),
        .Q(axi_arlen_pipe[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[4]),
        .Q(axi_arlen_pipe[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[5]),
        .Q(axi_arlen_pipe[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[6]),
        .Q(axi_arlen_pipe[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arlen[7]),
        .Q(axi_arlen_pipe[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arsize[0]),
        .Q(axi_arsize_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arsize[1]),
        .Q(axi_arsize_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(araddr_pipe_ld46_out),
        .D(s_axi_arsize[2]),
        .Q(axi_arsize_pipe[2]),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00000E00)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I1(brst_cnt_max9_out),
        .I2(end_brst_rd_clr),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en),
        .O(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ));
LUT5 #(
    .INIT(32'h0000D000)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc),
        .I2(ar_active),
        .I3(brst_zero),
        .I4(n_0_pend_rd_op_reg),
        .O(brst_cnt_max9_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 ),
        .Q(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFF077F000F088F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 ),
        .I1(O7),
        .I2(n_6_I_WRAP_BRST),
        .I3(n_0_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I5(bram_addr_b[0]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 
       (.I0(O9),
        .I1(O10),
        .I2(O6),
        .I3(O4),
        .I4(O5),
        .I5(O8),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 ));
LUT6 #(
    .INIT(64'hFFF077F000F088F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0 ),
        .I1(bram_addr_b[0]),
        .I2(n_5_I_WRAP_BRST),
        .I3(n_0_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I5(bram_addr_b[1]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0 
       (.I0(O7),
        .I1(O8),
        .I2(n_27_I_WRAP_BRST),
        .I3(O9),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'hFDFDCDFD)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 
       (.I0(bram_addr_inc),
        .I1(n_0_curr_fixed_burst_reg_reg),
        .I2(curr_narrow_burst),
        .I3(narrow_bram_addr_inc),
        .I4(narrow_bram_addr_inc_d1),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ));
LUT5 #(
    .INIT(32'hFE32CE02)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(bram_addr_b[2]),
        .I1(n_14_I_WRAP_BRST),
        .I2(bram_addr_ld_en),
        .I3(n_13_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0 ),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[12]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0 ));
LUT5 #(
    .INIT(32'h0B08080B)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0 ),
        .I1(bram_addr_ld_en),
        .I2(n_14_I_WRAP_BRST),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I4(O4),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0 
       (.I0(\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[3]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT5 #(
    .INIT(32'hFC5C0CAC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(O4),
        .I1(n_12_I_WRAP_BRST),
        .I2(n_0_I_WRAP_BRST),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I4(O6),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ));
LUT6 #(
    .INIT(64'hFFF077F000F088F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(O4),
        .I1(O6),
        .I2(n_11_I_WRAP_BRST),
        .I3(n_0_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I5(O5),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFF077F000F088F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0 ),
        .I1(O5),
        .I2(n_10_I_WRAP_BRST),
        .I3(n_0_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I5(O10),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0 
       (.I0(O6),
        .I1(O4),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2__0 ));
LUT5 #(
    .INIT(32'hFC5C0CAC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(n_27_I_WRAP_BRST),
        .I1(n_9_I_WRAP_BRST),
        .I2(n_0_I_WRAP_BRST),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I4(O8),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ));
LUT6 #(
    .INIT(64'hFFF077F000F088F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(n_27_I_WRAP_BRST),
        .I1(O8),
        .I2(n_8_I_WRAP_BRST),
        .I3(n_0_I_WRAP_BRST),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I5(O9),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ));
LUT5 #(
    .INIT(32'hFC5C0CAC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2__0 ),
        .I1(n_7_I_WRAP_BRST),
        .I2(n_0_I_WRAP_BRST),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4 ),
        .I4(O7),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ),
        .Q(bram_addr_b[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ),
        .Q(bram_addr_b[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 ),
        .Q(bram_addr_b[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 ),
        .Q(O4),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ),
        .Q(O6),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ),
        .Q(O5),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ),
        .Q(O10),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ),
        .Q(O8),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ),
        .Q(O9),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ),
        .Q(O7),
        .R(1'b0));
LUT6 #(
    .INIT(64'hB8B800FFB8B8FF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1 ));
LUT6 #(
    .INIT(64'hBBAA0B0ABBAA0BAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19 ),
        .I1(curr_araddr_lsb[1]),
        .I2(curr_arsize[1]),
        .I3(curr_arsize[0]),
        .I4(curr_arsize[2]),
        .I5(curr_araddr_lsb[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_11 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1] ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[1]),
        .O(curr_araddr_lsb[1]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[0]),
        .O(curr_araddr_lsb[0]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[2]),
        .O(curr_araddr_lsb[2]));
LUT5 #(
    .INIT(32'hCCA000A0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_14 
       (.I0(s_axi_arsize[0]),
        .I1(axi_arsize_pipe[0]),
        .I2(s_axi_arsize[1]),
        .I3(axi_araddr_full),
        .I4(axi_arsize_pipe[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h3FEA002A)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_15 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20 ),
        .I1(curr_arsize[0]),
        .I2(curr_arsize[1]),
        .I3(curr_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_21 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15 ));
LUT5 #(
    .INIT(32'h0FCA00CA)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_16 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20__0 ),
        .I2(curr_arsize[1]),
        .I3(curr_arsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'hBCCC8000)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_17 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_21 ),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'hACACACC0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_18 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 ),
        .I2(curr_arsize[2]),
        .I3(curr_arsize[0]),
        .I4(curr_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1015)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_19 
       (.I0(curr_arsize[0]),
        .I1(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .I2(axi_araddr_full),
        .I3(s_axi_araddr[0]),
        .I4(curr_arsize[1]),
        .I5(curr_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_20 
       (.I0(curr_arlen[5]),
        .I1(curr_arlen[4]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_arlen[7]),
        .I5(curr_arlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_20 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_21 
       (.I0(curr_arlen[1]),
        .I1(curr_arlen[0]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_arlen[3]),
        .I5(curr_arlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_21 ));
LUT6 #(
    .INIT(64'hABBAAABAA88AAA8A)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 
       (.I0(narrow_burst_cnt_ld_mod[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0 ));
LUT5 #(
    .INIT(32'hFFC70000)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I4(narrow_burst_cnt_ld_mod[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 
       (.I0(bram_addr_inc),
        .I1(curr_narrow_burst),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFF4FFFFF44444444)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_bram_addr_inc),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[2]),
        .I4(curr_arsize[1]),
        .I5(bram_addr_ld_en),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ));
LUT6 #(
    .INIT(64'h55575557FFFF5557)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_6 
       (.I0(bram_addr_ld_en),
        .I1(curr_araddr_lsb[1]),
        .I2(curr_araddr_lsb[0]),
        .I3(curr_araddr_lsb[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14 ),
        .I5(curr_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_7 
       (.I0(axi_arburst_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 
       (.I0(axi_arburst_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arburst[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0 ));
LUT6 #(
    .INIT(64'h8888F0FF88880F00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ),
        .I1(narrow_burst_cnt_ld_mod[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ));
LUT6 #(
    .INIT(64'hAAAACFFFAAAA3000)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ),
        .I1(narrow_addr_int[0]),
        .I2(curr_narrow_burst),
        .I3(bram_addr_inc),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ));
LUT6 #(
    .INIT(64'hEBEBEBEBEBEBEBFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0 ));
LUT6 #(
    .INIT(64'h20202022EFEFEFEE)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 
       (.I0(narrow_burst_cnt_ld_mod[1]),
        .I1(p_1_out),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5__0 ));
LUT6 #(
    .INIT(64'h33233320FEEF3E2C)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 
       (.I0(curr_araddr_lsb[2]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_araddr_lsb[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0 ));
LUT6 #(
    .INIT(64'hFEFEFFCCFFFCFF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_10 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_21 ),
        .I4(curr_arsize[2]),
        .I5(curr_arsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ));
LUT6 #(
    .INIT(64'h000CEEEF000CEEEA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_22 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 ),
        .I2(curr_arsize[1]),
        .I3(curr_arsize[0]),
        .I4(curr_arsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ));
LUT6 #(
    .INIT(64'h4540000000000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_13 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ),
        .I1(axi_arburst_pipe[0]),
        .I2(axi_araddr_full),
        .I3(s_axi_arburst[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25__0 ),
        .I5(bram_addr_ld_en),
        .O(p_1_out));
LUT6 #(
    .INIT(64'hAAABFFFFFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_14__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26 ),
        .I1(curr_araddr_lsb[2]),
        .I2(curr_araddr_lsb[0]),
        .I3(curr_araddr_lsb[1]),
        .I4(bram_addr_ld_en),
        .I5(curr_wrap_burst),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_15__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_18 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_17 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_16 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15__0 ));
LUT4 #(
    .INIT(16'hFF01)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_16 
       (.I0(curr_araddr_lsb[2]),
        .I1(curr_arsize[0]),
        .I2(curr_arsize[1]),
        .I3(curr_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_18__0 
       (.I0(axi_arlen_pipe[0]),
        .I1(s_axi_arlen[0]),
        .I2(curr_arsize[0]),
        .I3(axi_arlen_pipe[1]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_19 
       (.I0(axi_arlen_pipe[4]),
        .I1(s_axi_arlen[4]),
        .I2(curr_arsize[0]),
        .I3(axi_arlen_pipe[5]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_20__0 
       (.I0(axi_arlen_pipe[2]),
        .I1(s_axi_arlen[2]),
        .I2(curr_arsize[0]),
        .I3(axi_arlen_pipe[3]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_21 
       (.I0(axi_arlen_pipe[6]),
        .I1(s_axi_arlen[6]),
        .I2(curr_arsize[0]),
        .I3(axi_arlen_pipe[7]),
        .I4(axi_araddr_full),
        .I5(s_axi_arlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_21 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 
       (.I0(curr_arlen[3]),
        .I1(curr_arlen[2]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_arlen[1]),
        .I5(curr_arlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 
       (.I0(curr_arlen[7]),
        .I1(curr_arlen[6]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_arlen[5]),
        .I5(curr_arlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 ));
LUT6 #(
    .INIT(64'h5555555555544454)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_25__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26 ),
        .I1(curr_araddr_lsb[2]),
        .I2(s_axi_araddr[0]),
        .I3(axi_araddr_full),
        .I4(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .I5(curr_araddr_lsb[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25__0 ));
LUT6 #(
    .INIT(64'h00000000B8308800)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_26 
       (.I0(axi_arsize_pipe[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[1]),
        .I3(axi_arsize_pipe[0]),
        .I4(s_axi_arsize[0]),
        .I5(curr_arsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT5 #(
    .INIT(32'h333E0002)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_27__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24__0 ),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27__0 ));
LUT4 #(
    .INIT(16'h4700)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_28__0 
       (.I0(axi_arsize_pipe[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_33 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28__0 ));
LUT5 #(
    .INIT(32'h03010303)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_29 
       (.I0(curr_araddr_lsb[2]),
        .I1(curr_arsize[1]),
        .I2(curr_arsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35__0 ),
        .I4(curr_araddr_lsb[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29 ));
LUT6 #(
    .INIT(64'h0000000000470000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_30 
       (.I0(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2] ),
        .I1(axi_araddr_full),
        .I2(s_axi_araddr[2]),
        .I3(curr_arsize[2]),
        .I4(curr_arsize[1]),
        .I5(curr_arsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_30 ));
LUT5 #(
    .INIT(32'hFCFCFEFC)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_31__0 
       (.I0(curr_araddr_lsb[2]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[1]),
        .I3(curr_araddr_lsb[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31__0 ));
LUT6 #(
    .INIT(64'h32003200FEEF3E0C)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_32__0 
       (.I0(curr_araddr_lsb[2]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[0]),
        .I3(curr_arsize[1]),
        .I4(curr_araddr_lsb[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_19 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32__0 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_33 
       (.I0(curr_arlen[0]),
        .I1(curr_arlen[1]),
        .I2(curr_arsize[1]),
        .I3(curr_arlen[2]),
        .I4(curr_arsize[0]),
        .I5(curr_arlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_33 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_34__0 
       (.I0(curr_arlen[4]),
        .I1(curr_arlen[5]),
        .I2(curr_arsize[1]),
        .I3(curr_arlen[6]),
        .I4(curr_arsize[0]),
        .I5(curr_arlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34__0 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT5 #(
    .INIT(32'h00053305)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_35__0 
       (.I0(s_axi_araddr[0]),
        .I1(\n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0] ),
        .I2(s_axi_arsize[0]),
        .I3(axi_araddr_full),
        .I4(axi_arsize_pipe[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35__0 ));
LUT6 #(
    .INIT(64'h8888F0FF8888F000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ),
        .I1(narrow_burst_cnt_ld_mod[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0300)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ));
LUT6 #(
    .INIT(64'hEBEBEBEBEBEBEBFB)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6__0 ));
LUT3 #(
    .INIT(8'hA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_7 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7 ));
LUT6 #(
    .INIT(64'hEFEFEFEE20202022)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 
       (.I0(narrow_burst_cnt_ld_mod[2]),
        .I1(p_1_out),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_10 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15__0 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_1 ),
        .Q(narrow_addr_int[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .Q(narrow_addr_int[1]),
        .R(O1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ),
        .Q(narrow_addr_int[2]),
        .R(O1));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_30 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31__0 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32__0 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1__0 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_22 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_33 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_22 ),
        .S(curr_arsize[2]));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5__0_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_17 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(O1));
LUT5 #(
    .INIT(32'h13FF1300)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0 
       (.I0(curr_arsize[0]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[1]),
        .I3(bram_addr_ld_en),
        .I4(narrow_burst_cnt_ld_reg[0]),
        .O(narrow_burst_cnt_ld_mod[0]));
LUT4 #(
    .INIT(16'h1F10)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0 
       (.I0(curr_arsize[2]),
        .I1(curr_arsize[1]),
        .I2(bram_addr_ld_en),
        .I3(narrow_burst_cnt_ld_reg[1]),
        .O(narrow_burst_cnt_ld_mod[1]));
LUT5 #(
    .INIT(32'h01FF0100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1__0 
       (.I0(curr_arsize[0]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[1]),
        .I3(bram_addr_ld_en),
        .I4(narrow_burst_cnt_ld_reg[2]),
        .O(narrow_burst_cnt_ld_mod[2]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[0]),
        .Q(narrow_burst_cnt_ld_reg[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[1]),
        .Q(narrow_burst_cnt_ld_reg[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_mod[2]),
        .Q(narrow_burst_cnt_ld_reg[2]),
        .R(O1));
LUT5 #(
    .INIT(32'h88888808)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ),
        .I1(s_axi_aresetn),
        .I2(n_0_axi_rlast_int_i_2),
        .I3(bram_addr_ld_en),
        .I4(n_0_pend_rd_op_reg),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ));
LUT6 #(
    .INIT(64'hFFFFDFFF0000DF00)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2__0 
       (.I0(curr_arsize[1]),
        .I1(curr_arsize[2]),
        .I2(curr_arsize[0]),
        .I3(n_0_brst_zero_i_2),
        .I4(curr_fixed_burst),
        .I5(curr_narrow_burst),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(bram_rddata_b[0]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 ),
        .Q(s_axi_rdata[0]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(bram_rddata_b[10]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 ),
        .Q(s_axi_rdata[10]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(bram_rddata_b[11]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 ),
        .Q(s_axi_rdata[11]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(bram_rddata_b[12]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 ),
        .Q(s_axi_rdata[12]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(bram_rddata_b[13]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 ),
        .Q(s_axi_rdata[13]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(bram_rddata_b[14]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 ),
        .Q(s_axi_rdata[14]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(bram_rddata_b[15]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 ),
        .Q(s_axi_rdata[15]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(bram_rddata_b[16]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 ),
        .Q(s_axi_rdata[16]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(bram_rddata_b[17]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 ),
        .Q(s_axi_rdata[17]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(bram_rddata_b[18]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 ),
        .Q(s_axi_rdata[18]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(bram_rddata_b[19]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 ),
        .Q(s_axi_rdata[19]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(bram_rddata_b[1]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 ),
        .Q(s_axi_rdata[1]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(bram_rddata_b[20]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 ),
        .Q(s_axi_rdata[20]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(bram_rddata_b[21]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 ),
        .Q(s_axi_rdata[21]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(bram_rddata_b[22]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 ),
        .Q(s_axi_rdata[22]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(bram_rddata_b[23]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 ),
        .Q(s_axi_rdata[23]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(bram_rddata_b[24]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 ),
        .Q(s_axi_rdata[24]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(bram_rddata_b[25]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 ),
        .Q(s_axi_rdata[25]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(bram_rddata_b[26]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 ),
        .Q(s_axi_rdata[26]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(bram_rddata_b[27]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 ),
        .Q(s_axi_rdata[27]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(bram_rddata_b[28]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 ),
        .Q(s_axi_rdata[28]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(bram_rddata_b[29]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 ),
        .Q(s_axi_rdata[29]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(bram_rddata_b[2]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 ),
        .Q(s_axi_rdata[2]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(bram_rddata_b[30]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 ),
        .Q(s_axi_rdata[30]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(rd_skid_buf[31]),
        .I1(bram_rddata_b[31]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 ),
        .Q(s_axi_rdata[31]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 
       (.I0(rd_skid_buf[32]),
        .I1(bram_rddata_b[32]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 ),
        .Q(s_axi_rdata[32]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 
       (.I0(rd_skid_buf[33]),
        .I1(bram_rddata_b[33]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 ),
        .Q(s_axi_rdata[33]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 
       (.I0(rd_skid_buf[34]),
        .I1(bram_rddata_b[34]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 ),
        .Q(s_axi_rdata[34]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 
       (.I0(rd_skid_buf[35]),
        .I1(bram_rddata_b[35]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 ),
        .Q(s_axi_rdata[35]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 
       (.I0(rd_skid_buf[36]),
        .I1(bram_rddata_b[36]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 ),
        .Q(s_axi_rdata[36]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 
       (.I0(rd_skid_buf[37]),
        .I1(bram_rddata_b[37]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 ),
        .Q(s_axi_rdata[37]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 
       (.I0(rd_skid_buf[38]),
        .I1(bram_rddata_b[38]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 ),
        .Q(s_axi_rdata[38]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 
       (.I0(rd_skid_buf[39]),
        .I1(bram_rddata_b[39]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 ),
        .Q(s_axi_rdata[39]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(bram_rddata_b[3]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 ),
        .Q(s_axi_rdata[3]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 
       (.I0(rd_skid_buf[40]),
        .I1(bram_rddata_b[40]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 ),
        .Q(s_axi_rdata[40]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 
       (.I0(rd_skid_buf[41]),
        .I1(bram_rddata_b[41]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 ),
        .Q(s_axi_rdata[41]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 
       (.I0(rd_skid_buf[42]),
        .I1(bram_rddata_b[42]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 ),
        .Q(s_axi_rdata[42]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 
       (.I0(rd_skid_buf[43]),
        .I1(bram_rddata_b[43]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 ),
        .Q(s_axi_rdata[43]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 
       (.I0(rd_skid_buf[44]),
        .I1(bram_rddata_b[44]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 ),
        .Q(s_axi_rdata[44]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 
       (.I0(rd_skid_buf[45]),
        .I1(bram_rddata_b[45]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 ),
        .Q(s_axi_rdata[45]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 
       (.I0(rd_skid_buf[46]),
        .I1(bram_rddata_b[46]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 ),
        .Q(s_axi_rdata[46]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 
       (.I0(rd_skid_buf[47]),
        .I1(bram_rddata_b[47]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 ),
        .Q(s_axi_rdata[47]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 
       (.I0(rd_skid_buf[48]),
        .I1(bram_rddata_b[48]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 ),
        .Q(s_axi_rdata[48]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 
       (.I0(rd_skid_buf[49]),
        .I1(bram_rddata_b[49]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 ),
        .Q(s_axi_rdata[49]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(bram_rddata_b[4]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 ),
        .Q(s_axi_rdata[4]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 
       (.I0(rd_skid_buf[50]),
        .I1(bram_rddata_b[50]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 ),
        .Q(s_axi_rdata[50]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 
       (.I0(rd_skid_buf[51]),
        .I1(bram_rddata_b[51]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 ),
        .Q(s_axi_rdata[51]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 
       (.I0(rd_skid_buf[52]),
        .I1(bram_rddata_b[52]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 ),
        .Q(s_axi_rdata[52]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 
       (.I0(rd_skid_buf[53]),
        .I1(bram_rddata_b[53]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 ),
        .Q(s_axi_rdata[53]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 
       (.I0(rd_skid_buf[54]),
        .I1(bram_rddata_b[54]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 ),
        .Q(s_axi_rdata[54]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 
       (.I0(rd_skid_buf[55]),
        .I1(bram_rddata_b[55]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 ),
        .Q(s_axi_rdata[55]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 
       (.I0(rd_skid_buf[56]),
        .I1(bram_rddata_b[56]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 ),
        .Q(s_axi_rdata[56]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 
       (.I0(rd_skid_buf[57]),
        .I1(bram_rddata_b[57]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 ),
        .Q(s_axi_rdata[57]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 
       (.I0(rd_skid_buf[58]),
        .I1(bram_rddata_b[58]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 ),
        .Q(s_axi_rdata[58]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 
       (.I0(rd_skid_buf[59]),
        .I1(bram_rddata_b[59]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 ),
        .Q(s_axi_rdata[59]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(bram_rddata_b[5]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 ),
        .Q(s_axi_rdata[5]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 
       (.I0(rd_skid_buf[60]),
        .I1(bram_rddata_b[60]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 ),
        .Q(s_axi_rdata[60]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 
       (.I0(rd_skid_buf[61]),
        .I1(bram_rddata_b[61]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 ),
        .Q(s_axi_rdata[61]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 
       (.I0(rd_skid_buf[62]),
        .I1(bram_rddata_b[62]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 ),
        .Q(s_axi_rdata[62]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
LUT4 #(
    .INIT(16'h40FF)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 
       (.I0(axi_b2b_brst),
        .I1(s_axi_rready),
        .I2(O2),
        .I3(s_axi_aresetn),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
LUT6 #(
    .INIT(64'h000C0E000C0F0C00)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_2 
       (.I0(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4 ),
        .I1(rd_adv_buf79_out),
        .I2(rd_data_sm_cs[3]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(axi_rdata_en));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3 
       (.I0(rd_skid_buf[63]),
        .I1(bram_rddata_b[63]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4 
       (.I0(act_rd_burst),
        .I1(act_rd_burst_two),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_3 ),
        .Q(s_axi_rdata[63]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(bram_rddata_b[6]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 ),
        .Q(s_axi_rdata[6]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(bram_rddata_b[7]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 ),
        .Q(s_axi_rdata[7]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(bram_rddata_b[8]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 ),
        .Q(s_axi_rdata[8]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(bram_rddata_b[9]),
        .I2(rddata_mux_sel),
        .O(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 ),
        .Q(s_axi_rdata[9]),
        .R(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf[63]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_adv_buf79_out),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[0]),
        .Q(rd_skid_buf[0]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[10]),
        .Q(rd_skid_buf[10]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[11]),
        .Q(rd_skid_buf[11]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[12]),
        .Q(rd_skid_buf[12]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[13]),
        .Q(rd_skid_buf[13]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[14]),
        .Q(rd_skid_buf[14]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[15]),
        .Q(rd_skid_buf[15]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[16]),
        .Q(rd_skid_buf[16]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[17]),
        .Q(rd_skid_buf[17]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[18]),
        .Q(rd_skid_buf[18]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[19]),
        .Q(rd_skid_buf[19]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[1]),
        .Q(rd_skid_buf[1]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[20]),
        .Q(rd_skid_buf[20]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[21]),
        .Q(rd_skid_buf[21]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[22]),
        .Q(rd_skid_buf[22]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[23]),
        .Q(rd_skid_buf[23]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[24]),
        .Q(rd_skid_buf[24]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[25]),
        .Q(rd_skid_buf[25]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[26]),
        .Q(rd_skid_buf[26]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[27]),
        .Q(rd_skid_buf[27]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[28]),
        .Q(rd_skid_buf[28]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[29]),
        .Q(rd_skid_buf[29]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[2]),
        .Q(rd_skid_buf[2]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[30]),
        .Q(rd_skid_buf[30]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[31]),
        .Q(rd_skid_buf[31]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[32] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[32]),
        .Q(rd_skid_buf[32]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[33] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[33]),
        .Q(rd_skid_buf[33]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[34] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[34]),
        .Q(rd_skid_buf[34]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[35] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[35]),
        .Q(rd_skid_buf[35]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[36] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[36]),
        .Q(rd_skid_buf[36]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[37] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[37]),
        .Q(rd_skid_buf[37]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[38] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[38]),
        .Q(rd_skid_buf[38]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[39] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[39]),
        .Q(rd_skid_buf[39]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[3]),
        .Q(rd_skid_buf[3]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[40] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[40]),
        .Q(rd_skid_buf[40]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[41] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[41]),
        .Q(rd_skid_buf[41]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[42] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[42]),
        .Q(rd_skid_buf[42]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[43] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[43]),
        .Q(rd_skid_buf[43]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[44] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[44]),
        .Q(rd_skid_buf[44]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[45] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[45]),
        .Q(rd_skid_buf[45]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[46] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[46]),
        .Q(rd_skid_buf[46]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[47] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[47]),
        .Q(rd_skid_buf[47]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[48] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[48]),
        .Q(rd_skid_buf[48]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[49] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[49]),
        .Q(rd_skid_buf[49]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[4]),
        .Q(rd_skid_buf[4]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[50] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[50]),
        .Q(rd_skid_buf[50]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[51] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[51]),
        .Q(rd_skid_buf[51]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[52] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[52]),
        .Q(rd_skid_buf[52]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[53] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[53]),
        .Q(rd_skid_buf[53]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[54] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[54]),
        .Q(rd_skid_buf[54]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[55] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[55]),
        .Q(rd_skid_buf[55]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[56] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[56]),
        .Q(rd_skid_buf[56]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[57] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[57]),
        .Q(rd_skid_buf[57]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[58] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[58]),
        .Q(rd_skid_buf[58]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[59] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[59]),
        .Q(rd_skid_buf[59]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[5]),
        .Q(rd_skid_buf[5]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[60] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[60]),
        .Q(rd_skid_buf[60]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[61] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[61]),
        .Q(rd_skid_buf[61]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[62] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[62]),
        .Q(rd_skid_buf[62]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[63] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[63]),
        .Q(rd_skid_buf[63]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[6]),
        .Q(rd_skid_buf[6]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[7]),
        .Q(rd_skid_buf[7]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[8]),
        .Q(rd_skid_buf[8]),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(bram_rddata_b[9]),
        .Q(rd_skid_buf[9]),
        .R(O1));
LUT6 #(
    .INIT(64'hF000E2000000E200)) 
     \GEN_RID.axi_rid_int[0]_i_1 
       (.I0(s_axi_rid),
        .I1(axi_rvalid_set),
        .I2(axi_rid_temp),
        .I3(s_axi_aresetn),
        .I4(\n_0_GEN_RID.axi_rid_int[0]_i_2 ),
        .I5(axi_b2b_brst),
        .O(\n_0_GEN_RID.axi_rid_int[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_RID.axi_rid_int[0]_i_2 
       (.I0(s_axi_rready),
        .I1(O2),
        .O(\n_0_GEN_RID.axi_rid_int[0]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID.axi_rid_int[0]_i_1 ),
        .Q(s_axi_rid),
        .R(1'b0));
LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
     \GEN_RID.axi_rid_temp2[0]_i_1 
       (.I0(axi_arid_pipe),
        .I1(axi_araddr_full),
        .I2(s_axi_arid),
        .I3(axi_rid_temp_full),
        .I4(bram_addr_ld_en),
        .I5(\n_0_GEN_RID.axi_rid_temp2_reg[0] ),
        .O(\n_0_GEN_RID.axi_rid_temp2[0]_i_1 ));
LUT6 #(
    .INIT(64'h08C8000008C800C0)) 
     \GEN_RID.axi_rid_temp2_full_i_1 
       (.I0(bram_addr_ld_en),
        .I1(s_axi_aresetn),
        .I2(axi_rid_temp2_full),
        .I3(p_4_out),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp_full_d1),
        .O(\n_0_GEN_RID.axi_rid_temp2_full_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_temp2_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID.axi_rid_temp2_full_i_1 ),
        .Q(axi_rid_temp2_full),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_temp2_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID.axi_rid_temp2[0]_i_1 ),
        .Q(\n_0_GEN_RID.axi_rid_temp2_reg[0] ),
        .R(O1));
LUT6 #(
    .INIT(64'hCFAACFCFC0AAC0C0)) 
     \GEN_RID.axi_rid_temp[0]_i_1 
       (.I0(axi_rid_temp2),
        .I1(\n_0_GEN_RID.axi_rid_temp2_reg[0] ),
        .I2(\n_0_GEN_RID.axi_rid_temp[0]_i_3 ),
        .I3(axi_rid_temp_full),
        .I4(bram_addr_ld_en),
        .I5(axi_rid_temp),
        .O(\n_0_GEN_RID.axi_rid_temp[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_RID.axi_rid_temp[0]_i_2 
       (.I0(axi_arid_pipe),
        .I1(axi_araddr_full),
        .I2(s_axi_arid),
        .O(axi_rid_temp2));
LUT6 #(
    .INIT(64'hA888AAAAA888A888)) 
     \GEN_RID.axi_rid_temp[0]_i_3 
       (.I0(axi_rid_temp2_full),
        .I1(axi_rvalid_set),
        .I2(\n_0_GEN_RID.axi_rid_int[0]_i_2 ),
        .I3(axi_b2b_brst),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp_full_d1),
        .O(\n_0_GEN_RID.axi_rid_temp[0]_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_temp_full_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rid_temp_full),
        .Q(axi_rid_temp_full_d1),
        .R(O1));
LUT6 #(
    .INIT(64'hF0F0F0E000F0C0C0)) 
     \GEN_RID.axi_rid_temp_full_i_1 
       (.I0(axi_rid_temp_full_d1),
        .I1(bram_addr_ld_en),
        .I2(s_axi_aresetn),
        .I3(p_4_out),
        .I4(axi_rid_temp_full),
        .I5(axi_rid_temp2_full),
        .O(\n_0_GEN_RID.axi_rid_temp_full_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'hEAAA)) 
     \GEN_RID.axi_rid_temp_full_i_2 
       (.I0(axi_rvalid_set),
        .I1(s_axi_rready),
        .I2(O2),
        .I3(axi_b2b_brst),
        .O(p_4_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_temp_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID.axi_rid_temp_full_i_1 ),
        .Q(axi_rid_temp_full),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_RID.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_RID.axi_rid_temp[0]_i_1 ),
        .Q(axi_rid_temp),
        .R(O1));
bram64_axi_bram_ctrl_0_1_wrap_brst_0 I_WRAP_BRST
       (.D({n_5_I_WRAP_BRST,n_6_I_WRAP_BRST,n_7_I_WRAP_BRST,n_8_I_WRAP_BRST,n_9_I_WRAP_BRST,n_10_I_WRAP_BRST,n_11_I_WRAP_BRST,n_12_I_WRAP_BRST}),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg (\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I1(n_0_axi_rd_burst_two_reg),
        .I10(axi_arsize_pipe),
        .I11(O10),
        .I2(O4),
        .I3(O5),
        .I4(O6),
        .I5(O3),
        .I6(n_0_pend_rd_op_reg),
        .I7(\n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg ),
        .I8(n_0_axi_arsize_pipe_max_reg),
        .I9(axi_arlen_pipe[3:0]),
        .O1(n_0_I_WRAP_BRST),
        .O2(n_13_I_WRAP_BRST),
        .O3(n_14_I_WRAP_BRST),
        .O4(n_16_I_WRAP_BRST),
        .O5(n_17_I_WRAP_BRST),
        .O6(n_19_I_WRAP_BRST),
        .O7(n_27_I_WRAP_BRST),
        .Q(rd_data_sm_cs),
        .SR(O1),
        .ar_active(ar_active),
        .axi_araddr_full(axi_araddr_full),
        .axi_aresetn_d2(axi_aresetn_d2),
        .axi_arlen_pipe_1_or_2(axi_arlen_pipe_1_or_2),
        .axi_b2b_brst(axi_b2b_brst),
        .axi_rd_burst(axi_rd_burst),
        .bram_addr_inc(bram_addr_inc),
        .bram_addr_inc8_out(bram_addr_inc8_out),
        .bram_addr_ld_en(bram_addr_ld_en),
        .brst_zero(brst_zero),
        .curr_arlen(curr_arlen[3:0]),
        .curr_arsize(curr_arsize),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .disable_b2b_brst(disable_b2b_brst),
        .end_brst_rd(end_brst_rd),
        .last_bram_addr(last_bram_addr),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc(narrow_bram_addr_inc),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .no_ar_ack(no_ar_ack),
        .rd_addr_sm_cs(rd_addr_sm_cs),
        .rd_adv_buf79_out(rd_adv_buf79_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:4]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rready(s_axi_rready));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     act_rd_burst_i_1
       (.I0(act_rd_burst),
        .I1(act_rd_burst_set),
        .I2(axi_rd_burst),
        .I3(bram_addr_ld_en),
        .I4(axi_rd_burst_two),
        .I5(n_0_act_rd_burst_i_3),
        .O(n_0_act_rd_burst_i_1));
LUT6 #(
    .INIT(64'h22000AAA22000A00)) 
     act_rd_burst_i_2
       (.I0(n_0_act_rd_burst_i_4),
        .I1(n_0_bram_en_int_i_11),
        .I2(n_0_act_rd_burst_i_5),
        .I3(rd_data_sm_cs[0]),
        .I4(rd_data_sm_cs[1]),
        .I5(n_0_brst_zero_i_2),
        .O(act_rd_burst_set));
LUT6 #(
    .INIT(64'h04000002FFFFFFFF)) 
     act_rd_burst_i_3
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(n_0_act_rd_burst_i_6),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(s_axi_aresetn),
        .O(n_0_act_rd_burst_i_3));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h1)) 
     act_rd_burst_i_4
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .O(n_0_act_rd_burst_i_4));
LUT2 #(
    .INIT(4'h1)) 
     act_rd_burst_i_5
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .O(n_0_act_rd_burst_i_5));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h1FFF)) 
     act_rd_burst_i_6
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst),
        .I2(s_axi_rready),
        .I3(O3),
        .O(n_0_act_rd_burst_i_6));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_i_1),
        .Q(act_rd_burst),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
     act_rd_burst_two_i_1
       (.I0(act_rd_burst_two),
        .I1(act_rd_burst_set),
        .I2(n_0_axi_rd_burst_two_reg),
        .I3(bram_addr_ld_en),
        .I4(axi_rd_burst_two),
        .I5(n_0_act_rd_burst_i_3),
        .O(n_0_act_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     act_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_act_rd_burst_two_i_1),
        .Q(act_rd_burst_two),
        .R(1'b0));
LUT6 #(
    .INIT(64'h08FF000008000000)) 
     axi_arsize_pipe_max_i_1
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .I3(araddr_pipe_ld46_out),
        .I4(s_axi_aresetn),
        .I5(n_0_axi_arsize_pipe_max_reg),
        .O(n_0_axi_arsize_pipe_max_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_arsize_pipe_max_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_arsize_pipe_max_i_1),
        .Q(n_0_axi_arsize_pipe_max_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h2F20)) 
     axi_b2b_brst_i_1
       (.I0(n_17_I_WRAP_BRST),
        .I1(rd_data_sm_cs[2]),
        .I2(n_0_axi_b2b_brst_i_3),
        .I3(axi_b2b_brst),
        .O(n_0_axi_b2b_brst_i_1));
LUT6 #(
    .INIT(64'h0000200000002808)) 
     axi_b2b_brst_i_3
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(axi_b2b_brst),
        .I4(rd_data_sm_cs[3]),
        .I5(n_0_bram_en_int_i_11),
        .O(n_0_axi_b2b_brst_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_b2b_brst_i_1),
        .Q(axi_b2b_brst),
        .R(O1));
LUT5 #(
    .INIT(32'hC0C000A0)) 
     axi_rd_burst_i_1
       (.I0(axi_rd_burst),
        .I1(axi_rd_burst0),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(bram_addr_ld_en),
        .O(n_0_axi_rd_burst_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     axi_rd_burst_i_2
       (.I0(n_0_axi_rd_burst_i_3),
        .I1(curr_arlen[4]),
        .I2(curr_arlen[7]),
        .I3(curr_arlen[1]),
        .I4(curr_arlen[2]),
        .I5(curr_arlen[3]),
        .O(axi_rd_burst0));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'hFFFACCFA)) 
     axi_rd_burst_i_3
       (.I0(s_axi_arlen[5]),
        .I1(axi_arlen_pipe[5]),
        .I2(s_axi_arlen[6]),
        .I3(axi_araddr_full),
        .I4(axi_arlen_pipe[6]),
        .O(n_0_axi_rd_burst_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_i_1),
        .Q(axi_rd_burst),
        .R(1'b0));
LUT5 #(
    .INIT(32'hC0C000A0)) 
     axi_rd_burst_two_i_1
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(axi_rd_burst_two),
        .I2(s_axi_aresetn),
        .I3(brst_zero),
        .I4(bram_addr_ld_en),
        .O(n_0_axi_rd_burst_two_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rd_burst_two_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rd_burst_two_i_1),
        .Q(n_0_axi_rd_burst_two_reg),
        .R(1'b0));
LUT4 #(
    .INIT(16'hAA08)) 
     axi_rlast_int_i_1
       (.I0(s_axi_aresetn),
        .I1(O2),
        .I2(s_axi_rready),
        .I3(n_0_axi_rlast_int_i_2),
        .O(n_0_axi_rlast_int_i_1));
LUT6 #(
    .INIT(64'h00000000F4040404)) 
     axi_rlast_int_i_2
       (.I0(O2),
        .I1(rlast_sm_cs[0]),
        .I2(rlast_sm_cs[1]),
        .I3(s_axi_rready),
        .I4(O3),
        .I5(rlast_sm_cs[2]),
        .O(n_0_axi_rlast_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     axi_rlast_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rlast_int_i_1),
        .Q(O2),
        .R(1'b0));
LUT5 #(
    .INIT(32'hE0E000E0)) 
     axi_rvalid_clr_ok_i_1
       (.I0(axi_rvalid_clr_ok),
        .I1(n_0_axi_rvalid_clr_ok_i_2),
        .I2(s_axi_aresetn),
        .I3(bram_addr_ld_en),
        .I4(n_16_I_WRAP_BRST),
        .O(n_0_axi_rvalid_clr_ok_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF4440)) 
     axi_rvalid_clr_ok_i_2
       (.I0(axi_rvalid_clr_ok),
        .I1(last_bram_addr),
        .I2(disable_b2b_brst),
        .I3(n_0_disable_b2b_brst_i_2),
        .I4(n_0_axi_rvalid_clr_ok_i_3),
        .I5(bram_addr_ld_en),
        .O(n_0_axi_rvalid_clr_ok_i_2));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     axi_rvalid_clr_ok_i_3
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(n_0_axi_rvalid_clr_ok_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_clr_ok_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_clr_ok_i_1),
        .Q(axi_rvalid_clr_ok),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00E0E0E0E0E0E0E0)) 
     axi_rvalid_int_i_1
       (.I0(O3),
        .I1(axi_rvalid_set),
        .I2(s_axi_aresetn),
        .I3(axi_rvalid_clr_ok),
        .I4(O2),
        .I5(s_axi_rready),
        .O(n_0_axi_rvalid_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_rvalid_int_i_1),
        .Q(O3),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     axi_rvalid_set_i_1
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .O(axi_rvalid_set_cmb));
FDRE #(
    .INIT(1'b0)) 
     axi_rvalid_set_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFFABFB0000A808)) 
     bram_en_int_i_1
       (.I0(n_0_bram_en_int_i_2),
        .I1(n_0_bram_en_int_i_3),
        .I2(rd_data_sm_cs[2]),
        .I3(n_0_bram_en_int_i_4),
        .I4(rd_data_sm_cs[3]),
        .I5(bram_en_b),
        .O(n_0_bram_en_int_i_1));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0111)) 
     bram_en_int_i_10
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(s_axi_rready),
        .I3(O3),
        .O(n_0_bram_en_int_i_10));
LUT6 #(
    .INIT(64'h77FF777FFFFFFFFF)) 
     bram_en_int_i_11
       (.I0(s_axi_rready),
        .I1(O3),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .I4(axi_b2b_brst),
        .I5(n_17_I_WRAP_BRST),
        .O(n_0_bram_en_int_i_11));
LUT6 #(
    .INIT(64'h57FFFFFFFFFFFFFF)) 
     bram_en_int_i_12
       (.I0(bram_addr_ld_en),
        .I1(act_rd_burst),
        .I2(act_rd_burst_two),
        .I3(O3),
        .I4(s_axi_rready),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_bram_en_int_i_12));
LUT6 #(
    .INIT(64'hF3F0FFF0AAAAAAAA)) 
     bram_en_int_i_13
       (.I0(n_0_axi_rd_burst_two_reg),
        .I1(axi_b2b_brst),
        .I2(brst_zero),
        .I3(end_brst_rd),
        .I4(rd_adv_buf79_out),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_bram_en_int_i_13));
LUT6 #(
    .INIT(64'hDD00DDDDF500F500)) 
     bram_en_int_i_2
       (.I0(n_0_bram_en_int_i_5),
        .I1(bram_addr_inc8_out),
        .I2(bram_addr_ld_en),
        .I3(n_0_bram_en_int_i_7),
        .I4(n_0_bram_en_int_i_8),
        .I5(n_0_bram_en_int_i_9),
        .O(n_0_bram_en_int_i_2));
LUT6 #(
    .INIT(64'h70FFFFFF70FFFF00)) 
     bram_en_int_i_3
       (.I0(brst_one),
        .I1(n_0_bram_en_int_i_10),
        .I2(n_0_bram_en_int_i_11),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(bram_addr_ld_en),
        .O(n_0_bram_en_int_i_3));
LUT6 #(
    .INIT(64'h4747474733330333)) 
     bram_en_int_i_4
       (.I0(n_0_bram_en_int_i_8),
        .I1(rd_data_sm_cs[1]),
        .I2(n_0_bram_en_int_i_12),
        .I3(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ),
        .I4(rd_adv_buf79_out),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_bram_en_int_i_4));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h2)) 
     bram_en_int_i_5
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .O(n_0_bram_en_int_i_5));
LUT6 #(
    .INIT(64'h0055FF330055FFF0)) 
     bram_en_int_i_7
       (.I0(n_0_bram_en_int_i_13),
        .I1(n_0_act_rd_burst_i_5),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_bram_en_int_i_7));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h007F)) 
     bram_en_int_i_8
       (.I0(n_0_pend_rd_op_reg),
        .I1(O3),
        .I2(s_axi_rready),
        .I3(bram_addr_ld_en),
        .O(n_0_bram_en_int_i_8));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     bram_en_int_i_9
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[0]),
        .O(n_0_bram_en_int_i_9));
FDRE #(
    .INIT(1'b0)) 
     bram_en_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_bram_en_int_i_1),
        .Q(bram_en_b),
        .R(O1));
LUT6 #(
    .INIT(64'hB8B800FFB8B8FF00)) 
     \brst_cnt[0]_i_1 
       (.I0(axi_arlen_pipe[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .I3(bram_addr_inc),
        .I4(bram_addr_ld_en),
        .I5(\n_0_brst_cnt_reg[0] ),
        .O(\n_0_brst_cnt[0]_i_1 ));
LUT5 #(
    .INIT(32'hAACFAA30)) 
     \brst_cnt[1]_i_1 
       (.I0(curr_arlen[1]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(bram_addr_inc),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[1] ),
        .O(\n_0_brst_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0300)) 
     \brst_cnt[2]_i_1 
       (.I0(curr_arlen[2]),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(bram_addr_inc),
        .I4(bram_addr_ld_en),
        .I5(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[2]_i_1 ));
LUT5 #(
    .INIT(32'hAA3FAAC0)) 
     \brst_cnt[3]_i_1 
       (.I0(curr_arlen[3]),
        .I1(\n_0_brst_cnt[3]_i_2 ),
        .I2(bram_addr_inc),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \brst_cnt[3]_i_2 
       (.I0(\n_0_brst_cnt_reg[0] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[2] ),
        .O(\n_0_brst_cnt[3]_i_2 ));
LUT5 #(
    .INIT(32'hAA3FAAC0)) 
     \brst_cnt[4]_i_1 
       (.I0(curr_arlen[4]),
        .I1(\n_0_brst_cnt[4]_i_3 ),
        .I2(bram_addr_inc),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \brst_cnt[4]_i_2 
       (.I0(axi_arlen_pipe[4]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[4]),
        .O(curr_arlen[4]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \brst_cnt[4]_i_3 
       (.I0(\n_0_brst_cnt_reg[2] ),
        .I1(\n_0_brst_cnt_reg[1] ),
        .I2(\n_0_brst_cnt_reg[0] ),
        .I3(\n_0_brst_cnt_reg[3] ),
        .O(\n_0_brst_cnt[4]_i_3 ));
LUT5 #(
    .INIT(32'hAA3FAAC0)) 
     \brst_cnt[5]_i_1 
       (.I0(curr_arlen[5]),
        .I1(\n_0_brst_cnt[5]_i_3 ),
        .I2(bram_addr_inc),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \brst_cnt[5]_i_2 
       (.I0(axi_arlen_pipe[5]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[5]),
        .O(curr_arlen[5]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \brst_cnt[5]_i_3 
       (.I0(\n_0_brst_cnt_reg[3] ),
        .I1(\n_0_brst_cnt_reg[0] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[2] ),
        .I4(\n_0_brst_cnt_reg[4] ),
        .O(\n_0_brst_cnt[5]_i_3 ));
LUT5 #(
    .INIT(32'hAA3FAAC0)) 
     \brst_cnt[6]_i_1 
       (.I0(curr_arlen[6]),
        .I1(\n_0_brst_cnt[7]_i_3 ),
        .I2(bram_addr_inc),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[6] ),
        .O(\n_0_brst_cnt[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \brst_cnt[6]_i_2 
       (.I0(axi_arlen_pipe[6]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[6]),
        .O(curr_arlen[6]));
LUT6 #(
    .INIT(64'hAAAACFFFAAAA3000)) 
     \brst_cnt[7]_i_1 
       (.I0(curr_arlen[7]),
        .I1(\n_0_brst_cnt_reg[6] ),
        .I2(\n_0_brst_cnt[7]_i_3 ),
        .I3(bram_addr_inc),
        .I4(bram_addr_ld_en),
        .I5(\n_0_brst_cnt_reg[7] ),
        .O(\n_0_brst_cnt[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \brst_cnt[7]_i_2 
       (.I0(axi_arlen_pipe[7]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[7]),
        .O(curr_arlen[7]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \brst_cnt[7]_i_3 
       (.I0(\n_0_brst_cnt_reg[4] ),
        .I1(\n_0_brst_cnt_reg[2] ),
        .I2(\n_0_brst_cnt_reg[1] ),
        .I3(\n_0_brst_cnt_reg[0] ),
        .I4(\n_0_brst_cnt_reg[3] ),
        .I5(\n_0_brst_cnt_reg[5] ),
        .O(\n_0_brst_cnt[7]_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     brst_cnt_max_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .Q(brst_cnt_max_d1),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[0]_i_1 ),
        .Q(\n_0_brst_cnt_reg[0] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[1]_i_1 ),
        .Q(\n_0_brst_cnt_reg[1] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[2]_i_1 ),
        .Q(\n_0_brst_cnt_reg[2] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[3]_i_1 ),
        .Q(\n_0_brst_cnt_reg[3] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[4]_i_1 ),
        .Q(\n_0_brst_cnt_reg[4] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[5]_i_1 ),
        .Q(\n_0_brst_cnt_reg[5] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[6]_i_1 ),
        .Q(\n_0_brst_cnt_reg[6] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_brst_cnt[7]_i_1 ),
        .Q(\n_0_brst_cnt_reg[7] ),
        .R(O1));
LUT6 #(
    .INIT(64'h0E000E0000000E00)) 
     brst_one_i_1
       (.I0(brst_one),
        .I1(brst_one0),
        .I2(n_0_brst_one_i_3),
        .I3(s_axi_aresetn),
        .I4(bram_addr_ld_en),
        .I5(axi_rd_burst_two),
        .O(n_0_brst_one_i_1));
LUT6 #(
    .INIT(64'hF000F888F000F000)) 
     brst_one_i_2
       (.I0(bram_addr_inc),
        .I1(n_0_brst_one_i_5),
        .I2(axi_rd_burst_two),
        .I3(bram_addr_ld_en),
        .I4(\n_0_brst_cnt_reg[0] ),
        .I5(\n_0_brst_cnt_reg[1] ),
        .O(brst_one0));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     brst_one_i_3
       (.I0(bram_addr_inc),
        .I1(n_0_brst_one_i_5),
        .I2(\n_0_brst_cnt_reg[0] ),
        .I3(\n_0_brst_cnt_reg[1] ),
        .O(n_0_brst_one_i_3));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h00E2)) 
     brst_one_i_4
       (.I0(s_axi_arlen[0]),
        .I1(axi_araddr_full),
        .I2(axi_arlen_pipe[0]),
        .I3(axi_rd_burst0),
        .O(axi_rd_burst_two));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     brst_one_i_5
       (.I0(\n_0_brst_cnt_reg[2] ),
        .I1(\n_0_brst_cnt_reg[3] ),
        .I2(\n_0_brst_cnt_reg[6] ),
        .I3(\n_0_brst_cnt_reg[7] ),
        .I4(\n_0_brst_cnt_reg[5] ),
        .I5(\n_0_brst_cnt_reg[4] ),
        .O(n_0_brst_one_i_5));
FDRE #(
    .INIT(1'b0)) 
     brst_one_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_one_i_1),
        .Q(brst_one),
        .R(1'b0));
LUT4 #(
    .INIT(16'h00E0)) 
     brst_zero_i_1
       (.I0(brst_zero),
        .I1(n_0_brst_one_i_3),
        .I2(s_axi_aresetn),
        .I3(n_0_brst_zero_i_2),
        .O(n_0_brst_zero_i_1));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hA8AAA888)) 
     brst_zero_i_2
       (.I0(bram_addr_ld_en),
        .I1(axi_rd_burst0),
        .I2(axi_arlen_pipe[0]),
        .I3(axi_araddr_full),
        .I4(s_axi_arlen[0]),
        .O(n_0_brst_zero_i_2));
FDRE #(
    .INIT(1'b0)) 
     brst_zero_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_brst_zero_i_1),
        .Q(brst_zero),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h00053305)) 
     curr_fixed_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_fixed_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_fixed_burst),
        .Q(n_0_curr_fixed_burst_reg_reg),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h000ACC0A)) 
     curr_wrap_burst_reg_i_1
       (.I0(s_axi_arburst[1]),
        .I1(axi_arburst_pipe[1]),
        .I2(s_axi_arburst[0]),
        .I3(axi_araddr_full),
        .I4(axi_arburst_pipe[0]),
        .O(curr_wrap_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(O1));
LUT6 #(
    .INIT(64'hEEEAAEAAEEEAEEEE)) 
     disable_b2b_brst_i_1
       (.I0(n_0_disable_b2b_brst_i_2),
        .I1(disable_b2b_brst),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[0]),
        .O(disable_b2b_brst_cmb));
LUT6 #(
    .INIT(64'h0002220200000000)) 
     disable_b2b_brst_i_2
       (.I0(n_0_disable_b2b_brst_i_3),
        .I1(n_0_disable_b2b_brst_i_4),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_disable_b2b_brst_i_2));
LUT6 #(
    .INIT(64'h0000AAAA0000FFCF)) 
     disable_b2b_brst_i_3
       (.I0(disable_b2b_brst),
        .I1(rd_data_sm_cs[1]),
        .I2(axi_rd_burst),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(n_0_disable_b2b_brst_i_3));
LUT6 #(
    .INIT(64'h00000000FF010000)) 
     disable_b2b_brst_i_4
       (.I0(end_brst_rd),
        .I1(brst_zero),
        .I2(brst_one),
        .I3(rd_adv_buf79_out),
        .I4(rd_data_sm_cs[1]),
        .I5(disable_b2b_brst),
        .O(n_0_disable_b2b_brst_i_4));
FDRE #(
    .INIT(1'b0)) 
     disable_b2b_brst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(O1));
LUT6 #(
    .INIT(64'hFFEEFFEF11000000)) 
     end_brst_rd_clr_i_1
       (.I0(rd_data_sm_cs[3]),
        .I1(rd_data_sm_cs[1]),
        .I2(bram_addr_ld_en),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[0]),
        .I5(end_brst_rd_clr),
        .O(n_0_end_brst_rd_clr_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_clr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_clr_i_1),
        .Q(end_brst_rd_clr),
        .R(O1));
LUT5 #(
    .INIT(32'h0040F040)) 
     end_brst_rd_i_1
       (.I0(brst_cnt_max_d1),
        .I1(\n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .I2(s_axi_aresetn),
        .I3(end_brst_rd),
        .I4(end_brst_rd_clr),
        .O(n_0_end_brst_rd_i_1));
FDRE #(
    .INIT(1'b0)) 
     end_brst_rd_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_end_brst_rd_i_1),
        .Q(end_brst_rd),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFBAAAAAAAAAAAAFB)) 
     last_bram_addr_i_1
       (.I0(n_0_brst_one_i_3),
        .I1(n_0_last_bram_addr_i_2),
        .I2(n_0_last_bram_addr_i_3),
        .I3(rd_data_sm_cs[2]),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(last_bram_addr0));
LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
     last_bram_addr_i_2
       (.I0(axi_rd_burst),
        .I1(n_0_axi_rd_burst_two_reg),
        .I2(O3),
        .I3(s_axi_rready),
        .I4(rd_data_sm_cs[3]),
        .I5(rd_data_sm_cs[2]),
        .O(n_0_last_bram_addr_i_2));
LUT6 #(
    .INIT(64'h2222222200020000)) 
     last_bram_addr_i_3
       (.I0(n_0_last_bram_addr_i_4),
        .I1(n_0_brst_zero_i_2),
        .I2(axi_rd_burst),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(n_0_pend_rd_op_reg),
        .I5(bram_addr_ld_en),
        .O(n_0_last_bram_addr_i_3));
LUT6 #(
    .INIT(64'h3111200031110000)) 
     last_bram_addr_i_4
       (.I0(rd_data_sm_cs[2]),
        .I1(rd_data_sm_cs[3]),
        .I2(s_axi_rready),
        .I3(O3),
        .I4(bram_addr_ld_en),
        .I5(n_0_pend_rd_op_reg),
        .O(n_0_last_bram_addr_i_4));
FDRE #(
    .INIT(1'b0)) 
     last_bram_addr_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(O1));
LUT6 #(
    .INIT(64'hAA2AAA2AEA2AAA2A)) 
     no_ar_ack_i_1
       (.I0(no_ar_ack),
        .I1(n_19_I_WRAP_BRST),
        .I2(rd_data_sm_cs[0]),
        .I3(rd_data_sm_cs[1]),
        .I4(bram_addr_ld_en),
        .I5(rd_adv_buf79_out),
        .O(n_0_no_ar_ack_i_1));
FDRE #(
    .INIT(1'b0)) 
     no_ar_ack_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_no_ar_ack_i_1),
        .Q(no_ar_ack),
        .R(O1));
LUT6 #(
    .INIT(64'hFFFFBBAB000088A8)) 
     pend_rd_op_i_1
       (.I0(n_0_pend_rd_op_i_2),
        .I1(n_0_pend_rd_op_i_3),
        .I2(rd_data_sm_cs[2]),
        .I3(n_0_pend_rd_op_i_4),
        .I4(rd_data_sm_cs[3]),
        .I5(n_0_pend_rd_op_reg),
        .O(n_0_pend_rd_op_i_1));
LUT6 #(
    .INIT(64'h3FFF20803FF02080)) 
     pend_rd_op_i_2
       (.I0(n_0_pend_rd_op_i_5),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(bram_addr_ld_en),
        .I5(n_0_act_rd_burst_i_5),
        .O(n_0_pend_rd_op_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFF88888000)) 
     pend_rd_op_i_3
       (.I0(n_0_pend_rd_op_i_6),
        .I1(rd_data_sm_cs[0]),
        .I2(bram_addr_ld_en),
        .I3(n_0_act_rd_burst_i_5),
        .I4(n_0_pend_rd_op_reg),
        .I5(n_0_pend_rd_op_i_7),
        .O(n_0_pend_rd_op_i_3));
LUT6 #(
    .INIT(64'h0FFFAAAAAAAACCCC)) 
     pend_rd_op_i_4
       (.I0(n_0_pend_rd_op_i_8),
        .I1(n_0_pend_rd_op_i_9),
        .I2(n_0_pend_rd_op_reg),
        .I3(rd_adv_buf79_out),
        .I4(rd_data_sm_cs[1]),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_pend_rd_op_i_4));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT2 #(
    .INIT(4'h8)) 
     pend_rd_op_i_5
       (.I0(ar_active),
        .I1(end_brst_rd),
        .O(n_0_pend_rd_op_i_5));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT2 #(
    .INIT(4'h1)) 
     pend_rd_op_i_6
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[2]),
        .O(n_0_pend_rd_op_i_6));
LUT6 #(
    .INIT(64'h0C080C000C000C00)) 
     pend_rd_op_i_7
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[2]),
        .I3(bram_addr_ld_en),
        .I4(O2),
        .I5(n_0_pend_rd_op_reg),
        .O(n_0_pend_rd_op_i_7));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'h07)) 
     pend_rd_op_i_8
       (.I0(end_brst_rd),
        .I1(ar_active),
        .I2(bram_addr_ld_en),
        .O(n_0_pend_rd_op_i_8));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT3 #(
    .INIT(8'h15)) 
     pend_rd_op_i_9
       (.I0(bram_addr_ld_en),
        .I1(O2),
        .I2(n_0_pend_rd_op_reg),
        .O(n_0_pend_rd_op_i_9));
FDRE #(
    .INIT(1'b0)) 
     pend_rd_op_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_pend_rd_op_i_1),
        .Q(n_0_pend_rd_op_reg),
        .R(O1));
LUT6 #(
    .INIT(64'h0F001F1F0F001010)) 
     \rd_data_sm_cs[0]_i_1 
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_data_sm_cs[3]),
        .I3(\n_0_rd_data_sm_cs[0]_i_2 ),
        .I4(rd_data_sm_cs[2]),
        .I5(\n_0_rd_data_sm_cs[0]_i_3 ),
        .O(\n_0_rd_data_sm_cs[0]_i_1 ));
LUT6 #(
    .INIT(64'hF3C0B3B0FFFFFFFF)) 
     \rd_data_sm_cs[0]_i_2 
       (.I0(n_0_pend_rd_op_reg),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_adv_buf79_out),
        .I3(\n_0_GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_4 ),
        .I4(bram_addr_ld_en),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_2 ));
LUT6 #(
    .INIT(64'h8080808FFFFFFFFF)) 
     \rd_data_sm_cs[0]_i_3 
       (.I0(s_axi_rready),
        .I1(O3),
        .I2(rd_data_sm_cs[1]),
        .I3(n_0_axi_rd_burst_two_reg),
        .I4(axi_rd_burst),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[0]_i_3 ));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     \rd_data_sm_cs[1]_i_1 
       (.I0(\n_0_rd_data_sm_cs[1]_i_2 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\n_0_rd_data_sm_cs[1]_i_3 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[1]_i_1 ));
LUT6 #(
    .INIT(64'h8F008FF08F0080F0)) 
     \rd_data_sm_cs[1]_i_2 
       (.I0(n_17_I_WRAP_BRST),
        .I1(rd_adv_buf79_out),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(axi_rd_burst),
        .O(\n_0_rd_data_sm_cs[1]_i_2 ));
LUT6 #(
    .INIT(64'h57FF57FFFFFF0000)) 
     \rd_data_sm_cs[1]_i_3 
       (.I0(rd_adv_buf79_out),
        .I1(act_rd_burst_two),
        .I2(act_rd_burst),
        .I3(bram_addr_ld_en),
        .I4(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ),
        .I5(rd_data_sm_cs[0]),
        .O(\n_0_rd_data_sm_cs[1]_i_3 ));
LUT6 #(
    .INIT(64'h0000000022E2EEE2)) 
     \rd_data_sm_cs[2]_i_1 
       (.I0(\n_0_rd_data_sm_cs[2]_i_2 ),
        .I1(rd_data_sm_cs[2]),
        .I2(\n_0_rd_data_sm_cs[2]_i_3 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[2]_i_1 ));
LUT6 #(
    .INIT(64'h70F0700070F07F00)) 
     \rd_data_sm_cs[2]_i_2 
       (.I0(n_17_I_WRAP_BRST),
        .I1(rd_adv_buf79_out),
        .I2(rd_data_sm_cs[1]),
        .I3(rd_data_sm_cs[0]),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(axi_rd_burst),
        .O(\n_0_rd_data_sm_cs[2]_i_2 ));
LUT6 #(
    .INIT(64'h57FF000057FFFFFF)) 
     \rd_data_sm_cs[2]_i_3 
       (.I0(rd_adv_buf79_out),
        .I1(act_rd_burst_two),
        .I2(act_rd_burst),
        .I3(bram_addr_ld_en),
        .I4(rd_data_sm_cs[0]),
        .I5(\n_0_GEN_ARREADY.axi_early_arready_int_i_2 ),
        .O(\n_0_rd_data_sm_cs[2]_i_3 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFE0000)) 
     \rd_data_sm_cs[3]_i_1 
       (.I0(rd_adv_buf79_out),
        .I1(rd_data_sm_cs[0]),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[3]),
        .I5(\n_0_rd_data_sm_cs[3]_i_3 ),
        .O(\n_0_rd_data_sm_cs[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \rd_data_sm_cs[3]_i_2 
       (.I0(\n_0_rd_data_sm_cs[3]_i_4 ),
        .I1(rd_data_sm_cs[2]),
        .I2(rd_data_sm_cs[3]),
        .O(\n_0_rd_data_sm_cs[3]_i_2 ));
LUT6 #(
    .INIT(64'hFCFFBBBBB8FFBB88)) 
     \rd_data_sm_cs[3]_i_3 
       (.I0(rd_adv_buf79_out),
        .I1(rd_data_sm_cs[2]),
        .I2(\n_0_rd_data_sm_cs[3]_i_5 ),
        .I3(rd_data_sm_cs[1]),
        .I4(rd_data_sm_cs[0]),
        .I5(bram_addr_ld_en),
        .O(\n_0_rd_data_sm_cs[3]_i_3 ));
LUT6 #(
    .INIT(64'h4440888800008888)) 
     \rd_data_sm_cs[3]_i_4 
       (.I0(rd_data_sm_cs[1]),
        .I1(rd_data_sm_cs[0]),
        .I2(act_rd_burst_two),
        .I3(act_rd_burst),
        .I4(rd_adv_buf79_out),
        .I5(bram_addr_ld_en),
        .O(\n_0_rd_data_sm_cs[3]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'hDCFFFFFF)) 
     \rd_data_sm_cs[3]_i_5 
       (.I0(axi_b2b_brst),
        .I1(brst_zero),
        .I2(end_brst_rd),
        .I3(s_axi_rready),
        .I4(O3),
        .O(\n_0_rd_data_sm_cs[3]_i_5 ));
FDRE \rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[0]_i_1 ),
        .Q(rd_data_sm_cs[0]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[1]_i_1 ),
        .Q(rd_data_sm_cs[1]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[2]_i_1 ),
        .Q(rd_data_sm_cs[2]),
        .R(O1));
FDRE \rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\n_0_rd_data_sm_cs[3]_i_1 ),
        .D(\n_0_rd_data_sm_cs[3]_i_2 ),
        .Q(rd_data_sm_cs[3]),
        .R(O1));
LUT6 #(
    .INIT(64'h000000000000E666)) 
     rd_skid_buf_ld_reg_i_1
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(O3),
        .I3(s_axi_rready),
        .I4(rd_data_sm_cs[2]),
        .I5(rd_data_sm_cs[3]),
        .O(rd_skid_buf_ld_cmb));
FDRE #(
    .INIT(1'b0)) 
     rd_skid_buf_ld_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(O1));
LUT4 #(
    .INIT(16'hFE02)) 
     rddata_mux_sel_i_1
       (.I0(rddata_mux_sel_cmb),
        .I1(rd_data_sm_cs[3]),
        .I2(n_0_rddata_mux_sel_i_3),
        .I3(rddata_mux_sel),
        .O(n_0_rddata_mux_sel_i_1));
LUT6 #(
    .INIT(64'hD208D208D208F208)) 
     rddata_mux_sel_i_2
       (.I0(rd_data_sm_cs[0]),
        .I1(rd_data_sm_cs[1]),
        .I2(rd_adv_buf79_out),
        .I3(rd_data_sm_cs[2]),
        .I4(act_rd_burst),
        .I5(act_rd_burst_two),
        .O(rddata_mux_sel_cmb));
LUT6 #(
    .INIT(64'hF000F000707F7F7F)) 
     rddata_mux_sel_i_3
       (.I0(s_axi_rready),
        .I1(O3),
        .I2(rd_data_sm_cs[2]),
        .I3(rd_data_sm_cs[1]),
        .I4(n_0_axi_rd_burst_two_reg),
        .I5(rd_data_sm_cs[0]),
        .O(n_0_rddata_mux_sel_i_3));
FDRE #(
    .INIT(1'b0)) 
     rddata_mux_sel_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_rddata_mux_sel_i_1),
        .Q(rddata_mux_sel),
        .R(O1));
LUT4 #(
    .INIT(16'hEAAA)) 
     s_axi_arready_INST_0
       (.I0(\n_0_GEN_ARREADY.axi_arready_int_reg ),
        .I1(O3),
        .I2(s_axi_rready),
        .I3(axi_early_arready_int),
        .O(s_axi_arready));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module bram64_axi_bram_ctrl_0_1_wr_chnl
   (bram_en_a,
    bram_wrdata_a,
    O1,
    s_axi_wready,
    O2,
    s_axi_bid,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    bram_addr_a,
    bram_we_a,
    I1,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_wdata,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_awvalid,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_bready,
    s_axi_awburst,
    s_axi_wstrb);
  output bram_en_a;
  output [63:0]bram_wrdata_a;
  output O1;
  output s_axi_wready;
  output O2;
  output [0:0]s_axi_bid;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output [2:0]bram_addr_a;
  output [7:0]bram_we_a;
  input I1;
  input s_axi_aclk;
  input [12:0]s_axi_awaddr;
  input s_axi_aresetn;
  input [0:0]s_axi_awid;
  input [63:0]s_axi_wdata;
  input s_axi_wlast;
  input s_axi_wvalid;
  input s_axi_awvalid;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input s_axi_bready;
  input [1:0]s_axi_awburst;
  input [7:0]s_axi_wstrb;

  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire I1;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire awaddr_pipe_ld23_out;
  wire axi_aresetn_d1;
  wire axi_aresetn_d2;
  wire axi_aresetn_re;
  wire axi_aresetn_re_reg;
  wire axi_awaddr_full;
  wire [1:0]axi_awburst_pipe;
  wire axi_awid_pipe;
  wire [7:0]axi_awlen_pipe;
  wire axi_awlen_pipe_1_or_2;
  wire [2:0]axi_awsize_pipe;
  wire [0:0]axi_byte_div_curr_awsize;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_cmb116_out;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire axi_wr_burst_cmb;
  wire axi_wr_burst_cmb0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire [2:0]bram_addr_a;
  wire [9:1]bram_addr_ld;
  wire bram_addr_ld_en;
  wire bram_en_a;
  wire bram_en_cmb;
  wire [7:0]bram_we_a;
  wire [63:0]bram_wrdata_a;
  wire [2:0]bvalid_cnt;
  wire bvalid_cnt_inc;
  wire bvalid_cnt_inc12_out;
  wire clr_bram_we;
  wire clr_bram_we_cmb;
  wire clr_bram_we_cmb7_out;
  wire [2:0]curr_awaddr_lsb;
  wire [7:0]curr_awlen;
  wire curr_awlen_reg_1_or_2;
  wire curr_awlen_reg_1_or_20;
  wire [2:0]curr_awsize;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire delay_aw_active_clr;
  wire delay_aw_active_clr_cmb;
  wire last_data_ack_mod;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 ;
  wire \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 ;
  wire \n_0_GEN_AWREADY.axi_awready_int_i_1 ;
  wire \n_0_GEN_AWREADY.axi_awready_int_i_2 ;
  wire \n_0_GEN_AW_DUAL.aw_active_i_1 ;
  wire \n_0_GEN_AW_DUAL.aw_active_i_2 ;
  wire \n_0_GEN_AW_DUAL.aw_active_i_3 ;
  wire \n_0_GEN_AW_DUAL.aw_active_reg ;
  wire \n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1 ;
  wire \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ;
  wire \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ;
  wire \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ;
  wire \n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 ;
  wire \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 ;
  wire \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ;
  wire \n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_17 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_22 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_36 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_37 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_38 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_39 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_40 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_41 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_44 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_45 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_46 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_47 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_30 ;
  wire \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ;
  wire \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ;
  wire \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 ;
  wire \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 ;
  wire \n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ;
  wire n_0_I_WRAP_BRST;
  wire n_0_axi_bvalid_int_i_1;
  wire n_0_axi_wr_burst_i_1;
  wire n_0_axi_wr_burst_i_3;
  wire n_0_axi_wready_int_mod_i_1;
  wire n_0_bid_gets_fifo_load_d1_i_3;
  wire \n_0_bvalid_cnt[0]_i_1 ;
  wire \n_0_bvalid_cnt[1]_i_1 ;
  wire \n_0_bvalid_cnt[2]_i_1 ;
  wire n_0_curr_awlen_reg_1_or_2_i_3;
  wire n_13_I_WRAP_BRST;
  wire n_14_I_WRAP_BRST;
  wire n_15_I_WRAP_BRST;
  wire n_16_I_WRAP_BRST;
  wire n_17_I_WRAP_BRST;
  wire n_1_BID_FIFO;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ;
  wire \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ;
  wire n_1_I_WRAP_BRST;
  wire n_26_I_WRAP_BRST;
  wire n_27_I_WRAP_BRST;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ;
  wire \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ;
  wire n_2_I_WRAP_BRST;
  wire n_3_BID_FIFO;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ;
  wire \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ;
  wire n_6_BID_FIFO;
  wire [2:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [2:0]narrow_burst_cnt_ld_reg;
  wire p_1_out;
  wire p_26_in;
  wire p_2_out;
  wire p_9_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [0:0]s_axi_bid;
  wire s_axi_bready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire wr_addr_sm_cs;
(* RTL_KEEP = "yes" *)   wire [2:0]wr_data_sm_cs;
  wire wrdata_reg_ld;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21_O_UNCONNECTED ;
  wire [3:0]\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5_O_UNCONNECTED ;

bram64_axi_bram_ctrl_0_1_SRL_FIFO BID_FIFO
       (.I1(I1),
        .I2(n_16_I_WRAP_BRST),
        .I3(\n_0_GEN_AW_DUAL.aw_active_reg ),
        .I4(O2),
        .I5(n_0_bid_gets_fifo_load_d1_i_3),
        .I6(O1),
        .O1(n_1_BID_FIFO),
        .O2(n_3_BID_FIFO),
        .O3(n_6_BID_FIFO),
        .axi_aresetn_d2(axi_aresetn_d2),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awid_pipe(axi_awid_pipe),
        .axi_wdata_full_cmb116_out(axi_wdata_full_cmb116_out),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bram_addr_ld_en(bram_addr_ld_en),
        .bvalid_cnt(bvalid_cnt),
        .bvalid_cnt_inc(bvalid_cnt_inc),
        .bvalid_cnt_inc12_out(bvalid_cnt_inc12_out),
        .clr_bram_we_cmb7_out(clr_bram_we_cmb7_out),
        .out(wr_data_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_addr_sm_cs(wr_addr_sm_cs));
LUT6 #(
    .INIT(64'h00F7FFFF00F70000)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 
       (.I0(s_axi_wlast),
        .I1(axi_wdata_full_cmb116_out),
        .I2(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 ),
        .I3(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3 ),
        .I4(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 ),
        .I5(wr_data_sm_cs[0]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 ));
LUT3 #(
    .INIT(8'hFE)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[0]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2 ));
LUT5 #(
    .INIT(32'hFFF3F500)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3 
       (.I0(axi_wr_burst),
        .I1(s_axi_wvalid),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(wr_data_sm_cs[1]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3 ));
LUT3 #(
    .INIT(8'hB8)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 
       (.I0(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 ),
        .I1(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 ),
        .I2(wr_data_sm_cs[1]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 ));
LUT5 #(
    .INIT(32'h03034F4C)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 
       (.I0(axi_wr_burst_cmb0),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(axi_wdata_full_cmb116_out),
        .I4(wr_data_sm_cs[2]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2 ));
LUT6 #(
    .INIT(64'h0800FFFF08000000)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 
       (.I0(wr_data_sm_cs[1]),
        .I1(axi_wr_burst_cmb0),
        .I2(wr_data_sm_cs[2]),
        .I3(wr_data_sm_cs[0]),
        .I4(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 ),
        .I5(wr_data_sm_cs[2]),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h5515)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2 
       (.I0(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 ),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[0]),
        .O(axi_wr_burst_cmb0));
LUT6 #(
    .INIT(64'hFFFFFFFF40007744)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 
       (.I0(wr_data_sm_cs[2]),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wlast),
        .I3(s_axi_wvalid),
        .I4(wr_data_sm_cs[0]),
        .I5(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 ),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3 ));
LUT4 #(
    .INIT(16'hFFFD)) 
     \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 
       (.I0(axi_awaddr_full),
        .I1(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .I2(axi_awlen_pipe_1_or_2),
        .I3(curr_awlen_reg_1_or_2),
        .O(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1 ),
        .Q(wr_data_sm_cs[0]),
        .R(I1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1 ),
        .Q(wr_data_sm_cs[1]),
        .R(I1));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1 ),
        .Q(wr_data_sm_cs[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AWREADY.axi_aresetn_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_aresetn),
        .Q(axi_aresetn_d1),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AWREADY.axi_aresetn_d2_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_d1),
        .Q(axi_aresetn_d2),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_AWREADY.axi_aresetn_re_reg_i_1 
       (.I0(s_axi_aresetn),
        .I1(axi_aresetn_d1),
        .O(axi_aresetn_re));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AWREADY.axi_aresetn_re_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_aresetn_re),
        .Q(axi_aresetn_re_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hAA8AAA88)) 
     \GEN_AWREADY.axi_awready_int_i_1 
       (.I0(s_axi_aresetn),
        .I1(\n_0_GEN_AWREADY.axi_awready_int_i_2 ),
        .I2(awaddr_pipe_ld23_out),
        .I3(axi_aresetn_re_reg),
        .I4(O2),
        .O(\n_0_GEN_AWREADY.axi_awready_int_i_1 ));
LUT5 #(
    .INIT(32'hAE000000)) 
     \GEN_AWREADY.axi_awready_int_i_2 
       (.I0(n_16_I_WRAP_BRST),
        .I1(n_2_I_WRAP_BRST),
        .I2(wr_addr_sm_cs),
        .I3(axi_awaddr_full),
        .I4(axi_aresetn_d2),
        .O(\n_0_GEN_AWREADY.axi_awready_int_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AWREADY.axi_awready_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AWREADY.axi_awready_int_i_1 ),
        .Q(O2),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFD000055550000)) 
     \GEN_AW_DUAL.aw_active_i_1 
       (.I0(\n_0_GEN_AW_DUAL.aw_active_i_2 ),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[0]),
        .I3(\n_0_GEN_AW_DUAL.aw_active_i_3 ),
        .I4(axi_aresetn_d2),
        .I5(\n_0_GEN_AW_DUAL.aw_active_reg ),
        .O(\n_0_GEN_AW_DUAL.aw_active_i_1 ));
LUT6 #(
    .INIT(64'h5555555555554445)) 
     \GEN_AW_DUAL.aw_active_i_2 
       (.I0(n_16_I_WRAP_BRST),
        .I1(wr_addr_sm_cs),
        .I2(s_axi_awvalid),
        .I3(axi_awaddr_full),
        .I4(\n_0_GEN_AW_DUAL.aw_active_reg ),
        .I5(n_3_BID_FIFO),
        .O(\n_0_GEN_AW_DUAL.aw_active_i_2 ));
LUT2 #(
    .INIT(4'h7)) 
     \GEN_AW_DUAL.aw_active_i_3 
       (.I0(wr_data_sm_cs[1]),
        .I1(delay_aw_active_clr),
        .O(\n_0_GEN_AW_DUAL.aw_active_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_DUAL.aw_active_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AW_DUAL.aw_active_i_1 ),
        .Q(\n_0_GEN_AW_DUAL.aw_active_reg ),
        .R(1'b0));
LUT3 #(
    .INIT(8'h80)) 
     \GEN_AW_DUAL.last_data_ack_mod_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_26_in));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_DUAL.last_data_ack_mod_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_26_in),
        .Q(last_data_ack_mod),
        .R(I1));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \GEN_AW_DUAL.wr_addr_sm_cs_i_1 
       (.I0(axi_aresetn_d2),
        .I1(s_axi_awvalid),
        .I2(n_2_I_WRAP_BRST),
        .I3(axi_awaddr_full),
        .I4(wr_addr_sm_cs),
        .I5(n_16_I_WRAP_BRST),
        .O(\n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1 ));
FDRE \GEN_AW_DUAL.wr_addr_sm_cs_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1 ),
        .Q(wr_addr_sm_cs),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[0]),
        .Q(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[10]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[11]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[12]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[1]),
        .Q(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[2]),
        .Q(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe[3]_i_1 
       (.I0(axi_aresetn_d2),
        .I1(n_16_I_WRAP_BRST),
        .I2(wr_addr_sm_cs),
        .I3(s_axi_awvalid),
        .I4(n_2_I_WRAP_BRST),
        .I5(axi_awaddr_full),
        .O(awaddr_pipe_ld23_out));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[3]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[4]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[5]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[6]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[7]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[8]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awaddr[9]),
        .Q(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT4 #(
    .INIT(16'h00E0)) 
     \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 
       (.I0(axi_awaddr_full),
        .I1(awaddr_pipe_ld23_out),
        .I2(s_axi_aresetn),
        .I3(\n_0_GEN_AWREADY.axi_awready_int_i_2 ),
        .O(\n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awaddr_full_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1 ),
        .Q(axi_awaddr_full),
        .R(1'b0));
LUT4 #(
    .INIT(16'h03AA)) 
     \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(awaddr_pipe_ld23_out),
        .O(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1 ),
        .Q(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awburst[0]),
        .Q(axi_awburst_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awburst[1]),
        .Q(axi_awburst_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awid),
        .Q(axi_awid_pipe),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 ),
        .I1(s_axi_awlen[4]),
        .O(p_9_out));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awlen[3]),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[7]),
        .I5(s_axi_awlen[1]),
        .O(\n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(p_9_out),
        .Q(axi_awlen_pipe_1_or_2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[0]),
        .Q(axi_awlen_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[1]),
        .Q(axi_awlen_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[2]),
        .Q(axi_awlen_pipe[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[3]),
        .Q(axi_awlen_pipe[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[4]),
        .Q(axi_awlen_pipe[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[5]),
        .Q(axi_awlen_pipe[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[6]),
        .Q(axi_awlen_pipe[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awlen[7]),
        .Q(axi_awlen_pipe[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awsize[0]),
        .Q(axi_awsize_pipe[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awsize[1]),
        .Q(axi_awsize_pipe[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2] 
       (.C(s_axi_aclk),
        .CE(awaddr_pipe_ld23_out),
        .D(s_axi_awsize[2]),
        .Q(axi_awsize_pipe[2]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 ),
        .I1(O6),
        .I2(bram_addr_ld[7]),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I4(n_1_I_WRAP_BRST),
        .I5(bram_addr_a[0]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 
       (.I0(O8),
        .I1(O9),
        .I2(O5),
        .I3(O3),
        .I4(O4),
        .I5(O7),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 ),
        .I1(bram_addr_a[0]),
        .I2(bram_addr_ld[8]),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I4(n_1_I_WRAP_BRST),
        .I5(bram_addr_a[1]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 
       (.I0(O6),
        .I1(O7),
        .I2(n_17_I_WRAP_BRST),
        .I3(O8),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2 ));
LUT3 #(
    .INIT(8'hB8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 
       (.I0(bram_addr_a[2]),
        .I1(n_1_I_WRAP_BRST),
        .I2(bram_addr_ld[9]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000400000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 
       (.I0(curr_fixed_burst_reg),
        .I1(wr_data_sm_cs[0]),
        .I2(wr_data_sm_cs[1]),
        .I3(wr_data_sm_cs[2]),
        .I4(s_axi_wvalid),
        .I5(n_14_I_WRAP_BRST),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 
       (.I0(\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[3]),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 
       (.I0(O3),
        .I1(bram_addr_ld[1]),
        .I2(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I3(n_1_I_WRAP_BRST),
        .I4(O5),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 
       (.I0(O3),
        .I1(O5),
        .I2(bram_addr_ld[2]),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I4(n_1_I_WRAP_BRST),
        .I5(O4),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 ),
        .I1(O4),
        .I2(bram_addr_ld[3]),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I4(n_1_I_WRAP_BRST),
        .I5(O9),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 
       (.I0(O5),
        .I1(O3),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_2 ));
LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 
       (.I0(n_17_I_WRAP_BRST),
        .I1(bram_addr_ld[4]),
        .I2(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I3(n_1_I_WRAP_BRST),
        .I4(O7),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ));
LUT6 #(
    .INIT(64'h77FFF0F08800F0F0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 
       (.I0(n_17_I_WRAP_BRST),
        .I1(O7),
        .I2(bram_addr_ld[5]),
        .I3(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I4(n_1_I_WRAP_BRST),
        .I5(O8),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ));
LUT5 #(
    .INIT(32'h5FCCA0CC)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_2 ),
        .I1(bram_addr_ld[6]),
        .I2(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I3(n_1_I_WRAP_BRST),
        .I4(O6),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1 ),
        .Q(bram_addr_a[0]),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1 ),
        .Q(bram_addr_a[1]),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 ),
        .Q(bram_addr_a[2]),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_13_I_WRAP_BRST),
        .Q(O3),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1 ),
        .Q(O5),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1 ),
        .Q(O4),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1 ),
        .Q(O9),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1 ),
        .Q(O7),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1 ),
        .Q(O8),
        .R(n_0_I_WRAP_BRST));
FDRE #(
    .INIT(1'b0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1 ),
        .Q(O6),
        .R(n_0_I_WRAP_BRST));
LUT6 #(
    .INIT(64'hFFFFFFFF3B0B3808)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_10 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_22 ),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[1]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF1015)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 
       (.I0(curr_awsize[0]),
        .I1(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .I2(axi_awaddr_full),
        .I3(s_axi_awaddr[0]),
        .I4(curr_awsize[1]),
        .I5(curr_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_12 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1] ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[1]),
        .O(curr_awaddr_lsb[1]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_13 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .O(curr_awaddr_lsb[2]));
LUT6 #(
    .INIT(64'h101000FF1010FF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(p_1_out),
        .I1(p_2_out),
        .I2(narrow_burst_cnt_ld_reg[0]),
        .I3(n_15_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ));
LUT6 #(
    .INIT(64'hB8B800FFB8B8FF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(narrow_burst_cnt_ld_reg[0]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0 ),
        .I3(n_15_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ));
LUT6 #(
    .INIT(64'h4540000000000000)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ),
        .I1(axi_awburst_pipe[0]),
        .I2(axi_awaddr_full),
        .I3(s_axi_awburst[0]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8 ),
        .I5(bram_addr_ld_en),
        .O(p_1_out));
LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_5 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I4(curr_wrap_burst),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ),
        .O(p_2_out));
LUT6 #(
    .INIT(64'hFFFFFF01FF00FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0 ));
LUT6 #(
    .INIT(64'hBBAA0B0ABBAA0BAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 ),
        .I1(curr_awaddr_lsb[1]),
        .I2(curr_awsize[1]),
        .I3(curr_awsize[0]),
        .I4(curr_awsize[2]),
        .I5(curr_awaddr_lsb[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0 ));
LUT6 #(
    .INIT(64'h5555555555544454)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_8 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35 ),
        .I1(curr_awaddr_lsb[2]),
        .I2(s_axi_awaddr[0]),
        .I3(axi_awaddr_full),
        .I4(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .I5(curr_awaddr_lsb[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFEE01E00)) 
     \GEN_NARROW_CNT.narrow_addr_int[0]_i_9 
       (.I0(curr_awsize[1]),
        .I1(curr_awsize[0]),
        .I2(curr_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9 ));
LUT6 #(
    .INIT(64'h8888F0FF88880F00)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ),
        .I1(narrow_burst_cnt_ld_reg[1]),
        .I2(narrow_addr_int[0]),
        .I3(n_15_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ));
LUT5 #(
    .INIT(32'hAACFAA30)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ),
        .I1(narrow_addr_int[0]),
        .I2(n_15_I_WRAP_BRST),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I4(narrow_addr_int[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFF01FF00FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4 ));
LUT6 #(
    .INIT(64'h0000888AFFFFBBBA)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_5 
       (.I0(narrow_burst_cnt_ld_reg[1]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19__0 ),
        .I4(p_1_out),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_5 ));
LUT6 #(
    .INIT(64'h33233320FEEF3E2C)) 
     \GEN_NARROW_CNT.narrow_addr_int[1]_i_6 
       (.I0(curr_awaddr_lsb[2]),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(curr_awaddr_lsb[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6 ));
LUT6 #(
    .INIT(64'hFEFEFFCCFFFCFF00)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_11 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_22 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25 ),
        .I4(curr_awsize[2]),
        .I5(curr_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_12 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ));
LUT6 #(
    .INIT(64'h000CEEEF000CEEEA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_30 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ),
        .I2(curr_awsize[1]),
        .I3(curr_awsize[0]),
        .I4(curr_awsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ));
LUT6 #(
    .INIT(64'h55575557FFFF5557)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_14 
       (.I0(bram_addr_ld_en),
        .I1(curr_awaddr_lsb[1]),
        .I2(curr_awaddr_lsb[0]),
        .I3(curr_awaddr_lsb[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34 ),
        .I5(curr_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_15 
       (.I0(axi_awburst_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 
       (.I0(axi_awburst_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awburst[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT5 #(
    .INIT(32'h00000100)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_17 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(n_15_I_WRAP_BRST),
        .I4(narrow_bram_addr_inc_d1),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_17 ));
LUT6 #(
    .INIT(64'hAAABFFFFFFFFFFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_18 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35 ),
        .I1(curr_awaddr_lsb[2]),
        .I2(curr_awaddr_lsb[0]),
        .I3(curr_awaddr_lsb[1]),
        .I4(bram_addr_ld_en),
        .I5(curr_wrap_burst),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_19__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_36 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_37 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19__0 ));
LUT4 #(
    .INIT(16'hFF01)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_20 
       (.I0(curr_awaddr_lsb[2]),
        .I1(curr_awsize[0]),
        .I2(curr_awsize[1]),
        .I3(curr_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_22 
       (.I0(axi_awlen_pipe[0]),
        .I1(s_axi_awlen[0]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[1]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_22 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_23 
       (.I0(axi_awlen_pipe[4]),
        .I1(s_axi_awlen[4]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[5]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[5]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_24 
       (.I0(axi_awlen_pipe[2]),
        .I1(s_axi_awlen[2]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[3]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_25 
       (.I0(axi_awlen_pipe[6]),
        .I1(s_axi_awlen[6]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[7]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_25 ));
LUT6 #(
    .INIT(64'h0FFFFCCA00000CCA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(curr_awsize[2]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_44 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_26__0 ));
LUT5 #(
    .INIT(32'h0FCA00CA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_27 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_23 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_24 ),
        .I2(curr_awsize[1]),
        .I3(curr_awsize[2]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_22 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_27 ));
LUT6 #(
    .INIT(64'hB8CCCCC0B80000C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_28 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_44 ),
        .I1(curr_awsize[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ),
        .I3(curr_awsize[1]),
        .I4(curr_awsize[0]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_28 ));
LUT6 #(
    .INIT(64'hAACCAAF0AAF0CC00)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_29__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ),
        .I3(curr_awsize[2]),
        .I4(curr_awsize[0]),
        .I5(curr_awsize[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_29__0 ));
LUT6 #(
    .INIT(64'h8888F0FF8888F000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ),
        .I1(narrow_burst_cnt_ld_reg[2]),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ),
        .I3(n_15_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_31 
       (.I0(curr_awlen[3]),
        .I1(curr_awlen[2]),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(curr_awlen[1]),
        .I5(curr_awlen[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ));
LUT6 #(
    .INIT(64'hEEEBBBEB22288828)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_32 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ),
        .I1(curr_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_32 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_33__0 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[0]),
        .O(curr_awaddr_lsb[0]));
LUT5 #(
    .INIT(32'hCCA000A0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_34 
       (.I0(s_axi_awsize[0]),
        .I1(axi_awsize_pipe[0]),
        .I2(s_axi_awsize[1]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_34 ));
LUT6 #(
    .INIT(64'h00000000B8308800)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_35 
       (.I0(axi_awsize_pipe[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .I3(axi_awsize_pipe[0]),
        .I4(s_axi_awsize[0]),
        .I5(curr_awsize[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_35 ));
LUT5 #(
    .INIT(32'h333E0002)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_36 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_31 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_36 ));
LUT4 #(
    .INIT(16'h4700)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_37 
       (.I0(axi_awsize_pipe[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_45 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_37 ));
LUT5 #(
    .INIT(32'h03010303)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_38 
       (.I0(curr_awaddr_lsb[2]),
        .I1(curr_awsize[1]),
        .I2(curr_awsize[2]),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_47 ),
        .I4(curr_awaddr_lsb[1]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_38 ));
LUT6 #(
    .INIT(64'h0000000000470000)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_39 
       (.I0(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2] ),
        .I1(axi_awaddr_full),
        .I2(s_axi_awaddr[2]),
        .I3(curr_awsize[2]),
        .I4(curr_awsize[1]),
        .I5(curr_awsize[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_39 ));
LUT6 #(
    .INIT(64'hAAAAFCFFAAAA0300)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(n_15_I_WRAP_BRST),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ),
        .I5(narrow_addr_int[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ));
LUT5 #(
    .INIT(32'hFCFCFEFC)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_40 
       (.I0(curr_awaddr_lsb[2]),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[1]),
        .I3(curr_awaddr_lsb[1]),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_47 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_40 ));
LUT6 #(
    .INIT(64'h32003200FEEF3E0C)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_41 
       (.I0(curr_awaddr_lsb[2]),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(curr_awaddr_lsb[1]),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_41 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_42 
       (.I0(axi_awlen_pipe[7]),
        .I1(s_axi_awlen[7]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[6]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[6]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_42 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_43 
       (.I0(axi_awlen_pipe[5]),
        .I1(s_axi_awlen[5]),
        .I2(curr_awsize[0]),
        .I3(axi_awlen_pipe[4]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awlen[4]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_43 ));
LUT6 #(
    .INIT(64'hFCAF0CAFFCA00CA0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_44 
       (.I0(curr_awlen[1]),
        .I1(curr_awlen[0]),
        .I2(curr_awsize[0]),
        .I3(curr_awsize[1]),
        .I4(curr_awlen[3]),
        .I5(curr_awlen[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_44 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_45 
       (.I0(curr_awlen[0]),
        .I1(curr_awlen[1]),
        .I2(curr_awsize[1]),
        .I3(curr_awlen[2]),
        .I4(curr_awsize[0]),
        .I5(curr_awlen[3]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_45 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_46 
       (.I0(curr_awlen[4]),
        .I1(curr_awlen[5]),
        .I2(curr_awsize[1]),
        .I3(curr_awlen[6]),
        .I4(curr_awsize[0]),
        .I5(curr_awlen[7]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_46 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT5 #(
    .INIT(32'h00053305)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_47 
       (.I0(s_axi_awaddr[0]),
        .I1(\n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0] ),
        .I2(s_axi_awsize[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awsize_pipe[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_47 ));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_48 
       (.I0(axi_awlen_pipe[4]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[4]),
        .O(curr_awlen[4]));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_49 
       (.I0(axi_awlen_pipe[7]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[7]),
        .O(curr_awlen[7]));
LUT6 #(
    .INIT(64'hFFFFFF01FF00FFFF)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_6 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_12 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_13__0 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_14 ),
        .I4(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_15 ),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_16__0 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_6 ));
LUT3 #(
    .INIT(8'hA9)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_7__0 ));
LUT5 #(
    .INIT(32'hFBFFAAAA)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_8 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_17 ),
        .I1(curr_awsize[0]),
        .I2(curr_awsize[2]),
        .I3(curr_awsize[1]),
        .I4(bram_addr_ld_en),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFBBBA0000888A)) 
     \GEN_NARROW_CNT.narrow_addr_int[2]_i_9 
       (.I0(narrow_burst_cnt_ld_reg[2]),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_18 ),
        .I2(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_11 ),
        .I3(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_19__0 ),
        .I4(p_1_out),
        .I5(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_20 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_9 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .Q(narrow_addr_int[0]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .Q(narrow_addr_int[1]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_2 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ),
        .Q(narrow_addr_int[2]),
        .R(I1));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_3 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_4 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_1 ),
        .S(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 
       (.CI(1'b0),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_38 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_39 }),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_21_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_40 ,\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_41 }));
MUXF7 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_30 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_45 ),
        .I1(\n_0_GEN_NARROW_CNT.narrow_addr_int[2]_i_46 ),
        .O(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_30 ),
        .S(curr_awsize[2]));
CARRY4 \GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 
       (.CI(\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_10 ),
        .CO({\n_0_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ,\n_1_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ,\n_2_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 ,\n_3_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_GEN_NARROW_CNT.narrow_addr_int_reg[2]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b1,1'b1,1'b1,1'b1}));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(n_15_I_WRAP_BRST),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[2]),
        .O(narrow_bram_addr_inc));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(I1));
LUT5 #(
    .INIT(32'h13FF1300)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(curr_awsize[0]),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[1]),
        .I3(bram_addr_ld_en),
        .I4(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
LUT4 #(
    .INIT(16'h1F10)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(curr_awsize[2]),
        .I1(curr_awsize[1]),
        .I2(bram_addr_ld_en),
        .I3(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
LUT5 #(
    .INIT(32'h01FF0100)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(curr_awsize[0]),
        .I1(curr_awsize[2]),
        .I2(curr_awsize[1]),
        .I3(bram_addr_ld_en),
        .I4(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_26_in),
        .Q(axi_wlast_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h30303030A000A0A0)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_1__0 
       (.I0(curr_narrow_burst),
        .I1(axi_byte_div_curr_awsize),
        .I2(s_axi_aresetn),
        .I3(axi_wlast_d1),
        .I4(p_26_in),
        .I5(curr_narrow_burst_en),
        .O(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ));
LUT6 #(
    .INIT(64'h00000000B8FF0000)) 
     \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(axi_awlen_pipe[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[0]),
        .I3(curr_awlen_reg_1_or_20),
        .I4(bram_addr_ld_en),
        .I5(curr_fixed_burst),
        .O(curr_narrow_burst_en));
FDRE #(
    .INIT(1'b0)) 
     \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
LUT5 #(
    .INIT(32'h72737070)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 
       (.I0(wr_data_sm_cs[1]),
        .I1(wr_data_sm_cs[2]),
        .I2(axi_wdata_full_reg),
        .I3(axi_wdata_full_cmb116_out),
        .I4(s_axi_wvalid),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 ));
LUT5 #(
    .INIT(32'h0000F101)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3 
       (.I0(axi_wdata_full_cmb116_out),
        .I1(\n_0_GEN_AWREADY.axi_awready_int_i_2 ),
        .I2(wr_data_sm_cs[1]),
        .I3(axi_wdata_full_reg),
        .I4(wr_data_sm_cs[2]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(I1));
MUXF7 \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg_i_1 
       (.I0(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2 ),
        .I1(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3 ),
        .O(axi_wdata_full_cmb),
        .S(wr_data_sm_cs[0]));
LUT6 #(
    .INIT(64'hCCCFFCCECCCCCCCC)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1 
       (.I0(axi_wdata_full_cmb116_out),
        .I1(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 ),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(wr_data_sm_cs[2]),
        .I5(s_axi_wvalid),
        .O(bram_en_cmb));
LUT5 #(
    .INIT(32'h000000E0)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 
       (.I0(axi_wdata_full_cmb116_out),
        .I1(\n_0_GEN_AWREADY.axi_awready_int_i_2 ),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[1]),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bram_en_cmb),
        .Q(bram_en_a),
        .R(I1));
LUT3 #(
    .INIT(8'h02)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1 
       (.I0(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 ),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .O(clr_bram_we_cmb));
LUT5 #(
    .INIT(32'hB8888888)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 
       (.I0(clr_bram_we_cmb7_out),
        .I1(wr_data_sm_cs[0]),
        .I2(axi_wdata_full_cmb116_out),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(clr_bram_we_cmb),
        .Q(clr_bram_we),
        .R(I1));
LUT6 #(
    .INIT(64'hFFFDFFCC02003300)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 
       (.I0(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2 ),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[1]),
        .I3(delay_aw_active_clr_cmb),
        .I4(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 ),
        .I5(delay_aw_active_clr),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 ));
LUT5 #(
    .INIT(32'hAAAAEBAA)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2 
       (.I0(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3 ),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wlast),
        .I4(wr_data_sm_cs[2]),
        .O(delay_aw_active_clr_cmb));
LUT6 #(
    .INIT(64'hF7F7F7F737F7F7F7)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 
       (.I0(delay_aw_active_clr),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[0]),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .I5(axi_wr_burst_cmb0),
        .O(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1 ),
        .Q(delay_aw_active_clr),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[0]),
        .Q(bram_wrdata_a[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[10]),
        .Q(bram_wrdata_a[10]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[11]),
        .Q(bram_wrdata_a[11]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[12]),
        .Q(bram_wrdata_a[12]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[13]),
        .Q(bram_wrdata_a[13]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[14]),
        .Q(bram_wrdata_a[14]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[15]),
        .Q(bram_wrdata_a[15]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[16]),
        .Q(bram_wrdata_a[16]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[17]),
        .Q(bram_wrdata_a[17]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[18]),
        .Q(bram_wrdata_a[18]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[19]),
        .Q(bram_wrdata_a[19]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[1]),
        .Q(bram_wrdata_a[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[20]),
        .Q(bram_wrdata_a[20]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[21]),
        .Q(bram_wrdata_a[21]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[22]),
        .Q(bram_wrdata_a[22]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[23]),
        .Q(bram_wrdata_a[23]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[24]),
        .Q(bram_wrdata_a[24]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[25]),
        .Q(bram_wrdata_a[25]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[26]),
        .Q(bram_wrdata_a[26]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[27]),
        .Q(bram_wrdata_a[27]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[28]),
        .Q(bram_wrdata_a[28]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[29]),
        .Q(bram_wrdata_a[29]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[2]),
        .Q(bram_wrdata_a[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[30]),
        .Q(bram_wrdata_a[30]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[31]),
        .Q(bram_wrdata_a[31]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[32].bram_wrdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[32]),
        .Q(bram_wrdata_a[32]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[33].bram_wrdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[33]),
        .Q(bram_wrdata_a[33]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[34].bram_wrdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[34]),
        .Q(bram_wrdata_a[34]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[35].bram_wrdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[35]),
        .Q(bram_wrdata_a[35]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[36].bram_wrdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[36]),
        .Q(bram_wrdata_a[36]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[37].bram_wrdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[37]),
        .Q(bram_wrdata_a[37]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[38].bram_wrdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[38]),
        .Q(bram_wrdata_a[38]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[39].bram_wrdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[39]),
        .Q(bram_wrdata_a[39]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[3]),
        .Q(bram_wrdata_a[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[40].bram_wrdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[40]),
        .Q(bram_wrdata_a[40]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[41].bram_wrdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[41]),
        .Q(bram_wrdata_a[41]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[42].bram_wrdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[42]),
        .Q(bram_wrdata_a[42]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[43].bram_wrdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[43]),
        .Q(bram_wrdata_a[43]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[44].bram_wrdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[44]),
        .Q(bram_wrdata_a[44]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[45].bram_wrdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[45]),
        .Q(bram_wrdata_a[45]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[46].bram_wrdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[46]),
        .Q(bram_wrdata_a[46]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[47].bram_wrdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[47]),
        .Q(bram_wrdata_a[47]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[48].bram_wrdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[48]),
        .Q(bram_wrdata_a[48]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[49].bram_wrdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[49]),
        .Q(bram_wrdata_a[49]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[4]),
        .Q(bram_wrdata_a[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[50].bram_wrdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[50]),
        .Q(bram_wrdata_a[50]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[51].bram_wrdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[51]),
        .Q(bram_wrdata_a[51]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[52].bram_wrdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[52]),
        .Q(bram_wrdata_a[52]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[53].bram_wrdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[53]),
        .Q(bram_wrdata_a[53]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[54].bram_wrdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[54]),
        .Q(bram_wrdata_a[54]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[55].bram_wrdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[55]),
        .Q(bram_wrdata_a[55]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[56].bram_wrdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[56]),
        .Q(bram_wrdata_a[56]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[57].bram_wrdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[57]),
        .Q(bram_wrdata_a[57]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[58].bram_wrdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[58]),
        .Q(bram_wrdata_a[58]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[59].bram_wrdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[59]),
        .Q(bram_wrdata_a[59]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[5]),
        .Q(bram_wrdata_a[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[60].bram_wrdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[60]),
        .Q(bram_wrdata_a[60]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[61].bram_wrdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[61]),
        .Q(bram_wrdata_a[61]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[62].bram_wrdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[62]),
        .Q(bram_wrdata_a[62]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[63].bram_wrdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[63]),
        .Q(bram_wrdata_a[63]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[6]),
        .Q(bram_wrdata_a[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[7]),
        .Q(bram_wrdata_a[7]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[8]),
        .Q(bram_wrdata_a[8]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wdata[9]),
        .Q(bram_wrdata_a[9]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hE2FF0000FFFFFFFF)) 
     \GEN_WR_NO_ECC.bram_we_int[7]_i_1 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .I4(clr_bram_we),
        .I5(s_axi_aresetn),
        .O(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
LUT4 #(
    .INIT(16'h1D00)) 
     \GEN_WR_NO_ECC.bram_we_int[7]_i_2 
       (.I0(wr_data_sm_cs[0]),
        .I1(wr_data_sm_cs[1]),
        .I2(wr_data_sm_cs[2]),
        .I3(s_axi_wvalid),
        .O(wrdata_reg_ld));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[0]),
        .Q(bram_we_a[0]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[1]),
        .Q(bram_we_a[1]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[2]),
        .Q(bram_we_a[2]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[3]),
        .Q(bram_we_a[3]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[4]),
        .Q(bram_we_a[4]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[5]),
        .Q(bram_we_a[5]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[6]),
        .Q(bram_we_a[6]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \GEN_WR_NO_ECC.bram_we_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(wrdata_reg_ld),
        .D(s_axi_wstrb[7]),
        .Q(bram_we_a[7]),
        .R(\n_0_GEN_WR_NO_ECC.bram_we_int[7]_i_1 ));
bram64_axi_bram_ctrl_0_1_wrap_brst I_WRAP_BRST
       (.D(bram_addr_ld),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg (\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3 ),
        .I10(O9),
        .I11(axi_awlen_pipe[3:0]),
        .I12(I1),
        .I2(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5 ),
        .I3(\n_0_GEN_AW_DUAL.aw_active_reg ),
        .I4(O3),
        .I5(O4),
        .I6(O5),
        .I7(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_3 ),
        .I8(n_3_BID_FIFO),
        .I9(\n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg ),
        .O1(n_0_I_WRAP_BRST),
        .O10(n_27_I_WRAP_BRST),
        .O2(n_1_I_WRAP_BRST),
        .O3(n_2_I_WRAP_BRST),
        .O4(n_13_I_WRAP_BRST),
        .O5(n_14_I_WRAP_BRST),
        .O6(n_15_I_WRAP_BRST),
        .O7(n_16_I_WRAP_BRST),
        .O8(n_17_I_WRAP_BRST),
        .O9(n_26_I_WRAP_BRST),
        .Q(axi_awsize_pipe),
        .axi_aresetn_d2(axi_aresetn_d2),
        .axi_awaddr_full(axi_awaddr_full),
        .axi_awlen_pipe_1_or_2(axi_awlen_pipe_1_or_2),
        .axi_byte_div_curr_awsize(axi_byte_div_curr_awsize),
        .bram_addr_ld_en(bram_addr_ld_en),
        .bvalid_cnt(bvalid_cnt),
        .curr_awlen(curr_awlen[3:0]),
        .curr_awlen_reg_1_or_2(curr_awlen_reg_1_or_2),
        .curr_awsize(curr_awsize),
        .curr_fixed_burst(curr_fixed_burst),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst(curr_wrap_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .last_data_ack_mod(last_data_ack_mod),
        .narrow_addr_int(narrow_addr_int),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .out(wr_data_sm_cs),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[12:4]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .wr_addr_sm_cs(wr_addr_sm_cs));
FDRE #(
    .INIT(1'b0)) 
     \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_6_BID_FIFO),
        .Q(s_axi_bid),
        .R(I1));
LUT6 #(
    .INIT(64'hAAAAAAAAAA8AAA88)) 
     axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(bvalid_cnt_inc),
        .I2(n_1_BID_FIFO),
        .I3(bvalid_cnt[1]),
        .I4(bvalid_cnt[0]),
        .I5(bvalid_cnt[2]),
        .O(n_0_axi_bvalid_int_i_1));
LUT6 #(
    .INIT(64'h0000CC000000B888)) 
     axi_bvalid_int_i_2
       (.I0(clr_bram_we_cmb7_out),
        .I1(wr_data_sm_cs[0]),
        .I2(axi_wdata_full_cmb116_out),
        .I3(bvalid_cnt_inc12_out),
        .I4(wr_data_sm_cs[2]),
        .I5(wr_data_sm_cs[1]),
        .O(bvalid_cnt_inc));
FDRE #(
    .INIT(1'b0)) 
     axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_bvalid_int_i_1),
        .Q(O1),
        .R(1'b0));
LUT3 #(
    .INIT(8'hB8)) 
     axi_wr_burst_i_1
       (.I0(axi_wr_burst_cmb),
        .I1(n_0_axi_wr_burst_i_3),
        .I2(axi_wr_burst),
        .O(n_0_axi_wr_burst_i_1));
LUT6 #(
    .INIT(64'h00FF220F0000220F)) 
     axi_wr_burst_i_2
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[1]),
        .I2(s_axi_wlast),
        .I3(wr_data_sm_cs[2]),
        .I4(wr_data_sm_cs[0]),
        .I5(axi_wr_burst_cmb0),
        .O(axi_wr_burst_cmb));
LUT6 #(
    .INIT(64'h220A020A020A020A)) 
     axi_wr_burst_i_3
       (.I0(s_axi_wvalid),
        .I1(wr_data_sm_cs[2]),
        .I2(wr_data_sm_cs[0]),
        .I3(wr_data_sm_cs[1]),
        .I4(s_axi_wlast),
        .I5(axi_wr_burst_cmb0),
        .O(n_0_axi_wr_burst_i_3));
FDRE #(
    .INIT(1'b0)) 
     axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wr_burst_i_1),
        .Q(axi_wr_burst),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT2 #(
    .INIT(4'h2)) 
     axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(n_0_axi_wready_int_mod_i_1));
FDRE #(
    .INIT(1'b0)) 
     axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_0_axi_wready_int_mod_i_1),
        .Q(s_axi_wready),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hFB)) 
     bid_gets_fifo_load_d1_i_3
       (.I0(bvalid_cnt[2]),
        .I1(bvalid_cnt[0]),
        .I2(bvalid_cnt[1]),
        .O(n_0_bid_gets_fifo_load_d1_i_3));
FDRE #(
    .INIT(1'b0)) 
     bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(I1));
LUT6 #(
    .INIT(64'h959595956A6A6AAA)) 
     \bvalid_cnt[0]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[0]),
        .O(\n_0_bvalid_cnt[0]_i_1 ));
LUT6 #(
    .INIT(64'hD5D52A2ABFBF4000)) 
     \bvalid_cnt[1]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[0]),
        .O(\n_0_bvalid_cnt[1]_i_1 ));
LUT6 #(
    .INIT(64'hD52AFF00FF00BF00)) 
     \bvalid_cnt[2]_i_1 
       (.I0(bvalid_cnt_inc),
        .I1(O1),
        .I2(s_axi_bready),
        .I3(bvalid_cnt[2]),
        .I4(bvalid_cnt[1]),
        .I5(bvalid_cnt[0]),
        .O(\n_0_bvalid_cnt[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[0]_i_1 ),
        .Q(bvalid_cnt[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[1]_i_1 ),
        .Q(bvalid_cnt[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\n_0_bvalid_cnt[2]_i_1 ),
        .Q(bvalid_cnt[2]),
        .R(I1));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     curr_awlen_reg_1_or_2_i_1
       (.I0(curr_awlen[5]),
        .I1(n_0_curr_awlen_reg_1_or_2_i_3),
        .I2(curr_awlen[3]),
        .I3(curr_awlen[2]),
        .I4(curr_awlen[6]),
        .I5(curr_awlen[1]),
        .O(curr_awlen_reg_1_or_20));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     curr_awlen_reg_1_or_2_i_2
       (.I0(axi_awlen_pipe[5]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[5]),
        .O(curr_awlen[5]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT5 #(
    .INIT(32'h00053305)) 
     curr_awlen_reg_1_or_2_i_3
       (.I0(s_axi_awlen[4]),
        .I1(axi_awlen_pipe[4]),
        .I2(s_axi_awlen[7]),
        .I3(axi_awaddr_full),
        .I4(axi_awlen_pipe[7]),
        .O(n_0_curr_awlen_reg_1_or_2_i_3));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     curr_awlen_reg_1_or_2_i_4
       (.I0(axi_awlen_pipe[6]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[6]),
        .O(curr_awlen[6]));
FDRE #(
    .INIT(1'b0)) 
     curr_awlen_reg_1_or_2_reg
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(curr_awlen_reg_1_or_20),
        .Q(curr_awlen_reg_1_or_2),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT5 #(
    .INIT(32'h00053305)) 
     curr_fixed_burst_reg_i_2
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_fixed_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_27_I_WRAP_BRST),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT5 #(
    .INIT(32'h000ACC0A)) 
     curr_wrap_burst_reg_i_2
       (.I0(s_axi_awburst[1]),
        .I1(axi_awburst_pipe[1]),
        .I2(s_axi_awburst[0]),
        .I3(axi_awaddr_full),
        .I4(axi_awburst_pipe[0]),
        .O(curr_wrap_burst));
FDRE #(
    .INIT(1'b0)) 
     curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(n_26_I_WRAP_BRST),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module bram64_axi_bram_ctrl_0_1_wrap_brst
   (O1,
    O2,
    O3,
    D,
    bram_addr_ld_en,
    O4,
    O5,
    O6,
    O7,
    O8,
    curr_awlen,
    curr_awsize,
    axi_byte_div_curr_awsize,
    O9,
    O10,
    I1,
    I2,
    s_axi_wvalid,
    out,
    s_axi_aresetn,
    I3,
    bvalid_cnt,
    I4,
    I5,
    I6,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ,
    axi_awaddr_full,
    s_axi_awaddr,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ,
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ,
    I7,
    curr_narrow_burst,
    narrow_bram_addr_inc_d1,
    narrow_addr_int,
    axi_aresetn_d2,
    s_axi_awvalid,
    wr_addr_sm_cs,
    I8,
    last_data_ack_mod,
    I9,
    axi_awlen_pipe_1_or_2,
    curr_awlen_reg_1_or_2,
    curr_wrap_burst_reg,
    I10,
    s_axi_awsize,
    Q,
    s_axi_awlen,
    I11,
    curr_wrap_burst,
    curr_fixed_burst_reg,
    curr_fixed_burst,
    I12,
    s_axi_aclk);
  output O1;
  output O2;
  output O3;
  output [8:0]D;
  output bram_addr_ld_en;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output [3:0]curr_awlen;
  output [2:0]curr_awsize;
  output [0:0]axi_byte_div_curr_awsize;
  output O9;
  output O10;
  input I1;
  input I2;
  input s_axi_wvalid;
  input [2:0]out;
  input s_axi_aresetn;
  input I3;
  input [2:0]bvalid_cnt;
  input I4;
  input I5;
  input I6;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  input axi_awaddr_full;
  input [8:0]s_axi_awaddr;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  input \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  input I7;
  input curr_narrow_burst;
  input narrow_bram_addr_inc_d1;
  input [2:0]narrow_addr_int;
  input axi_aresetn_d2;
  input s_axi_awvalid;
  input wr_addr_sm_cs;
  input I8;
  input last_data_ack_mod;
  input I9;
  input axi_awlen_pipe_1_or_2;
  input curr_awlen_reg_1_or_2;
  input curr_wrap_burst_reg;
  input I10;
  input [2:0]s_axi_awsize;
  input [2:0]Q;
  input [3:0]s_axi_awlen;
  input [3:0]I11;
  input curr_wrap_burst;
  input curr_fixed_burst_reg;
  input curr_fixed_burst;
  input I12;
  input s_axi_aclk;

  wire [8:0]D;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ;
  wire \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ;
  wire I1;
  wire I10;
  wire [3:0]I11;
  wire I12;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O10;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [2:0]Q;
  wire axi_aresetn_d2;
  wire axi_awaddr_full;
  wire axi_awlen_pipe_1_or_2;
  wire [0:0]axi_byte_div_curr_awsize;
  wire bram_addr_ld_en;
  wire [2:0]bvalid_cnt;
  wire [3:0]curr_awlen;
  wire curr_awlen_reg_1_or_2;
  wire [2:0]curr_awsize;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire last_data_ack_mod;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_4 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_5 ;
  wire n_0_curr_fixed_burst_reg_i_3;
  wire \n_0_save_init_bram_addr_ld[4]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[5]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[6]_i_2__0 ;
  wire \n_0_wrap_burst_total[0]_i_2__0 ;
  wire \n_0_wrap_burst_total[1]_i_2__0 ;
  wire [2:0]narrow_addr_int;
  wire narrow_bram_addr_inc_d1;
  wire [2:0]out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [8:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [12:4]save_init_bram_addr_ld;
  wire wr_addr_sm_cs;
  wire [2:0]wrap_burst_total;
  wire [2:0]wrap_burst_total_cmb;

LUT6 #(
    .INIT(64'h0000000000000040)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe[3]_i_2 
       (.I0(I8),
        .I1(last_data_ack_mod),
        .I2(axi_awaddr_full),
        .I3(I9),
        .I4(axi_awlen_pipe_1_or_2),
        .I5(curr_awlen_reg_1_or_2),
        .O(O7));
LUT4 #(
    .INIT(16'h1555)) 
     \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe[3]_i_3 
       (.I0(I3),
        .I1(bvalid_cnt[2]),
        .I2(bvalid_cnt[1]),
        .I3(bvalid_cnt[0]),
        .O(O3));
LUT6 #(
    .INIT(64'h00000040FFFFFFFF)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1 
       (.I0(I1),
        .I1(O2),
        .I2(I2),
        .I3(s_axi_wvalid),
        .I4(out[0]),
        .I5(s_axi_aresetn),
        .O(O1));
LUT6 #(
    .INIT(64'h5555455555555555)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(s_axi_wvalid),
        .O(O2));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA8A)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_6 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc_d1),
        .I2(O6),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[1]),
        .I5(narrow_addr_int[2]),
        .O(O5));
LUT6 #(
    .INIT(64'h00FFE0E0FF00E0E0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(I7),
        .I3(I1),
        .I4(O2),
        .I5(I4),
        .O(O4));
LUT2 #(
    .INIT(4'hE)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 
       (.I0(O5),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_4 ),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ));
LUT6 #(
    .INIT(64'h7F7775777F777F77)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_4 
       (.I0(curr_wrap_burst_reg),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_5 ),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(wrap_burst_total[0]),
        .I5(O8),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_4 ));
LUT6 #(
    .INIT(64'h44C004C000C000C0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_5 
       (.I0(wrap_burst_total[2]),
        .I1(I4),
        .I2(wrap_burst_total[0]),
        .I3(wrap_burst_total[1]),
        .I4(I5),
        .I5(I6),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_5 ));
LUT4 #(
    .INIT(16'h8000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2 
       (.I0(I10),
        .I1(I6),
        .I2(I4),
        .I3(I5),
        .O(O8));
LUT5 #(
    .INIT(32'h08000000)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(out[2]),
        .I3(out[1]),
        .I4(out[0]),
        .O(O6));
LUT5 #(
    .INIT(32'h0000E200)) 
     curr_fixed_burst_reg_i_1__0
       (.I0(curr_fixed_burst_reg),
        .I1(bram_addr_ld_en),
        .I2(curr_fixed_burst),
        .I3(s_axi_aresetn),
        .I4(n_0_curr_fixed_burst_reg_i_3),
        .O(O10));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     curr_fixed_burst_reg_i_3
       (.I0(out[0]),
        .I1(s_axi_wvalid),
        .I2(out[1]),
        .I3(out[2]),
        .I4(O2),
        .I5(I1),
        .O(n_0_curr_fixed_burst_reg_i_3));
LUT5 #(
    .INIT(32'h0000E200)) 
     curr_wrap_burst_reg_i_1__0
       (.I0(curr_wrap_burst_reg),
        .I1(bram_addr_ld_en),
        .I2(curr_wrap_burst),
        .I3(s_axi_aresetn),
        .I4(n_0_curr_fixed_burst_reg_i_3),
        .O(O9));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[10]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[6]),
        .O(D[6]));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[11]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[7]),
        .O(D[7]));
LUT6 #(
    .INIT(64'hAAAAAAAA00008880)) 
     \save_init_bram_addr_ld[12]_i_1 
       (.I0(axi_aresetn_d2),
        .I1(O3),
        .I2(axi_awaddr_full),
        .I3(s_axi_awvalid),
        .I4(wr_addr_sm_cs),
        .I5(O7),
        .O(bram_addr_ld_en));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[12]_i_2__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[12]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[8]),
        .O(D[8]));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[4]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[4]_i_2 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[0]),
        .O(D[0]));
LUT4 #(
    .INIT(16'hC0B0)) 
     \save_init_bram_addr_ld[4]_i_2 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(save_init_bram_addr_ld[4]),
        .I3(wrap_burst_total[1]),
        .O(\n_0_save_init_bram_addr_ld[4]_i_2 ));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[5]_i_2 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[1]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT4 #(
    .INIT(16'hBD00)) 
     \save_init_bram_addr_ld[5]_i_2 
       (.I0(wrap_burst_total[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[5]),
        .O(\n_0_save_init_bram_addr_ld[5]_i_2 ));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[6]_i_2__0 ),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \save_init_bram_addr_ld[6]_i_2__0 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .I3(save_init_bram_addr_ld[6]),
        .O(\n_0_save_init_bram_addr_ld[6]_i_2__0 ));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[7]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[3]),
        .O(D[3]));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[8]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[4]),
        .O(D[4]));
LUT6 #(
    .INIT(64'hFE10FEFEFE101010)) 
     \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(bram_addr_ld_en),
        .I1(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_2 ),
        .I2(save_init_bram_addr_ld[9]),
        .I3(\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg ),
        .I4(axi_awaddr_full),
        .I5(s_axi_awaddr[5]),
        .O(D[5]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[6]),
        .Q(save_init_bram_addr_ld[10]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[7]),
        .Q(save_init_bram_addr_ld[11]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[8]),
        .Q(save_init_bram_addr_ld[12]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[0]),
        .Q(save_init_bram_addr_ld[4]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[1]),
        .Q(save_init_bram_addr_ld[5]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[2]),
        .Q(save_init_bram_addr_ld[6]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[3]),
        .Q(save_init_bram_addr_ld[7]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[4]),
        .Q(save_init_bram_addr_ld[8]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[5]),
        .Q(save_init_bram_addr_ld[9]),
        .R(I12));
LUT6 #(
    .INIT(64'h000000000A04A400)) 
     \wrap_burst_total[0]_i_1__0 
       (.I0(curr_awlen[2]),
        .I1(curr_awsize[1]),
        .I2(curr_awlen[3]),
        .I3(curr_awlen[1]),
        .I4(curr_awsize[0]),
        .I5(\n_0_wrap_burst_total[0]_i_2__0 ),
        .O(wrap_burst_total_cmb[0]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT5 #(
    .INIT(32'hCCAFFFAF)) 
     \wrap_burst_total[0]_i_2__0 
       (.I0(s_axi_awsize[2]),
        .I1(Q[2]),
        .I2(s_axi_awlen[0]),
        .I3(axi_awaddr_full),
        .I4(I11[0]),
        .O(\n_0_wrap_burst_total[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000011302000)) 
     \wrap_burst_total[1]_i_1__0 
       (.I0(curr_awlen[3]),
        .I1(\n_0_wrap_burst_total[1]_i_2__0 ),
        .I2(curr_awlen[2]),
        .I3(curr_awsize[0]),
        .I4(curr_awsize[1]),
        .I5(curr_awsize[2]),
        .O(wrap_burst_total_cmb[1]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT5 #(
    .INIT(32'h335FFF5F)) 
     \wrap_burst_total[1]_i_2__0 
       (.I0(s_axi_awlen[1]),
        .I1(I11[1]),
        .I2(s_axi_awlen[0]),
        .I3(axi_awaddr_full),
        .I4(I11[0]),
        .O(\n_0_wrap_burst_total[1]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_3 
       (.I0(Q[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[0]),
        .O(curr_awsize[0]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_4 
       (.I0(Q[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[1]),
        .O(curr_awsize[1]));
LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_5 
       (.I0(Q[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awsize[2]),
        .O(curr_awsize[2]));
LUT5 #(
    .INIT(32'h80000000)) 
     \wrap_burst_total[2]_i_1__0 
       (.I0(axi_byte_div_curr_awsize),
        .I1(curr_awlen[3]),
        .I2(curr_awlen[2]),
        .I3(curr_awlen[1]),
        .I4(curr_awlen[0]),
        .O(wrap_burst_total_cmb[2]));
LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
     \wrap_burst_total[2]_i_2 
       (.I0(s_axi_awsize[0]),
        .I1(Q[0]),
        .I2(curr_awsize[2]),
        .I3(Q[1]),
        .I4(axi_awaddr_full),
        .I5(s_axi_awsize[1]),
        .O(axi_byte_div_curr_awsize));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_3__0 
       (.I0(I11[3]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[3]),
        .O(curr_awlen[3]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_4__0 
       (.I0(I11[2]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[2]),
        .O(curr_awlen[2]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_5__0 
       (.I0(I11[1]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[1]),
        .O(curr_awlen[1]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_6__0 
       (.I0(I11[0]),
        .I1(axi_awaddr_full),
        .I2(s_axi_awlen[0]),
        .O(curr_awlen[0]));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(I12));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(I12));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module bram64_axi_bram_ctrl_0_1_wrap_brst_0
   (O1,
    bram_addr_inc,
    bram_addr_ld_en,
    bram_addr_inc8_out,
    SR,
    D,
    O2,
    O3,
    narrow_bram_addr_inc,
    O4,
    O5,
    rd_adv_buf79_out,
    O6,
    curr_arlen,
    curr_arsize,
    O7,
    curr_wrap_burst_reg,
    narrow_bram_addr_inc_d1,
    narrow_addr_int,
    curr_narrow_burst,
    Q,
    axi_rd_burst,
    I1,
    I2,
    I3,
    I4,
    s_axi_aresetn,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ,
    axi_araddr_full,
    s_axi_araddr,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ,
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ,
    I5,
    s_axi_rready,
    end_brst_rd,
    brst_zero,
    axi_b2b_brst,
    axi_aresetn_d2,
    last_bram_addr,
    ar_active,
    no_ar_ack,
    I6,
    s_axi_arvalid,
    rd_addr_sm_cs,
    disable_b2b_brst,
    axi_arlen_pipe_1_or_2,
    I7,
    I8,
    s_axi_arlen,
    I9,
    s_axi_arsize,
    I10,
    I11,
    s_axi_aclk);
  output O1;
  output bram_addr_inc;
  output bram_addr_ld_en;
  output bram_addr_inc8_out;
  output [0:0]SR;
  output [7:0]D;
  output [0:0]O2;
  output O3;
  output narrow_bram_addr_inc;
  output O4;
  output O5;
  output rd_adv_buf79_out;
  output O6;
  output [3:0]curr_arlen;
  output [2:0]curr_arsize;
  output O7;
  input curr_wrap_burst_reg;
  input narrow_bram_addr_inc_d1;
  input [2:0]narrow_addr_int;
  input curr_narrow_burst;
  input [3:0]Q;
  input axi_rd_burst;
  input I1;
  input I2;
  input I3;
  input I4;
  input s_axi_aresetn;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  input axi_araddr_full;
  input [8:0]s_axi_araddr;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  input \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  input I5;
  input s_axi_rready;
  input end_brst_rd;
  input brst_zero;
  input axi_b2b_brst;
  input axi_aresetn_d2;
  input last_bram_addr;
  input ar_active;
  input no_ar_ack;
  input I6;
  input s_axi_arvalid;
  input rd_addr_sm_cs;
  input disable_b2b_brst;
  input axi_arlen_pipe_1_or_2;
  input I7;
  input I8;
  input [3:0]s_axi_arlen;
  input [3:0]I9;
  input [2:0]s_axi_arsize;
  input [2:0]I10;
  input I11;
  input s_axi_aclk;

  wire [7:0]D;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ;
  wire \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ;
  wire I1;
  wire [2:0]I10;
  wire I11;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire [3:0]I9;
  wire O1;
  wire [0:0]O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire [3:0]Q;
  wire [0:0]SR;
  wire ar_active;
  wire axi_araddr_full;
  wire axi_aresetn_d2;
  wire axi_arlen_pipe_1_or_2;
  wire axi_b2b_brst;
  wire [0:0]axi_byte_div_curr_arsize;
  wire axi_rd_burst;
  wire bram_addr_inc;
  wire bram_addr_inc8_out;
  wire bram_addr_ld_en;
  wire brst_zero;
  wire [3:0]curr_arlen;
  wire [2:0]curr_arsize;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire end_brst_rd;
  wire last_bram_addr;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 ;
  wire \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0 ;
  wire \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 ;
  wire \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[11]_i_3 ;
  wire \n_0_save_init_bram_addr_ld[12]_i_2 ;
  wire \n_0_save_init_bram_addr_ld[12]_i_3 ;
  wire \n_0_save_init_bram_addr_ld[4]_i_2__0 ;
  wire \n_0_save_init_bram_addr_ld[5]_i_2__0 ;
  wire \n_0_save_init_bram_addr_ld[6]_i_2 ;
  wire \n_0_save_init_bram_addr_ld_reg[10] ;
  wire \n_0_save_init_bram_addr_ld_reg[11] ;
  wire \n_0_save_init_bram_addr_ld_reg[4] ;
  wire \n_0_save_init_bram_addr_ld_reg[5] ;
  wire \n_0_save_init_bram_addr_ld_reg[6] ;
  wire \n_0_save_init_bram_addr_ld_reg[7] ;
  wire \n_0_save_init_bram_addr_ld_reg[8] ;
  wire \n_0_save_init_bram_addr_ld_reg[9] ;
  wire \n_0_wrap_burst_total[0]_i_2 ;
  wire \n_0_wrap_burst_total[1]_i_2 ;
  wire \n_0_wrap_burst_total_reg[0] ;
  wire \n_0_wrap_burst_total_reg[1] ;
  wire \n_0_wrap_burst_total_reg[2] ;
  wire [2:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire no_ar_ack;
  wire rd_addr_sm_cs;
  wire rd_adv_buf79_out;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_rready;
  wire [2:0]wrap_burst_total_cmb;

(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00007FFF)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 ),
        .I1(curr_wrap_burst_reg),
        .I2(bram_addr_inc),
        .I3(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I4(bram_addr_ld_en),
        .O(O1));
LUT6 #(
    .INIT(64'h5D00000000000000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2 
       (.I0(curr_narrow_burst),
        .I1(narrow_bram_addr_inc),
        .I2(narrow_bram_addr_inc_d1),
        .I3(bram_addr_inc),
        .I4(curr_wrap_burst_reg),
        .I5(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 ),
        .O(O3));
LUT5 #(
    .INIT(32'hFF2F0020)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 
       (.I0(O7),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[2] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .I4(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0 ),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 ));
LUT6 #(
    .INIT(64'h44C004C000C000C0)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(I2),
        .I2(\n_0_wrap_burst_total_reg[0] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .I4(I3),
        .I5(I4),
        .O(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0 ));
LUT4 #(
    .INIT(16'h8000)) 
     \GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_2__0 
       (.I0(I11),
        .I1(I4),
        .I2(I2),
        .I3(I3),
        .O(O7));
LUT5 #(
    .INIT(32'h00000008)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0 
       (.I0(curr_narrow_burst),
        .I1(bram_addr_inc),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[2]),
        .O(narrow_bram_addr_inc));
LUT6 #(
    .INIT(64'h000000008A8ABA8A)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0 
       (.I0(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(bram_addr_inc8_out),
        .I4(Q[0]),
        .I5(Q[3]),
        .O(bram_addr_inc));
LUT6 #(
    .INIT(64'h0000EE00F0F3EE00)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 
       (.I0(axi_rd_burst),
        .I1(I1),
        .I2(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4 ),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(Q[2]),
        .O(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3 ));
LUT6 #(
    .INIT(64'h0000808000000080)) 
     \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4 
       (.I0(Q[0]),
        .I1(I5),
        .I2(s_axi_rready),
        .I3(end_brst_rd),
        .I4(brst_zero),
        .I5(axi_b2b_brst),
        .O(\n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \GEN_RDATA_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_5 
       (.I0(I5),
        .I1(s_axi_rready),
        .O(rd_adv_buf79_out));
LUT5 #(
    .INIT(32'h00040000)) 
     axi_b2b_brst_i_2
       (.I0(disable_b2b_brst),
        .I1(axi_araddr_full),
        .I2(axi_arlen_pipe_1_or_2),
        .I3(I7),
        .I4(I8),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     bram_en_int_i_6
       (.I0(s_axi_rready),
        .I1(I5),
        .I2(end_brst_rd),
        .I3(brst_zero),
        .O(bram_addr_inc8_out));
LUT1 #(
    .INIT(2'h1)) 
     bram_rst_b_INST_0
       (.I0(s_axi_aresetn),
        .O(SR));
LUT2 #(
    .INIT(4'h2)) 
     no_ar_ack_i_2
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(O6));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[10]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld_reg[10] ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[6]),
        .O(D[6]));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[11]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld_reg[11] ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[7]),
        .O(D[7]));
LUT6 #(
    .INIT(64'h00000004FFFFFFFF)) 
     \save_init_bram_addr_ld[11]_i_2 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(bram_addr_inc),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[1]),
        .I4(narrow_addr_int[2]),
        .I5(curr_narrow_burst),
        .O(\n_0_save_init_bram_addr_ld[11]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h7F)) 
     \save_init_bram_addr_ld[11]_i_3 
       (.I0(\n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0 ),
        .I1(curr_wrap_burst_reg),
        .I2(bram_addr_inc),
        .O(\n_0_save_init_bram_addr_ld[11]_i_3 ));
LUT4 #(
    .INIT(16'h88A8)) 
     \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(axi_aresetn_d2),
        .I1(\n_0_save_init_bram_addr_ld[12]_i_3 ),
        .I2(last_bram_addr),
        .I3(O4),
        .O(bram_addr_ld_en));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \save_init_bram_addr_ld[12]_i_2 
       (.I0(O2),
        .I1(O3),
        .I2(\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg ),
        .I3(axi_araddr_full),
        .I4(s_axi_araddr[8]),
        .O(\n_0_save_init_bram_addr_ld[12]_i_2 ));
LUT6 #(
    .INIT(64'h0000000001010100)) 
     \save_init_bram_addr_ld[12]_i_3 
       (.I0(ar_active),
        .I1(no_ar_ack),
        .I2(I6),
        .I3(axi_araddr_full),
        .I4(s_axi_arvalid),
        .I5(rd_addr_sm_cs),
        .O(\n_0_save_init_bram_addr_ld[12]_i_3 ));
LUT6 #(
    .INIT(64'h5D5DFF5D5D5D5D5D)) 
     \save_init_bram_addr_ld[12]_i_4 
       (.I0(O5),
        .I1(brst_zero),
        .I2(rd_adv_buf79_out),
        .I3(O6),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(O4));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[4]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld[4]_i_2__0 ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[0]),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hC0B0)) 
     \save_init_bram_addr_ld[4]_i_2__0 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_save_init_bram_addr_ld_reg[4] ),
        .I3(\n_0_wrap_burst_total_reg[1] ),
        .O(\n_0_save_init_bram_addr_ld[4]_i_2__0 ));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[5]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld[5]_i_2__0 ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[1]),
        .O(D[1]));
LUT4 #(
    .INIT(16'hBD00)) 
     \save_init_bram_addr_ld[5]_i_2__0 
       (.I0(\n_0_wrap_burst_total_reg[2] ),
        .I1(\n_0_wrap_burst_total_reg[0] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[5] ),
        .O(\n_0_save_init_bram_addr_ld[5]_i_2__0 ));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[6]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld[6]_i_2 ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[2]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hFB00)) 
     \save_init_bram_addr_ld[6]_i_2 
       (.I0(\n_0_wrap_burst_total_reg[0] ),
        .I1(\n_0_wrap_burst_total_reg[2] ),
        .I2(\n_0_wrap_burst_total_reg[1] ),
        .I3(\n_0_save_init_bram_addr_ld_reg[6] ),
        .O(\n_0_save_init_bram_addr_ld[6]_i_2 ));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[7]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld_reg[7] ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[3]),
        .O(D[3]));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[8]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld_reg[8] ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[4]),
        .O(D[4]));
LUT6 #(
    .INIT(64'hFB08FBFBFB080808)) 
     \save_init_bram_addr_ld[9]_i_1 
       (.I0(\n_0_save_init_bram_addr_ld_reg[9] ),
        .I1(\n_0_save_init_bram_addr_ld[11]_i_2 ),
        .I2(\n_0_save_init_bram_addr_ld[11]_i_3 ),
        .I3(\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg ),
        .I4(axi_araddr_full),
        .I5(s_axi_araddr[5]),
        .O(D[5]));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[6]),
        .Q(\n_0_save_init_bram_addr_ld_reg[10] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[7]),
        .Q(\n_0_save_init_bram_addr_ld_reg[11] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(\n_0_save_init_bram_addr_ld[12]_i_2 ),
        .Q(O2),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[4] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[0]),
        .Q(\n_0_save_init_bram_addr_ld_reg[4] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[1]),
        .Q(\n_0_save_init_bram_addr_ld_reg[5] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[2]),
        .Q(\n_0_save_init_bram_addr_ld_reg[6] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[3]),
        .Q(\n_0_save_init_bram_addr_ld_reg[7] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[4]),
        .Q(\n_0_save_init_bram_addr_ld_reg[8] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(D[5]),
        .Q(\n_0_save_init_bram_addr_ld_reg[9] ),
        .R(SR));
LUT6 #(
    .INIT(64'h000000000A04A400)) 
     \wrap_burst_total[0]_i_1 
       (.I0(curr_arlen[2]),
        .I1(curr_arsize[1]),
        .I2(curr_arlen[3]),
        .I3(curr_arlen[1]),
        .I4(curr_arsize[0]),
        .I5(\n_0_wrap_burst_total[0]_i_2 ),
        .O(wrap_burst_total_cmb[0]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hCCAFFFAF)) 
     \wrap_burst_total[0]_i_2 
       (.I0(s_axi_arsize[2]),
        .I1(I10[2]),
        .I2(s_axi_arlen[0]),
        .I3(axi_araddr_full),
        .I4(I9[0]),
        .O(\n_0_wrap_burst_total[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000013102000)) 
     \wrap_burst_total[1]_i_1 
       (.I0(curr_arlen[3]),
        .I1(\n_0_wrap_burst_total[1]_i_2 ),
        .I2(curr_arsize[0]),
        .I3(curr_arlen[2]),
        .I4(curr_arsize[1]),
        .I5(curr_arsize[2]),
        .O(wrap_burst_total_cmb[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h335FFF5F)) 
     \wrap_burst_total[1]_i_2 
       (.I0(s_axi_arlen[0]),
        .I1(I9[0]),
        .I2(s_axi_arlen[1]),
        .I3(axi_araddr_full),
        .I4(I9[1]),
        .O(\n_0_wrap_burst_total[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_3__0 
       (.I0(I10[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[0]),
        .O(curr_arsize[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_4__0 
       (.I0(I10[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[1]),
        .O(curr_arsize[1]));
LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[1]_i_5__0 
       (.I0(I10[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arsize[2]),
        .O(curr_arsize[2]));
LUT5 #(
    .INIT(32'h80000000)) 
     \wrap_burst_total[2]_i_1 
       (.I0(axi_byte_div_curr_arsize),
        .I1(curr_arlen[2]),
        .I2(curr_arlen[3]),
        .I3(curr_arlen[0]),
        .I4(curr_arlen[1]),
        .O(wrap_burst_total_cmb[2]));
LUT6 #(
    .INIT(64'h0C000A0A0C000000)) 
     \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_arsize[0]),
        .I1(I10[0]),
        .I2(curr_arsize[2]),
        .I3(I10[1]),
        .I4(axi_araddr_full),
        .I5(s_axi_arsize[1]),
        .O(axi_byte_div_curr_arsize));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_3 
       (.I0(I9[2]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[2]),
        .O(curr_arlen[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_4 
       (.I0(I9[3]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[3]),
        .O(curr_arlen[3]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_5 
       (.I0(I9[0]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[0]),
        .O(curr_arlen[0]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \wrap_burst_total[2]_i_6 
       (.I0(I9[1]),
        .I1(axi_araddr_full),
        .I2(s_axi_arlen[1]),
        .O(curr_arlen[1]));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[0]),
        .Q(\n_0_wrap_burst_total_reg[0] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[1]),
        .Q(\n_0_wrap_burst_total_reg[1] ),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(bram_addr_ld_en),
        .D(wrap_burst_total_cmb[2]),
        .Q(\n_0_wrap_burst_total_reg[2] ),
        .R(SR));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
