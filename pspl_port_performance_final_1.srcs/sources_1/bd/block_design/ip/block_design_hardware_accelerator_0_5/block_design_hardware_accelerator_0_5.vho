-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:hardware_accelerator:1.0
-- IP Revision: 103

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT block_design_hardware_accelerator_0_5
  PORT (
    s_axi_aclk : IN STD_LOGIC;
    s_axi_aresetn : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    ready : OUT STD_LOGIC;
    s_axi_lite_registers_awaddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_lite_registers_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_registers_awvalid : IN STD_LOGIC;
    s_axi_lite_registers_awready : OUT STD_LOGIC;
    s_axi_lite_registers_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_registers_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_lite_registers_wvalid : IN STD_LOGIC;
    s_axi_lite_registers_wready : OUT STD_LOGIC;
    s_axi_lite_registers_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_registers_bvalid : OUT STD_LOGIC;
    s_axi_lite_registers_bready : IN STD_LOGIC;
    s_axi_lite_registers_araddr : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_axi_lite_registers_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_axi_lite_registers_arvalid : IN STD_LOGIC;
    s_axi_lite_registers_arready : OUT STD_LOGIC;
    s_axi_lite_registers_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_lite_registers_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_lite_registers_rvalid : OUT STD_LOGIC;
    s_axi_lite_registers_rready : IN STD_LOGIC;
    m_axi_full_data_awid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_awaddr_wire : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_full_data_awlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_full_data_awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_full_data_awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_awlock : OUT STD_LOGIC;
    m_axi_full_data_awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_full_data_awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_full_data_awqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_full_data_awuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_full_data_awvalid : OUT STD_LOGIC;
    m_axi_full_data_awready : IN STD_LOGIC;
    m_axi_full_data_wdata : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_full_data_wstrb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_full_data_wlast : OUT STD_LOGIC;
    m_axi_full_data_wuser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_full_data_wvalid : OUT STD_LOGIC;
    m_axi_full_data_wready : IN STD_LOGIC;
    m_axi_full_data_bid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_buser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_full_data_bvalid : IN STD_LOGIC;
    m_axi_full_data_bready : OUT STD_LOGIC;
    m_axi_full_data_arid : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_araddr_wire : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_full_data_arlen : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_full_data_arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_full_data_arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_arlock : OUT STD_LOGIC;
    m_axi_full_data_arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_full_data_arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_full_data_arqos : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_full_data_aruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_full_data_arvalid : OUT STD_LOGIC;
    m_axi_full_data_arready : IN STD_LOGIC;
    m_axi_full_data_rid : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_rdata : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_full_data_rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_full_data_rlast : IN STD_LOGIC;
    m_axi_full_data_ruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    m_axi_full_data_rvalid : IN STD_LOGIC;
    m_axi_full_data_rready : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : block_design_hardware_accelerator_0_5
  PORT MAP (
    s_axi_aclk => s_axi_aclk,
    s_axi_aresetn => s_axi_aresetn,
    enable => enable,
    ready => ready,
    s_axi_lite_registers_awaddr => s_axi_lite_registers_awaddr,
    s_axi_lite_registers_awprot => s_axi_lite_registers_awprot,
    s_axi_lite_registers_awvalid => s_axi_lite_registers_awvalid,
    s_axi_lite_registers_awready => s_axi_lite_registers_awready,
    s_axi_lite_registers_wdata => s_axi_lite_registers_wdata,
    s_axi_lite_registers_wstrb => s_axi_lite_registers_wstrb,
    s_axi_lite_registers_wvalid => s_axi_lite_registers_wvalid,
    s_axi_lite_registers_wready => s_axi_lite_registers_wready,
    s_axi_lite_registers_bresp => s_axi_lite_registers_bresp,
    s_axi_lite_registers_bvalid => s_axi_lite_registers_bvalid,
    s_axi_lite_registers_bready => s_axi_lite_registers_bready,
    s_axi_lite_registers_araddr => s_axi_lite_registers_araddr,
    s_axi_lite_registers_arprot => s_axi_lite_registers_arprot,
    s_axi_lite_registers_arvalid => s_axi_lite_registers_arvalid,
    s_axi_lite_registers_arready => s_axi_lite_registers_arready,
    s_axi_lite_registers_rdata => s_axi_lite_registers_rdata,
    s_axi_lite_registers_rresp => s_axi_lite_registers_rresp,
    s_axi_lite_registers_rvalid => s_axi_lite_registers_rvalid,
    s_axi_lite_registers_rready => s_axi_lite_registers_rready,
    m_axi_full_data_awid => m_axi_full_data_awid,
    m_axi_full_data_awaddr_wire => m_axi_full_data_awaddr_wire,
    m_axi_full_data_awlen => m_axi_full_data_awlen,
    m_axi_full_data_awsize => m_axi_full_data_awsize,
    m_axi_full_data_awburst => m_axi_full_data_awburst,
    m_axi_full_data_awlock => m_axi_full_data_awlock,
    m_axi_full_data_awcache => m_axi_full_data_awcache,
    m_axi_full_data_awprot => m_axi_full_data_awprot,
    m_axi_full_data_awqos => m_axi_full_data_awqos,
    m_axi_full_data_awuser => m_axi_full_data_awuser,
    m_axi_full_data_awvalid => m_axi_full_data_awvalid,
    m_axi_full_data_awready => m_axi_full_data_awready,
    m_axi_full_data_wdata => m_axi_full_data_wdata,
    m_axi_full_data_wstrb => m_axi_full_data_wstrb,
    m_axi_full_data_wlast => m_axi_full_data_wlast,
    m_axi_full_data_wuser => m_axi_full_data_wuser,
    m_axi_full_data_wvalid => m_axi_full_data_wvalid,
    m_axi_full_data_wready => m_axi_full_data_wready,
    m_axi_full_data_bid => m_axi_full_data_bid,
    m_axi_full_data_bresp => m_axi_full_data_bresp,
    m_axi_full_data_buser => m_axi_full_data_buser,
    m_axi_full_data_bvalid => m_axi_full_data_bvalid,
    m_axi_full_data_bready => m_axi_full_data_bready,
    m_axi_full_data_arid => m_axi_full_data_arid,
    m_axi_full_data_araddr_wire => m_axi_full_data_araddr_wire,
    m_axi_full_data_arlen => m_axi_full_data_arlen,
    m_axi_full_data_arsize => m_axi_full_data_arsize,
    m_axi_full_data_arburst => m_axi_full_data_arburst,
    m_axi_full_data_arlock => m_axi_full_data_arlock,
    m_axi_full_data_arcache => m_axi_full_data_arcache,
    m_axi_full_data_arprot => m_axi_full_data_arprot,
    m_axi_full_data_arqos => m_axi_full_data_arqos,
    m_axi_full_data_aruser => m_axi_full_data_aruser,
    m_axi_full_data_arvalid => m_axi_full_data_arvalid,
    m_axi_full_data_arready => m_axi_full_data_arready,
    m_axi_full_data_rid => m_axi_full_data_rid,
    m_axi_full_data_rdata => m_axi_full_data_rdata,
    m_axi_full_data_rresp => m_axi_full_data_rresp,
    m_axi_full_data_rlast => m_axi_full_data_rlast,
    m_axi_full_data_ruser => m_axi_full_data_ruser,
    m_axi_full_data_rvalid => m_axi_full_data_rvalid,
    m_axi_full_data_rready => m_axi_full_data_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file block_design_hardware_accelerator_0_5.vhd when simulating
-- the core, block_design_hardware_accelerator_0_5. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

