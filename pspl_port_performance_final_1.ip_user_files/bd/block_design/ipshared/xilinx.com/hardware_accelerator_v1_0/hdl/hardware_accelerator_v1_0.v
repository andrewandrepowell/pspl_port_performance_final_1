`timescale 1 ns / 1 ps

module hardware_accelerator_v1_0 #(

    // Global parameters
    parameter integer C_bram_size = 8192,  // Definitely don't change
    parameter integer C_fsm_width = 8,      // Definitely don't change
    parameter integer C_buffer_size = 4,    // Must be a power of 2 greater than 2
    
    // Parameters of Axi Slave Bus Interface s_axi_lite_registers
    parameter integer C_s_axi_lite_registers_DATA_WIDTH	= 32,
    parameter integer C_s_axi_lite_registers_ADDR_WIDTH	= 8,

    // Parameters of Axi Master Bus Interface m_axi_full_data
    parameter integer C_m_axi_full_data_ID              = 0,
    parameter integer C_m_axi_full_data_ID_WIDTH	    = 1,
    parameter integer C_m_axi_full_data_ADDR_WIDTH	    = 32,
    parameter integer C_m_axi_full_data_DATA_WIDTH      = 32,
    parameter integer C_m_axi_full_data_AWUSER_WIDTH	= 1,
    parameter integer C_m_axi_full_data_ARUSER_WIDTH	= 1,
    parameter integer C_m_axi_full_data_WUSER_WIDTH	    = 0,
    parameter integer C_m_axi_full_data_RUSER_WIDTH	    = 0,
    parameter integer C_m_axi_full_data_BUSER_WIDTH	    = 0
)(
    // Synchronization signals
    input wire s_axi_aclk,
    input wire s_axi_aresetn,
    input wire enable,
    output reg ready = 0,

    // Interface to the hardware accelerator's Registers
    // Ports of Axi Slave Bus Interface s_axi_lite_registers
    input wire [C_s_axi_lite_registers_ADDR_WIDTH-1 : 0] s_axi_lite_registers_awaddr,
    input wire [2 : 0] s_axi_lite_registers_awprot,
    input wire  s_axi_lite_registers_awvalid,
    output reg  s_axi_lite_registers_awready=0,
    input wire [C_s_axi_lite_registers_DATA_WIDTH-1 : 0] s_axi_lite_registers_wdata,
    input wire [(C_s_axi_lite_registers_DATA_WIDTH/8)-1 : 0] s_axi_lite_registers_wstrb,
    input wire  s_axi_lite_registers_wvalid,
    output reg  s_axi_lite_registers_wready=0,
    output wire [1 : 0] s_axi_lite_registers_bresp,
    output reg  s_axi_lite_registers_bvalid=0,
    input wire  s_axi_lite_registers_bready,
    input wire [C_s_axi_lite_registers_ADDR_WIDTH-1 : 0] s_axi_lite_registers_araddr,
    input wire [2 : 0] s_axi_lite_registers_arprot,
    input wire  s_axi_lite_registers_arvalid,
    output reg  s_axi_lite_registers_arready=0,
    output reg [C_s_axi_lite_registers_DATA_WIDTH-1 : 0] s_axi_lite_registers_rdata=0,
    output wire [1 : 0] s_axi_lite_registers_rresp,
    output reg  s_axi_lite_registers_rvalid=0,
    input wire  s_axi_lite_registers_rready,

    // Interface to the data
    // Ports of Axi Master Bus Interface m_axi_full_data
    output wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_awid,
    output wire [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_awaddr_wire,
    output wire [7 : 0] m_axi_full_data_awlen,
    output wire [2 : 0] m_axi_full_data_awsize,
    output wire [1 : 0] m_axi_full_data_awburst,
    output wire  m_axi_full_data_awlock,
    output wire [3 : 0] m_axi_full_data_awcache,
    output wire [2 : 0] m_axi_full_data_awprot,
    output wire [3 : 0] m_axi_full_data_awqos,
    output wire [C_m_axi_full_data_AWUSER_WIDTH-1 : 0] m_axi_full_data_awuser,
    output reg  m_axi_full_data_awvalid = 0,
    input wire  m_axi_full_data_awready,
    output reg [C_m_axi_full_data_DATA_WIDTH-1 : 0] m_axi_full_data_wdata=0,
    output wire [C_m_axi_full_data_DATA_WIDTH/8-1 : 0] m_axi_full_data_wstrb,
    output reg  m_axi_full_data_wlast = 0,
    output wire [C_m_axi_full_data_WUSER_WIDTH-1 : 0] m_axi_full_data_wuser,
    output reg  m_axi_full_data_wvalid = 0,
    input wire  m_axi_full_data_wready,
    input wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_bid,
    input wire [1 : 0] m_axi_full_data_bresp,
    input wire [C_m_axi_full_data_BUSER_WIDTH-1 : 0] m_axi_full_data_buser,
    input wire  m_axi_full_data_bvalid,
    output reg  m_axi_full_data_bready = 0,
    output wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_arid,
    output wire [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_araddr_wire,
    output wire [7 : 0] m_axi_full_data_arlen,
    output wire [2 : 0] m_axi_full_data_arsize,
    output wire [1 : 0] m_axi_full_data_arburst,
    output wire  m_axi_full_data_arlock,
    output wire [3 : 0] m_axi_full_data_arcache,
    output wire [2 : 0] m_axi_full_data_arprot,
    output wire [3 : 0] m_axi_full_data_arqos,
    output wire [C_m_axi_full_data_ARUSER_WIDTH-1 : 0] m_axi_full_data_aruser,
    output reg  m_axi_full_data_arvalid = 0,
    input wire  m_axi_full_data_arready,
    input wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_rid,
    input wire [C_m_axi_full_data_DATA_WIDTH-1 : 0] m_axi_full_data_rdata,
    input wire [1 : 0] m_axi_full_data_rresp,
    input wire  m_axi_full_data_rlast,
    input wire [C_m_axi_full_data_RUSER_WIDTH-1 : 0] m_axi_full_data_ruser,
    input wire  m_axi_full_data_rvalid,
    output reg  m_axi_full_data_rready = 0
);

// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.                      
function integer clogb2 (input integer bit_depth);              
    begin                                                           
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
            bit_depth = bit_depth >> 1;                                 
    end                                                           
endfunction  

////////////////
// Parameters //
////////////////

localparam integer C_sync_state_width = 8;
localparam integer 
    C_sync_WAIT_FOR_ENABLE=0,
    C_sync_CHECK=C_sync_WAIT_FOR_ENABLE+1,
    C_sync_CHECK_SEPARATED=C_sync_CHECK+1,
    C_sync_CHECK_MIXED=C_sync_CHECK_SEPARATED+2,
    C_sync_CHECK_FULLY_MIX=C_sync_CHECK_MIXED+2,
    C_sync_READY=C_sync_CHECK_FULLY_MIX+2;
localparam integer 
    C_m_axi_full_data_w_WAIT_FOR_ENABLE=0,
    C_m_axi_full_data_w_SEND_ADDRESS=C_m_axi_full_data_w_WAIT_FOR_ENABLE+1,
    C_m_axi_full_data_w_TRANSFER_BURST=C_m_axi_full_data_w_SEND_ADDRESS+1,
    C_m_axi_full_data_w_CHECK=C_m_axi_full_data_w_TRANSFER_BURST+2,
    C_m_axi_full_data_w_READY=C_m_axi_full_data_w_CHECK+1;
localparam integer 
    C_m_axi_full_data_r_WAIT_FOR_ENABLE=0,
    C_m_axi_full_data_r_SEND_ADDRESS=C_m_axi_full_data_r_WAIT_FOR_ENABLE+1,
    C_m_axi_full_data_r_RECEIVE_BURST=C_m_axi_full_data_r_SEND_ADDRESS+1,
    C_m_axi_full_data_r_READY=C_m_axi_full_data_r_RECEIVE_BURST+3;
localparam integer C_m_axi_full_data_largest_burst_size = 256; // words
localparam integer C_m_axi_full_data_burst_counter_width = clogb2(C_m_axi_full_data_largest_burst_size);
localparam integer C_m_axi_full_data_state_width = C_fsm_width;
localparam integer 
    C_s_axi_lite_registers_w_RECEIVE_ADDRESS=0,
    C_s_axi_lite_registers_w_RECEIVE_WORD=C_s_axi_lite_registers_w_RECEIVE_ADDRESS+1,
    C_s_axi_lite_registers_w_CHECK=C_s_axi_lite_registers_w_RECEIVE_WORD+1;
localparam integer 
    C_s_axi_lite_registers_r_RECEIVE_ADDRESS=0,
    C_s_axi_lite_registers_r_TRANSFER_WORD=C_s_axi_lite_registers_r_RECEIVE_ADDRESS+1;
localparam integer C_s_axi_lite_registers_state_width = C_fsm_width;
localparam integer C_buffer_state_width = C_fsm_width;
localparam integer 
    C_axi_to_bram_WAIT_FOR_ENABLE=0,
    C_axi_to_bram_SEND_ADDRESS=C_axi_to_bram_WAIT_FOR_ENABLE+1,
    C_axi_to_bram_TRANSFER_BURST=C_axi_to_bram_SEND_ADDRESS+1,
    C_axi_to_bram_CHECK=C_axi_to_bram_TRANSFER_BURST+2,
    C_axi_to_bram_READY=C_axi_to_bram_CHECK+1;
localparam integer 
    C_bram_to_axi_WAIT_FOR_ENABLE=0,
    C_bram_to_axi_SEND_ADDRESS=C_bram_to_axi_WAIT_FOR_ENABLE+1,
    C_bram_to_axi_RECEIVE_BURST=C_bram_to_axi_SEND_ADDRESS+1,
    C_bram_to_axi_READY=C_bram_to_axi_RECEIVE_BURST+3;
localparam integer 
    C_ha_operation_mode_SEPARATE  = 0,
    C_ha_operation_mode_MIX       = 1,
    C_ha_operation_mode_FULLY_MIX = 2;
localparam integer
    C_ha_s_axi_lite_registers_addr_OPERATION_MODE=0,
    C_ha_s_axi_lite_registers_addr_BURST_SIZE=4,
    C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE=8,
    C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS=12,
    C_ha_s_axi_lite_registers_addr_READ_ADDRESS=16,
    C_ha_s_axi_lite_registers_addr_WRITE_COHERENT_FLAG=20,
    C_ha_s_axi_lite_registers_addr_READ_COHERENT_FLAG=24;
localparam integer C_ha_WRITE     = 1;
localparam integer C_ha_READ      = 0;

//////////
// Nets //
//////////

                            wire    m_axi_bram_aclk; 
                            wire    m_axi_bram_aresetn; 
(* dont_touch = "true" *)   reg     [12:0] m_axi_full_bram_araddr=0; 
                            wire    [1:0]m_axi_full_bram_arburst; 
                            wire    [3:0]m_axi_full_bram_arcache; 
                            wire    [7:0]m_axi_full_bram_arlen; 
                            wire    m_axi_full_bram_arlock; 
                            wire    [2:0]m_axi_full_bram_arprot; 
                            wire    m_axi_full_bram_arready;
                            wire    [2:0]m_axi_full_bram_arsize; 
(* dont_touch = "true" *)   reg     m_axi_full_bram_arvalid=0;
(* dont_touch = "true" *)   reg     [12:0]m_axi_full_bram_awaddr=0; 
                            wire    [1:0]m_axi_full_bram_awburst;
                            wire    [3:0]m_axi_full_bram_awcache;
                            wire    [7:0]m_axi_full_bram_awlen; 
                            wire    m_axi_full_bram_awlock; 
                            wire    [2:0]m_axi_full_bram_awprot;
                            wire    m_axi_full_bram_awready;
                            wire    [2:0]m_axi_full_bram_awsize; 
(* dont_touch = "true" *)   reg     m_axi_full_bram_awvalid=0;
(* dont_touch = "true" *)   reg     m_axi_full_bram_bready=0; 
                            wire    [1:0]m_axi_full_bram_bresp;
                            wire    m_axi_full_bram_bvalid;
                            wire    [C_m_axi_full_data_DATA_WIDTH-1:0]m_axi_full_bram_rdata;
                            wire    m_axi_full_bram_rlast;
(* dont_touch = "true" *)   reg     m_axi_full_bram_rready=0; 
                            wire    [1:0]m_axi_full_bram_rresp;
                            wire    m_axi_full_bram_rvalid;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_DATA_WIDTH-1:0]m_axi_full_bram_wdata=0; 
(* dont_touch = "true" *)   reg     m_axi_full_bram_wlast=0; 
                            wire    m_axi_full_bram_wready;
                            wire    [C_m_axi_full_data_DATA_WIDTH/8-1:0]m_axi_full_bram_wstrb; 
(* dont_touch = "true" *)   reg     m_axi_full_bram_wvalid=0; 

                            reg     [C_sync_state_width-1:0]sync_state = C_sync_WAIT_FOR_ENABLE;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_burst_counter_width-1:0] m_axi_full_w_burst_counter = 0; 
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_burst_counter_width-1:0] m_axi_full_r_burst_counter = 0;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_awaddr = 0;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_araddr = 0;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_state_width-1:0] m_axi_full_data_w_state = 0;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_state_width-1:0] m_axi_full_data_r_state = 0;
(* dont_touch = "true" *)   reg     m_axi_full_data_w_enable    = 0;
(* dont_touch = "true" *)   reg     m_axi_full_data_w_ready     = 0;
(* dont_touch = "true" *)   reg     m_axi_full_data_r_enable    = 0;
(* dont_touch = "true" *)   reg     m_axi_full_data_r_ready     = 0;
                            reg     [C_s_axi_lite_registers_state_width-1:0] s_axi_lite_registers_w_state = 0;
                            reg     [C_s_axi_lite_registers_state_width-1:0] s_axi_lite_registers_r_state = 0;

(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_ADDR_WIDTH-1: 0] s_axi_lite_registers_awaddr_reg = 0;
(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_ADDR_WIDTH-1: 0] s_axi_lite_registers_araddr_reg = 0;
(* ram_style = "block" *)   reg     [C_m_axi_full_data_DATA_WIDTH-1:0] bram_to_axi_buffer   [0:C_buffer_size-1];
(* ram_style = "block" *)   reg     [C_m_axi_full_data_DATA_WIDTH-1:0] axi_to_bram_buffer   [0:C_buffer_size-1];
(* ram_style = "block" *)   reg     [C_m_axi_full_data_DATA_WIDTH-1:0] axi_to_axi_buffer    [0:C_buffer_size-1];
(* dont_touch = "true" *)   reg     bram_to_axi_enable = 0;
(* dont_touch = "true" *)   reg     axi_to_bram_enable = 0;
(* dont_touch = "true" *)   reg     bram_to_axi_ready = 0;
(* dont_touch = "true" *)   reg     axi_to_bram_ready = 0;

                            reg     [C_buffer_state_width-1:0] bram_to_axi_state = 0;
                            reg     [C_buffer_state_width-1:0] axi_to_bram_state = 0;
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_burst_counter_width-1:0] bram_to_axi_burst_counter = 0; 
(* dont_touch = "true" *)   reg     [C_m_axi_full_data_burst_counter_width-1:0] axi_to_bram_burst_counter = 0;

(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_DATA_WIDTH-1:0] m_axi_full_data_burst_len   = 16;
(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_operation_mode           = C_ha_operation_mode_SEPARATE;
(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_transfer_size            = 16; // bytes
(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_write_address            = 0;
(* dont_touch = "true" *)   reg     [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_read_address             = 0;
(* dont_touch = "true" *)   reg     ha_write_read_flag                                                  = 0;
(* dont_touch = "true" *)   reg     m_axi_full_data_w_coherent_flag                                     = 1;
(* dont_touch = "true" *)   reg     m_axi_full_data_r_coherent_flag                                     = 1;

wire [C_m_axi_full_data_ADDR_WIDTH-1:0] ha_write_next_address           = m_axi_full_data_awaddr+m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] ha_read_next_address            = m_axi_full_data_araddr+m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire ha_write_is_finished                                               = m_axi_full_data_awaddr==ha_transfer_size;
wire ha_read_is_finished                                                = m_axi_full_data_araddr==ha_transfer_size;
wire ha_operation_mode_separate                                         = ha_operation_mode==C_ha_operation_mode_SEPARATE;
wire ha_operation_mode_mix                                              = ha_operation_mode==C_ha_operation_mode_MIX;
wire ha_operation_mode_fully_mix                                        = ha_operation_mode==C_ha_operation_mode_FULLY_MIX;
wire ha_s_axi_lite_registers_w_operation_mode                           = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_OPERATION_MODE;
wire ha_s_axi_lite_registers_w_burst_size                               = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_BURST_SIZE;
wire ha_s_axi_lite_registers_w_transfer_size                            = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE;
wire ha_s_axi_lite_registers_w_write_address                            = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS;
wire ha_s_axi_lite_registers_w_read_address                             = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_READ_ADDRESS;
wire ha_s_axi_lite_registers_w_write_coherent                           = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_COHERENT_FLAG;
wire ha_s_axi_lite_registers_w_read_coherent                            = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_READ_COHERENT_FLAG;
wire ha_s_axi_lite_registers_r_operation_mode                           = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_OPERATION_MODE;
wire ha_s_axi_lite_registers_r_burst_size                               = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_BURST_SIZE;
wire ha_s_axi_lite_registers_r_transfer_size                            = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE;
wire ha_s_axi_lite_registers_r_write_address                            = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS;
wire ha_s_axi_lite_registers_r_read_address                             = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_READ_ADDRESS;
wire ha_s_axi_lite_registers_r_write_coherent                           = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_COHERENT_FLAG;
wire ha_s_axi_lite_registers_r_read_coherent                            = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_READ_COHERENT_FLAG;
wire ha_w_r_burst_counter_eq                                            = m_axi_full_w_burst_counter==m_axi_full_r_burst_counter;  
wire ha_axi_to_bram_axi_full_r_eq                                       = axi_to_bram_burst_counter==m_axi_full_r_burst_counter;
wire ha_bram_to_axi_axi_full_w_eq                                       = bram_to_axi_burst_counter==m_axi_full_w_burst_counter;  
wire ha_m_axi_r_buffer_avail                                            = ((ha_operation_mode_fully_mix==1)&&
                                                                          ((m_axi_full_r_burst_counter-m_axi_full_w_burst_counter)!=C_buffer_size))||
                                                                          (((ha_operation_mode_mix==1)||(ha_operation_mode_separate==1))&&
                                                                          ((m_axi_full_r_burst_counter-axi_to_bram_burst_counter)!=C_buffer_size));      
wire ha_bram_to_axi_buffer_avail                                        = ((bram_to_axi_burst_counter-m_axi_full_w_burst_counter)!=C_buffer_size);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] bram_to_axi_next_address = m_axi_full_bram_araddr+
                                                                   m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] axi_to_bram_next_address = m_axi_full_bram_awaddr+
                                                                   m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);                                                               

// Assignments of Axi Slave Bus Interface s_axi_lite_registers
assign s_axi_lite_registers_bresp   = 'b0;
assign s_axi_lite_registers_rresp   = 'b0;

// Assignments of Axi Master Bus Interface m_axi_full_data
assign m_axi_full_data_awaddr_wire  = m_axi_full_data_awaddr+ha_write_address;
assign m_axi_full_data_awid         = C_m_axi_full_data_ID;
assign m_axi_full_data_awlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_data_awsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1);
assign m_axi_full_data_awburst      = 2'b01;
assign m_axi_full_data_awlock       = 1'b0;
assign m_axi_full_data_awcache      = 4'b0011;
assign m_axi_full_data_awprot       = 3'h0;
assign m_axi_full_data_awqos        = 4'h0;
assign m_axi_full_data_awuser       = m_axi_full_data_w_coherent_flag;
assign m_axi_full_data_wstrb        = {(C_m_axi_full_data_DATA_WIDTH/8){1'b1}};
assign m_axi_full_data_wuser        = 'b0;
assign m_axi_full_data_araddr_wire  = m_axi_full_data_araddr+ha_read_address;
assign m_axi_full_data_arid         = C_m_axi_full_data_ID;
assign m_axi_full_data_arlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_data_arsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1);
assign m_axi_full_data_arburst      = 2'b01;
assign m_axi_full_data_arlock       = 1'b0;
assign m_axi_full_data_arcache      = 4'b0011;
assign m_axi_full_data_arprot       = 3'h0;
assign m_axi_full_data_arqos        = 4'h0;
assign m_axi_full_data_aruser       = m_axi_full_data_r_coherent_flag;
    
// Assignments of Axi full bram
assign m_axi_bram_aclk              = s_axi_aclk; 
assign m_axi_bram_aresetn           = s_axi_aresetn; 
assign m_axi_full_bram_arburst      = 2'b01; 
assign m_axi_full_bram_arcache      = 4'b0010; 
assign m_axi_full_bram_arlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_bram_arlock       = 1'b0; 
assign m_axi_full_bram_arprot       = 3'h0; 
assign m_axi_full_bram_arsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1); 
assign m_axi_full_bram_awburst      = 2'b01; 
assign m_axi_full_bram_awcache      = 4'b0010; 
assign m_axi_full_bram_awlen        = m_axi_full_data_burst_len-1; 
assign m_axi_full_bram_awlock       = 1'b0; 
assign m_axi_full_bram_awprot       = 3'h0; 
assign m_axi_full_bram_awsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1); 
assign m_axi_full_bram_wstrb        = {(C_m_axi_full_data_DATA_WIDTH/8){1'b1}};

////////////////////
// Instantiations //
////////////////////

generate
    if (C_m_axi_full_data_DATA_WIDTH==64) begin
        bram64_wrapper bram_block_design_inst
           (.s_axi_aclk(m_axi_bram_aclk),
            .s_axi_aresetn(m_axi_bram_aresetn),
            .s_axi_full_araddr(m_axi_full_bram_araddr),
            .s_axi_full_arburst(m_axi_full_bram_arburst),
            .s_axi_full_arcache(m_axi_full_bram_arcache),
            .s_axi_full_arlen(m_axi_full_bram_arlen),
            .s_axi_full_arlock(m_axi_full_bram_arlock),
            .s_axi_full_arprot(m_axi_full_bram_arprot),
            .s_axi_full_arready(m_axi_full_bram_arready),
            .s_axi_full_arsize(m_axi_full_bram_arsize),
            .s_axi_full_arvalid(m_axi_full_bram_arvalid),
            .s_axi_full_awaddr(m_axi_full_bram_awaddr),
            .s_axi_full_awburst(m_axi_full_bram_awburst),
            .s_axi_full_awcache(m_axi_full_bram_awcache),
            .s_axi_full_awlen(m_axi_full_bram_awlen),
            .s_axi_full_awlock(m_axi_full_bram_awlock),
            .s_axi_full_awprot(m_axi_full_bram_awprot),
            .s_axi_full_awready(m_axi_full_bram_awready),
            .s_axi_full_awsize(m_axi_full_bram_awsize),
            .s_axi_full_awvalid(m_axi_full_bram_awvalid),
            .s_axi_full_bready(m_axi_full_bram_bready),
            .s_axi_full_bresp(m_axi_full_bram_bresp),
            .s_axi_full_bvalid(m_axi_full_bram_bvalid),
            .s_axi_full_rdata(m_axi_full_bram_rdata),
            .s_axi_full_rlast(m_axi_full_bram_rlast),
            .s_axi_full_rready(m_axi_full_bram_rready),
            .s_axi_full_rresp(m_axi_full_bram_rresp),
            .s_axi_full_rvalid(m_axi_full_bram_rvalid),
            .s_axi_full_wdata(m_axi_full_bram_wdata),
            .s_axi_full_wlast(m_axi_full_bram_wlast),
            .s_axi_full_wready(m_axi_full_bram_wready),
            .s_axi_full_wstrb(m_axi_full_bram_wstrb),
            .s_axi_full_wvalid(m_axi_full_bram_wvalid));
    end else if (C_m_axi_full_data_DATA_WIDTH==32) begin
        bram32_wrapper bram_block_design_inst
           (.s_axi_aclk(m_axi_bram_aclk),
            .s_axi_aresetn(m_axi_bram_aresetn),
            .s_axi_full_araddr(m_axi_full_bram_araddr),
            .s_axi_full_arburst(m_axi_full_bram_arburst),
            .s_axi_full_arcache(m_axi_full_bram_arcache),
            .s_axi_full_arlen(m_axi_full_bram_arlen),
            .s_axi_full_arlock(m_axi_full_bram_arlock),
            .s_axi_full_arprot(m_axi_full_bram_arprot),
            .s_axi_full_arready(m_axi_full_bram_arready),
            .s_axi_full_arsize(m_axi_full_bram_arsize),
            .s_axi_full_arvalid(m_axi_full_bram_arvalid),
            .s_axi_full_awaddr(m_axi_full_bram_awaddr),
            .s_axi_full_awburst(m_axi_full_bram_awburst),
            .s_axi_full_awcache(m_axi_full_bram_awcache),
            .s_axi_full_awlen(m_axi_full_bram_awlen),
            .s_axi_full_awlock(m_axi_full_bram_awlock),
            .s_axi_full_awprot(m_axi_full_bram_awprot),
            .s_axi_full_awready(m_axi_full_bram_awready),
            .s_axi_full_awsize(m_axi_full_bram_awsize),
            .s_axi_full_awvalid(m_axi_full_bram_awvalid),
            .s_axi_full_bready(m_axi_full_bram_bready),
            .s_axi_full_bresp(m_axi_full_bram_bresp),
            .s_axi_full_bvalid(m_axi_full_bram_bvalid),
            .s_axi_full_rdata(m_axi_full_bram_rdata),
            .s_axi_full_rlast(m_axi_full_bram_rlast),
            .s_axi_full_rready(m_axi_full_bram_rready),
            .s_axi_full_rresp(m_axi_full_bram_rresp),
            .s_axi_full_rvalid(m_axi_full_bram_rvalid),
            .s_axi_full_wdata(m_axi_full_bram_wdata),
            .s_axi_full_wlast(m_axi_full_bram_wlast),
            .s_axi_full_wready(m_axi_full_bram_wready),
            .s_axi_full_wstrb(m_axi_full_bram_wstrb),
            .s_axi_full_wvalid(m_axi_full_bram_wvalid));
    end
endgenerate

//////////
// FSMs //
//////////

integer i;

initial 
    for (i=0;i<C_buffer_size;i=i+1) begin
        bram_to_axi_buffer[i] <= 0;
        axi_to_bram_buffer[i] <= 0;
        axi_to_axi_buffer[i] <= 0;
    end

// Synch FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        sync_state <= C_sync_WAIT_FOR_ENABLE;
        m_axi_full_data_araddr <= 0;
        m_axi_full_data_awaddr <= 0;
        m_axi_full_data_r_enable <= 0;
        m_axi_full_data_w_enable <= 0;
        ha_write_read_flag <= C_ha_READ;
        axi_to_bram_enable <= 0;
        bram_to_axi_enable <=0;
        m_axi_full_bram_awaddr <= 0;
        m_axi_full_bram_araddr <= 0;
    end 
    else 
        case (sync_state)
        C_sync_WAIT_FOR_ENABLE: begin
            ready <= 0;
            m_axi_full_data_araddr <= 0;
            m_axi_full_data_awaddr <= 0;
            m_axi_full_bram_awaddr <= 0;
            m_axi_full_bram_araddr <= 0;
            if (enable==1) begin
                m_axi_full_data_r_enable <= 1;
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    axi_to_bram_enable <= 1;
                end
                if (ha_operation_mode_fully_mix==1) begin
                    m_axi_full_data_w_enable <= 1;
                end
                ha_write_read_flag <= C_ha_READ;
                sync_state <= C_sync_CHECK;
            end
        end 
        C_sync_CHECK: begin
            if (m_axi_full_data_r_ready==1) begin
                m_axi_full_data_r_enable <= 0;
            end
            if (m_axi_full_data_w_ready==1) begin
                m_axi_full_data_w_enable <= 0;
            end
            if (axi_to_bram_ready==1) begin
                axi_to_bram_enable <= 0;
            end
            if (bram_to_axi_ready==1) begin
                bram_to_axi_enable <= 0;
            end
            if (ha_operation_mode_separate==1) begin
                sync_state <= C_sync_CHECK_SEPARATED;
            end 
            else if (ha_operation_mode_mix==1) begin
                sync_state <= C_sync_CHECK_MIXED;
            end
            else if (ha_operation_mode_fully_mix==1) begin
                sync_state <= C_sync_CHECK_FULLY_MIX;
            end
        end
        C_sync_CHECK_SEPARATED: begin
            if ((m_axi_full_data_r_enable==0)&&(axi_to_bram_enable==0)&&(ha_write_read_flag==C_ha_READ)) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_bram_awaddr <= axi_to_bram_next_address;
                sync_state <= C_sync_CHECK_SEPARATED+1;
            end 
            else if ((m_axi_full_data_w_enable==0)&&(bram_to_axi_enable==0)&&(ha_write_read_flag==C_ha_WRITE)) begin
                m_axi_full_data_awaddr <= ha_write_next_address;
                m_axi_full_bram_araddr <= bram_to_axi_next_address;
                sync_state <= C_sync_CHECK_SEPARATED+1;
            end
            else begin
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_SEPARATED+1: begin
            if (ha_write_read_flag==C_ha_READ) begin
                if (ha_read_is_finished==1) begin
                    ha_write_read_flag <= C_ha_WRITE;
                    m_axi_full_data_w_enable <= 1;
                    bram_to_axi_enable <= 1;
                end
                else begin
                    m_axi_full_data_r_enable <= 1;
                    axi_to_bram_enable <= 1;
                end
                sync_state <= C_sync_CHECK;
            end
            else if (ha_write_read_flag==C_ha_WRITE) begin
                if (ha_write_is_finished==1) begin
                    sync_state <= C_sync_READY;
                end
                else begin
                    m_axi_full_data_w_enable <= 1;
                    bram_to_axi_enable <= 1;
                    sync_state <= C_sync_CHECK;
                end
            end 
        end
        C_sync_CHECK_MIXED: begin
            if ((m_axi_full_data_r_enable==0)&&(axi_to_bram_enable==0)&&(ha_write_read_flag==C_ha_READ)) begin
                ha_write_read_flag <= C_ha_WRITE;
                m_axi_full_data_w_enable <= 1;
                bram_to_axi_enable <= 1;
            end
            if ((m_axi_full_data_w_enable==0)&&(bram_to_axi_enable==0)&&(ha_write_read_flag==C_ha_WRITE)) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_data_awaddr <= ha_write_next_address;
                m_axi_full_bram_awaddr <= axi_to_bram_next_address;
                m_axi_full_bram_araddr <= bram_to_axi_next_address;
                sync_state <= C_sync_CHECK_MIXED+1;
            end
            else begin
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_MIXED+1: begin
            if (ha_write_is_finished==1) begin
                sync_state <= C_sync_READY;
            end
            else begin
                ha_write_read_flag <= C_ha_READ;
                m_axi_full_data_r_enable <= 1;
                axi_to_bram_enable <= 1;
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_FULLY_MIX: begin
            if (m_axi_full_data_w_enable==0) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_data_awaddr <= ha_write_next_address;
                sync_state <= C_sync_CHECK_FULLY_MIX+1;
            end else begin
                sync_state <= C_sync_CHECK;
            end
            
        end
        C_sync_CHECK_FULLY_MIX+1: begin
            if (ha_write_is_finished==1) begin
                sync_state <= C_sync_READY;
            end 
            else begin
                m_axi_full_data_r_enable <= 1;
                m_axi_full_data_w_enable <= 1;
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_READY: begin
            ready <= 1;
            if (enable==0) begin
                sync_state <= C_sync_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi full r data FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
            m_axi_full_data_r_state <= C_m_axi_full_data_r_WAIT_FOR_ENABLE;
            m_axi_full_data_r_ready <= 0;
            m_axi_full_r_burst_counter <= 0;
            m_axi_full_data_arvalid <= 0;
            m_axi_full_data_rready <= 0;
            for (i=0;i<C_buffer_size;i=i+1) begin
                axi_to_bram_buffer[i] <= 0;
                axi_to_axi_buffer[i] <= 0;
            end
        end 
    else 
        case (m_axi_full_data_r_state)
        C_m_axi_full_data_r_WAIT_FOR_ENABLE: begin
            m_axi_full_data_r_ready <= 0;
            if (m_axi_full_data_r_enable==1) begin
                m_axi_full_data_r_state <= C_m_axi_full_data_r_SEND_ADDRESS;
            end
        end
        C_m_axi_full_data_r_SEND_ADDRESS: begin
            if ((m_axi_full_data_arready==1)&&(m_axi_full_data_arvalid==1)) begin
                m_axi_full_data_arvalid <= 0;
                m_axi_full_data_r_state <= C_m_axi_full_data_r_RECEIVE_BURST;
            end
            else if (m_axi_full_data_arvalid==0) begin
                m_axi_full_data_arvalid <= 1;
            end
        end
        C_m_axi_full_data_r_RECEIVE_BURST: begin
            if ((m_axi_full_data_rvalid==1)&&(m_axi_full_data_rready==1)) begin
                if (m_axi_full_data_rlast==1) begin
                    m_axi_full_data_r_state <= C_m_axi_full_data_r_READY;
                end
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    axi_to_bram_buffer[m_axi_full_r_burst_counter%C_buffer_size] <= m_axi_full_data_rdata;
                end
                else if (ha_operation_mode_fully_mix==1) begin
                    axi_to_axi_buffer[m_axi_full_r_burst_counter%C_buffer_size] <= m_axi_full_data_rdata;
                end
                if (m_axi_full_r_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_r_burst_counter <= 0;
                end 
                else begin
                    m_axi_full_r_burst_counter <= m_axi_full_r_burst_counter+1;
                end
            end
            if (ha_m_axi_r_buffer_avail==1) begin
                m_axi_full_data_rready <= 1;    
            end 
            else begin
                m_axi_full_data_rready <= 0;  
            end
        end
        C_m_axi_full_data_r_READY: begin
            m_axi_full_data_rready <= 0;
            m_axi_full_data_r_ready <= 1; 
            if (m_axi_full_data_r_enable==0) begin
                m_axi_full_data_r_state <= C_m_axi_full_data_r_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi full w data FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn == 0) begin
        m_axi_full_data_w_state <= C_m_axi_full_data_w_WAIT_FOR_ENABLE;
        m_axi_full_data_w_ready <= 0;
        m_axi_full_w_burst_counter <= 0;
        m_axi_full_data_awvalid <= 0;
        m_axi_full_data_wdata <= 0;
        m_axi_full_data_wvalid <= 0;
        m_axi_full_data_wlast <= 0;
        m_axi_full_data_bready <= 0;
    end 
    else 
        case (m_axi_full_data_w_state)
        C_m_axi_full_data_w_WAIT_FOR_ENABLE: begin
            m_axi_full_data_w_ready <= 0;
            if (m_axi_full_data_w_enable==1) begin
                m_axi_full_data_w_state <= C_m_axi_full_data_w_SEND_ADDRESS;
            end
        end
        C_m_axi_full_data_w_SEND_ADDRESS: begin
            if ((m_axi_full_data_awready==1)&&(m_axi_full_data_awvalid==1)) begin
                m_axi_full_data_awvalid <= 0;
                 m_axi_full_data_wdata <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_TRANSFER_BURST;
            end
            else if (m_axi_full_data_awvalid==0) begin
                m_axi_full_data_awvalid <= 1;
            end
        end
        C_m_axi_full_data_w_TRANSFER_BURST: begin
            if ((m_axi_full_data_wready==1)&&(m_axi_full_data_wvalid==1)) begin
                m_axi_full_data_wvalid <= 0;
                if (m_axi_full_w_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_w_burst_counter <= 0;
                end
                else begin
                    m_axi_full_w_burst_counter <= m_axi_full_w_burst_counter+1;
                end
            end
            if ((m_axi_full_data_wvalid==0)&&
                    (((ha_operation_mode_fully_mix==1)&&(ha_w_r_burst_counter_eq==0))||
                    (((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1))&&(ha_bram_to_axi_axi_full_w_eq==0)))) begin
                if (m_axi_full_w_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_data_wlast <= 1;
                end
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    m_axi_full_data_wdata <= bram_to_axi_buffer[m_axi_full_w_burst_counter%C_buffer_size];
                end
                else if (ha_operation_mode_fully_mix==1) begin
                    m_axi_full_data_wdata <= axi_to_axi_buffer[m_axi_full_w_burst_counter%C_buffer_size];
                end
                m_axi_full_data_wvalid <= 1;
            end
            if (m_axi_full_data_wlast == 1) begin
                m_axi_full_data_wlast <= 0;
                m_axi_full_data_wvalid <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_CHECK;
            end
        end
        C_m_axi_full_data_w_CHECK: begin
            if (m_axi_full_data_bready==0) begin
                m_axi_full_data_bready <= 1;
            end
            else if (m_axi_full_data_bvalid==1) begin
                m_axi_full_data_bready <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_READY;
            end
        end
        C_m_axi_full_data_w_READY: begin
            m_axi_full_data_w_ready <= 1;
            if (m_axi_full_data_w_enable==0) begin
               m_axi_full_data_w_state <= C_m_axi_full_data_w_WAIT_FOR_ENABLE; 
            end
         end
        endcase
        
// Axi to bram FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        axi_to_bram_state <= C_axi_to_bram_WAIT_FOR_ENABLE;
        axi_to_bram_burst_counter <= 0;
        m_axi_full_bram_awvalid <= 0;
        m_axi_full_bram_wdata <= 0;
        m_axi_full_bram_wvalid <= 0;
        m_axi_full_bram_wlast <= 0;
        m_axi_full_bram_bready <= 0;
    end
    else
        case (axi_to_bram_state)
        C_axi_to_bram_WAIT_FOR_ENABLE: begin
            axi_to_bram_ready <= 0;
            if (axi_to_bram_enable==1) begin
                axi_to_bram_state <= C_axi_to_bram_SEND_ADDRESS;
            end
        end
        C_axi_to_bram_SEND_ADDRESS: begin
            // Not sure if there is an error with the 
            // BRAM, but it appears the address channel is
            // captured only with the valid signal; the BRAM
            // never drives ready high.
            if ((m_axi_full_bram_awvalid==1)) begin
                m_axi_full_bram_awvalid <= 0;
                m_axi_full_bram_wdata <= 0;
                axi_to_bram_state <= C_axi_to_bram_TRANSFER_BURST;
            end
            else if (m_axi_full_bram_awvalid==0) begin
                m_axi_full_bram_awvalid <= 1;
            end
        end
        C_axi_to_bram_TRANSFER_BURST: begin
            if ((m_axi_full_bram_wready==1)&&(m_axi_full_bram_wvalid==1)) begin
                m_axi_full_bram_wvalid <= 0;
                if (axi_to_bram_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    axi_to_bram_burst_counter <= 0;
                end
                else begin
                    axi_to_bram_burst_counter <= axi_to_bram_burst_counter+1;
                end
            end
            if ((m_axi_full_bram_wvalid==0)&&(ha_axi_to_bram_axi_full_r_eq==0)) begin
                if (axi_to_bram_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_bram_wlast <= 1;
                end
                m_axi_full_bram_wdata <= axi_to_bram_buffer[axi_to_bram_burst_counter%C_buffer_size];
                m_axi_full_bram_wvalid <= 1;
            end
            if (m_axi_full_bram_wlast==1) begin
                m_axi_full_bram_wlast <= 0;
                m_axi_full_bram_wvalid <= 0;
                axi_to_bram_state <= C_axi_to_bram_CHECK;
            end
        end
        C_axi_to_bram_CHECK: begin
            if (m_axi_full_bram_bready==0) begin
                m_axi_full_bram_bready <= 1;
            end
            else if (m_axi_full_bram_bvalid==1) begin
                m_axi_full_bram_bready <= 0;
                axi_to_bram_state <= C_axi_to_bram_READY;
            end
        end
        C_axi_to_bram_READY: begin
            axi_to_bram_ready <= 1;
            if (axi_to_bram_enable==0) begin 
                axi_to_bram_state <= C_axi_to_bram_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Bram to axi fsm
always @(posedge s_axi_aclk) 
    if (s_axi_aresetn==0) begin
        bram_to_axi_state <= C_bram_to_axi_WAIT_FOR_ENABLE;
        m_axi_full_bram_arvalid <= 0;
        m_axi_full_bram_rready <= 0;
        bram_to_axi_burst_counter <= 0;
        for (i=0;i<C_buffer_size;i=i+1) begin
            bram_to_axi_buffer[i] <= 0;
        end
        bram_to_axi_ready <= 0;
    end
    else    
        case (bram_to_axi_state)
        C_bram_to_axi_WAIT_FOR_ENABLE: begin
            bram_to_axi_ready <=0;
            if (bram_to_axi_enable==1) begin
                bram_to_axi_state <= C_bram_to_axi_SEND_ADDRESS;
            end
        end
        C_bram_to_axi_SEND_ADDRESS: begin
            // Not sure if there is an error with the 
            // BRAM, but it appears the address channel is
            // captured only with the valid signal; the BRAM
            // never drives ready high.
            if ((m_axi_full_bram_arvalid==1)) begin
                m_axi_full_bram_arvalid <= 0;
                bram_to_axi_state <= C_bram_to_axi_RECEIVE_BURST;
            end
            else if (m_axi_full_data_arvalid==0) begin
                m_axi_full_bram_arvalid <= 1;
            end
        end
        C_bram_to_axi_RECEIVE_BURST: begin
            if ((m_axi_full_bram_rvalid==1)&&(m_axi_full_bram_rready==1)) begin
                if (m_axi_full_bram_rlast==1) begin
                    bram_to_axi_state <= C_bram_to_axi_READY;
                end
                bram_to_axi_buffer[bram_to_axi_burst_counter%C_buffer_size] <= m_axi_full_bram_rdata;
                if (bram_to_axi_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    bram_to_axi_burst_counter <= 0;
                end
                else begin
                    bram_to_axi_burst_counter <= bram_to_axi_burst_counter+1;
                end
            end
            if (ha_bram_to_axi_buffer_avail==1) begin
                m_axi_full_bram_rready <= 1;    
            end
            else begin
                m_axi_full_bram_rready <= 0; 
            end
        end
        C_bram_to_axi_READY: begin
            m_axi_full_bram_rready <= 0;
            bram_to_axi_ready <= 1;
            if (bram_to_axi_enable==0) begin
                bram_to_axi_state <= C_bram_to_axi_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi lite registers w FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_ADDRESS;
        s_axi_lite_registers_awready <= 0;
        s_axi_lite_registers_awaddr_reg <= 0;
        s_axi_lite_registers_wready <= 0;
        s_axi_lite_registers_bvalid <= 0;
        ha_operation_mode <= 0;
        ha_transfer_size <= 16;
        m_axi_full_data_burst_len <= 16;
        ha_write_address <= 0;
        ha_read_address <= 0;
    end
    else
        case (s_axi_lite_registers_w_state)
        C_s_axi_lite_registers_w_RECEIVE_ADDRESS: begin
            if (s_axi_lite_registers_awready==0) begin
                s_axi_lite_registers_awready <= 1;
            end
            else if (s_axi_lite_registers_awvalid==1) begin
                s_axi_lite_registers_awready <= 0;
                s_axi_lite_registers_awaddr_reg <= s_axi_lite_registers_awaddr;
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_WORD;
            end
        end
        C_s_axi_lite_registers_w_RECEIVE_WORD: begin
            if (s_axi_lite_registers_wready==0) begin
                s_axi_lite_registers_wready <= 1;
            end
            else if (s_axi_lite_registers_wvalid==1) begin
                s_axi_lite_registers_wready <= 0;
                if (ha_s_axi_lite_registers_w_operation_mode==1) begin
                    ha_operation_mode <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_burst_size==1) begin
                    m_axi_full_data_burst_len <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_transfer_size==1) begin
                    ha_transfer_size <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_write_address==1) begin
                    ha_write_address <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_read_address==1) begin
                    ha_read_address <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_write_coherent==1) begin
                    m_axi_full_data_w_coherent_flag <= s_axi_lite_registers_wdata[0];
                end
                else if (ha_s_axi_lite_registers_w_read_coherent==1) begin
                    m_axi_full_data_r_coherent_flag <= s_axi_lite_registers_wdata[0];
                end
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_CHECK;
            end
        end
        C_s_axi_lite_registers_w_CHECK: begin
            if (s_axi_lite_registers_bvalid==0) begin
                s_axi_lite_registers_bvalid <= 1;
            end
            else if (s_axi_lite_registers_bready==1) begin
                s_axi_lite_registers_bvalid <= 0;
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_ADDRESS;
            end
        end
        endcase

// Axi lite registers r FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_RECEIVE_ADDRESS;
        s_axi_lite_registers_arready <= 0;
        s_axi_lite_registers_araddr_reg <= 0;
        s_axi_lite_registers_rdata <= 0;
        s_axi_lite_registers_rvalid <= 0;
    end
    else
        case (s_axi_lite_registers_r_state)
        C_s_axi_lite_registers_r_RECEIVE_ADDRESS: begin
            if (s_axi_lite_registers_arready==0) begin
                s_axi_lite_registers_arready <= 1;
            end
            else if (s_axi_lite_registers_arvalid==1) begin
                s_axi_lite_registers_arready <= 0;
                s_axi_lite_registers_araddr_reg <= s_axi_lite_registers_araddr;
                s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_TRANSFER_WORD;
            end
        end
        C_s_axi_lite_registers_r_TRANSFER_WORD: begin
            if (s_axi_lite_registers_rvalid==0) begin
                s_axi_lite_registers_rvalid <= 1;
                if (ha_s_axi_lite_registers_r_operation_mode==1) begin
                    s_axi_lite_registers_rdata <= ha_operation_mode;
                end
                else if (ha_s_axi_lite_registers_r_burst_size==1) begin
                    s_axi_lite_registers_rdata <= m_axi_full_data_burst_len;
                end
                else if (ha_s_axi_lite_registers_r_transfer_size==1) begin
                    s_axi_lite_registers_rdata <= ha_transfer_size;
                end
                else if (ha_s_axi_lite_registers_r_write_address==1) begin
                    s_axi_lite_registers_rdata <= ha_write_address;
                end
                else if (ha_s_axi_lite_registers_r_read_address==1) begin
                    s_axi_lite_registers_rdata <= ha_read_address;
                end
                else if (ha_s_axi_lite_registers_r_write_coherent==1) begin
                    s_axi_lite_registers_rdata <= m_axi_full_data_w_coherent_flag;
                end
                else if (ha_s_axi_lite_registers_r_read_coherent==1) begin
                    s_axi_lite_registers_rdata <= m_axi_full_data_r_coherent_flag;
                end
            end
            else if (s_axi_lite_registers_rready==1) begin
                s_axi_lite_registers_rvalid <= 0;
                s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_RECEIVE_ADDRESS;
            end
        end
        endcase

endmodule

/*
`timescale 1 ns / 1 ps

module hardware_accelerator_v1_0 #(

    // Global parameters
    parameter integer C_bram_size = 8192,  // Definitely don't change
    parameter integer C_fsm_width = 8,      // Definitely don't change
    parameter integer C_buffer_size = 4,    // Must be a power of 2 greater than 2
    
    // Parameters of Axi Slave Bus Interface s_axi_lite_registers
    parameter integer C_s_axi_lite_registers_DATA_WIDTH	= 32,
    parameter integer C_s_axi_lite_registers_ADDR_WIDTH	= 8,

    // Parameters of Axi Master Bus Interface m_axi_full_data
    parameter integer C_m_axi_full_data_ID              = 0,
    parameter integer C_m_axi_full_data_ID_WIDTH	    = 1,
    parameter integer C_m_axi_full_data_ADDR_WIDTH	    = 32,
    parameter integer C_m_axi_full_data_DATA_WIDTH      = 32,
    parameter integer C_m_axi_full_data_AWUSER_WIDTH	= 1,
    parameter integer C_m_axi_full_data_ARUSER_WIDTH	= 1,
    parameter integer C_m_axi_full_data_WUSER_WIDTH	    = 0,
    parameter integer C_m_axi_full_data_RUSER_WIDTH	    = 0,
    parameter integer C_m_axi_full_data_BUSER_WIDTH	    = 0
)(
    // Synchronization signals
    input wire s_axi_aclk,
    input wire s_axi_aresetn,
    input wire enable,
    output reg ready = 0,

    // Interface to the hardware accelerator's Registers
    // Ports of Axi Slave Bus Interface s_axi_lite_registers
    input wire [C_s_axi_lite_registers_ADDR_WIDTH-1 : 0] s_axi_lite_registers_awaddr,
    input wire [2 : 0] s_axi_lite_registers_awprot,
    input wire  s_axi_lite_registers_awvalid,
    output reg  s_axi_lite_registers_awready=0,
    input wire [C_s_axi_lite_registers_DATA_WIDTH-1 : 0] s_axi_lite_registers_wdata,
    input wire [(C_s_axi_lite_registers_DATA_WIDTH/8)-1 : 0] s_axi_lite_registers_wstrb,
    input wire  s_axi_lite_registers_wvalid,
    output reg  s_axi_lite_registers_wready=0,
    output wire [1 : 0] s_axi_lite_registers_bresp,
    output reg  s_axi_lite_registers_bvalid=0,
    input wire  s_axi_lite_registers_bready,
    input wire [C_s_axi_lite_registers_ADDR_WIDTH-1 : 0] s_axi_lite_registers_araddr,
    input wire [2 : 0] s_axi_lite_registers_arprot,
    input wire  s_axi_lite_registers_arvalid,
    output reg  s_axi_lite_registers_arready=0,
    output reg [C_s_axi_lite_registers_DATA_WIDTH-1 : 0] s_axi_lite_registers_rdata=0,
    output wire [1 : 0] s_axi_lite_registers_rresp,
    output reg  s_axi_lite_registers_rvalid=0,
    input wire  s_axi_lite_registers_rready,

    // Interface to the data
    // Ports of Axi Master Bus Interface m_axi_full_data
    output wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_awid,
    output wire [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_awaddr_wire,
    output wire [7 : 0] m_axi_full_data_awlen,
    output wire [2 : 0] m_axi_full_data_awsize,
    output wire [1 : 0] m_axi_full_data_awburst,
    output wire  m_axi_full_data_awlock,
    output wire [3 : 0] m_axi_full_data_awcache,
    output wire [2 : 0] m_axi_full_data_awprot,
    output wire [3 : 0] m_axi_full_data_awqos,
    output wire [C_m_axi_full_data_AWUSER_WIDTH-1 : 0] m_axi_full_data_awuser,
    output reg  m_axi_full_data_awvalid = 0,
    input wire  m_axi_full_data_awready,
    output reg [C_m_axi_full_data_DATA_WIDTH-1 : 0] m_axi_full_data_wdata=0,
    output wire [C_m_axi_full_data_DATA_WIDTH/8-1 : 0] m_axi_full_data_wstrb,
    output reg  m_axi_full_data_wlast = 0,
    output wire [C_m_axi_full_data_WUSER_WIDTH-1 : 0] m_axi_full_data_wuser,
    output reg  m_axi_full_data_wvalid = 0,
    input wire  m_axi_full_data_wready,
    input wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_bid,
    input wire [1 : 0] m_axi_full_data_bresp,
    input wire [C_m_axi_full_data_BUSER_WIDTH-1 : 0] m_axi_full_data_buser,
    input wire  m_axi_full_data_bvalid,
    output reg  m_axi_full_data_bready = 0,
    output wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_arid,
    output wire [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_araddr_wire,
    output wire [7 : 0] m_axi_full_data_arlen,
    output wire [2 : 0] m_axi_full_data_arsize,
    output wire [1 : 0] m_axi_full_data_arburst,
    output wire  m_axi_full_data_arlock,
    output wire [3 : 0] m_axi_full_data_arcache,
    output wire [2 : 0] m_axi_full_data_arprot,
    output wire [3 : 0] m_axi_full_data_arqos,
    output wire [C_m_axi_full_data_ARUSER_WIDTH-1 : 0] m_axi_full_data_aruser,
    output reg  m_axi_full_data_arvalid = 0,
    input wire  m_axi_full_data_arready,
    input wire [C_m_axi_full_data_ID_WIDTH-1 : 0] m_axi_full_data_rid,
    input wire [C_m_axi_full_data_DATA_WIDTH-1 : 0] m_axi_full_data_rdata,
    input wire [1 : 0] m_axi_full_data_rresp,
    input wire  m_axi_full_data_rlast,
    input wire [C_m_axi_full_data_RUSER_WIDTH-1 : 0] m_axi_full_data_ruser,
    input wire  m_axi_full_data_rvalid,
    output reg  m_axi_full_data_rready = 0
);

// function called clogb2 that returns an integer which has the 
// value of the ceiling of the log base 2.                      
function integer clogb2 (input integer bit_depth);              
    begin                                                           
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)                   
            bit_depth = bit_depth >> 1;                                 
    end                                                           
endfunction  

////////////////
// Parameters //
////////////////

localparam integer C_sync_state_width = 8;
localparam integer 
    C_sync_WAIT_FOR_ENABLE=0,
    C_sync_CHECK=C_sync_WAIT_FOR_ENABLE+1,
    C_sync_CHECK_SEPARATED=C_sync_CHECK+1,
    C_sync_CHECK_MIXED=C_sync_CHECK_SEPARATED+2,
    C_sync_CHECK_FULLY_MIX=C_sync_CHECK_MIXED+2,
    C_sync_READY=C_sync_CHECK_FULLY_MIX+2;
localparam integer 
    C_m_axi_full_data_w_WAIT_FOR_ENABLE=0,
    C_m_axi_full_data_w_SEND_ADDRESS=C_m_axi_full_data_w_WAIT_FOR_ENABLE+1,
    C_m_axi_full_data_w_TRANSFER_BURST=C_m_axi_full_data_w_SEND_ADDRESS+1,
    C_m_axi_full_data_w_CHECK=C_m_axi_full_data_w_TRANSFER_BURST+2,
    C_m_axi_full_data_w_READY=C_m_axi_full_data_w_CHECK+1;
localparam integer 
    C_m_axi_full_data_r_WAIT_FOR_ENABLE=0,
    C_m_axi_full_data_r_SEND_ADDRESS=C_m_axi_full_data_r_WAIT_FOR_ENABLE+1,
    C_m_axi_full_data_r_RECEIVE_BURST=C_m_axi_full_data_r_SEND_ADDRESS+1,
    C_m_axi_full_data_r_READY=C_m_axi_full_data_r_RECEIVE_BURST+3;
localparam integer C_m_axi_full_data_largest_burst_size = 256; // words
localparam integer C_m_axi_full_data_burst_counter_width = clogb2(C_m_axi_full_data_largest_burst_size);
localparam integer C_m_axi_full_data_state_width = C_fsm_width;
localparam integer 
    C_s_axi_lite_registers_w_RECEIVE_ADDRESS=0,
    C_s_axi_lite_registers_w_RECEIVE_WORD=C_s_axi_lite_registers_w_RECEIVE_ADDRESS+1,
    C_s_axi_lite_registers_w_CHECK=C_s_axi_lite_registers_w_RECEIVE_WORD+1;
localparam integer 
    C_s_axi_lite_registers_r_RECEIVE_ADDRESS=0,
    C_s_axi_lite_registers_r_TRANSFER_WORD=C_s_axi_lite_registers_r_RECEIVE_ADDRESS+1;
localparam integer C_s_axi_lite_registers_state_width = C_fsm_width;
localparam integer C_buffer_state_width = C_fsm_width;
localparam integer 
    C_axi_to_bram_WAIT_FOR_ENABLE=0,
    C_axi_to_bram_SEND_ADDRESS=C_axi_to_bram_WAIT_FOR_ENABLE+1,
    C_axi_to_bram_TRANSFER_BURST=C_axi_to_bram_SEND_ADDRESS+1,
    C_axi_to_bram_CHECK=C_axi_to_bram_TRANSFER_BURST+2,
    C_axi_to_bram_READY=C_axi_to_bram_CHECK+1;
localparam integer 
    C_bram_to_axi_WAIT_FOR_ENABLE=0,
    C_bram_to_axi_SEND_ADDRESS=C_bram_to_axi_WAIT_FOR_ENABLE+1,
    C_bram_to_axi_RECEIVE_BURST=C_bram_to_axi_SEND_ADDRESS+1,
    C_bram_to_axi_READY=C_bram_to_axi_RECEIVE_BURST+3;
localparam integer 
    C_ha_operation_mode_SEPARATE  = 0,
    C_ha_operation_mode_MIX       = 1,
    C_ha_operation_mode_FULLY_MIX = 2;
localparam integer
    C_ha_s_axi_lite_registers_addr_OPERATION_MODE=0,
    C_ha_s_axi_lite_registers_addr_BURST_SIZE=4,
    C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE=8,
    C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS=12,
    C_ha_s_axi_lite_registers_addr_READ_ADDRESS=16;
localparam integer C_ha_WRITE     = 1;
localparam integer C_ha_READ      = 0;

//////////
// Nets //
//////////

wire m_axi_bram_aclk; 
wire m_axi_bram_aresetn; 
(* dont_touch = "true" *) reg [12:0]m_axi_full_bram_araddr=0; 
wire [1:0]m_axi_full_bram_arburst; 
wire [3:0]m_axi_full_bram_arcache; 
wire [7:0]m_axi_full_bram_arlen; 
wire m_axi_full_bram_arlock; 
wire [2:0]m_axi_full_bram_arprot; 
wire m_axi_full_bram_arready;
wire [2:0]m_axi_full_bram_arsize; 
(* dont_touch = "true" *) reg m_axi_full_bram_arvalid=0;
(* dont_touch = "true" *) reg [12:0]m_axi_full_bram_awaddr=0; 
wire [1:0]m_axi_full_bram_awburst;
wire [3:0]m_axi_full_bram_awcache;
wire [7:0]m_axi_full_bram_awlen; 
wire m_axi_full_bram_awlock; 
wire [2:0]m_axi_full_bram_awprot;
wire m_axi_full_bram_awready;
wire [2:0]m_axi_full_bram_awsize; 
(* dont_touch = "true" *) reg m_axi_full_bram_awvalid=0;
(* dont_touch = "true" *) reg m_axi_full_bram_bready=0; 
wire [1:0]m_axi_full_bram_bresp;
wire m_axi_full_bram_bvalid;
wire [C_m_axi_full_data_DATA_WIDTH-1:0]m_axi_full_bram_rdata;
wire m_axi_full_bram_rlast;
(* dont_touch = "true" *) reg m_axi_full_bram_rready=0; 
wire [1:0]m_axi_full_bram_rresp;
wire m_axi_full_bram_rvalid;
(* dont_touch = "true" *) reg [C_m_axi_full_data_DATA_WIDTH-1:0]m_axi_full_bram_wdata=0; 
(* dont_touch = "true" *) reg m_axi_full_bram_wlast=0; 
wire m_axi_full_bram_wready;
wire [C_m_axi_full_data_DATA_WIDTH/8-1:0]m_axi_full_bram_wstrb; 
(* dont_touch = "true" *) reg m_axi_full_bram_wvalid=0; 

reg [C_sync_state_width-1:0] sync_state = C_sync_WAIT_FOR_ENABLE;
(* dont_touch = "true" *) reg [C_m_axi_full_data_burst_counter_width-1:0] m_axi_full_w_burst_counter = 0; 
(* dont_touch = "true" *) reg [C_m_axi_full_data_burst_counter_width-1:0] m_axi_full_r_burst_counter = 0;
(* dont_touch = "true" *) reg [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_awaddr = 0;
(* dont_touch = "true" *) reg [C_m_axi_full_data_ADDR_WIDTH-1 : 0] m_axi_full_data_araddr = 0;
(* dont_touch = "true" *) reg [C_m_axi_full_data_state_width-1:0] m_axi_full_data_w_state = 0;
(* dont_touch = "true" *) reg [C_m_axi_full_data_state_width-1:0] m_axi_full_data_r_state = 0;
(* dont_touch = "true" *) reg m_axi_full_data_w_enable    = 0;
(* dont_touch = "true" *) reg m_axi_full_data_w_ready     = 0;
(* dont_touch = "true" *) reg m_axi_full_data_r_enable    = 0;
(* dont_touch = "true" *) reg m_axi_full_data_r_ready     = 0;
reg [C_s_axi_lite_registers_state_width-1:0] s_axi_lite_registers_w_state = 0;
reg [C_s_axi_lite_registers_state_width-1:0] s_axi_lite_registers_r_state = 0;

(* dont_touch = "true" *) reg [C_s_axi_lite_registers_ADDR_WIDTH-1: 0] s_axi_lite_registers_awaddr_reg = 0;
(* dont_touch = "true" *) reg [C_s_axi_lite_registers_ADDR_WIDTH-1: 0] s_axi_lite_registers_araddr_reg = 0;
(* ram_style = "block" *) reg [C_m_axi_full_data_DATA_WIDTH-1:0] bram_to_axi_buffer   [0:C_buffer_size-1];
(* ram_style = "block" *) reg [C_m_axi_full_data_DATA_WIDTH-1:0] axi_to_bram_buffer   [0:C_buffer_size-1];
(* ram_style = "block" *) reg [C_m_axi_full_data_DATA_WIDTH-1:0] axi_to_axi_buffer    [0:C_buffer_size-1];
(* dont_touch = "true" *) reg bram_to_axi_enable = 0;
(* dont_touch = "true" *) reg axi_to_bram_enable = 0;
(* dont_touch = "true" *) reg bram_to_axi_ready = 0;
(* dont_touch = "true" *) reg axi_to_bram_ready = 0;

reg [C_buffer_state_width-1:0] bram_to_axi_state = 0;
reg [C_buffer_state_width-1:0] axi_to_bram_state = 0;
(* dont_touch = "true" *) reg [C_m_axi_full_data_burst_counter_width-1:0] bram_to_axi_burst_counter = 0; 
(* dont_touch = "true" *) reg [C_m_axi_full_data_burst_counter_width-1:0] axi_to_bram_burst_counter = 0;

(* dont_touch = "true" *) reg [C_s_axi_lite_registers_DATA_WIDTH-1:0] m_axi_full_data_burst_len   = 16;
(* dont_touch = "true" *) reg [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_operation_mode           = C_ha_operation_mode_SEPARATE;
(* dont_touch = "true" *) reg [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_transfer_size            = 16; // bytes
(* dont_touch = "true" *) reg [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_write_address            = 0;
(* dont_touch = "true" *) reg [C_s_axi_lite_registers_DATA_WIDTH-1:0] ha_read_address             = 0;
(* dont_touch = "true" *) reg ha_write_read_flag                                                  = 0;

wire [C_m_axi_full_data_ADDR_WIDTH-1:0] ha_write_next_address           = m_axi_full_data_awaddr+m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] ha_read_next_address            = m_axi_full_data_araddr+m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire ha_write_is_finished                                               = m_axi_full_data_awaddr==ha_transfer_size;
wire ha_read_is_finished                                                = m_axi_full_data_araddr==ha_transfer_size;
wire ha_operation_mode_separate                                         = ha_operation_mode==C_ha_operation_mode_SEPARATE;
wire ha_operation_mode_mix                                              = ha_operation_mode==C_ha_operation_mode_MIX;
wire ha_operation_mode_fully_mix                                        = ha_operation_mode==C_ha_operation_mode_FULLY_MIX;
wire ha_s_axi_lite_registers_w_operation_mode                           = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_OPERATION_MODE;
wire ha_s_axi_lite_registers_w_burst_size                               = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_BURST_SIZE;
wire ha_s_axi_lite_registers_w_transfer_size                            = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE;
wire ha_s_axi_lite_registers_w_write_address                            = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS;
wire ha_s_axi_lite_registers_w_read_address                             = s_axi_lite_registers_awaddr_reg==C_ha_s_axi_lite_registers_addr_READ_ADDRESS;
wire ha_s_axi_lite_registers_r_operation_mode                           = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_OPERATION_MODE;
wire ha_s_axi_lite_registers_r_burst_size                               = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_BURST_SIZE;
wire ha_s_axi_lite_registers_r_transfer_size                            = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_TRANSFER_SIZE;
wire ha_s_axi_lite_registers_r_write_address                            = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_WRITE_ADDRESS;
wire ha_s_axi_lite_registers_r_read_address                             = s_axi_lite_registers_araddr_reg==C_ha_s_axi_lite_registers_addr_READ_ADDRESS;
wire ha_w_r_burst_counter_eq                                            = m_axi_full_w_burst_counter==m_axi_full_r_burst_counter;  
wire ha_axi_to_bram_axi_full_r_eq                                       = axi_to_bram_burst_counter==m_axi_full_r_burst_counter;
wire ha_bram_to_axi_axi_full_w_eq                                       = bram_to_axi_burst_counter==m_axi_full_w_burst_counter;  
wire ha_m_axi_r_buffer_avail                                            = ((ha_operation_mode_fully_mix==1)&&
                                                                          ((m_axi_full_r_burst_counter-m_axi_full_w_burst_counter)!=C_buffer_size))||
                                                                          (((ha_operation_mode_mix==1)||(ha_operation_mode_separate==1))&&
                                                                          ((m_axi_full_r_burst_counter-axi_to_bram_burst_counter)!=C_buffer_size));      
wire ha_bram_to_axi_buffer_avail                                        = ((bram_to_axi_burst_counter-m_axi_full_w_burst_counter)!=C_buffer_size);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] bram_to_axi_next_address = m_axi_full_bram_araddr+
                                                                   m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);
wire [C_m_axi_full_data_ADDR_WIDTH-1:0] axi_to_bram_next_address = m_axi_full_bram_awaddr+
                                                                   m_axi_full_data_burst_len*(C_m_axi_full_data_DATA_WIDTH/8);                                                               

// Assignments of Axi Slave Bus Interface s_axi_lite_registers
assign s_axi_lite_registers_bresp = 'b0;
assign s_axi_lite_registers_rresp = 'b0;

// Assignments of Axi Master Bus Interface m_axi_full_data
assign m_axi_full_data_awaddr_wire  = m_axi_full_data_awaddr+ha_write_address;
assign m_axi_full_data_awid         = C_m_axi_full_data_ID;
assign m_axi_full_data_awlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_data_awsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1);
assign m_axi_full_data_awburst      = 2'b01;
assign m_axi_full_data_awlock       = 1'b0;
assign m_axi_full_data_awcache      = 4'b0011;
assign m_axi_full_data_awprot       = 3'h0;
assign m_axi_full_data_awqos        = 4'h0;
assign m_axi_full_data_awuser       = 'b1;
assign m_axi_full_data_wstrb        = {(C_m_axi_full_data_DATA_WIDTH/8){1'b1}};
assign m_axi_full_data_wuser        = 'b0;
assign m_axi_full_data_araddr_wire  = m_axi_full_data_araddr+ha_read_address;
assign m_axi_full_data_arid         = C_m_axi_full_data_ID;
assign m_axi_full_data_arlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_data_arsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1);
assign m_axi_full_data_arburst      = 2'b01;
assign m_axi_full_data_arlock       = 1'b0;
assign m_axi_full_data_arcache      = 4'b0011;
assign m_axi_full_data_arprot       = 3'h0;
assign m_axi_full_data_arqos        = 4'h0;
assign m_axi_full_data_aruser       = 'b1;
    
// Assignments of Axi full bram
assign m_axi_bram_aclk              = s_axi_aclk; 
assign m_axi_bram_aresetn           = s_axi_aresetn; 
assign m_axi_full_bram_arburst      = 2'b01; 
assign m_axi_full_bram_arcache      = 4'b0010; 
assign m_axi_full_bram_arlen        = m_axi_full_data_burst_len-1;
assign m_axi_full_bram_arlock       = 1'b0; 
assign m_axi_full_bram_arprot       = 3'h0; 
assign m_axi_full_bram_arsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1); 
assign m_axi_full_bram_awburst      = 2'b01; 
assign m_axi_full_bram_awcache      = 4'b0010; 
assign m_axi_full_bram_awlen        = m_axi_full_data_burst_len-1; 
assign m_axi_full_bram_awlock       = 1'b0; 
assign m_axi_full_bram_awprot       = 3'h0; 
assign m_axi_full_bram_awsize       = clogb2((C_m_axi_full_data_DATA_WIDTH/8)-1); 
assign m_axi_full_bram_wstrb        = {(C_m_axi_full_data_DATA_WIDTH/8){1'b1}};

////////////////////
// Instantiations //
////////////////////

generate
    if (C_m_axi_full_data_DATA_WIDTH==64) begin
        bram64_wrapper bram_block_design_inst
           (.s_axi_aclk(m_axi_bram_aclk),
            .s_axi_aresetn(m_axi_bram_aresetn),
            .s_axi_full_araddr(m_axi_full_bram_araddr),
            .s_axi_full_arburst(m_axi_full_bram_arburst),
            .s_axi_full_arcache(m_axi_full_bram_arcache),
            .s_axi_full_arlen(m_axi_full_bram_arlen),
            .s_axi_full_arlock(m_axi_full_bram_arlock),
            .s_axi_full_arprot(m_axi_full_bram_arprot),
            .s_axi_full_arready(m_axi_full_bram_arready),
            .s_axi_full_arsize(m_axi_full_bram_arsize),
            .s_axi_full_arvalid(m_axi_full_bram_arvalid),
            .s_axi_full_awaddr(m_axi_full_bram_awaddr),
            .s_axi_full_awburst(m_axi_full_bram_awburst),
            .s_axi_full_awcache(m_axi_full_bram_awcache),
            .s_axi_full_awlen(m_axi_full_bram_awlen),
            .s_axi_full_awlock(m_axi_full_bram_awlock),
            .s_axi_full_awprot(m_axi_full_bram_awprot),
            .s_axi_full_awready(m_axi_full_bram_awready),
            .s_axi_full_awsize(m_axi_full_bram_awsize),
            .s_axi_full_awvalid(m_axi_full_bram_awvalid),
            .s_axi_full_bready(m_axi_full_bram_bready),
            .s_axi_full_bresp(m_axi_full_bram_bresp),
            .s_axi_full_bvalid(m_axi_full_bram_bvalid),
            .s_axi_full_rdata(m_axi_full_bram_rdata),
            .s_axi_full_rlast(m_axi_full_bram_rlast),
            .s_axi_full_rready(m_axi_full_bram_rready),
            .s_axi_full_rresp(m_axi_full_bram_rresp),
            .s_axi_full_rvalid(m_axi_full_bram_rvalid),
            .s_axi_full_wdata(m_axi_full_bram_wdata),
            .s_axi_full_wlast(m_axi_full_bram_wlast),
            .s_axi_full_wready(m_axi_full_bram_wready),
            .s_axi_full_wstrb(m_axi_full_bram_wstrb),
            .s_axi_full_wvalid(m_axi_full_bram_wvalid));
    end else if (C_m_axi_full_data_DATA_WIDTH==32) begin
        bram32_wrapper bram_block_design_inst
           (.s_axi_aclk(m_axi_bram_aclk),
            .s_axi_aresetn(m_axi_bram_aresetn),
            .s_axi_full_araddr(m_axi_full_bram_araddr),
            .s_axi_full_arburst(m_axi_full_bram_arburst),
            .s_axi_full_arcache(m_axi_full_bram_arcache),
            .s_axi_full_arlen(m_axi_full_bram_arlen),
            .s_axi_full_arlock(m_axi_full_bram_arlock),
            .s_axi_full_arprot(m_axi_full_bram_arprot),
            .s_axi_full_arready(m_axi_full_bram_arready),
            .s_axi_full_arsize(m_axi_full_bram_arsize),
            .s_axi_full_arvalid(m_axi_full_bram_arvalid),
            .s_axi_full_awaddr(m_axi_full_bram_awaddr),
            .s_axi_full_awburst(m_axi_full_bram_awburst),
            .s_axi_full_awcache(m_axi_full_bram_awcache),
            .s_axi_full_awlen(m_axi_full_bram_awlen),
            .s_axi_full_awlock(m_axi_full_bram_awlock),
            .s_axi_full_awprot(m_axi_full_bram_awprot),
            .s_axi_full_awready(m_axi_full_bram_awready),
            .s_axi_full_awsize(m_axi_full_bram_awsize),
            .s_axi_full_awvalid(m_axi_full_bram_awvalid),
            .s_axi_full_bready(m_axi_full_bram_bready),
            .s_axi_full_bresp(m_axi_full_bram_bresp),
            .s_axi_full_bvalid(m_axi_full_bram_bvalid),
            .s_axi_full_rdata(m_axi_full_bram_rdata),
            .s_axi_full_rlast(m_axi_full_bram_rlast),
            .s_axi_full_rready(m_axi_full_bram_rready),
            .s_axi_full_rresp(m_axi_full_bram_rresp),
            .s_axi_full_rvalid(m_axi_full_bram_rvalid),
            .s_axi_full_wdata(m_axi_full_bram_wdata),
            .s_axi_full_wlast(m_axi_full_bram_wlast),
            .s_axi_full_wready(m_axi_full_bram_wready),
            .s_axi_full_wstrb(m_axi_full_bram_wstrb),
            .s_axi_full_wvalid(m_axi_full_bram_wvalid));
    end
endgenerate

//////////
// FSMs //
//////////

integer i;

initial 
    for (i=0;i<C_buffer_size;i=i+1) begin
        bram_to_axi_buffer[i] <= 0;
        axi_to_bram_buffer[i] <= 0;
        axi_to_axi_buffer[i] <= 0;
    end

// Synch FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        sync_state <= C_sync_WAIT_FOR_ENABLE;
        m_axi_full_data_araddr <= 0;
        m_axi_full_data_awaddr <= 0;
        m_axi_full_data_r_enable <= 0;
        m_axi_full_data_w_enable <= 0;
        ha_write_read_flag <= C_ha_READ;
        axi_to_bram_enable <= 0;
        bram_to_axi_enable <=0;
        m_axi_full_bram_awaddr <= 0;
        m_axi_full_bram_araddr <= 0;
    end 
    else 
        case (sync_state)
        C_sync_WAIT_FOR_ENABLE: begin
            ready <= 0;
            m_axi_full_data_araddr <= 0;
            m_axi_full_data_awaddr <= 0;
            m_axi_full_bram_awaddr <= 0;
            m_axi_full_bram_araddr <= 0;
            if (enable==1) begin
                m_axi_full_data_r_enable <= 1;
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    axi_to_bram_enable <= 1;
                end
                if (ha_operation_mode_fully_mix==1) begin
                    m_axi_full_data_w_enable <= 1;
                end
                ha_write_read_flag <= C_ha_READ;
                sync_state <= C_sync_CHECK;
            end
        end 
        C_sync_CHECK: begin
            if (m_axi_full_data_r_ready==1) begin
                m_axi_full_data_r_enable <= 0;
            end
            if (m_axi_full_data_w_ready==1) begin
                m_axi_full_data_w_enable <= 0;
            end
            if (axi_to_bram_ready==1) begin
                axi_to_bram_enable <= 0;
            end
            if (bram_to_axi_ready==1) begin
                bram_to_axi_enable <= 0;
            end
            if (ha_operation_mode_separate==1) begin
                sync_state <= C_sync_CHECK_SEPARATED;
            end 
            else if (ha_operation_mode_mix==1) begin
                sync_state <= C_sync_CHECK_MIXED;
            end
            else if (ha_operation_mode_fully_mix==1) begin
                sync_state <= C_sync_CHECK_FULLY_MIX;
            end
        end
        C_sync_CHECK_SEPARATED: begin
            if ((m_axi_full_data_r_enable==0)&&(axi_to_bram_enable==0)&&(ha_write_read_flag==C_ha_READ)) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_bram_awaddr <= axi_to_bram_next_address;
                sync_state <= C_sync_CHECK_SEPARATED+1;
            end 
            else if ((m_axi_full_data_w_enable==0)&&(bram_to_axi_enable==0)&&(ha_write_read_flag==C_ha_WRITE)) begin
                m_axi_full_data_awaddr <= ha_write_next_address;
                m_axi_full_bram_araddr <= bram_to_axi_next_address;
                sync_state <= C_sync_CHECK_SEPARATED+1;
            end
            else begin
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_SEPARATED+1: begin
            if (ha_write_read_flag==C_ha_READ) begin
                if (ha_read_is_finished==1) begin
                    ha_write_read_flag <= C_ha_WRITE;
                    m_axi_full_data_w_enable <= 1;
                    bram_to_axi_enable <= 1;
                end
                else begin
                    m_axi_full_data_r_enable <= 1;
                    axi_to_bram_enable <= 1;
                end
                sync_state <= C_sync_CHECK;
            end
            else if (ha_write_read_flag==C_ha_WRITE) begin
                if (ha_write_is_finished==1) begin
                    sync_state <= C_sync_READY;
                end
                else begin
                    m_axi_full_data_w_enable <= 1;
                    bram_to_axi_enable <= 1;
                    sync_state <= C_sync_CHECK;
                end
            end 
        end
        C_sync_CHECK_MIXED: begin
            if ((m_axi_full_data_r_enable==0)&&(axi_to_bram_enable==0)&&(ha_write_read_flag==C_ha_READ)) begin
                ha_write_read_flag <= C_ha_WRITE;
                m_axi_full_data_w_enable <= 1;
                bram_to_axi_enable <= 1;
            end
            if ((m_axi_full_data_w_enable==0)&&(bram_to_axi_enable==0)&&(ha_write_read_flag==C_ha_WRITE)) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_data_awaddr <= ha_write_next_address;
                m_axi_full_bram_awaddr <= axi_to_bram_next_address;
                m_axi_full_bram_araddr <= bram_to_axi_next_address;
                sync_state <= C_sync_CHECK_MIXED+1;
            end
            else begin
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_MIXED+1: begin
            if (ha_write_is_finished==1) begin
                sync_state <= C_sync_READY;
            end
            else begin
                ha_write_read_flag <= C_ha_READ;
                m_axi_full_data_r_enable <= 1;
                axi_to_bram_enable <= 1;
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_CHECK_FULLY_MIX: begin
            if (m_axi_full_data_w_enable==0) begin
                m_axi_full_data_araddr <= ha_read_next_address;
                m_axi_full_data_awaddr <= ha_write_next_address;
                sync_state <= C_sync_CHECK_FULLY_MIX+1;
            end else begin
                sync_state <= C_sync_CHECK;
            end
            
        end
        C_sync_CHECK_FULLY_MIX+1: begin
            if (ha_write_is_finished==1) begin
                sync_state <= C_sync_READY;
            end 
            else begin
                m_axi_full_data_r_enable <= 1;
                m_axi_full_data_w_enable <= 1;
                sync_state <= C_sync_CHECK;
            end
        end
        C_sync_READY: begin
            ready <= 1;
            if (enable==0) begin
                sync_state <= C_sync_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi full r data FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
            m_axi_full_data_r_state <= C_m_axi_full_data_r_WAIT_FOR_ENABLE;
            m_axi_full_data_r_ready <= 0;
            m_axi_full_r_burst_counter <= 0;
            m_axi_full_data_arvalid <= 0;
            m_axi_full_data_rready <= 0;
            for (i=0;i<C_buffer_size;i=i+1) begin
                axi_to_bram_buffer[i] <= 0;
                axi_to_axi_buffer[i] <= 0;
            end
        end 
    else 
        case (m_axi_full_data_r_state)
        C_m_axi_full_data_r_WAIT_FOR_ENABLE: begin
            m_axi_full_data_r_ready <= 0;
            if (m_axi_full_data_r_enable==1) begin
                m_axi_full_data_r_state <= C_m_axi_full_data_r_SEND_ADDRESS;
            end
        end
        C_m_axi_full_data_r_SEND_ADDRESS: begin
            if ((m_axi_full_data_arready==1)&&(m_axi_full_data_arvalid==1)) begin
                m_axi_full_data_arvalid <= 0;
                m_axi_full_data_r_state <= C_m_axi_full_data_r_RECEIVE_BURST+1;
            end
            else if (m_axi_full_data_arvalid==0) begin
                m_axi_full_data_arvalid <= 1;
            end
        end
        C_m_axi_full_data_r_RECEIVE_BURST+1: begin
            if ((m_axi_full_data_rvalid==1)&&(m_axi_full_data_rready==1)) begin
                if (m_axi_full_data_rlast==1) begin
                    m_axi_full_data_r_state <= C_m_axi_full_data_r_RECEIVE_BURST+2;
                end
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    axi_to_bram_buffer[m_axi_full_r_burst_counter%C_buffer_size] <= m_axi_full_data_rdata;
                end
                else if (ha_operation_mode_fully_mix==1) begin
                    axi_to_axi_buffer[m_axi_full_r_burst_counter%C_buffer_size] <= m_axi_full_data_rdata;
                end
                if (m_axi_full_r_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_r_burst_counter <= 0;
                end 
                else begin
                    m_axi_full_r_burst_counter <= m_axi_full_r_burst_counter+1;
                end
            end
            if (ha_m_axi_r_buffer_avail==1) begin
                m_axi_full_data_rready <= 1;    
            end 
            else begin
                m_axi_full_data_rready <= 0;  
            end
        end
        C_m_axi_full_data_r_RECEIVE_BURST+2: begin
            m_axi_full_data_rready <= 0;
            m_axi_full_data_r_state <= C_m_axi_full_data_r_READY;
        end
        C_m_axi_full_data_r_READY: begin
            m_axi_full_data_r_ready <= 1; 
            if (m_axi_full_data_r_enable==0) begin
                m_axi_full_data_r_state <= C_m_axi_full_data_r_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi full w data FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn == 0) begin
        m_axi_full_data_w_state <= C_m_axi_full_data_w_WAIT_FOR_ENABLE;
        m_axi_full_data_w_ready <= 0;
        m_axi_full_w_burst_counter <= 0;
        m_axi_full_data_awvalid <= 0;
        m_axi_full_data_wdata <= 0;
        m_axi_full_data_wvalid <= 0;
        m_axi_full_data_wlast <= 0;
        m_axi_full_data_bready <= 0;
    end 
    else 
        case (m_axi_full_data_w_state)
        C_m_axi_full_data_w_WAIT_FOR_ENABLE: begin
            m_axi_full_data_w_ready <= 0;
            if (m_axi_full_data_w_enable==1) begin
                m_axi_full_data_w_state <= C_m_axi_full_data_w_SEND_ADDRESS;
            end
        end
        C_m_axi_full_data_w_SEND_ADDRESS: begin
            if ((m_axi_full_data_awready==1)&&(m_axi_full_data_awvalid==1)) begin
                m_axi_full_data_awvalid <= 0;
                 m_axi_full_data_wdata <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_TRANSFER_BURST+1;
            end
            else if (m_axi_full_data_awvalid==0) begin
                m_axi_full_data_awvalid <= 1;
            end
        end
        C_m_axi_full_data_w_TRANSFER_BURST+1: begin
            if ((m_axi_full_data_wready==1)&&(m_axi_full_data_wvalid==1)) begin
                m_axi_full_data_wvalid <= 0;
                if (m_axi_full_w_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_w_burst_counter <= 0;
                end
                else begin
                    m_axi_full_w_burst_counter <= m_axi_full_w_burst_counter+1;
                end
            end
            if ((m_axi_full_data_wvalid==0)&&
                    (((ha_operation_mode_fully_mix==1)&&(ha_w_r_burst_counter_eq==0))||
                    (((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1))&&(ha_bram_to_axi_axi_full_w_eq==0)))) begin
                if (m_axi_full_w_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_data_wlast <= 1;
                end
                if ((ha_operation_mode_separate==1)||(ha_operation_mode_mix==1)) begin
                    m_axi_full_data_wdata <= bram_to_axi_buffer[m_axi_full_w_burst_counter%C_buffer_size];
                end
                else if (ha_operation_mode_fully_mix==1) begin
                    m_axi_full_data_wdata <= axi_to_axi_buffer[m_axi_full_w_burst_counter%C_buffer_size];
                end
                m_axi_full_data_wvalid <= 1;
            end
            if (m_axi_full_data_wlast == 1) begin
                m_axi_full_data_wlast <= 0;
                m_axi_full_data_wvalid <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_CHECK;
            end
        end
        C_m_axi_full_data_w_CHECK: begin
            if (m_axi_full_data_bready==0) begin
                m_axi_full_data_bready <= 1;
            end
            else if (m_axi_full_data_bvalid==1) begin
                m_axi_full_data_bready <= 0;
                m_axi_full_data_w_state <= C_m_axi_full_data_w_READY;
            end
            //if (m_axi_full_data_bready==0) begin
                //m_axi_full_data_bready <= 1;
            //end
            //else if (((m_axi_full_data_bready==1)&&(m_axi_full_data_bvalid==1))||
                //(m_axi_full_data_bvalid==0)) begin
                //m_axi_full_data_bready <= 0;
                //m_axi_full_data_w_state <= C_m_axi_full_data_w_READY;
            //end
        end
        C_m_axi_full_data_w_READY: begin
            m_axi_full_data_w_ready <= 1;
            if (m_axi_full_data_w_enable==0) begin
               m_axi_full_data_w_state <= C_m_axi_full_data_w_WAIT_FOR_ENABLE; 
            end
         end
        endcase
        
// Axi to bram FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        axi_to_bram_state <= C_axi_to_bram_WAIT_FOR_ENABLE;
        axi_to_bram_burst_counter <= 0;
        m_axi_full_bram_awvalid <= 0;
        m_axi_full_bram_wdata <= 0;
        m_axi_full_bram_wvalid <= 0;
        m_axi_full_bram_wlast <= 0;
        m_axi_full_bram_bready <= 0;
    end
    else
        case (axi_to_bram_state)
        C_axi_to_bram_WAIT_FOR_ENABLE: begin
            axi_to_bram_ready <= 0;
            if (axi_to_bram_enable==1) begin
                axi_to_bram_state <= C_axi_to_bram_SEND_ADDRESS;
            end
        end
        C_axi_to_bram_SEND_ADDRESS: begin
            if ((m_axi_full_bram_awvalid==1)) begin
                m_axi_full_bram_awvalid <= 0;
                m_axi_full_bram_wdata <= 0;
                axi_to_bram_state <= C_axi_to_bram_TRANSFER_BURST+1;
            end
            else if (m_axi_full_bram_awvalid==0) begin
                m_axi_full_bram_awvalid <= 1;
            end
            //if ((m_axi_full_bram_awready==1)&&(m_axi_full_bram_awvalid==1)) begin
                //m_axi_full_bram_awvalid <= 0;
                //axi_to_bram_state <= C_axi_to_bram_TRANSFER_BURST;
            //end
            //else if (m_axi_full_bram_awvalid==0) begin
                //m_axi_full_bram_awvalid <= 1;
            //end
        end
        C_axi_to_bram_TRANSFER_BURST+1: begin
            if ((m_axi_full_bram_wready==1)&&(m_axi_full_bram_wvalid==1)) begin
                m_axi_full_bram_wvalid <= 0;
                if (axi_to_bram_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    axi_to_bram_burst_counter <= 0;
                end
                else begin
                    axi_to_bram_burst_counter <= axi_to_bram_burst_counter+1;
                end
            end
            if ((m_axi_full_bram_wvalid==0)&&(ha_axi_to_bram_axi_full_r_eq==0)) begin
                if (axi_to_bram_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    m_axi_full_bram_wlast <= 1;
                end
                m_axi_full_bram_wdata <= axi_to_bram_buffer[axi_to_bram_burst_counter%C_buffer_size];
                m_axi_full_bram_wvalid <= 1;
            end
            if (m_axi_full_bram_wlast==1) begin
                m_axi_full_bram_wlast <= 0;
                m_axi_full_bram_wvalid <= 0;
                axi_to_bram_state <= C_axi_to_bram_CHECK;
            end
        end
        C_axi_to_bram_CHECK: begin
            if (m_axi_full_bram_bready==0) begin
                m_axi_full_bram_bready <= 1;
            end
            else if (m_axi_full_bram_bvalid==1) begin
                m_axi_full_bram_bready <= 0;
                axi_to_bram_state <= C_axi_to_bram_READY;
            end
            //if (m_axi_full_bram_bready==0) begin
                //m_axi_full_bram_bready <= 1;
            //end
            //else if (((m_axi_full_bram_bready==1)&&(m_axi_full_bram_bvalid==1))||
                //(m_axi_full_bram_bvalid==0)) begin
                //m_axi_full_bram_bready <= 0;
                //axi_to_bram_state <= C_axi_to_bram_READY;
            //end
        end
        C_axi_to_bram_READY: begin
            axi_to_bram_ready <= 1;
            if (axi_to_bram_enable==0) begin 
                axi_to_bram_state <= C_axi_to_bram_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Bram to axi fsm
always @(posedge s_axi_aclk) 
    if (s_axi_aresetn==0) begin
        bram_to_axi_state <= C_bram_to_axi_WAIT_FOR_ENABLE;
        m_axi_full_bram_arvalid <= 0;
        m_axi_full_bram_rready <= 0;
        bram_to_axi_burst_counter <= 0;
        for (i=0;i<C_buffer_size;i=i+1) begin
            bram_to_axi_buffer[i] <= 0;
        end
        bram_to_axi_ready <= 0;
    end
    else    
        case (bram_to_axi_state)
        C_bram_to_axi_WAIT_FOR_ENABLE: begin
            bram_to_axi_ready <=0;
            if (bram_to_axi_enable==1) begin
                bram_to_axi_state <= C_bram_to_axi_SEND_ADDRESS;
            end
        end
        C_bram_to_axi_SEND_ADDRESS: begin
            if ((m_axi_full_bram_arvalid==1)) begin
                m_axi_full_bram_arvalid <= 0;
                bram_to_axi_state <= C_bram_to_axi_RECEIVE_BURST+1;
            end
            else if (m_axi_full_data_arvalid==0) begin
                m_axi_full_bram_arvalid <= 1;
            end
            //if ((m_axi_full_bram_arready==1)&&(m_axi_full_bram_arvalid==1)) begin
                //m_axi_full_bram_arvalid <= 0;
                //bram_to_axi_state <= C_bram_to_axi_RECEIVE_BURST;
            //end
            //else if (m_axi_full_data_arvalid==0) begin
                //m_axi_full_bram_arvalid <= 1;
            //end
        end
        C_bram_to_axi_RECEIVE_BURST+1: begin
            if ((m_axi_full_bram_rvalid==1)&&(m_axi_full_bram_rready==1)) begin
                if (m_axi_full_bram_rlast==1) begin
                    bram_to_axi_state <= C_bram_to_axi_RECEIVE_BURST+2;
                end
                bram_to_axi_buffer[bram_to_axi_burst_counter%C_buffer_size] <= m_axi_full_bram_rdata;
                if (bram_to_axi_burst_counter==(m_axi_full_data_burst_len-1)) begin
                    bram_to_axi_burst_counter <= 0;
                end
                else begin
                    bram_to_axi_burst_counter <= bram_to_axi_burst_counter+1;
                end
            end
            if (ha_bram_to_axi_buffer_avail==1) begin
                m_axi_full_bram_rready <= 1;    
            end
            else begin
                m_axi_full_bram_rready <= 0; 
            end
        end
        C_bram_to_axi_RECEIVE_BURST+2: begin
            m_axi_full_bram_rready <= 0;
            bram_to_axi_state <= C_bram_to_axi_READY;
        end
        C_bram_to_axi_READY: begin
            bram_to_axi_ready <= 1;
            if (bram_to_axi_enable==0) begin
                bram_to_axi_state <= C_bram_to_axi_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
// Axi lite registers w FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_ADDRESS;
        s_axi_lite_registers_awready <= 0;
        s_axi_lite_registers_awaddr_reg <= 0;
        s_axi_lite_registers_wready <= 0;
        s_axi_lite_registers_bvalid <= 0;
        ha_operation_mode <= 0;
        ha_transfer_size <= 16;
        m_axi_full_data_burst_len <= 16;
        ha_write_address <= 0;
        ha_read_address <= 0;
    end
    else
        case (s_axi_lite_registers_w_state)
        C_s_axi_lite_registers_w_RECEIVE_ADDRESS: begin
            if (s_axi_lite_registers_awready==0) begin
                s_axi_lite_registers_awready <= 1;
            end
            else if (s_axi_lite_registers_awvalid==1) begin
                s_axi_lite_registers_awready <= 0;
                s_axi_lite_registers_awaddr_reg <= s_axi_lite_registers_awaddr;
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_WORD;
            end
        end
        C_s_axi_lite_registers_w_RECEIVE_WORD: begin
            if (s_axi_lite_registers_wready==0) begin
                s_axi_lite_registers_wready <= 1;
            end
            else if (s_axi_lite_registers_wvalid==1) begin
                s_axi_lite_registers_wready <= 0;
                if (ha_s_axi_lite_registers_w_operation_mode==1) begin
                    ha_operation_mode <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_burst_size==1) begin
                    m_axi_full_data_burst_len <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_transfer_size==1) begin
                    ha_transfer_size <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_write_address==1) begin
                    ha_write_address <= s_axi_lite_registers_wdata;
                end
                else if (ha_s_axi_lite_registers_w_read_address==1) begin
                    ha_read_address <= s_axi_lite_registers_wdata;
                end
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_CHECK;
            end
        end
        C_s_axi_lite_registers_w_CHECK: begin
            if (s_axi_lite_registers_bvalid==0) begin
                s_axi_lite_registers_bvalid <= 1;
            end
            else if (s_axi_lite_registers_bready==1) begin
                s_axi_lite_registers_bvalid <= 0;
                s_axi_lite_registers_w_state <= C_s_axi_lite_registers_w_RECEIVE_ADDRESS;
            end
        end
        endcase

// Axi lite registers r FSM
always @(posedge s_axi_aclk)
    if (s_axi_aresetn==0) begin
        s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_RECEIVE_ADDRESS;
        s_axi_lite_registers_arready <= 0;
        s_axi_lite_registers_araddr_reg <= 0;
        s_axi_lite_registers_rdata <= 0;
        s_axi_lite_registers_rvalid <= 0;
    end
    else
        case (s_axi_lite_registers_r_state)
        C_s_axi_lite_registers_r_RECEIVE_ADDRESS: begin
            if (s_axi_lite_registers_arready==0) begin
                s_axi_lite_registers_arready <= 1;
            end
            else if (s_axi_lite_registers_arvalid==1) begin
                s_axi_lite_registers_arready <= 0;
                s_axi_lite_registers_araddr_reg <= s_axi_lite_registers_araddr;
                s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_TRANSFER_WORD;
            end
        end
        C_s_axi_lite_registers_r_TRANSFER_WORD: begin
            if (s_axi_lite_registers_rvalid==0) begin
                s_axi_lite_registers_rvalid <= 1;
                if (ha_s_axi_lite_registers_r_operation_mode==1) begin
                    s_axi_lite_registers_rdata <= ha_operation_mode;
                end
                else if (ha_s_axi_lite_registers_r_burst_size==1) begin
                    s_axi_lite_registers_rdata <= m_axi_full_data_burst_len;
                end
                else if (ha_s_axi_lite_registers_r_transfer_size==1) begin
                    s_axi_lite_registers_rdata <= ha_transfer_size;
                end
                else if (ha_s_axi_lite_registers_r_write_address==1) begin
                    s_axi_lite_registers_rdata <= ha_write_address;
                end
                else if (ha_s_axi_lite_registers_r_read_address==1) begin
                    s_axi_lite_registers_rdata <= ha_read_address;
                end
            end
            else if (s_axi_lite_registers_rready==1) begin
                s_axi_lite_registers_rvalid <= 0;
                s_axi_lite_registers_r_state <= C_s_axi_lite_registers_r_RECEIVE_ADDRESS;
            end
        end
        endcase

endmodule
*/