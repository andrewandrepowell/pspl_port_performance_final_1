`timescale 1ns / 1ps

module hardware_accelerator_v1_testbench;

// Global parameters
parameter integer C_ps_read_address = 32'h00000000;
parameter integer C_fsm_width=8;
parameter integer C_memory_size=2**13;

// Parameters of Axi Slave Bus Interface s_axi_lite_registers
parameter integer C_axi_lite_registers_DATA_WIDTH	= 32;
parameter integer C_axi_lite_registers_ADDR_WIDTH	= 8;

// Parameters of Axi Master Bus Interface m_axi_full_data
parameter integer C_axi_full_data_ID_WIDTH	         = 1;
parameter integer C_axi_full_data_ADDR_WIDTH	     = 32;
parameter integer C_axi_full_data_DATA_WIDTH         = 32;
parameter integer C_axi_full_data_AWUSER_WIDTH	     = 1;
parameter integer C_axi_full_data_ARUSER_WIDTH	     = 1;
parameter integer C_axi_full_data_WUSER_WIDTH	     = 0;
parameter integer C_axi_full_data_RUSER_WIDTH	     = 0;
parameter integer C_axi_full_data_BUSER_WIDTH	     = 0;

// Synchronization signals
wire axi_aclk;
wire axi_aresetn;
wire enable;
wire ready;

// Interface to the hardware accelerator's Registers
// Ports of Axi Slave Bus Interface s_axi_lite_registers
wire [C_axi_lite_registers_ADDR_WIDTH-1 : 0] axi_lite_registers_awaddr;
wire [2 : 0] axi_lite_registers_awprot;
wire  axi_lite_registers_awvalid;
wire  axi_lite_registers_awready;
wire [C_axi_lite_registers_DATA_WIDTH-1 : 0] axi_lite_registers_wdata;
wire [(C_axi_lite_registers_DATA_WIDTH/8)-1 : 0] axi_lite_registers_wstrb;
wire  axi_lite_registers_wvalid;
wire  axi_lite_registers_wready;
wire [1 : 0] axi_lite_registers_bresp;
wire  axi_lite_registers_bvalid;
wire  axi_lite_registers_bready;
wire [C_axi_lite_registers_ADDR_WIDTH-1 : 0] axi_lite_registers_araddr;
wire [2 : 0] axi_lite_registers_arprot;
wire  axi_lite_registers_arvalid;
wire  axi_lite_registers_arready;
wire [C_axi_lite_registers_DATA_WIDTH-1 : 0] axi_lite_registers_rdata;
wire [1 : 0] axi_lite_registers_rresp;
wire  axi_lite_registers_rvalid;
wire  axi_lite_registers_rready;

// Interface to the data
// Ports of Axi Master Bus Interface m_axi_full_data
wire [C_axi_full_data_ID_WIDTH-1 : 0] axi_full_data_awid;
wire [C_axi_full_data_ADDR_WIDTH-1 : 0] axi_full_data_awaddr;
wire [7 : 0] axi_full_data_awlen;
wire [2 : 0] axi_full_data_awsize;
wire [1 : 0] axi_full_data_awburst;
wire  axi_full_data_awlock;
wire [3 : 0] axi_full_data_awcache;
wire [2 : 0] axi_full_data_awprot;
wire [3 : 0] axi_full_data_awqos;
wire [C_axi_full_data_AWUSER_WIDTH-1 : 0] axi_full_data_awuser;
wire  axi_full_data_awvalid;
wire  axi_full_data_awready;
wire [C_axi_full_data_DATA_WIDTH-1 : 0] axi_full_data_wdata;
wire [C_axi_full_data_DATA_WIDTH/8-1 : 0] axi_full_data_wstrb;
wire  axi_full_data_wlast;
wire [C_axi_full_data_WUSER_WIDTH-1 : 0] axi_full_data_wuser;
wire  axi_full_data_wvalid;
wire  axi_full_data_wready;
wire [C_axi_full_data_ID_WIDTH-1 : 0] axi_full_data_bid;
wire [1 : 0] axi_full_data_bresp;
wire [C_axi_full_data_BUSER_WIDTH-1 : 0] axi_full_data_buser;
wire  axi_full_data_bvalid;
wire  axi_full_data_bready;
wire [C_axi_full_data_ID_WIDTH-1 : 0] axi_full_data_arid;
wire [C_axi_full_data_ADDR_WIDTH-1 : 0] axi_full_data_araddr;
wire [7 : 0] axi_full_data_arlen;
wire [2 : 0] axi_full_data_arsize;
wire [1 : 0] axi_full_data_arburst;
wire  axi_full_data_arlock;
wire [3 : 0] axi_full_data_arcache;
wire [2 : 0] axi_full_data_arprot;
wire [3 : 0] axi_full_data_arqos;
wire [C_axi_full_data_ARUSER_WIDTH-1 : 0] axi_full_data_aruser;
wire  axi_full_data_arvalid;
wire  axi_full_data_arready;
wire [C_axi_full_data_ID_WIDTH-1 : 0] axi_full_data_rid;
wire [C_axi_full_data_DATA_WIDTH-1 : 0] axi_full_data_rdata;
wire [1 : 0] axi_full_data_rresp;
wire  axi_full_data_rlast;
wire [C_axi_full_data_RUSER_WIDTH-1 : 0] axi_full_data_ruser;
wire  axi_full_data_rvalid;
wire  axi_full_data_rready;

hardware_accelerator_v1_0 #(
    .C_s_axi_lite_registers_DATA_WIDTH(C_axi_lite_registers_DATA_WIDTH),
    .C_s_axi_lite_registers_ADDR_WIDTH(C_axi_lite_registers_ADDR_WIDTH),
    .C_m_axi_full_data_ID_WIDTH(C_axi_full_data_ID_WIDTH),
    .C_m_axi_full_data_ADDR_WIDTH(C_axi_full_data_ADDR_WIDTH),
    .C_m_axi_full_data_DATA_WIDTH(C_axi_full_data_DATA_WIDTH),
    .C_m_axi_full_data_AWUSER_WIDTH(C_axi_full_data_AWUSER_WIDTH),
    .C_m_axi_full_data_ARUSER_WIDTH(C_axi_full_data_ARUSER_WIDTH),
    .C_m_axi_full_data_WUSER_WIDTH(C_axi_full_data_WUSER_WIDTH),
    .C_m_axi_full_data_RUSER_WIDTH(C_axi_full_data_RUSER_WIDTH),
    .C_m_axi_full_data_BUSER_WIDTH(C_axi_full_data_BUSER_WIDTH)
) hardware_accelerator_v1_0_inst (
    .s_axi_aclk(axi_aclk),
    .s_axi_aresetn(axi_aresetn),
    .enable(enable),
    .ready(ready),
    .s_axi_lite_registers_awaddr(axi_lite_registers_awaddr),
    .s_axi_lite_registers_awprot(axi_lite_registers_awprot),
    .s_axi_lite_registers_awvalid(axi_lite_registers_awvalid),
    .s_axi_lite_registers_awready(axi_lite_registers_awready),
    .s_axi_lite_registers_wdata(axi_lite_registers_wdata),
    .s_axi_lite_registers_wstrb(axi_lite_registers_wstrb),
    .s_axi_lite_registers_wvalid(axi_lite_registers_wvalid),
    .s_axi_lite_registers_wready(axi_lite_registers_wready),
    .s_axi_lite_registers_bresp(axi_lite_registers_bresp),
    .s_axi_lite_registers_bvalid(axi_lite_registers_bvalid),
    .s_axi_lite_registers_bready(axi_lite_registers_bready),
    .s_axi_lite_registers_araddr(axi_lite_registers_araddr),
    .s_axi_lite_registers_arprot(axi_lite_registers_arprot),
    .s_axi_lite_registers_arvalid(axi_lite_registers_arvalid),
    .s_axi_lite_registers_arready(axi_lite_registers_arready),
    .s_axi_lite_registers_rdata(axi_lite_registers_rdata),
    .s_axi_lite_registers_rresp(axi_lite_registers_rresp),
    .s_axi_lite_registers_rvalid(axi_lite_registers_rvalid),
    .s_axi_lite_registers_rready(axi_lite_registers_rready),
    .m_axi_full_data_awid(axi_full_data_awid),
    .m_axi_full_data_awaddr_wire(axi_full_data_awaddr),
    .m_axi_full_data_awlen(axi_full_data_awlen),
    .m_axi_full_data_awsize(axi_full_data_awsize),
    .m_axi_full_data_awburst(axi_full_data_awburst),
    .m_axi_full_data_awlock(axi_full_data_awlock),
    .m_axi_full_data_awcache(axi_full_data_awcache),
    .m_axi_full_data_awprot(axi_full_data_awprot),
    .m_axi_full_data_awqos(axi_full_data_awqos),
    .m_axi_full_data_awuser(axi_full_data_awuser),
    .m_axi_full_data_awvalid(axi_full_data_awvalid),
    .m_axi_full_data_awready(axi_full_data_awready),
    .m_axi_full_data_wdata(axi_full_data_wdata),
    .m_axi_full_data_wstrb(axi_full_data_wstrb),
    .m_axi_full_data_wlast(axi_full_data_wlast),
    .m_axi_full_data_wuser(axi_full_data_wuser),
    .m_axi_full_data_wvalid(axi_full_data_wvalid),
    .m_axi_full_data_wready(axi_full_data_wready),
    .m_axi_full_data_bid(axi_full_data_bid),
    .m_axi_full_data_bresp(axi_full_data_bresp),
    .m_axi_full_data_buser(axi_full_data_buser),
    .m_axi_full_data_bvalid(axi_full_data_bvalid),
    .m_axi_full_data_bready(axi_full_data_bready),
    .m_axi_full_data_arid(axi_full_data_arid),
    .m_axi_full_data_araddr_wire(axi_full_data_araddr),
    .m_axi_full_data_arlen(axi_full_data_arlen),
    .m_axi_full_data_arsize(axi_full_data_arsize),
    .m_axi_full_data_arburst(axi_full_data_arburst),
    .m_axi_full_data_arlock(axi_full_data_arlock),
    .m_axi_full_data_arcache(axi_full_data_arcache),
    .m_axi_full_data_arprot(axi_full_data_arprot),
    .m_axi_full_data_arqos(axi_full_data_arqos),
    .m_axi_full_data_aruser(axi_full_data_aruser),
    .m_axi_full_data_arvalid(axi_full_data_arvalid),
    .m_axi_full_data_arready(axi_full_data_arready),
    .m_axi_full_data_rid(axi_full_data_rid),
    .m_axi_full_data_rdata(axi_full_data_rdata),
    .m_axi_full_data_rresp(axi_full_data_rresp),
    .m_axi_full_data_rlast(axi_full_data_rlast),
    .m_axi_full_data_ruser(axi_full_data_ruser),
    .m_axi_full_data_rvalid(axi_full_data_rvalid),
    .m_axi_full_data_rready(axi_full_data_rready)
);

control_module #(
    .C_m_axi_lite_registers_DATA_WIDTH(C_axi_lite_registers_DATA_WIDTH),
    .C_m_axi_lite_registers_ADDR_WIDTH(C_axi_lite_registers_ADDR_WIDTH),
    .C_s_axi_full_data_DATA_WIDTH(C_axi_full_data_DATA_WIDTH)
) control_module_inst (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .enable(enable),
    .ready(ready),
    .m_axi_lite_registers_awaddr(axi_lite_registers_awaddr),
    .m_axi_lite_registers_awprot(axi_lite_registers_awprot),
    .m_axi_lite_registers_awvalid(axi_lite_registers_awvalid),
    .m_axi_lite_registers_awready(axi_lite_registers_awready),
    .m_axi_lite_registers_wdata(axi_lite_registers_wdata),
    .m_axi_lite_registers_wstrb(axi_lite_registers_wstrb),
    .m_axi_lite_registers_wvalid(axi_lite_registers_wvalid),
    .m_axi_lite_registers_wready(axi_lite_registers_wready),
    .m_axi_lite_registers_bresp(axi_lite_registers_bresp),
    .m_axi_lite_registers_bvalid(axi_lite_registers_bvalid),
    .m_axi_lite_registers_bready(axi_lite_registers_bready),
    .m_axi_lite_registers_araddr(axi_lite_registers_araddr),
    .m_axi_lite_registers_arprot(axi_lite_registers_arprot),
    .m_axi_lite_registers_arvalid(axi_lite_registers_arvalid),
    .m_axi_lite_registers_arready(axi_lite_registers_arready),
    .m_axi_lite_registers_rdata(axi_lite_registers_rdata),
    .m_axi_lite_registers_rresp(axi_lite_registers_rresp),
    .m_axi_lite_registers_rvalid(axi_lite_registers_rvalid),
    .m_axi_lite_registers_rready(axi_lite_registers_rready)
);

main_memory_module #(
    .C_s_axi_full_data_ID_WIDTH(C_axi_full_data_ID_WIDTH),
    .C_s_axi_full_data_ADDR_WIDTH(C_axi_full_data_ADDR_WIDTH),
    .C_s_axi_full_data_DATA_WIDTH(C_axi_full_data_DATA_WIDTH),
    .C_s_axi_full_data_AWUSER_WIDTH(C_axi_full_data_AWUSER_WIDTH),
    .C_s_axi_full_data_ARUSER_WIDTH(C_axi_full_data_ARUSER_WIDTH),
    .C_s_axi_full_data_WUSER_WIDTH(C_axi_full_data_WUSER_WIDTH),
    .C_s_axi_full_data_RUSER_WIDTH(C_axi_full_data_RUSER_WIDTH),
    .C_s_axi_full_data_BUSER_WIDTH(C_axi_full_data_BUSER_WIDTH),
    .C_memory_size(C_memory_size)
) main_memory_module_inst (
    .axi_aclk(axi_aclk),
    .axi_aresetn(axi_aresetn),
    .s_axi_full_data_awid(axi_full_data_awid),
    .s_axi_full_data_awaddr(axi_full_data_awaddr),
    .s_axi_full_data_awlen(axi_full_data_awlen),
    .s_axi_full_data_awsize(axi_full_data_awsize),
    .s_axi_full_data_awburst(axi_full_data_awburst),
    .s_axi_full_data_awlock(axi_full_data_awlock),
    .s_axi_full_data_awcache(axi_full_data_awcache),
    .s_axi_full_data_awprot(axi_full_data_awprot),
    .s_axi_full_data_awqos(axi_full_data_awqos),
    .s_axi_full_data_awuser(axi_full_data_awuser),
    .s_axi_full_data_awvalid(axi_full_data_awvalid),
    .s_axi_full_data_awready(axi_full_data_awready),
    .s_axi_full_data_wdata(axi_full_data_wdata),
    .s_axi_full_data_wstrb(axi_full_data_wstrb),
    .s_axi_full_data_wlast(axi_full_data_wlast),
    .s_axi_full_data_wuser(axi_full_data_wuser),
    .s_axi_full_data_wvalid(axi_full_data_wvalid),
    .s_axi_full_data_wready(axi_full_data_wready),
    .s_axi_full_data_bid(axi_full_data_bid),
    .s_axi_full_data_bresp(axi_full_data_bresp),
    .s_axi_full_data_buser(axi_full_data_buser),
    .s_axi_full_data_bvalid(axi_full_data_bvalid),
    .s_axi_full_data_bready(axi_full_data_bready),
    .s_axi_full_data_arid(axi_full_data_arid),
    .s_axi_full_data_araddr(axi_full_data_araddr),
    .s_axi_full_data_arlen(axi_full_data_arlen),
    .s_axi_full_data_arsize(axi_full_data_arsize),
    .s_axi_full_data_arburst(axi_full_data_arsize),
    .s_axi_full_data_arlock(axi_full_data_arlock),
    .s_axi_full_data_arcache(axi_full_data_arcache),
    .s_axi_full_data_arprot(axi_full_data_arprot),
    .s_axi_full_data_arqos(axi_full_data_arqos),
    .s_axi_full_data_aruser(axi_full_data_aruser),
    .s_axi_full_data_arvalid(axi_full_data_arvalid),
    .s_axi_full_data_arready(axi_full_data_arready),
    .s_axi_full_data_rid(axi_full_data_rid),
    .s_axi_full_data_rdata(axi_full_data_rdata),
    .s_axi_full_data_rresp(axi_full_data_rresp),
    .s_axi_full_data_rlast(axi_full_data_rlast),
    .s_axi_full_data_ruser(axi_full_data_ruser),
    .s_axi_full_data_rvalid(axi_full_data_rvalid),
    .s_axi_full_data_rready(axi_full_data_rready)
);

endmodule

module control_module #(
    parameter integer C_m_axi_lite_registers_DATA_WIDTH	= 32,
    parameter integer C_m_axi_lite_registers_ADDR_WIDTH	= 8,
    parameter integer C_s_axi_full_data_DATA_WIDTH	    = 32,
    parameter integer C_fsm_width                       = 8
)(
    output reg axi_aclk=0, 
    output reg axi_aresetn=0,
    output reg enable=0,
    input wire ready,
    output reg [C_m_axi_lite_registers_ADDR_WIDTH-1 : 0] m_axi_lite_registers_awaddr=0,
    output wire [2 : 0] m_axi_lite_registers_awprot,
    output reg  m_axi_lite_registers_awvalid=0,
    input wire  m_axi_lite_registers_awready,
    output reg [C_m_axi_lite_registers_DATA_WIDTH-1 : 0] m_axi_lite_registers_wdata=0,
    output wire [(C_m_axi_lite_registers_DATA_WIDTH/8)-1 : 0] m_axi_lite_registers_wstrb,
    output reg  m_axi_lite_registers_wvalid=0,
    input wire  m_axi_lite_registers_wready,
    input wire [1 : 0] m_axi_lite_registers_bresp,
    input wire  m_axi_lite_registers_bvalid,
    output reg  m_axi_lite_registers_bready=0,
    output reg [C_m_axi_lite_registers_ADDR_WIDTH-1 : 0] m_axi_lite_registers_araddr=0,
    output wire [2 : 0] m_axi_lite_registers_arprot,
    output reg  m_axi_lite_registers_arvalid=0,
    input wire  m_axi_lite_registers_arready,
    input wire [C_m_axi_lite_registers_DATA_WIDTH-1 : 0] m_axi_lite_registers_rdata,
    input wire [1 : 0] m_axi_lite_registers_rresp,
    input wire  m_axi_lite_registers_rvalid,
    output reg  m_axi_lite_registers_rready=0
);

////////////////
// Parameters //
////////////////

localparam
    C_clock_delay=10;
localparam
    C_bits_per_byte=8,
    C_bytes_per_word=C_s_axi_full_data_DATA_WIDTH/C_bits_per_byte;
localparam 
    C_w_WAIT_FOR_ENABLE=0,
    C_w_SEND_ADDRESS=C_w_WAIT_FOR_ENABLE+1,
    C_w_SEND_WORD=C_w_SEND_ADDRESS+1,
    C_w_CHECK=C_w_SEND_WORD+1,
    C_w_READY=C_w_CHECK+1;
localparam 
    C_r_WAIT_FOR_ENABLE=0,
    C_r_SEND_ADDRESS=C_r_WAIT_FOR_ENABLE+1,
    C_r_RECEIVE_WORD=C_r_SEND_ADDRESS+1,
    C_r_READY=C_r_RECEIVE_WORD+1;
localparam 
    C_addr_OPERATION_MODE=0,
    C_addr_BURST_SIZE=4,
    C_addr_TRANSFER_SIZE=8,
    C_addr_WRITE_ADDRESS=12,
    C_addr_READ_ADDRESS=16;
localparam 
    C_operation_mode_SEPARATE=0,
    C_operation_mode_MIX=1,
    C_operation_mode_FULLY_MIX=2;
localparam
    C_sim_address_offset_separate=C_bytes_per_word*0,
    C_sim_address_offset_mix=C_bytes_per_word*200,
    C_sim_address_offset_fully_mix=C_bytes_per_word*400;

    
//////////
// Nets //
//////////
    
reg [C_fsm_width-1:0] w_state = 0;
reg [C_fsm_width-1:0] r_state = 0;
reg [C_m_axi_lite_registers_ADDR_WIDTH-1:0] w_address = 0;
reg [C_m_axi_lite_registers_ADDR_WIDTH-1:0] r_address = 0;
reg [C_m_axi_lite_registers_DATA_WIDTH-1:0] w_data = 0;
reg [C_m_axi_lite_registers_DATA_WIDTH-1:0] r_data = 0;
reg w_enable = 0;
reg r_enable = 0;
reg w_ready = 0;
reg r_ready = 0;

assign m_axi_lite_registers_awprot = 0;
assign m_axi_lite_registers_wstrb = {(C_m_axi_lite_registers_DATA_WIDTH/8){1'b1}};
assign m_axi_lite_registers_arprot = 0;

///////////////
// Functions //
///////////////

task write_to_axi_lite_m;
    input [C_m_axi_lite_registers_ADDR_WIDTH-1:0] w_address_in;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] w_data_in;
    begin
        w_address = w_address_in;
        w_data = w_data_in;
        w_enable = 1;
        #C_clock_delay;
        while (w_ready==0) #C_clock_delay;
        w_enable = 0;
        #C_clock_delay;
        while (w_ready==1) #C_clock_delay;
    end
endtask

task read_from_axi_lite_m;
    input [C_m_axi_lite_registers_ADDR_WIDTH-1:0] r_address_in;
    begin
        r_address = r_address_in;
        r_enable = 1;
        #C_clock_delay;
        while (r_ready==0) #C_clock_delay;
        r_enable = 0;
        #C_clock_delay;
        while (r_ready==1) #C_clock_delay;
    end
endtask

task set_data_burst_len;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] data_burst_len_in;
    begin
        write_to_axi_lite_m(C_addr_BURST_SIZE,data_burst_len_in);
    end
endtask

task get_data_burst_len;
    begin
        read_from_axi_lite_m(C_addr_BURST_SIZE);
    end
endtask

task set_transfer_size;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] transfer_size_in; // bytes
    begin
        write_to_axi_lite_m(C_addr_TRANSFER_SIZE,transfer_size_in);
    end
endtask

task get_transfer_size;
    begin
        read_from_axi_lite_m(C_addr_TRANSFER_SIZE);
    end
endtask

task set_operation_mode;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] operation_mode_in;
    begin
        write_to_axi_lite_m(C_addr_OPERATION_MODE,operation_mode_in);
    end
endtask

task get_operation_mode;
    begin
        read_from_axi_lite_m(C_addr_OPERATION_MODE);
    end
endtask

task set_write_address;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] write_address_in;
    begin
        write_to_axi_lite_m(C_addr_WRITE_ADDRESS,write_address_in);
    end
endtask

task get_write_address;
    begin
        read_from_axi_lite_m(C_addr_WRITE_ADDRESS);
    end
endtask

task set_read_address;
    input [C_m_axi_lite_registers_DATA_WIDTH-1:0] read_address_in;
    begin
        write_to_axi_lite_m(C_addr_READ_ADDRESS,read_address_in);
    end
endtask

task get_read_address;
    begin
        read_from_axi_lite_m(C_addr_READ_ADDRESS);
    end
endtask

task run_reset;
    begin
        axi_aresetn = 0;
        #C_clock_delay;
        axi_aresetn = 1;
        #C_clock_delay;
    end
endtask

task run_operation;
    begin
        enable = 1;
        #C_clock_delay;
        while (ready==0) #C_clock_delay;
        enable = 0;
        #C_clock_delay;
        while (ready==1) #C_clock_delay;
    end
endtask

//////////
// FSMs //
//////////

always @(posedge axi_aclk)
    if (axi_aresetn==0) begin
        w_state <= C_w_WAIT_FOR_ENABLE;
        m_axi_lite_registers_awvalid <= 0;
        m_axi_lite_registers_awaddr <= 0;
        m_axi_lite_registers_wvalid <= 0;
        m_axi_lite_registers_wdata <= 0;
        m_axi_lite_registers_bready <= 0;
        w_ready <= 0;
    end
    else 
        case (w_state)
        C_w_WAIT_FOR_ENABLE: begin
            w_ready <= 0;
            if (w_enable==1) begin
                w_state <= C_w_SEND_ADDRESS;
            end
        end
        C_w_SEND_ADDRESS: begin
            if (m_axi_lite_registers_awvalid==0) begin
                m_axi_lite_registers_awvalid <= 1;
                m_axi_lite_registers_awaddr <= w_address;
            end
            else if (m_axi_lite_registers_awready==1) begin
                m_axi_lite_registers_awvalid <= 0;
                w_state <= C_w_SEND_WORD;
            end
        end
        C_w_SEND_WORD: begin
            if (m_axi_lite_registers_wvalid==0) begin
                m_axi_lite_registers_wvalid <= 1;
                m_axi_lite_registers_wdata <= w_data;
            end
            else if (m_axi_lite_registers_wready==1) begin
                m_axi_lite_registers_wvalid <= 0;
                w_state <= C_w_CHECK;
            end
        end
        C_w_CHECK: begin
            if (m_axi_lite_registers_bready==0) begin
                m_axi_lite_registers_bready <= 1;
            end
            else if (m_axi_lite_registers_bvalid==1) begin
                m_axi_lite_registers_bready <= 0;
                w_state <= C_w_READY;
            end
        end
        C_w_READY: begin
            w_ready <= 1;
            if (w_enable==0) begin
                w_state <= C_w_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
always @(posedge axi_aclk)
    if (axi_aresetn==0) begin
        r_state <= C_r_WAIT_FOR_ENABLE;
        m_axi_lite_registers_araddr <= 0;
        m_axi_lite_registers_rready <= 0;
        r_ready <= 0;
    end 
    else 
        case (r_state)
        C_r_WAIT_FOR_ENABLE: begin
            r_ready <= 0;
            if (r_enable==1) begin
                r_state <= C_r_SEND_ADDRESS;
            end
        end
        C_r_SEND_ADDRESS: begin
            if (m_axi_lite_registers_arvalid==0) begin
                m_axi_lite_registers_arvalid <= 1;
                m_axi_lite_registers_araddr <= r_address;
            end
            else if (m_axi_lite_registers_arready==1) begin
                m_axi_lite_registers_arvalid <= 0;
                r_state <= C_r_RECEIVE_WORD;
            end
        end
        C_r_RECEIVE_WORD: begin
            if (m_axi_lite_registers_rready==0) begin
                m_axi_lite_registers_rready <= 1;
            end
            else if (m_axi_lite_registers_rvalid==1) begin
                m_axi_lite_registers_rready <= 0;
                r_data <= m_axi_lite_registers_rdata;
                r_state <= C_r_READY;
            end
        end
        C_r_READY: begin
            r_ready <= 1;
            if (r_enable==0) begin
                r_state <= C_r_WAIT_FOR_ENABLE;
            end
        end
        endcase
        
//////////
// Main //
//////////

always begin
    axi_aclk = ~axi_aclk;
    #(C_clock_delay/2);
end

integer sim_burst_len=0;
integer sim_bursts_per_transfer=0;
integer sim_bytes_per_transfer=0;
integer sim_address_offset=0;
initial begin
    
    // For the first test, let's simply reset all the hardware
    run_reset;
    
/*
    // Now, let's test the interface to the hardware accelerator's registers
    set_data_burst_len(32);
    get_data_burst_len;
    set_transfer_size(C_bytes_per_word*32);
    get_transfer_size;
    set_operation_mode(C_operation_mode_SEPARATE);
    get_operation_mode;
    set_write_address('h123);
    get_write_address;
    set_read_address('h321);
    get_read_address;
*/
    
    for (sim_bursts_per_transfer=1;sim_bursts_per_transfer<5;sim_bursts_per_transfer=sim_bursts_per_transfer+3)
        for (sim_burst_len=16;sim_burst_len<33;sim_burst_len=sim_burst_len+16) begin
        
            // Set initial parameters
            sim_bytes_per_transfer = C_bytes_per_word*sim_burst_len*sim_bursts_per_transfer;
            set_data_burst_len(sim_burst_len);
            set_transfer_size(sim_bytes_per_transfer);
        
            // Let's first test the fully mix mode of operation
            set_operation_mode(C_operation_mode_FULLY_MIX);
            set_write_address(sim_bytes_per_transfer+C_sim_address_offset_fully_mix+sim_address_offset);
            set_read_address(C_sim_address_offset_fully_mix+sim_address_offset);
            run_operation;
            
            // Let's test the mix mode of operation
            set_operation_mode(C_operation_mode_MIX);
            set_write_address(sim_bytes_per_transfer+C_sim_address_offset_mix+sim_address_offset);
            set_read_address(C_sim_address_offset_mix+sim_address_offset);
            run_operation;
         
            // Finally, let's test the separate mode of operation
            set_operation_mode(C_operation_mode_SEPARATE);
            set_write_address(sim_bytes_per_transfer+C_sim_address_offset_separate+sim_address_offset);
            set_read_address(C_sim_address_offset_separate+sim_address_offset);
            run_operation;
            
            // Increment the address offset so that operations occur on
            // different memory
            sim_address_offset = sim_address_offset+C_bytes_per_word*20;
        end
end

endmodule

module main_memory_module #(
    parameter integer C_s_axi_full_data_ID_WIDTH	       = 1,
    parameter integer C_s_axi_full_data_ADDR_WIDTH         = 32,
    parameter integer C_s_axi_full_data_DATA_WIDTH         = 32,
    parameter integer C_s_axi_full_data_AWUSER_WIDTH       = 1,
    parameter integer C_s_axi_full_data_ARUSER_WIDTH       = 1,
    parameter integer C_s_axi_full_data_WUSER_WIDTH        = 0,
    parameter integer C_s_axi_full_data_RUSER_WIDTH        = 0,
    parameter integer C_s_axi_full_data_BUSER_WIDTH        = 0,
    parameter integer C_fsm_width                          = 8,
    parameter integer C_memory_size                        = 2**14 // bytes
)(
    input wire axi_aclk,
    input wire axi_aresetn,
    input wire [C_s_axi_full_data_ID_WIDTH-1 : 0] s_axi_full_data_awid,
    input wire [C_s_axi_full_data_ADDR_WIDTH-1 : 0] s_axi_full_data_awaddr,
    input wire [7 : 0] s_axi_full_data_awlen,
    input wire [2 : 0] s_axi_full_data_awsize,
    input wire [1 : 0] s_axi_full_data_awburst,
    input wire  s_axi_full_data_awlock,
    input wire [3 : 0] s_axi_full_data_awcache,
    input wire [2 : 0] s_axi_full_data_awprot,
    input wire [3 : 0] s_axi_full_data_awqos,
    input wire [C_s_axi_full_data_AWUSER_WIDTH-1 : 0] s_axi_full_data_awuser,
    input wire  s_axi_full_data_awvalid,
    output reg  s_axi_full_data_awready=0,
    input wire [C_s_axi_full_data_DATA_WIDTH-1 : 0] s_axi_full_data_wdata,
    input wire [C_s_axi_full_data_DATA_WIDTH/8-1 : 0] s_axi_full_data_wstrb,
    input wire  s_axi_full_data_wlast,
    input wire [C_s_axi_full_data_WUSER_WIDTH-1 : 0] s_axi_full_data_wuser,
    input wire  s_axi_full_data_wvalid,
    output reg  s_axi_full_data_wready=0,
    output wire [C_s_axi_full_data_ID_WIDTH-1 : 0] s_axi_full_data_bid,
    output wire [1 : 0] s_axi_full_data_bresp,
    output wire [C_s_axi_full_data_BUSER_WIDTH-1 : 0] s_axi_full_data_buser,
    output reg  s_axi_full_data_bvalid=0,
    input wire  s_axi_full_data_bready,
    input wire [C_s_axi_full_data_ID_WIDTH-1 : 0] s_axi_full_data_arid,
    input wire [C_s_axi_full_data_ADDR_WIDTH-1 : 0] s_axi_full_data_araddr,
    input wire [7 : 0] s_axi_full_data_arlen,
    input wire [2 : 0] s_axi_full_data_arsize,
    input wire [1 : 0] s_axi_full_data_arburst,
    input wire  s_axi_full_data_arlock,
    input wire [3 : 0] s_axi_full_data_arcache,
    input wire [2 : 0] s_axi_full_data_arprot,
    input wire [3 : 0] s_axi_full_data_arqos,
    input wire [C_s_axi_full_data_ARUSER_WIDTH-1 : 0] s_axi_full_data_aruser,
    input wire  s_axi_full_data_arvalid,
    output reg  s_axi_full_data_arready=0,
    output wire [C_s_axi_full_data_ID_WIDTH-1 : 0] s_axi_full_data_rid,
    output wire [C_s_axi_full_data_DATA_WIDTH-1 : 0] s_axi_full_data_rdata,
    output wire [1 : 0] s_axi_full_data_rresp,
    output reg  s_axi_full_data_rlast=0,
    output wire [C_s_axi_full_data_RUSER_WIDTH-1 : 0] s_axi_full_data_ruser,
    output reg  s_axi_full_data_rvalid=0,
    input wire  s_axi_full_data_rready
);

localparam integer 
    C_s_axi_full_data_w_RECEIVE_ADDRESS=0,
    C_s_axi_full_data_w_RECEIVE_BURST=C_s_axi_full_data_w_RECEIVE_ADDRESS+1,
    C_s_axi_full_data_w_CHECK=C_s_axi_full_data_w_RECEIVE_BURST+2;
localparam integer 
    C_s_axi_full_data_r_RECEIVE_ADDRESS=0,
    C_s_axi_full_data_r_SEND_BURST=C_s_axi_full_data_r_RECEIVE_ADDRESS+1;
localparam C_byte_size = 8; // bits
localparam C_vals_in_byte = 2**C_byte_size;
localparam C_alen_width = 8;
localparam C_bytes_per_word = C_s_axi_full_data_DATA_WIDTH/C_byte_size;

reg [C_byte_size-1:0] memory_array [0:C_memory_size-1];
reg [C_fsm_width-1:0] s_axi_full_data_w_state = 0;
reg [C_fsm_width-1:0] s_axi_full_data_r_state = 0;
reg [C_alen_width-1:0] s_axi_full_data_burst_w_counter = 0;
reg [C_alen_width-1:0] s_axi_full_data_burst_r_counter = 0;
reg [C_alen_width-1:0] s_axi_full_data_awlen_reg = 0;
reg [C_alen_width-1:0] s_axi_full_data_arlen_reg = 0;
reg [C_s_axi_full_data_ADDR_WIDTH-1:0] s_axi_full_data_awaddr_reg=0;
reg [C_s_axi_full_data_ADDR_WIDTH-1:0] s_axi_full_data_araddr_reg=0;
wire [C_s_axi_full_data_ADDR_WIDTH-1:0] ptr_w_address = s_axi_full_data_awaddr_reg+(s_axi_full_data_burst_w_counter*C_bytes_per_word);
wire [C_s_axi_full_data_ADDR_WIDTH-1:0] ptr_r_address = s_axi_full_data_araddr_reg+(s_axi_full_data_burst_r_counter*C_bytes_per_word);
wire fin_w_burst = s_axi_full_data_burst_w_counter==s_axi_full_data_awlen_reg;
wire fin_r_burst = s_axi_full_data_burst_r_counter==s_axi_full_data_arlen_reg;
wire [C_byte_size-1:0] s_axi_full_data_wdata_byte [0:C_bytes_per_word-1];
reg [C_byte_size-1:0] s_axi_full_data_rdata_byte [0:C_bytes_per_word-1];
reg s_axi_full_data_w_handshake=0;

assign s_axi_full_data_bid      = 0;
assign s_axi_full_data_bresp    = 0;
assign s_axi_full_data_buser    = 0;
assign s_axi_full_data_rid      = 0;
assign s_axi_full_data_rresp    = 0;
assign s_axi_full_data_ruser    = 0;

integer i,k,val,rem;
genvar j;

generate
    for (j=0;j<C_bytes_per_word;j=j+1)
    begin:generate_assignments
        assign s_axi_full_data_wdata_byte[C_bytes_per_word-(j+1)] = s_axi_full_data_wdata[C_byte_size*(j+1)-1:C_byte_size*j];
        assign s_axi_full_data_rdata[C_byte_size*(j+1)-1:C_byte_size*j] = s_axi_full_data_rdata_byte[C_bytes_per_word-(j+1)];
        initial s_axi_full_data_rdata_byte[j] = 0;
    end
endgenerate

initial begin
    for (i=0;i<C_memory_size;i=i+1) begin
        memory_array[i] = 0;
    end
end

always @(posedge axi_aclk)
    if (axi_aresetn==0) begin
        s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_ADDRESS;
        s_axi_full_data_awready <= 0;
        s_axi_full_data_awaddr_reg <= 0;
        s_axi_full_data_awlen_reg <= 0;
        s_axi_full_data_wready <= 0;
        s_axi_full_data_bvalid <= 0;
        s_axi_full_data_w_handshake <= 0;
        s_axi_full_data_burst_w_counter <= 0;
        for (i=0;i<C_memory_size;i=i+C_bytes_per_word) begin
            val = i/C_bytes_per_word;
            rem = 0;
            for (k=0;k<C_bytes_per_word;k=k+1) begin
                rem = val%C_vals_in_byte;
                val = val/C_vals_in_byte;
                memory_array[i+C_bytes_per_word-(1+k)] = rem;
            end
        end
    end
    else
        case (s_axi_full_data_w_state)
        C_s_axi_full_data_w_RECEIVE_ADDRESS: begin
            if (s_axi_full_data_awready==0) begin
                s_axi_full_data_awready <= 1;
            end 
            else if (s_axi_full_data_awvalid==1) begin
                s_axi_full_data_awready <= 0;
                s_axi_full_data_awaddr_reg <= s_axi_full_data_awaddr;
                s_axi_full_data_awlen_reg <= s_axi_full_data_awlen;
                s_axi_full_data_burst_w_counter <= 0;
                s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_BURST;
            end
        end
        C_s_axi_full_data_w_RECEIVE_BURST: begin
            s_axi_full_data_wready <= 1;
            if ((s_axi_full_data_wvalid==1)&&(s_axi_full_data_wvalid==1)) begin
                for (i=0;i<C_bytes_per_word;i=i+1) begin
                    if (s_axi_full_data_wstrb[C_bytes_per_word-(i+1)]==1) begin
                        memory_array[ptr_w_address+i] <= s_axi_full_data_wdata_byte[i];
                    end
                end
                if ((s_axi_full_data_wlast==1)||(fin_w_burst==1)) begin
                    s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_BURST+1;
                end
                s_axi_full_data_burst_w_counter <= s_axi_full_data_burst_w_counter+1;
            end
        end
        C_s_axi_full_data_w_RECEIVE_BURST+1: begin
            s_axi_full_data_wready <= 0;
            s_axi_full_data_w_state <= C_s_axi_full_data_w_CHECK;
        end
        C_s_axi_full_data_w_CHECK: begin
            if (s_axi_full_data_bvalid==0) begin
                s_axi_full_data_bvalid <= 1;
            end
            else if (s_axi_full_data_bready==1) begin
                s_axi_full_data_bvalid <= 0;
                s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_ADDRESS;
            end
            /*
            if (s_axi_full_data_bvalid==0) begin
                s_axi_full_data_bvalid <= 1;
            end
            else if (s_axi_full_data_w_handshake==1) begin
                s_axi_full_data_bvalid <= 0;
                s_axi_full_data_w_handshake <= 0;
                s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_ADDRESS;
            end
            if (s_axi_full_data_bready==1) begin
                s_axi_full_data_w_handshake <= 1;
            end
            */
        end
        endcase
        
 always @(posedge axi_aclk)
    if (axi_aresetn==0) begin
        s_axi_full_data_r_state <= C_s_axi_full_data_r_RECEIVE_ADDRESS;
        s_axi_full_data_arready <= 0;
        s_axi_full_data_araddr_reg <= 0;
        s_axi_full_data_arlen_reg <= 0;
        s_axi_full_data_rvalid <= 0;
        for (i=0;i<C_bytes_per_word;i=i+1) begin
            s_axi_full_data_rdata_byte[i] <= 0;
        end
        s_axi_full_data_rlast <= 0;
        s_axi_full_data_burst_r_counter <= 0;
    end
    else
        case (s_axi_full_data_r_state)
        C_s_axi_full_data_r_RECEIVE_ADDRESS: begin
            if (s_axi_full_data_arready==0) begin
                s_axi_full_data_arready <= 1;
            end
            else if (s_axi_full_data_arvalid==1) begin
                s_axi_full_data_arready <= 0;
                s_axi_full_data_araddr_reg <= s_axi_full_data_araddr;
                s_axi_full_data_arlen_reg <= s_axi_full_data_arlen;
                s_axi_full_data_burst_r_counter <= 0;
                s_axi_full_data_r_state <= C_s_axi_full_data_r_SEND_BURST;
            end
        end
        C_s_axi_full_data_r_SEND_BURST: begin
            if (s_axi_full_data_rvalid==0) begin
                s_axi_full_data_rvalid <= 1;
                if (fin_r_burst==1) begin
                    s_axi_full_data_rlast <= 1;
                end
                for (i=0;i<C_bytes_per_word;i=i+1) begin
                    s_axi_full_data_rdata_byte[i] <= memory_array[ptr_r_address+i];
                end
                s_axi_full_data_burst_r_counter <= s_axi_full_data_burst_r_counter+1;
            end
            else if (s_axi_full_data_rready==1) begin
                s_axi_full_data_rvalid <= 0;
            end
            if (s_axi_full_data_rlast==1) begin
                s_axi_full_data_rlast <= 0;
                s_axi_full_data_rvalid <= 0;
                s_axi_full_data_r_state <= C_s_axi_full_data_r_RECEIVE_ADDRESS;
            end
        end
        endcase
                      
endmodule
