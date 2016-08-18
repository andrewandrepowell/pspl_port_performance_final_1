`timescale 1ns / 1ps

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
            else if (s_axi_full_data_w_handshake==1) begin
                s_axi_full_data_bvalid <= 0;
                s_axi_full_data_w_handshake <= 0;
                s_axi_full_data_w_state <= C_s_axi_full_data_w_RECEIVE_ADDRESS;
            end
            if (s_axi_full_data_bready==1) begin
                s_axi_full_data_w_handshake <= 1;
            end
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
