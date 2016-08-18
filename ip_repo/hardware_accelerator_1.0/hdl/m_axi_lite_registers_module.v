`timescale 1ns / 1ps

module control_module #(
    parameter integer C_m_axi_lite_registers_DATA_WIDTH	= 32,
    parameter integer C_m_axi_lite_registers_ADDR_WIDTH	= 8,
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
    C_bytes_per_word=C_m_axi_lite_registers_DATA_WIDTH/C_bits_per_byte;
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
