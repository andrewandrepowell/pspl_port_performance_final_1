-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
-- Date        : Mon Jun 15 12:10:48 2015
-- Host        : idea-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/ip_repo/hardware_accelerator_1.0/bd/bram32/ip/bram32_axi_bram_ctrl_0_0/bram32_axi_bram_ctrl_0_0_funcsim.vhdl
-- Design      : bram32_axi_bram_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_SRL_FIFO is
  port (
    clr_bram_we_cmb7_out : out STD_LOGIC;
    O1 : out STD_LOGIC;
    axi_wdata_full_cmb116_out : out STD_LOGIC;
    bvalid_cnt_inc12_out : out STD_LOGIC;
    O2 : out STD_LOGIC;
    bid_gets_fifo_load : out STD_LOGIC;
    O3 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    axi_awaddr_full : in STD_LOGIC;
    axi_aresetn_d2 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    bram_addr_ld_en : in STD_LOGIC;
    bvalid_cnt_inc : in STD_LOGIC;
    I5 : in STD_LOGIC;
    wr_addr_sm_cs : in STD_LOGIC;
    bvalid_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC;
    I6 : in STD_LOGIC;
    axi_awid_pipe : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_SRL_FIFO : entity is "SRL_FIFO";
end bram32_axi_bram_ctrl_0_0_SRL_FIFO;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_SRL_FIFO is
  signal CI : STD_LOGIC;
  signal D : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S2_out : STD_LOGIC;
  signal S4_out : STD_LOGIC;
  signal S6_out : STD_LOGIC;
  signal \^axi_wdata_full_cmb116_out\ : STD_LOGIC;
  signal bid_fifo_ld : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC;
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal \^bvalid_cnt_inc12_out\ : STD_LOGIC;
  signal \^clr_bram_we_cmb7_out\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[0].MUXCY_L_I_i_2\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].MUXCY_L_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[1].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[2].XORCY_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].FDRE_I\ : STD_LOGIC;
  signal \n_0_Addr_Counters[3].XORCY_I\ : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_1 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_2 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_3 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_4 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_5 : STD_LOGIC;
  signal n_0_Data_Exists_DFF_i_6 : STD_LOGIC;
  signal \n_0_axi_bid_int[0]_i_2\ : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_6 : STD_LOGIC;
  signal n_0_bid_gets_fifo_load_d1_i_2 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute BOX_TYPE of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute BOX_TYPE of Data_Exists_DFF : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Data_Exists_DFF_i_1 : label is "soft_lutpair49";
  attribute BOX_TYPE of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "U0/\gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute SOFT_HLUTNM of \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_4\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_bid_int[0]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of axi_bvalid_int_i_3 : label is "soft_lutpair48";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  axi_wdata_full_cmb116_out <= \^axi_wdata_full_cmb116_out\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
  bvalid_cnt_inc12_out <= \^bvalid_cnt_inc12_out\;
  clr_bram_we_cmb7_out <= \^clr_bram_we_cmb7_out\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => D,
      Q => \n_0_Addr_Counters[0].FDRE_I\,
      R => I1
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3 downto 2) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_0_Addr_Counters[1].MUXCY_L_I\,
      CO(0) => CI,
      CYINIT => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \n_0_Addr_Counters[2].FDRE_I\,
      DI(1) => \n_0_Addr_Counters[1].FDRE_I\,
      DI(0) => \n_0_Addr_Counters[0].FDRE_I\,
      O(3) => \n_0_Addr_Counters[3].XORCY_I\,
      O(2) => \n_0_Addr_Counters[2].XORCY_I\,
      O(1) => \n_0_Addr_Counters[1].XORCY_I\,
      O(0) => D,
      S(3) => S,
      S(2) => S2_out,
      S(1) => S4_out,
      S(0) => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => bram_addr_ld_en,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[0].FDRE_I\,
      O => S6_out
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => \n_0_axi_bid_int[0]_i_2\,
      I2 => \n_0_Addr_Counters[2].FDRE_I\,
      I3 => \n_0_Addr_Counters[3].FDRE_I\,
      I4 => \n_0_Addr_Counters[1].FDRE_I\,
      I5 => \n_0_Addr_Counters[0].FDRE_I\,
      O => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[1].XORCY_I\,
      Q => \n_0_Addr_Counters[1].FDRE_I\,
      R => I1
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => bram_addr_ld_en,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[1].FDRE_I\,
      O => S4_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[2].XORCY_I\,
      Q => \n_0_Addr_Counters[2].FDRE_I\,
      R => I1
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[3].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => bram_addr_ld_en,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[2].FDRE_I\,
      O => S2_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => \n_0_Addr_Counters[3].XORCY_I\,
      Q => \n_0_Addr_Counters[3].FDRE_I\,
      R => I1
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[1].FDRE_I\,
      I2 => \n_0_Addr_Counters[0].FDRE_I\,
      I3 => bram_addr_ld_en,
      I4 => \n_0_axi_bid_int[0]_i_2\,
      I5 => \n_0_Addr_Counters[3].FDRE_I\,
      O => S
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_Data_Exists_DFF_i_1,
      Q => bid_fifo_not_empty,
      R => I1
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE0A"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => n_0_Data_Exists_DFF_i_2,
      I2 => n_0_Data_Exists_DFF_i_3,
      I3 => bid_fifo_not_empty,
      O => n_0_Data_Exists_DFF_i_1
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F4F7"
    )
    port map (
      I0 => n_0_Data_Exists_DFF_i_4,
      I1 => \^clr_bram_we_cmb7_out\,
      I2 => n_0_bid_gets_fifo_load_d1_i_2,
      I3 => n_0_Data_Exists_DFF_i_5,
      I4 => \^o1\,
      I5 => bid_gets_fifo_load_d1,
      O => n_0_Data_Exists_DFF_i_2
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_Addr_Counters[2].FDRE_I\,
      I1 => \n_0_Addr_Counters[3].FDRE_I\,
      I2 => \n_0_Addr_Counters[1].FDRE_I\,
      I3 => \n_0_Addr_Counters[0].FDRE_I\,
      O => n_0_Data_Exists_DFF_i_3
    );
Data_Exists_DFF_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0000000E0C0C0C"
    )
    port map (
      I0 => \^axi_wdata_full_cmb116_out\,
      I1 => \out\(0),
      I2 => \out\(2),
      I3 => s_axi_wlast,
      I4 => s_axi_wvalid,
      I5 => \out\(1),
      O => n_0_Data_Exists_DFF_i_4
    );
Data_Exists_DFF_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888800000004"
    )
    port map (
      I0 => \out\(0),
      I1 => \^bvalid_cnt_inc12_out\,
      I2 => \^o2\,
      I3 => n_0_Data_Exists_DFF_i_6,
      I4 => \out\(2),
      I5 => \out\(1),
      O => n_0_Data_Exists_DFF_i_5
    );
Data_Exists_DFF_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => I3,
      I1 => I4,
      I2 => s_axi_awvalid,
      O => n_0_Data_Exists_DFF_i_6
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
    port map (
      A0 => \n_0_Addr_Counters[0].FDRE_I\,
      A1 => \n_0_Addr_Counters[1].FDRE_I\,
      A2 => \n_0_Addr_Counters[2].FDRE_I\,
      A3 => \n_0_Addr_Counters[3].FDRE_I\,
      CE => \n_0_Addr_Counters[0].MUXCY_L_I_i_2\,
      CLK => s_axi_aclk,
      D => bid_fifo_ld,
      Q => bid_fifo_rd
    );
\FIFO_RAM[0].SRL16E_I_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awid_pipe,
      I1 => axi_awaddr_full,
      I2 => s_axi_awid(0),
      O => bid_fifo_ld
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bvalid_cnt(0),
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(2),
      O => \^o2\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F7F7F000000"
    )
    port map (
      I0 => bvalid_cnt(2),
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(0),
      I3 => s_axi_awvalid,
      I4 => I4,
      I5 => I3,
      O => \^axi_wdata_full_cmb116_out\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAAC0"
    )
    port map (
      I0 => bid_fifo_ld,
      I1 => bid_fifo_rd,
      I2 => \n_0_axi_bid_int[0]_i_2\,
      I3 => \^bid_gets_fifo_load\,
      I4 => s_axi_bid(0),
      O => O3
    );
\axi_bid_int[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bid_fifo_not_empty,
      I1 => n_0_Data_Exists_DFF_i_2,
      O => \n_0_axi_bid_int[0]_i_2\
    );
axi_bvalid_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000000"
    )
    port map (
      I0 => bvalid_cnt(0),
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(2),
      I3 => s_axi_bready,
      I4 => I6,
      O => \^o1\
    );
axi_bvalid_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8880"
    )
    port map (
      I0 => axi_awaddr_full,
      I1 => axi_aresetn_d2,
      I2 => n_0_axi_bvalid_int_i_6,
      I3 => I2,
      I4 => \^axi_wdata_full_cmb116_out\,
      I5 => axi_wr_burst,
      O => \^clr_bram_we_cmb7_out\
    );
axi_bvalid_int_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_wlast,
      I1 => s_axi_wvalid,
      O => \^bvalid_cnt_inc12_out\
    );
axi_bvalid_int_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
    port map (
      I0 => \^o2\,
      I1 => I3,
      I2 => axi_awaddr_full,
      I3 => s_axi_awvalid,
      I4 => wr_addr_sm_cs,
      O => n_0_axi_bvalid_int_i_6
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0808088808080808"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => bvalid_cnt_inc,
      I2 => n_0_bid_gets_fifo_load_d1_i_2,
      I3 => I5,
      I4 => bid_fifo_not_empty,
      I5 => \^o1\,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => bvalid_cnt(2),
      I1 => bvalid_cnt(1),
      I2 => bvalid_cnt(0),
      O => n_0_bid_gets_fifo_load_d1_i_2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_wrap_brst is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 9 downto 0 );
    bram_addr_ld_en : out STD_LOGIC;
    O4 : out STD_LOGIC;
    bram_addr_inc : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    axi_byte_div_curr_awsize : out STD_LOGIC_VECTOR ( 0 to 0 );
    curr_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    I3 : in STD_LOGIC;
    bvalid_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    axi_awaddr_full : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ : in STD_LOGIC;
    I7 : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    axi_aresetn_d2 : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    wr_addr_sm_cs : in STD_LOGIC;
    I8 : in STD_LOGIC;
    last_data_ack_mod : in STD_LOGIC;
    I9 : in STD_LOGIC;
    axi_awlen_pipe_1_or_2 : in STD_LOGIC;
    curr_awlen_reg_1_or_2 : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    I10 : in STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_wrap_burst : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    curr_fixed_burst : in STD_LOGIC;
    I12 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_wrap_brst : entity is "wrap_brst";
end bram32_axi_bram_ctrl_0_0_wrap_brst;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_wrap_brst is
  signal \^d\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^axi_byte_div_curr_awsize\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_addr_inc\ : STD_LOGIC;
  signal \^bram_addr_ld_en\ : STD_LOGIC;
  signal \^curr_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^curr_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_5\ : STD_LOGIC;
  signal n_0_curr_fixed_burst_reg_i_3 : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[3]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[4]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[5]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[1]_i_4\ : STD_LOGIC;
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[4]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_2__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_2__0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_3\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_4\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_3__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_4__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_5__0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_6__0\ : label is "soft_lutpair53";
begin
  D(9 downto 0) <= \^d\(9 downto 0);
  O2 <= \^o2\;
  O3 <= \^o3\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  axi_byte_div_curr_awsize(0) <= \^axi_byte_div_curr_awsize\(0);
  bram_addr_inc <= \^bram_addr_inc\;
  bram_addr_ld_en <= \^bram_addr_ld_en\;
  curr_awlen(3 downto 0) <= \^curr_awlen\(3 downto 0);
  curr_awsize(2 downto 0) <= \^curr_awsize\(2 downto 0);
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => I8,
      I1 => last_data_ack_mod,
      I2 => axi_awaddr_full,
      I3 => I9,
      I4 => axi_awlen_pipe_1_or_2,
      I5 => curr_awlen_reg_1_or_2,
      O => \^o5\
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1555"
    )
    port map (
      I0 => I3,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => bvalid_cnt(0),
      O => \^o3\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000040FFFFFFFF"
    )
    port map (
      I0 => I1,
      I1 => \^o2\,
      I2 => I2,
      I3 => s_axi_wvalid,
      I4 => \out\(0),
      I5 => s_axi_aresetn,
      O => O1
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555455555555555"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => \out\(0),
      I3 => \out\(1),
      I4 => \out\(2),
      I5 => s_axi_wvalid,
      O => \^o2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFE0E0FF00E0E0"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => I7,
      I3 => I1,
      I4 => \^o2\,
      I5 => I4,
      O => O4
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA2"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => \^bram_addr_inc\,
      I2 => narrow_addr_int(1),
      I3 => narrow_addr_int(0),
      I4 => narrow_bram_addr_inc_d1,
      I5 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7775777F777F77"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_5\,
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(0),
      I5 => \^o6\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_4\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44C004C000C000C0"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => I4,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(1),
      I4 => I5,
      I5 => I6,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_5\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I10,
      I1 => I6,
      I2 => I4,
      I3 => I5,
      O => \^o6\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => \out\(0),
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => s_axi_wvalid,
      O => \^bram_addr_inc\
    );
\curr_fixed_burst_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
    port map (
      I0 => curr_fixed_burst_reg,
      I1 => \^bram_addr_ld_en\,
      I2 => curr_fixed_burst,
      I3 => s_axi_aresetn,
      I4 => n_0_curr_fixed_burst_reg_i_3,
      O => O8
    );
curr_fixed_burst_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => \out\(0),
      I1 => s_axi_wvalid,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \^o2\,
      I5 => I1,
      O => n_0_curr_fixed_burst_reg_i_3
    );
\curr_wrap_burst_reg_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000E200"
    )
    port map (
      I0 => curr_wrap_burst_reg,
      I1 => \^bram_addr_ld_en\,
      I2 => curr_wrap_burst,
      I3 => s_axi_aresetn,
      I4 => n_0_curr_fixed_burst_reg_i_3,
      O => O7
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(10),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(7),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(11),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(8),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA00008880"
    )
    port map (
      I0 => axi_aresetn_d2,
      I1 => \^o3\,
      I2 => axi_awaddr_full,
      I3 => s_axi_awvalid,
      I4 => wr_addr_sm_cs,
      I5 => \^o5\,
      O => \^bram_addr_ld_en\
    );
\save_init_bram_addr_ld[12]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(12),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(9),
      O => \^d\(9)
    );
\save_init_bram_addr_ld[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[3]_i_2\,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(0),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => save_init_bram_addr_ld(3),
      I3 => wrap_burst_total(1),
      O => \n_0_save_init_bram_addr_ld[3]_i_2\
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[4]_i_2\,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(1),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => wrap_burst_total(2),
      I1 => wrap_burst_total(0),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(4),
      O => \n_0_save_init_bram_addr_ld[4]_i_2\
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[5]_i_2__0\,
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(2),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[5]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => wrap_burst_total(0),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(1),
      I3 => save_init_bram_addr_ld(5),
      O => \n_0_save_init_bram_addr_ld[5]_i_2__0\
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(6),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(3),
      O => \^d\(3)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(7),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(4),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(8),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(5),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE10FEFEFE101010"
    )
    port map (
      I0 => \^bram_addr_ld_en\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2\,
      I2 => save_init_bram_addr_ld(9),
      I3 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      I4 => axi_awaddr_full,
      I5 => s_axi_awaddr(6),
      O => \^d\(6)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(7),
      Q => save_init_bram_addr_ld(10),
      R => I12
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(8),
      Q => save_init_bram_addr_ld(11),
      R => I12
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(9),
      Q => save_init_bram_addr_ld(12),
      R => I12
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(0),
      Q => save_init_bram_addr_ld(3),
      R => I12
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(1),
      Q => save_init_bram_addr_ld(4),
      R => I12
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(2),
      Q => save_init_bram_addr_ld(5),
      R => I12
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(3),
      Q => save_init_bram_addr_ld(6),
      R => I12
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(4),
      Q => save_init_bram_addr_ld(7),
      R => I12
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(5),
      Q => save_init_bram_addr_ld(8),
      R => I12
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(6),
      Q => save_init_bram_addr_ld(9),
      R => I12
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0109000200000100"
    )
    port map (
      I0 => \^curr_awsize\(0),
      I1 => \^curr_awlen\(3),
      I2 => \n_0_wrap_burst_total[0]_i_2__0\,
      I3 => \^curr_awsize\(1),
      I4 => \^curr_awlen\(2),
      I5 => \^curr_awlen\(1),
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => Q(2),
      I2 => s_axi_awlen(0),
      I3 => axi_awaddr_full,
      I4 => I11(0),
      O => \n_0_wrap_burst_total[0]_i_2__0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000444A"
    )
    port map (
      I0 => \^curr_awsize\(1),
      I1 => \^curr_awlen\(2),
      I2 => \^curr_awlen\(3),
      I3 => \^curr_awsize\(0),
      I4 => \n_0_wrap_burst_total[1]_i_4\,
      I5 => \^curr_awsize\(2),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Q(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(1),
      O => \^curr_awsize\(1)
    );
\wrap_burst_total[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Q(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(0),
      O => \^curr_awsize\(0)
    );
\wrap_burst_total[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
    port map (
      I0 => s_axi_awlen(1),
      I1 => I11(1),
      I2 => s_axi_awlen(0),
      I3 => axi_awaddr_full,
      I4 => I11(0),
      O => \n_0_wrap_burst_total[1]_i_4\
    );
\wrap_burst_total[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => Q(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      O => \^curr_awsize\(2)
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^axi_byte_div_curr_awsize\(0),
      I1 => \^curr_awlen\(1),
      I2 => \^curr_awlen\(0),
      I3 => \^curr_awlen\(3),
      I4 => \^curr_awlen\(2),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000000C0A0A"
    )
    port map (
      I0 => s_axi_awsize(1),
      I1 => Q(1),
      I2 => \^curr_awsize\(0),
      I3 => Q(2),
      I4 => axi_awaddr_full,
      I5 => s_axi_awsize(2),
      O => \^axi_byte_div_curr_awsize\(0)
    );
\wrap_burst_total[2]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I11(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(1),
      O => \^curr_awlen\(1)
    );
\wrap_burst_total[2]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I11(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(0),
      O => \^curr_awlen\(0)
    );
\wrap_burst_total[2]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I11(3),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(3),
      O => \^curr_awlen\(3)
    );
\wrap_burst_total[2]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I11(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(2),
      O => \^curr_awlen\(2)
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(0),
      Q => wrap_burst_total(0),
      R => I12
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(1),
      Q => wrap_burst_total(1),
      R => I12
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(2),
      Q => wrap_burst_total(2),
      R => I12
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_wrap_brst_0 is
  port (
    O1 : out STD_LOGIC;
    narrow_bram_addr_inc : out STD_LOGIC;
    bram_addr_ld_en : out STD_LOGIC;
    bram_addr_inc : out STD_LOGIC;
    bram_addr_inc8_out : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    rd_adv_buf79_out : out STD_LOGIC;
    O8 : out STD_LOGIC;
    curr_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    curr_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    narrow_bram_addr_inc_d1 : in STD_LOGIC;
    curr_narrow_burst : in STD_LOGIC;
    narrow_addr_int : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_rd_burst : in STD_LOGIC;
    I1 : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    axi_b2b_brst : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\ : in STD_LOGIC;
    axi_araddr_full : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\ : in STD_LOGIC;
    \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\ : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    axi_aresetn_d2 : in STD_LOGIC;
    last_bram_addr : in STD_LOGIC;
    ar_active : in STD_LOGIC;
    no_ar_ack : in STD_LOGIC;
    I3 : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    rd_addr_sm_cs : in STD_LOGIC;
    disable_b2b_brst : in STD_LOGIC;
    axi_arlen_pipe_1_or_2 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_wrap_brst_0 : entity is "wrap_brst";
end bram32_axi_bram_ctrl_0_0_wrap_brst_0;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_wrap_brst_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^o2\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC;
  signal \^o8\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_byte_div_curr_arsize : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^bram_addr_inc\ : STD_LOGIC;
  signal \^bram_addr_inc8_out\ : STD_LOGIC;
  signal \^bram_addr_ld_en\ : STD_LOGIC;
  signal \^curr_arlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^curr_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_3\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_4\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[11]_i_5\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[12]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[3]_i_2__0\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld[5]_i_2\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[10]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[11]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[3]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[4]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[5]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[6]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[7]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[8]\ : STD_LOGIC;
  signal \n_0_save_init_bram_addr_ld_reg[9]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[0]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total[1]_i_2\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[0]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[1]\ : STD_LOGIC;
  signal \n_0_wrap_burst_total_reg[2]\ : STD_LOGIC;
  signal \^narrow_bram_addr_inc\ : STD_LOGIC;
  signal \^rd_adv_buf79_out\ : STD_LOGIC;
  signal wrap_burst_total_cmb : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of bram_en_int_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[3]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[4]_i_2__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wrap_burst_total[1]_i_4__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_6\ : label is "soft_lutpair5";
begin
  D(8 downto 0) <= \^d\(8 downto 0);
  O2(0) <= \^o2\(0);
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  O7 <= \^o7\;
  O8 <= \^o8\;
  SR(0) <= \^sr\(0);
  bram_addr_inc <= \^bram_addr_inc\;
  bram_addr_inc8_out <= \^bram_addr_inc8_out\;
  bram_addr_ld_en <= \^bram_addr_ld_en\;
  curr_arlen(3 downto 0) <= \^curr_arlen\(3 downto 0);
  curr_arsize(2 downto 0) <= \^curr_arsize\(2 downto 0);
  narrow_bram_addr_inc <= \^narrow_bram_addr_inc\;
  rd_adv_buf79_out <= \^rd_adv_buf79_out\;
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEFFEEEE"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0\,
      I2 => narrow_bram_addr_inc_d1,
      I3 => \^narrow_bram_addr_inc\,
      I4 => curr_narrow_burst,
      I5 => \^bram_addr_ld_en\,
      O => O1
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000005D"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => \^narrow_bram_addr_inc\,
      I2 => narrow_bram_addr_inc_d1,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0\,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\,
      O => \^o3\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3100FFFFFFFFFFFF"
    )
    port map (
      I0 => \^o4\,
      I1 => \n_0_wrap_burst_total_reg[1]\,
      I2 => \n_0_wrap_burst_total_reg[0]\,
      I3 => \n_0_wrap_burst_total_reg[2]\,
      I4 => curr_wrap_burst_reg,
      I5 => \^bram_addr_inc\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_4__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000075FF0FFF"
    )
    port map (
      I0 => I8,
      I1 => I9,
      I2 => \n_0_wrap_burst_total_reg[0]\,
      I3 => I10,
      I4 => \n_0_wrap_burst_total_reg[1]\,
      I5 => \n_0_wrap_burst_total_reg[2]\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I11,
      I1 => I8,
      I2 => I10,
      I3 => I9,
      O => \^o4\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => narrow_addr_int(1),
      I2 => curr_narrow_burst,
      I3 => \^bram_addr_inc\,
      O => \^narrow_bram_addr_inc\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8ABA8A"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\,
      I1 => Q(1),
      I2 => Q(2),
      I3 => \^bram_addr_inc8_out\,
      I4 => Q(0),
      I5 => Q(3),
      O => \^bram_addr_inc\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EE00F0F3EE00"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => I1,
      I2 => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4\,
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(2),
      O => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_3\
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5100000000000000"
    )
    port map (
      I0 => brst_zero,
      I1 => end_brst_rd,
      I2 => axi_b2b_brst,
      I3 => Q(0),
      I4 => I2,
      I5 => s_axi_rready,
      O => \n_0_GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_4\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I2,
      I1 => s_axi_rready,
      O => \^rd_adv_buf79_out\
    );
axi_b2b_brst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
    port map (
      I0 => disable_b2b_brst,
      I1 => axi_araddr_full,
      I2 => axi_arlen_pipe_1_or_2,
      I3 => I4,
      I4 => I5,
      O => \^o7\
    );
bram_en_int_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => s_axi_rready,
      I1 => I2,
      I2 => end_brst_rd,
      I3 => brst_zero,
      O => \^bram_addr_inc8_out\
    );
bram_rst_b_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
no_ar_ack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Q(2),
      I1 => Q(3),
      O => \^o8\
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[10]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(7),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[11]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(8),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => \^bram_addr_inc\,
      I4 => curr_narrow_burst,
      O => \n_0_save_init_bram_addr_ld[11]_i_2\
    );
\save_init_bram_addr_ld[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFFFBFFFBF"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5__0\,
      I1 => \^bram_addr_inc\,
      I2 => curr_wrap_burst_reg,
      I3 => \n_0_save_init_bram_addr_ld[11]_i_4\,
      I4 => \n_0_save_init_bram_addr_ld[11]_i_5\,
      I5 => \^o4\,
      O => \n_0_save_init_bram_addr_ld[11]_i_3\
    );
\save_init_bram_addr_ld[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[1]\,
      O => \n_0_save_init_bram_addr_ld[11]_i_4\
    );
\save_init_bram_addr_ld[11]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"5D"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      O => \n_0_save_init_bram_addr_ld[11]_i_5\
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88A8"
    )
    port map (
      I0 => axi_aresetn_d2,
      I1 => \^o5\,
      I2 => last_bram_addr,
      I3 => \^o6\,
      O => \^bram_addr_ld_en\
    );
\save_init_bram_addr_ld[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
    port map (
      I0 => \^o2\(0),
      I1 => \^o3\,
      I2 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\,
      I3 => axi_araddr_full,
      I4 => s_axi_araddr(9),
      O => \n_0_save_init_bram_addr_ld[12]_i_2\
    );
\save_init_bram_addr_ld[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001010100"
    )
    port map (
      I0 => ar_active,
      I1 => no_ar_ack,
      I2 => I3,
      I3 => axi_araddr_full,
      I4 => s_axi_arvalid,
      I5 => rd_addr_sm_cs,
      O => \^o5\
    );
\save_init_bram_addr_ld[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5DFF5D5D5D5D5D"
    )
    port map (
      I0 => \^o7\,
      I1 => brst_zero,
      I2 => \^rd_adv_buf79_out\,
      I3 => \^o8\,
      I4 => Q(0),
      I5 => Q(1),
      O => \^o6\
    );
\save_init_bram_addr_ld[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld[3]_i_2__0\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(0),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0B0"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_save_init_bram_addr_ld_reg[3]\,
      I3 => \n_0_wrap_burst_total_reg[1]\,
      O => \n_0_save_init_bram_addr_ld[3]_i_2__0\
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld[4]_i_2__0\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(1),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[4]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BD00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[2]\,
      I1 => \n_0_wrap_burst_total_reg[0]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[4]\,
      O => \n_0_save_init_bram_addr_ld[4]_i_2__0\
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld[5]_i_2\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(2),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB00"
    )
    port map (
      I0 => \n_0_wrap_burst_total_reg[0]\,
      I1 => \n_0_wrap_burst_total_reg[2]\,
      I2 => \n_0_wrap_burst_total_reg[1]\,
      I3 => \n_0_save_init_bram_addr_ld_reg[5]\,
      O => \n_0_save_init_bram_addr_ld[5]_i_2\
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[6]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(3),
      O => \^d\(3)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[7]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(4),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[8]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(5),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FBFBFB080808"
    )
    port map (
      I0 => \n_0_save_init_bram_addr_ld_reg[9]\,
      I1 => \n_0_save_init_bram_addr_ld[11]_i_2\,
      I2 => \n_0_save_init_bram_addr_ld[11]_i_3\,
      I3 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\,
      I4 => axi_araddr_full,
      I5 => s_axi_araddr(6),
      O => \^d\(6)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(7),
      Q => \n_0_save_init_bram_addr_ld_reg[10]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(8),
      Q => \n_0_save_init_bram_addr_ld_reg[11]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \n_0_save_init_bram_addr_ld[12]_i_2\,
      Q => \^o2\(0),
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(0),
      Q => \n_0_save_init_bram_addr_ld_reg[3]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(1),
      Q => \n_0_save_init_bram_addr_ld_reg[4]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(2),
      Q => \n_0_save_init_bram_addr_ld_reg[5]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(3),
      Q => \n_0_save_init_bram_addr_ld_reg[6]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(4),
      Q => \n_0_save_init_bram_addr_ld_reg[7]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(5),
      Q => \n_0_save_init_bram_addr_ld_reg[8]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => \^d\(6),
      Q => \n_0_save_init_bram_addr_ld_reg[9]\,
      R => \^sr\(0)
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0109000200000100"
    )
    port map (
      I0 => \^curr_arsize\(0),
      I1 => \^curr_arlen\(3),
      I2 => \n_0_wrap_burst_total[0]_i_2\,
      I3 => \^curr_arsize\(1),
      I4 => \^curr_arlen\(2),
      I5 => \^curr_arlen\(1),
      O => wrap_burst_total_cmb(0)
    );
\wrap_burst_total[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => I7(2),
      I2 => s_axi_arlen(0),
      I3 => axi_araddr_full,
      I4 => I6(0),
      O => \n_0_wrap_burst_total[0]_i_2\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001015400"
    )
    port map (
      I0 => \n_0_wrap_burst_total[1]_i_2\,
      I1 => \^curr_arlen\(3),
      I2 => \^curr_arsize\(0),
      I3 => \^curr_arlen\(2),
      I4 => \^curr_arsize\(1),
      I5 => \^curr_arsize\(2),
      O => wrap_burst_total_cmb(1)
    );
\wrap_burst_total[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => I6(0),
      I2 => s_axi_arlen(1),
      I3 => axi_araddr_full,
      I4 => I6(1),
      O => \n_0_wrap_burst_total[1]_i_2\
    );
\wrap_burst_total[1]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I7(0),
      I1 => axi_araddr_full,
      I2 => s_axi_arsize(0),
      O => \^curr_arsize\(0)
    );
\wrap_burst_total[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I7(1),
      I1 => axi_araddr_full,
      I2 => s_axi_arsize(1),
      O => \^curr_arsize\(1)
    );
\wrap_burst_total[1]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I7(2),
      I1 => axi_araddr_full,
      I2 => s_axi_arsize(2),
      O => \^curr_arsize\(2)
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => axi_byte_div_curr_arsize(0),
      I1 => \^curr_arlen\(0),
      I2 => \^curr_arlen\(1),
      I3 => \^curr_arlen\(3),
      I4 => \^curr_arlen\(2),
      O => wrap_burst_total_cmb(2)
    );
\wrap_burst_total[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0000000C0A0A"
    )
    port map (
      I0 => s_axi_arsize(1),
      I1 => I7(1),
      I2 => \^curr_arsize\(0),
      I3 => I7(2),
      I4 => axi_araddr_full,
      I5 => s_axi_arsize(2),
      O => axi_byte_div_curr_arsize(0)
    );
\wrap_burst_total[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I6(0),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(0),
      O => \^curr_arlen\(0)
    );
\wrap_burst_total[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I6(1),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(1),
      O => \^curr_arlen\(1)
    );
\wrap_burst_total[2]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I6(3),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(3),
      O => \^curr_arlen\(3)
    );
\wrap_burst_total[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => I6(2),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(2),
      O => \^curr_arlen\(2)
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(0),
      Q => \n_0_wrap_burst_total_reg[0]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(1),
      Q => \n_0_wrap_burst_total_reg[1]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \^bram_addr_ld_en\,
      D => wrap_burst_total_cmb(2),
      Q => \n_0_wrap_burst_total_reg[2]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_rd_chnl is
  port (
    O1 : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O2 : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_en_b : out STD_LOGIC;
    O3 : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    bram_addr_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_rd_chnl : entity is "rd_chnl";
end bram32_axi_bram_ctrl_0_0_rd_chnl;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_rd_chnl is
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal ar_active : STD_LOGIC;
  signal araddr_pipe_ld46_out : STD_LOGIC;
  signal axi_araddr_full : STD_LOGIC;
  signal axi_arburst_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_aresetn_d1 : STD_LOGIC;
  signal axi_aresetn_d2 : STD_LOGIC;
  signal axi_aresetn_re : STD_LOGIC;
  signal axi_aresetn_re_reg : STD_LOGIC;
  signal axi_arid_pipe : STD_LOGIC;
  signal axi_arlen_pipe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_arlen_pipe_1_or_2 : STD_LOGIC;
  signal axi_arsize_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_b2b_brst : STD_LOGIC;
  signal axi_early_arready_int : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst0 : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC;
  signal axi_rid_temp2 : STD_LOGIC;
  signal axi_rid_temp2_full : STD_LOGIC;
  signal axi_rid_temp_full : STD_LOGIC;
  signal axi_rid_temp_full_d1 : STD_LOGIC;
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal \^bram_addr_b\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bram_addr_inc : STD_LOGIC;
  signal bram_addr_inc8_out : STD_LOGIC;
  signal bram_addr_ld_en : STD_LOGIC;
  signal \^bram_en_b\ : STD_LOGIC;
  signal brst_cnt_max9_out : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_one0 : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal curr_araddr_lsb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_arlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal curr_arsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_arready_int_i_1\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_arready_int_i_2\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_arready_int_reg\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_early_arready_int_i_2\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_early_arready_int_i_3\ : STD_LOGIC;
  signal \n_0_GEN_ARREADY.axi_early_arready_int_i_4\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.ar_active_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.ar_active_i_2\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.ar_active_i_3\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.ar_active_i_4\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.ar_active_i_5\ : STD_LOGIC;
  signal \n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg\ : STD_LOGIC;
  signal \n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2\ : STD_LOGIC;
  signal \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\ : STD_LOGIC;
  signal \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_32\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_int[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp2[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp2_full_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp2_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp[0]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_RID.axi_rid_temp_full_i_1\ : STD_LOGIC;
  signal n_0_I_WRAP_BRST : STD_LOGIC;
  signal n_0_act_rd_burst_i_1 : STD_LOGIC;
  signal n_0_act_rd_burst_i_3 : STD_LOGIC;
  signal n_0_act_rd_burst_i_4 : STD_LOGIC;
  signal n_0_act_rd_burst_i_5 : STD_LOGIC;
  signal n_0_act_rd_burst_i_6 : STD_LOGIC;
  signal n_0_act_rd_burst_two_i_1 : STD_LOGIC;
  signal n_0_axi_arsize_pipe_max_i_1 : STD_LOGIC;
  signal n_0_axi_arsize_pipe_max_reg : STD_LOGIC;
  signal n_0_axi_b2b_brst_i_1 : STD_LOGIC;
  signal n_0_axi_b2b_brst_i_3 : STD_LOGIC;
  signal n_0_axi_rd_burst_i_1 : STD_LOGIC;
  signal n_0_axi_rd_burst_i_3 : STD_LOGIC;
  signal n_0_axi_rd_burst_two_i_1 : STD_LOGIC;
  signal n_0_axi_rd_burst_two_reg : STD_LOGIC;
  signal n_0_axi_rlast_int_i_1 : STD_LOGIC;
  signal n_0_axi_rlast_int_i_2 : STD_LOGIC;
  signal n_0_axi_rvalid_clr_ok_i_1 : STD_LOGIC;
  signal n_0_axi_rvalid_clr_ok_i_2 : STD_LOGIC;
  signal n_0_axi_rvalid_clr_ok_i_3 : STD_LOGIC;
  signal n_0_axi_rvalid_int_i_1 : STD_LOGIC;
  signal n_0_bram_en_int_i_1 : STD_LOGIC;
  signal n_0_bram_en_int_i_10 : STD_LOGIC;
  signal n_0_bram_en_int_i_11 : STD_LOGIC;
  signal n_0_bram_en_int_i_12 : STD_LOGIC;
  signal n_0_bram_en_int_i_13 : STD_LOGIC;
  signal n_0_bram_en_int_i_2 : STD_LOGIC;
  signal n_0_bram_en_int_i_3 : STD_LOGIC;
  signal n_0_bram_en_int_i_4 : STD_LOGIC;
  signal n_0_bram_en_int_i_6 : STD_LOGIC;
  signal n_0_bram_en_int_i_7 : STD_LOGIC;
  signal n_0_bram_en_int_i_8 : STD_LOGIC;
  signal n_0_bram_en_int_i_9 : STD_LOGIC;
  signal \n_0_brst_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[2]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[3]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[3]_i_2\ : STD_LOGIC;
  signal \n_0_brst_cnt[4]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[4]_i_3\ : STD_LOGIC;
  signal \n_0_brst_cnt[5]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[5]_i_3\ : STD_LOGIC;
  signal \n_0_brst_cnt[6]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[7]_i_1\ : STD_LOGIC;
  signal \n_0_brst_cnt[7]_i_3\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[0]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[1]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[2]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[3]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[4]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[5]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[6]\ : STD_LOGIC;
  signal \n_0_brst_cnt_reg[7]\ : STD_LOGIC;
  signal n_0_brst_one_i_1 : STD_LOGIC;
  signal n_0_brst_one_i_3 : STD_LOGIC;
  signal n_0_brst_one_i_5 : STD_LOGIC;
  signal n_0_brst_zero_i_1 : STD_LOGIC;
  signal n_0_brst_zero_i_2 : STD_LOGIC;
  signal n_0_curr_fixed_burst_reg_reg : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_2 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_3 : STD_LOGIC;
  signal n_0_disable_b2b_brst_i_4 : STD_LOGIC;
  signal n_0_end_brst_rd_clr_i_1 : STD_LOGIC;
  signal n_0_end_brst_rd_i_1 : STD_LOGIC;
  signal n_0_last_bram_addr_i_2 : STD_LOGIC;
  signal n_0_last_bram_addr_i_3 : STD_LOGIC;
  signal n_0_last_bram_addr_i_4 : STD_LOGIC;
  signal n_0_no_ar_ack_i_1 : STD_LOGIC;
  signal n_0_pend_rd_op_i_1 : STD_LOGIC;
  signal n_0_pend_rd_op_i_2 : STD_LOGIC;
  signal n_0_pend_rd_op_i_3 : STD_LOGIC;
  signal n_0_pend_rd_op_i_4 : STD_LOGIC;
  signal n_0_pend_rd_op_i_5 : STD_LOGIC;
  signal n_0_pend_rd_op_i_6 : STD_LOGIC;
  signal n_0_pend_rd_op_i_7 : STD_LOGIC;
  signal n_0_pend_rd_op_i_8 : STD_LOGIC;
  signal n_0_pend_rd_op_i_9 : STD_LOGIC;
  signal n_0_pend_rd_op_reg : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[0]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[1]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[2]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_1\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_2\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_3\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_4\ : STD_LOGIC;
  signal \n_0_rd_data_sm_cs[3]_i_5\ : STD_LOGIC;
  signal n_0_rddata_mux_sel_i_1 : STD_LOGIC;
  signal n_0_rddata_mux_sel_i_3 : STD_LOGIC;
  signal n_10_I_WRAP_BRST : STD_LOGIC;
  signal n_11_I_WRAP_BRST : STD_LOGIC;
  signal n_12_I_WRAP_BRST : STD_LOGIC;
  signal n_13_I_WRAP_BRST : STD_LOGIC;
  signal n_14_I_WRAP_BRST : STD_LOGIC;
  signal n_15_I_WRAP_BRST : STD_LOGIC;
  signal n_16_I_WRAP_BRST : STD_LOGIC;
  signal n_17_I_WRAP_BRST : STD_LOGIC;
  signal n_18_I_WRAP_BRST : STD_LOGIC;
  signal n_19_I_WRAP_BRST : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal n_20_I_WRAP_BRST : STD_LOGIC;
  signal n_22_I_WRAP_BRST : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\ : STD_LOGIC;
  signal n_6_I_WRAP_BRST : STD_LOGIC;
  signal n_7_I_WRAP_BRST : STD_LOGIC;
  signal n_8_I_WRAP_BRST : STD_LOGIC;
  signal n_9_I_WRAP_BRST : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_mod : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal no_ar_ack : STD_LOGIC;
  signal p_15_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_57_out : STD_LOGIC;
  signal rd_addr_sm_cs : STD_LOGIC;
  signal rd_adv_buf79_out : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rddata_mux_sel_cmb : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_ARREADY.axi_aresetn_re_reg_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_ARREADY.axi_early_arready_int_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_AR_DUAL.ar_active_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_AR_DUAL.ar_active_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \GEN_AR_PIPE_DUAL.axi_araddr_full_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2__0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_12\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_12\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_13\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_23__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_25\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RID.axi_rid_int[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_RID.axi_rid_temp[0]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of act_rd_burst_i_4 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of act_rd_burst_i_6 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of axi_b2b_brst_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of axi_rd_burst_i_3 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_rlast_int_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of axi_rvalid_clr_ok_i_3 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of axi_rvalid_set_i_1 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of bram_en_int_i_10 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of bram_en_int_i_6 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of bram_en_int_i_7 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of bram_en_int_i_8 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \brst_cnt[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \brst_cnt[5]_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \brst_cnt[5]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \brst_cnt[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \brst_cnt[7]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of brst_one_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of brst_one_i_4 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of brst_zero_i_1 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of brst_zero_i_2 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of pend_rd_op_i_5 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of pend_rd_op_i_6 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of pend_rd_op_i_9 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of rddata_mux_sel_i_1 : label is "soft_lutpair16";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  bram_addr_b(7 downto 0) <= \^bram_addr_b\(7 downto 0);
  bram_en_b <= \^bram_en_b\;
  s_axi_rid(0) <= \^s_axi_rid\(0);
\FSM_sequential_rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1000"
    )
    port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I4 => rlast_sm_cs(0),
      O => \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\
    );
\FSM_sequential_rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFEFEFEAFFFFFFF"
    )
    port map (
      I0 => rlast_sm_cs(1),
      I1 => act_rd_burst_two,
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => s_axi_rready,
      I4 => \^o3\,
      I5 => axi_rd_burst,
      O => \n_0_FSM_sequential_rlast_sm_cs[0]_i_2\
    );
\FSM_sequential_rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
    port map (
      I0 => rlast_sm_cs(1),
      I1 => rlast_sm_cs(0),
      I2 => \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I4 => rlast_sm_cs(1),
      O => \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\
    );
\FSM_sequential_rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001300130013"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => rlast_sm_cs(2),
      I2 => act_rd_burst_two,
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => \^o3\,
      I5 => s_axi_rready,
      O => \n_0_FSM_sequential_rlast_sm_cs[1]_i_2\
    );
\FSM_sequential_rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000FFFF10000000"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => act_rd_burst_two,
      I2 => axi_rd_burst,
      I3 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\,
      I4 => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\,
      I5 => rlast_sm_cs(2),
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\
    );
\FSM_sequential_rlast_sm_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(1),
      I2 => rlast_sm_cs(2),
      I3 => s_axi_rready,
      I4 => \^o3\,
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_2\
    );
\FSM_sequential_rlast_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000F1111000E000"
    )
    port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(1),
      I2 => \^o3\,
      I3 => s_axi_rready,
      I4 => rlast_sm_cs(2),
      I5 => last_bram_addr,
      O => \n_0_FSM_sequential_rlast_sm_cs[2]_i_3\
    );
\FSM_sequential_rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[0]_i_1\,
      Q => rlast_sm_cs(0),
      R => \^o1\
    );
\FSM_sequential_rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[1]_i_1\,
      Q => rlast_sm_cs(1),
      R => \^o1\
    );
\FSM_sequential_rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_rlast_sm_cs[2]_i_1\,
      Q => rlast_sm_cs(2),
      R => \^o1\
    );
\GEN_ARREADY.axi_aresetn_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_aresetn,
      Q => axi_aresetn_d1,
      R => '0'
    );
\GEN_ARREADY.axi_aresetn_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_d1,
      Q => axi_aresetn_d2,
      R => '0'
    );
\GEN_ARREADY.axi_aresetn_re_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => axi_aresetn_d1,
      O => axi_aresetn_re
    );
\GEN_ARREADY.axi_aresetn_re_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_re,
      Q => axi_aresetn_re_reg,
      R => '0'
    );
\GEN_ARREADY.axi_arready_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555DDD00000000"
    )
    port map (
      I0 => \n_0_GEN_ARREADY.axi_arready_int_i_2\,
      I1 => \n_0_GEN_ARREADY.axi_arready_int_reg\,
      I2 => s_axi_arvalid,
      I3 => axi_araddr_full,
      I4 => araddr_pipe_ld46_out,
      I5 => s_axi_aresetn,
      O => \n_0_GEN_ARREADY.axi_arready_int_i_1\
    );
\GEN_ARREADY.axi_arready_int_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
    port map (
      I0 => axi_aresetn_re_reg,
      I1 => axi_araddr_full,
      I2 => bram_addr_ld_en,
      I3 => axi_early_arready_int,
      O => \n_0_GEN_ARREADY.axi_arready_int_i_2\
    );
\GEN_ARREADY.axi_arready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_ARREADY.axi_arready_int_i_1\,
      Q => \n_0_GEN_ARREADY.axi_arready_int_reg\,
      R => '0'
    );
\GEN_ARREADY.axi_early_arready_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F800F0000000000"
    )
    port map (
      I0 => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\,
      I1 => rd_adv_buf79_out,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => brst_one,
      I5 => \n_0_GEN_ARREADY.axi_early_arready_int_i_3\,
      O => p_57_out
    );
\GEN_ARREADY.axi_early_arready_int_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => brst_zero,
      I1 => end_brst_rd,
      O => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\
    );
\GEN_ARREADY.axi_early_arready_int_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
    port map (
      I0 => \n_0_GEN_ARREADY.axi_arready_int_reg\,
      I1 => rd_data_sm_cs(3),
      I2 => s_axi_arvalid,
      I3 => axi_araddr_full,
      I4 => \n_0_GEN_ARREADY.axi_early_arready_int_i_4\,
      I5 => n_19_I_WRAP_BRST,
      O => \n_0_GEN_ARREADY.axi_early_arready_int_i_3\
    );
\GEN_ARREADY.axi_early_arready_int_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000000F0FFFF"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_rready,
      I2 => brst_one,
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => \n_0_GEN_ARREADY.axi_early_arready_int_i_4\
    );
\GEN_ARREADY.axi_early_arready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_57_out,
      Q => axi_early_arready_int,
      R => \^o1\
    );
\GEN_AR_DUAL.ar_active_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7005500"
    )
    port map (
      I0 => \n_0_GEN_AR_DUAL.ar_active_i_2\,
      I1 => \n_0_GEN_AR_DUAL.ar_active_i_3\,
      I2 => rd_data_sm_cs(3),
      I3 => axi_aresetn_d2,
      I4 => ar_active,
      O => \n_0_GEN_AR_DUAL.ar_active_i_1\
    );
\GEN_AR_DUAL.ar_active_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0B"
    )
    port map (
      I0 => n_19_I_WRAP_BRST,
      I1 => last_bram_addr,
      I2 => n_18_I_WRAP_BRST,
      O => \n_0_GEN_AR_DUAL.ar_active_i_2\
    );
\GEN_AR_DUAL.ar_active_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F00000F4F0040"
    )
    port map (
      I0 => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\,
      I1 => rd_adv_buf79_out,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => \n_0_GEN_AR_DUAL.ar_active_i_4\,
      I5 => rd_data_sm_cs(0),
      O => \n_0_GEN_AR_DUAL.ar_active_i_3\
    );
\GEN_AR_DUAL.ar_active_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10F0100010F01F00"
    )
    port map (
      I0 => n_20_I_WRAP_BRST,
      I1 => \n_0_GEN_AR_DUAL.ar_active_i_5\,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => axi_rd_burst,
      O => \n_0_GEN_AR_DUAL.ar_active_i_4\
    );
\GEN_AR_DUAL.ar_active_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"23FFFFFF"
    )
    port map (
      I0 => axi_b2b_brst,
      I1 => brst_zero,
      I2 => end_brst_rd,
      I3 => \^o3\,
      I4 => s_axi_rready,
      O => \n_0_GEN_AR_DUAL.ar_active_i_5\
    );
\GEN_AR_DUAL.ar_active_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AR_DUAL.ar_active_i_1\,
      Q => ar_active,
      R => '0'
    );
\GEN_AR_DUAL.rd_addr_sm_cs_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888A0008800"
    )
    port map (
      I0 => axi_aresetn_d2,
      I1 => s_axi_arvalid,
      I2 => rd_addr_sm_cs,
      I3 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\,
      I4 => axi_araddr_full,
      I5 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\,
      O => \n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1\
    );
\GEN_AR_DUAL.rd_addr_sm_cs_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AR_DUAL.rd_addr_sm_cs_i_1\,
      Q => rd_addr_sm_cs,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(0),
      Q => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(10),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(11),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(12),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(1),
      Q => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C00080"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\,
      I1 => s_axi_arvalid,
      I2 => axi_aresetn_d2,
      I3 => axi_araddr_full,
      I4 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\,
      O => araddr_pipe_ld46_out
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => rd_addr_sm_cs,
      I1 => ar_active,
      I2 => no_ar_ack,
      I3 => n_0_pend_rd_op_reg,
      O => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_2\
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => last_bram_addr,
      I1 => n_19_I_WRAP_BRST,
      O => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(2),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(3),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(4),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(5),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(6),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(7),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(8),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_araddr(9),
      Q => \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_araddr_full_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8A88"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => araddr_pipe_ld46_out,
      I2 => bram_addr_ld_en,
      I3 => axi_araddr_full,
      O => \n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1\
    );
\GEN_AR_PIPE_DUAL.axi_araddr_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AR_PIPE_DUAL.axi_araddr_full_i_1\,
      Q => axi_araddr_full,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03AA"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg\,
      I1 => s_axi_arburst(1),
      I2 => s_axi_arburst(0),
      I3 => araddr_pipe_ld46_out,
      O => \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1\
    );
\GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_i_1\,
      Q => \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg\,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arburst(0),
      Q => axi_arburst_pipe(0),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arburst_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arburst(1),
      Q => axi_arburst_pipe(1),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arid(0),
      Q => axi_arid_pipe,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2\,
      I1 => s_axi_arlen(5),
      O => p_15_out
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(4),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(2),
      I4 => s_axi_arlen(7),
      I5 => s_axi_arlen(1),
      O => \n_0_GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_i_2\
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_1_or_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => p_15_out,
      Q => axi_arlen_pipe_1_or_2,
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(0),
      Q => axi_arlen_pipe(0),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(1),
      Q => axi_arlen_pipe(1),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(2),
      Q => axi_arlen_pipe(2),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(3),
      Q => axi_arlen_pipe(3),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(4),
      Q => axi_arlen_pipe(4),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(5),
      Q => axi_arlen_pipe(5),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(6),
      Q => axi_arlen_pipe(6),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arlen_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arlen(7),
      Q => axi_arlen_pipe(7),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arsize(0),
      Q => axi_arsize_pipe(0),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arsize(1),
      Q => axi_arsize_pipe(1),
      R => '0'
    );
\GEN_AR_PIPE_DUAL.axi_arsize_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => araddr_pipe_ld46_out,
      D => s_axi_arsize(2),
      Q => axi_arsize_pipe(2),
      R => '0'
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000E00"
    )
    port map (
      I0 => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      I1 => brst_cnt_max9_out,
      I2 => end_brst_rd_clr,
      I3 => s_axi_aresetn,
      I4 => bram_addr_ld_en,
      O => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D000"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => narrow_bram_addr_inc,
      I2 => ar_active,
      I3 => brst_zero,
      I4 => n_0_pend_rd_op_reg,
      O => brst_cnt_max9_out
    );
\GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1\,
      Q => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC5C0CAC"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0\,
      I1 => n_7_I_WRAP_BRST,
      I2 => n_0_I_WRAP_BRST,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I4 => \^bram_addr_b\(5),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF077F000F088F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0\,
      I1 => \^bram_addr_b\(5),
      I2 => n_6_I_WRAP_BRST,
      I3 => n_0_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I5 => \^bram_addr_b\(6),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^bram_addr_b\(4),
      I1 => \^bram_addr_b\(2),
      I2 => n_17_I_WRAP_BRST,
      I3 => \^bram_addr_b\(1),
      I4 => \^bram_addr_b\(3),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFAF"
    )
    port map (
      I0 => n_0_curr_fixed_burst_reg_reg,
      I1 => curr_narrow_burst,
      I2 => bram_addr_inc,
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(0),
      I5 => narrow_bram_addr_inc_d1,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE32CE02"
    )
    port map (
      I0 => \^bram_addr_b\(7),
      I1 => n_16_I_WRAP_BRST,
      I2 => bram_addr_ld_en,
      I3 => n_15_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(12),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0B08080B"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2__0\,
      I1 => bram_addr_ld_en,
      I2 => n_16_I_WRAP_BRST,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I4 => \^o6\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe_reg\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(2),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_2__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC5C0CAC"
    )
    port map (
      I0 => \^o6\,
      I1 => n_14_I_WRAP_BRST,
      I2 => n_0_I_WRAP_BRST,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I4 => \^o4\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF077F000F088F0"
    )
    port map (
      I0 => \^o6\,
      I1 => \^o4\,
      I2 => n_13_I_WRAP_BRST,
      I3 => n_0_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I5 => \^o5\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF077F000F088F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0\,
      I1 => \^o5\,
      I2 => n_12_I_WRAP_BRST,
      I3 => n_0_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I5 => \^bram_addr_b\(0),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o4\,
      I1 => \^o6\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC5C0CAC"
    )
    port map (
      I0 => n_17_I_WRAP_BRST,
      I1 => n_11_I_WRAP_BRST,
      I2 => n_0_I_WRAP_BRST,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I4 => \^bram_addr_b\(1),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF077F000F088F0"
    )
    port map (
      I0 => n_17_I_WRAP_BRST,
      I1 => \^bram_addr_b\(1),
      I2 => n_10_I_WRAP_BRST,
      I3 => n_0_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I5 => \^bram_addr_b\(2),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC5C0CAC"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0\,
      I1 => n_9_I_WRAP_BRST,
      I2 => n_0_I_WRAP_BRST,
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I4 => \^bram_addr_b\(3),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF077F000F088F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0\,
      I1 => \^bram_addr_b\(3),
      I2 => n_8_I_WRAP_BRST,
      I3 => n_0_I_WRAP_BRST,
      I4 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_4\,
      I5 => \^bram_addr_b\(4),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \^bram_addr_b\(2),
      I1 => \^bram_addr_b\(0),
      I2 => \^o4\,
      I3 => \^o6\,
      I4 => \^o5\,
      I5 => \^bram_addr_b\(1),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2__0\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\,
      Q => \^bram_addr_b\(5),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\,
      Q => \^bram_addr_b\(6),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_1\,
      Q => \^bram_addr_b\(7),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_1\,
      Q => \^o6\,
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\,
      Q => \^o4\,
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\,
      Q => \^o5\,
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\,
      Q => \^bram_addr_b\(0),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\,
      Q => \^bram_addr_b\(1),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\,
      Q => \^bram_addr_b\(2),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\,
      Q => \^bram_addr_b\(3),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\,
      Q => \^bram_addr_b\(4),
      R => '0'
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00440347FFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(1),
      I3 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\,
      I4 => s_axi_araddr(0),
      I5 => axi_aresetn_d2,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030553000"
    )
    port map (
      I0 => s_axi_arsize(2),
      I1 => axi_arsize_pipe(2),
      I2 => axi_arsize_pipe(1),
      I3 => axi_araddr_full,
      I4 => s_axi_arsize(1),
      I5 => curr_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(0),
      O => curr_araddr_lsb(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(1),
      O => curr_araddr_lsb(1)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_arlen_pipe(6),
      I1 => s_axi_arlen(6),
      I2 => curr_arsize(0),
      I3 => axi_arlen_pipe(7),
      I4 => axi_araddr_full,
      I5 => s_axi_arlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B80000FF000000"
    )
    port map (
      I0 => curr_arlen(2),
      I1 => curr_arsize(0),
      I2 => curr_arlen(3),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\,
      I4 => curr_arsize(2),
      I5 => curr_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF1010FF001010"
    )
    port map (
      I0 => p_2_out,
      I1 => p_1_out,
      I2 => narrow_burst_cnt_ld_mod(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF8B8BFF008B8B"
    )
    port map (
      I0 => narrow_burst_cnt_ld_mod(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\,
      I4 => curr_wrap_burst,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11\,
      O => p_2_out
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004440"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\,
      I2 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\,
      I3 => n_18_I_WRAP_BRST,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\,
      O => p_1_out
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBEBFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11540054"
    )
    port map (
      I0 => curr_arsize(2),
      I1 => curr_arsize(1),
      I2 => curr_araddr_lsb(0),
      I3 => curr_arsize(0),
      I4 => curr_araddr_lsb(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AB02A8FFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\,
      I1 => curr_arsize(1),
      I2 => curr_arsize(0),
      I3 => curr_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_8__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFC00FC004C"
    )
    port map (
      I0 => curr_arsize(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25\,
      I2 => curr_arsize(1),
      I3 => curr_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_15\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_9__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABFFABFFABFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\,
      I1 => curr_araddr_lsb(1),
      I2 => curr_araddr_lsb(0),
      I3 => axi_aresetn_d2,
      I4 => n_18_I_WRAP_BRST,
      I5 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arburst_pipe(0),
      I1 => axi_araddr_full,
      I2 => s_axi_arburst(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arburst_pipe(1),
      I1 => axi_araddr_full,
      I2 => s_axi_arburst(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFCA800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\,
      I1 => curr_arsize(0),
      I2 => curr_arsize(1),
      I3 => curr_arsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030FFFF3030BB88"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\,
      I1 => curr_arsize(1),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\,
      I4 => curr_arsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_32\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF1FFFF"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[2].axi_araddr_pipe[2]_i_3\,
      I1 => n_18_I_WRAP_BRST,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11__0\,
      I4 => curr_wrap_burst,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_18__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1514"
    )
    port map (
      I0 => curr_arsize(2),
      I1 => curr_arsize(1),
      I2 => curr_arsize(0),
      I3 => curr_araddr_lsb(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_arlen(3),
      I1 => curr_arlen(2),
      I2 => curr_arsize(0),
      I3 => curr_arsize(1),
      I4 => curr_arlen(1),
      I5 => curr_arlen(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_arlen(7),
      I1 => curr_arlen(6),
      I2 => curr_arsize(0),
      I3 => curr_arsize(1),
      I4 => curr_arlen(5),
      I5 => curr_arlen(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_23__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FEA00"
    )
    port map (
      I0 => curr_arsize(2),
      I1 => curr_arsize(0),
      I2 => curr_arsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550F33FF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\,
      I3 => curr_arsize(2),
      I4 => curr_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBB2888"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41\,
      I1 => curr_arsize(2),
      I2 => curr_arsize(1),
      I3 => curr_arsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_26__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAF0FF8F8A808"
    )
    port map (
      I0 => curr_arsize(0),
      I1 => s_axi_arsize(1),
      I2 => axi_araddr_full,
      I3 => axi_arsize_pipe(1),
      I4 => axi_arsize_pipe(2),
      I5 => s_axi_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503F5F305F3F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\,
      I2 => curr_arsize(2),
      I3 => curr_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333E0002"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22__0\,
      I1 => curr_arsize(2),
      I2 => curr_arsize(0),
      I3 => curr_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_21\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_arlen_pipe(2),
      I1 => s_axi_arlen(2),
      I2 => curr_arsize(0),
      I3 => axi_arlen_pipe(3),
      I4 => axi_araddr_full,
      I5 => s_axi_arlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_arlen_pipe(0),
      I1 => s_axi_arlen(0),
      I2 => curr_arsize(0),
      I3 => axi_arlen_pipe(1),
      I4 => axi_araddr_full,
      I5 => s_axi_arlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_arlen_pipe(4),
      I1 => s_axi_arlen(4),
      I2 => curr_arsize(0),
      I3 => axi_arlen_pipe(5),
      I4 => axi_araddr_full,
      I5 => s_axi_arlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
    port map (
      I0 => axi_arsize_pipe(2),
      I1 => axi_araddr_full,
      I2 => s_axi_arsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_33\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30__0\,
      I2 => curr_arsize(2),
      I3 => curr_arsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40\,
      I1 => curr_arsize(2),
      I2 => curr_arsize(1),
      I3 => curr_arsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0\,
      I2 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      I3 => axi_araddr_full,
      I4 => s_axi_araddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000202020002"
    )
    port map (
      I0 => curr_arsize(0),
      I1 => curr_arsize(1),
      I2 => curr_arsize(2),
      I3 => s_axi_araddr(1),
      I4 => axi_araddr_full,
      I5 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540FFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0\,
      I1 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[1].axi_araddr_pipe_reg[1]\,
      I2 => axi_araddr_full,
      I3 => s_axi_araddr(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000033A8"
    )
    port map (
      I0 => curr_araddr_lsb(1),
      I1 => curr_arsize(0),
      I2 => curr_araddr_lsb(0),
      I3 => curr_arsize(1),
      I4 => curr_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAFFC0C05500C0C0"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\,
      I2 => narrow_burst_cnt_ld_mod(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_arlen(1),
      I1 => curr_arlen(0),
      I2 => curr_arsize(0),
      I3 => curr_arsize(1),
      I4 => curr_arlen(3),
      I5 => curr_arlen(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_arlen(5),
      I1 => curr_arlen(4),
      I2 => curr_arsize(0),
      I3 => curr_arsize(1),
      I4 => curr_arlen(7),
      I5 => curr_arlen(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_41\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => curr_arlen(0),
      I1 => curr_arlen(1),
      I2 => curr_arsize(1),
      I3 => curr_arlen(2),
      I4 => curr_arsize(0),
      I5 => curr_arlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => curr_arlen(4),
      I1 => curr_arlen(5),
      I2 => curr_arsize(1),
      I3 => curr_arlen(6),
      I4 => curr_arsize(0),
      I5 => curr_arlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
    port map (
      I0 => axi_arsize_pipe(1),
      I1 => axi_araddr_full,
      I2 => s_axi_arsize(1),
      I3 => axi_arsize_pipe(0),
      I4 => s_axi_arsize(0),
      I5 => curr_arsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF47"
    )
    port map (
      I0 => \n_0_GEN_AR_PIPE_DUAL.GEN_ARADDR[0].axi_araddr_pipe_reg[0]\,
      I1 => axi_araddr_full,
      I2 => s_axi_araddr(0),
      I3 => curr_arsize(2),
      I4 => curr_arsize(0),
      I5 => curr_arsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFFCCCC5000CCCC"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0\,
      I2 => curr_narrow_burst,
      I3 => bram_addr_inc,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBEBEBEBEBEBEBFB"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bram_addr_inc,
      I1 => curr_narrow_burst,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000B0BBBBBBBB"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_bram_addr_inc,
      I2 => curr_arsize(1),
      I3 => curr_arsize(0),
      I4 => curr_arsize(2),
      I5 => bram_addr_ld_en,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20202022EFEFEFEE"
    )
    port map (
      I0 => narrow_burst_cnt_ld_mod(1),
      I1 => p_1_out,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14__0\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\,
      Q => narrow_addr_int(0),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\,
      Q => narrow_addr_int(1),
      R => \^o1\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1__0\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_20_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38__0\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_32\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_42\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_32\,
      S => curr_arsize(2)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10__0\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
    port map (
      I0 => curr_arsize(1),
      I1 => curr_arsize(2),
      I2 => bram_addr_ld_en,
      I3 => narrow_burst_cnt_ld_reg(0),
      O => narrow_burst_cnt_ld_mod(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
    port map (
      I0 => curr_arsize(0),
      I1 => curr_arsize(1),
      I2 => curr_arsize(2),
      I3 => bram_addr_ld_en,
      I4 => narrow_burst_cnt_ld_reg(1),
      O => narrow_burst_cnt_ld_mod(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(0),
      Q => narrow_burst_cnt_ld_reg(0),
      R => \^o1\
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_mod(1),
      Q => narrow_burst_cnt_ld_reg(1),
      R => \^o1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888808"
    )
    port map (
      I0 => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\,
      I1 => s_axi_aresetn,
      I2 => n_0_axi_rlast_int_i_2,
      I3 => bram_addr_ld_en,
      I4 => n_0_pend_rd_op_reg,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF0000EF00"
    )
    port map (
      I0 => curr_arsize(2),
      I1 => curr_arsize(0),
      I2 => curr_arsize(1),
      I3 => n_0_brst_zero_i_2,
      I4 => curr_fixed_burst,
      I5 => curr_narrow_burst,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_2__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(0),
      I1 => bram_rddata_b(0),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\,
      Q => s_axi_rdata(0),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(10),
      I1 => bram_rddata_b(10),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\,
      Q => s_axi_rdata(10),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(11),
      I1 => bram_rddata_b(11),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\,
      Q => s_axi_rdata(11),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(12),
      I1 => bram_rddata_b(12),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\,
      Q => s_axi_rdata(12),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(13),
      I1 => bram_rddata_b(13),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\,
      Q => s_axi_rdata(13),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(14),
      I1 => bram_rddata_b(14),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\,
      Q => s_axi_rdata(14),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(15),
      I1 => bram_rddata_b(15),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\,
      Q => s_axi_rdata(15),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(16),
      I1 => bram_rddata_b(16),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\,
      Q => s_axi_rdata(16),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(17),
      I1 => bram_rddata_b(17),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\,
      Q => s_axi_rdata(17),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(18),
      I1 => bram_rddata_b(18),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\,
      Q => s_axi_rdata(18),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(19),
      I1 => bram_rddata_b(19),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\,
      Q => s_axi_rdata(19),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(1),
      I1 => bram_rddata_b(1),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\,
      Q => s_axi_rdata(1),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(20),
      I1 => bram_rddata_b(20),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\,
      Q => s_axi_rdata(20),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(21),
      I1 => bram_rddata_b(21),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\,
      Q => s_axi_rdata(21),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(22),
      I1 => bram_rddata_b(22),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\,
      Q => s_axi_rdata(22),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(23),
      I1 => bram_rddata_b(23),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\,
      Q => s_axi_rdata(23),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(24),
      I1 => bram_rddata_b(24),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\,
      Q => s_axi_rdata(24),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(25),
      I1 => bram_rddata_b(25),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\,
      Q => s_axi_rdata(25),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(26),
      I1 => bram_rddata_b(26),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\,
      Q => s_axi_rdata(26),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(27),
      I1 => bram_rddata_b(27),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\,
      Q => s_axi_rdata(27),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(28),
      I1 => bram_rddata_b(28),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\,
      Q => s_axi_rdata(28),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(29),
      I1 => bram_rddata_b(29),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\,
      Q => s_axi_rdata(29),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(2),
      I1 => bram_rddata_b(2),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\,
      Q => s_axi_rdata(2),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(30),
      I1 => bram_rddata_b(30),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\,
      Q => s_axi_rdata(30),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"40FF"
    )
    port map (
      I0 => axi_b2b_brst,
      I1 => s_axi_rready,
      I2 => \^o2\,
      I3 => s_axi_aresetn,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0E000C0F0C00"
    )
    port map (
      I0 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\,
      I1 => rd_adv_buf79_out,
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => axi_rdata_en
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_b(31),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\,
      Q => s_axi_rdata(31),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(3),
      I1 => bram_rddata_b(3),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\,
      Q => s_axi_rdata(3),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(4),
      I1 => bram_rddata_b(4),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\,
      Q => s_axi_rdata(4),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(5),
      I1 => bram_rddata_b(5),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\,
      Q => s_axi_rdata(5),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(6),
      I1 => bram_rddata_b(6),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\,
      Q => s_axi_rdata(6),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(7),
      I1 => bram_rddata_b(7),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\,
      Q => s_axi_rdata(7),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(8),
      I1 => bram_rddata_b(8),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\,
      Q => s_axi_rdata(8),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => rd_skid_buf(9),
      I1 => bram_rddata_b(9),
      I2 => rddata_mux_sel,
      O => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\,
      Q => s_axi_rdata(9),
      R => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAEAA"
    )
    port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(0),
      I3 => rd_adv_buf79_out,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(3),
      O => rd_skid_buf_ld
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(0),
      Q => rd_skid_buf(0),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(10),
      Q => rd_skid_buf(10),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(11),
      Q => rd_skid_buf(11),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(12),
      Q => rd_skid_buf(12),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(13),
      Q => rd_skid_buf(13),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(14),
      Q => rd_skid_buf(14),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(15),
      Q => rd_skid_buf(15),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(16),
      Q => rd_skid_buf(16),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(17),
      Q => rd_skid_buf(17),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(18),
      Q => rd_skid_buf(18),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(19),
      Q => rd_skid_buf(19),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(1),
      Q => rd_skid_buf(1),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(20),
      Q => rd_skid_buf(20),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(21),
      Q => rd_skid_buf(21),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(22),
      Q => rd_skid_buf(22),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(23),
      Q => rd_skid_buf(23),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(24),
      Q => rd_skid_buf(24),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(25),
      Q => rd_skid_buf(25),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(26),
      Q => rd_skid_buf(26),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(27),
      Q => rd_skid_buf(27),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(28),
      Q => rd_skid_buf(28),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(29),
      Q => rd_skid_buf(29),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(2),
      Q => rd_skid_buf(2),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(30),
      Q => rd_skid_buf(30),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(31),
      Q => rd_skid_buf(31),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(3),
      Q => rd_skid_buf(3),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(4),
      Q => rd_skid_buf(4),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(5),
      Q => rd_skid_buf(5),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(6),
      Q => rd_skid_buf(6),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(7),
      Q => rd_skid_buf(7),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(8),
      Q => rd_skid_buf(8),
      R => \^o1\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_b(9),
      Q => rd_skid_buf(9),
      R => \^o1\
    );
\GEN_RID.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000E2000000E200"
    )
    port map (
      I0 => \^s_axi_rid\(0),
      I1 => axi_rvalid_set,
      I2 => axi_rid_temp,
      I3 => s_axi_aresetn,
      I4 => \n_0_GEN_RID.axi_rid_int[0]_i_2\,
      I5 => axi_b2b_brst,
      O => \n_0_GEN_RID.axi_rid_int[0]_i_1\
    );
\GEN_RID.axi_rid_int[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o2\,
      O => \n_0_GEN_RID.axi_rid_int[0]_i_2\
    );
\GEN_RID.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID.axi_rid_int[0]_i_1\,
      Q => \^s_axi_rid\(0),
      R => '0'
    );
\GEN_RID.axi_rid_temp2[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
    port map (
      I0 => axi_arid_pipe,
      I1 => axi_araddr_full,
      I2 => s_axi_arid(0),
      I3 => axi_rid_temp_full,
      I4 => bram_addr_ld_en,
      I5 => \n_0_GEN_RID.axi_rid_temp2_reg[0]\,
      O => \n_0_GEN_RID.axi_rid_temp2[0]_i_1\
    );
\GEN_RID.axi_rid_temp2_full_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C8000008C800C0"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => s_axi_aresetn,
      I2 => axi_rid_temp2_full,
      I3 => p_4_out,
      I4 => axi_rid_temp_full,
      I5 => axi_rid_temp_full_d1,
      O => \n_0_GEN_RID.axi_rid_temp2_full_i_1\
    );
\GEN_RID.axi_rid_temp2_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID.axi_rid_temp2_full_i_1\,
      Q => axi_rid_temp2_full,
      R => '0'
    );
\GEN_RID.axi_rid_temp2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID.axi_rid_temp2[0]_i_1\,
      Q => \n_0_GEN_RID.axi_rid_temp2_reg[0]\,
      R => \^o1\
    );
\GEN_RID.axi_rid_temp[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAACFCFC0AAC0C0"
    )
    port map (
      I0 => axi_rid_temp2,
      I1 => \n_0_GEN_RID.axi_rid_temp2_reg[0]\,
      I2 => \n_0_GEN_RID.axi_rid_temp[0]_i_3\,
      I3 => axi_rid_temp_full,
      I4 => bram_addr_ld_en,
      I5 => axi_rid_temp,
      O => \n_0_GEN_RID.axi_rid_temp[0]_i_1\
    );
\GEN_RID.axi_rid_temp[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arid_pipe,
      I1 => axi_araddr_full,
      I2 => s_axi_arid(0),
      O => axi_rid_temp2
    );
\GEN_RID.axi_rid_temp[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA888A888"
    )
    port map (
      I0 => axi_rid_temp2_full,
      I1 => axi_rvalid_set,
      I2 => \n_0_GEN_RID.axi_rid_int[0]_i_2\,
      I3 => axi_b2b_brst,
      I4 => axi_rid_temp_full,
      I5 => axi_rid_temp_full_d1,
      O => \n_0_GEN_RID.axi_rid_temp[0]_i_3\
    );
\GEN_RID.axi_rid_temp_full_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rid_temp_full,
      Q => axi_rid_temp_full_d1,
      R => \^o1\
    );
\GEN_RID.axi_rid_temp_full_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0E000F0C0C0"
    )
    port map (
      I0 => axi_rid_temp_full_d1,
      I1 => bram_addr_ld_en,
      I2 => s_axi_aresetn,
      I3 => p_4_out,
      I4 => axi_rid_temp_full,
      I5 => axi_rid_temp2_full,
      O => \n_0_GEN_RID.axi_rid_temp_full_i_1\
    );
\GEN_RID.axi_rid_temp_full_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => axi_rvalid_set,
      I1 => s_axi_rready,
      I2 => \^o2\,
      I3 => axi_b2b_brst,
      O => p_4_out
    );
\GEN_RID.axi_rid_temp_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID.axi_rid_temp_full_i_1\,
      Q => axi_rid_temp_full,
      R => '0'
    );
\GEN_RID.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_RID.axi_rid_temp[0]_i_1\,
      Q => axi_rid_temp,
      R => \^o1\
    );
I_WRAP_BRST: entity work.bram32_axi_bram_ctrl_0_0_wrap_brst_0
    port map (
      D(8) => n_6_I_WRAP_BRST,
      D(7) => n_7_I_WRAP_BRST,
      D(6) => n_8_I_WRAP_BRST,
      D(5) => n_9_I_WRAP_BRST,
      D(4) => n_10_I_WRAP_BRST,
      D(3) => n_11_I_WRAP_BRST,
      D(2) => n_12_I_WRAP_BRST,
      D(1) => n_13_I_WRAP_BRST,
      D(0) => n_14_I_WRAP_BRST,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[10].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[11].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[12].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[3].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[4].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[5].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[6].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[7].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[8].axi_araddr_pipe_reg\,
      \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\ => \GEN_AR_PIPE_DUAL.GEN_ARADDR[9].axi_araddr_pipe_reg\,
      I1 => n_0_axi_rd_burst_two_reg,
      I10 => \^o6\,
      I11 => \^bram_addr_b\(0),
      I2 => \^o3\,
      I3 => n_0_pend_rd_op_reg,
      I4 => \n_0_GEN_AR_PIPE_DUAL.axi_arburst_pipe_fixed_reg\,
      I5 => n_0_axi_arsize_pipe_max_reg,
      I6(3 downto 0) => axi_arlen_pipe(3 downto 0),
      I7(2 downto 0) => axi_arsize_pipe(2 downto 0),
      I8 => \^o4\,
      I9 => \^o5\,
      O1 => n_0_I_WRAP_BRST,
      O2(0) => n_15_I_WRAP_BRST,
      O3 => n_16_I_WRAP_BRST,
      O4 => n_17_I_WRAP_BRST,
      O5 => n_18_I_WRAP_BRST,
      O6 => n_19_I_WRAP_BRST,
      O7 => n_20_I_WRAP_BRST,
      O8 => n_22_I_WRAP_BRST,
      Q(3 downto 0) => rd_data_sm_cs(3 downto 0),
      SR(0) => \^o1\,
      ar_active => ar_active,
      axi_araddr_full => axi_araddr_full,
      axi_aresetn_d2 => axi_aresetn_d2,
      axi_arlen_pipe_1_or_2 => axi_arlen_pipe_1_or_2,
      axi_b2b_brst => axi_b2b_brst,
      axi_rd_burst => axi_rd_burst,
      bram_addr_inc => bram_addr_inc,
      bram_addr_inc8_out => bram_addr_inc8_out,
      bram_addr_ld_en => bram_addr_ld_en,
      brst_zero => brst_zero,
      curr_arlen(3 downto 0) => curr_arlen(3 downto 0),
      curr_arsize(2 downto 0) => curr_arsize(2 downto 0),
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      disable_b2b_brst => disable_b2b_brst,
      end_brst_rd => end_brst_rd,
      last_bram_addr => last_bram_addr,
      narrow_addr_int(1 downto 0) => narrow_addr_int(1 downto 0),
      narrow_bram_addr_inc => narrow_bram_addr_inc,
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      no_ar_ack => no_ar_ack,
      rd_addr_sm_cs => rd_addr_sm_cs,
      rd_adv_buf79_out => rd_adv_buf79_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(9 downto 0) => s_axi_araddr(12 downto 3),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rready => s_axi_rready
    );
act_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
    port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst,
      I3 => bram_addr_ld_en,
      I4 => axi_rd_burst_two,
      I5 => n_0_act_rd_burst_i_3,
      O => n_0_act_rd_burst_i_1
    );
act_rd_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22000AAA22000A00"
    )
    port map (
      I0 => n_0_act_rd_burst_i_4,
      I1 => n_0_bram_en_int_i_11,
      I2 => n_0_act_rd_burst_i_5,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(1),
      I5 => n_0_brst_zero_i_2,
      O => act_rd_burst_set
    );
act_rd_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04000002FFFFFFFF"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => n_0_act_rd_burst_i_6,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => s_axi_aresetn,
      O => n_0_act_rd_burst_i_3
    );
act_rd_burst_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      O => n_0_act_rd_burst_i_4
    );
act_rd_burst_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => n_0_axi_rd_burst_two_reg,
      O => n_0_act_rd_burst_i_5
    );
act_rd_burst_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
    port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      I2 => s_axi_rready,
      I3 => \^o3\,
      O => n_0_act_rd_burst_i_6
    );
act_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_act_rd_burst_i_1,
      Q => act_rd_burst,
      R => '0'
    );
act_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
    port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => bram_addr_ld_en,
      I4 => axi_rd_burst_two,
      I5 => n_0_act_rd_burst_i_3,
      O => n_0_act_rd_burst_two_i_1
    );
act_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_act_rd_burst_two_i_1,
      Q => act_rd_burst_two,
      R => '0'
    );
axi_arsize_pipe_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"10FF000010000000"
    )
    port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      I3 => araddr_pipe_ld46_out,
      I4 => s_axi_aresetn,
      I5 => n_0_axi_arsize_pipe_max_reg,
      O => n_0_axi_arsize_pipe_max_i_1
    );
axi_arsize_pipe_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_arsize_pipe_max_i_1,
      Q => n_0_axi_arsize_pipe_max_reg,
      R => '0'
    );
axi_b2b_brst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
    port map (
      I0 => n_20_I_WRAP_BRST,
      I1 => rd_data_sm_cs(2),
      I2 => n_0_axi_b2b_brst_i_3,
      I3 => axi_b2b_brst,
      O => n_0_axi_b2b_brst_i_1
    );
axi_b2b_brst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000200000002808"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => axi_b2b_brst,
      I4 => rd_data_sm_cs(3),
      I5 => n_0_bram_en_int_i_11,
      O => n_0_axi_b2b_brst_i_3
    );
axi_b2b_brst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_b2b_brst_i_1,
      Q => axi_b2b_brst,
      R => \^o1\
    );
axi_rd_burst_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C000A0"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst0,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => bram_addr_ld_en,
      O => n_0_axi_rd_burst_i_1
    );
axi_rd_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => n_0_axi_rd_burst_i_3,
      I1 => curr_arlen(5),
      I2 => curr_arlen(3),
      I3 => curr_arlen(2),
      I4 => curr_arlen(7),
      I5 => curr_arlen(1),
      O => axi_rd_burst0
    );
axi_rd_burst_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
    port map (
      I0 => s_axi_arlen(4),
      I1 => axi_arlen_pipe(4),
      I2 => s_axi_arlen(6),
      I3 => axi_araddr_full,
      I4 => axi_arlen_pipe(6),
      O => n_0_axi_rd_burst_i_3
    );
axi_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rd_burst_i_1,
      Q => axi_rd_burst,
      R => '0'
    );
axi_rd_burst_two_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C000A0"
    )
    port map (
      I0 => n_0_axi_rd_burst_two_reg,
      I1 => axi_rd_burst_two,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => bram_addr_ld_en,
      O => n_0_axi_rd_burst_two_i_1
    );
axi_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rd_burst_two_i_1,
      Q => n_0_axi_rd_burst_two_reg,
      R => '0'
    );
axi_rlast_int_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => \^o2\,
      I2 => s_axi_rready,
      I3 => n_0_axi_rlast_int_i_2,
      O => n_0_axi_rlast_int_i_1
    );
axi_rlast_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4040404"
    )
    port map (
      I0 => \^o2\,
      I1 => rlast_sm_cs(0),
      I2 => rlast_sm_cs(1),
      I3 => s_axi_rready,
      I4 => \^o3\,
      I5 => rlast_sm_cs(2),
      O => n_0_axi_rlast_int_i_2
    );
axi_rlast_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rlast_int_i_1,
      Q => \^o2\,
      R => '0'
    );
axi_rvalid_clr_ok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0E000E0"
    )
    port map (
      I0 => axi_rvalid_clr_ok,
      I1 => n_0_axi_rvalid_clr_ok_i_2,
      I2 => s_axi_aresetn,
      I3 => bram_addr_ld_en,
      I4 => n_19_I_WRAP_BRST,
      O => n_0_axi_rvalid_clr_ok_i_1
    );
axi_rvalid_clr_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF4440"
    )
    port map (
      I0 => axi_rvalid_clr_ok,
      I1 => last_bram_addr,
      I2 => disable_b2b_brst,
      I3 => n_0_disable_b2b_brst_i_2,
      I4 => n_0_axi_rvalid_clr_ok_i_3,
      I5 => bram_addr_ld_en,
      O => n_0_axi_rvalid_clr_ok_i_2
    );
axi_rvalid_clr_ok_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      O => n_0_axi_rvalid_clr_ok_i_3
    );
axi_rvalid_clr_ok_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rvalid_clr_ok_i_1,
      Q => axi_rvalid_clr_ok,
      R => '0'
    );
axi_rvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0E0E0E0E0E0E0"
    )
    port map (
      I0 => \^o3\,
      I1 => axi_rvalid_set,
      I2 => s_axi_aresetn,
      I3 => axi_rvalid_clr_ok,
      I4 => \^o2\,
      I5 => s_axi_rready,
      O => n_0_axi_rvalid_int_i_1
    );
axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_rvalid_int_i_1,
      Q => \^o3\,
      R => '0'
    );
axi_rvalid_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      O => axi_rvalid_set_cmb
    );
axi_rvalid_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^o1\
    );
bram_en_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFABFB0000A808"
    )
    port map (
      I0 => n_0_bram_en_int_i_2,
      I1 => n_0_bram_en_int_i_3,
      I2 => rd_data_sm_cs(2),
      I3 => n_0_bram_en_int_i_4,
      I4 => rd_data_sm_cs(3),
      I5 => \^bram_en_b\,
      O => n_0_bram_en_int_i_1
    );
bram_en_int_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      I2 => s_axi_rready,
      I3 => \^o3\,
      O => n_0_bram_en_int_i_10
    );
bram_en_int_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FF777FFFFFFFFF"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      I2 => end_brst_rd,
      I3 => brst_zero,
      I4 => axi_b2b_brst,
      I5 => n_20_I_WRAP_BRST,
      O => n_0_bram_en_int_i_11
    );
bram_en_int_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FFFFFFFFFFFFFF"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => act_rd_burst,
      I2 => act_rd_burst_two,
      I3 => \^o3\,
      I4 => s_axi_rready,
      I5 => rd_data_sm_cs(0),
      O => n_0_bram_en_int_i_12
    );
bram_en_int_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080F0000080FFFFF"
    )
    port map (
      I0 => axi_b2b_brst,
      I1 => rd_adv_buf79_out,
      I2 => brst_zero,
      I3 => end_brst_rd,
      I4 => rd_data_sm_cs(0),
      I5 => n_0_axi_rd_burst_two_reg,
      O => n_0_bram_en_int_i_13
    );
bram_en_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => bram_addr_inc8_out,
      I1 => bram_addr_ld_en,
      I2 => n_0_bram_en_int_i_6,
      I3 => n_0_bram_en_int_i_7,
      I4 => n_0_bram_en_int_i_8,
      I5 => n_0_bram_en_int_i_9,
      O => n_0_bram_en_int_i_2
    );
bram_en_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70FFFFFF70FFFF00"
    )
    port map (
      I0 => brst_one,
      I1 => n_0_bram_en_int_i_10,
      I2 => n_0_bram_en_int_i_11,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => bram_addr_ld_en,
      O => n_0_bram_en_int_i_3
    );
bram_en_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B8B8B33330333"
    )
    port map (
      I0 => n_0_bram_en_int_i_7,
      I1 => rd_data_sm_cs(1),
      I2 => n_0_bram_en_int_i_12,
      I3 => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\,
      I4 => rd_adv_buf79_out,
      I5 => rd_data_sm_cs(0),
      O => n_0_bram_en_int_i_4
    );
bram_en_int_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      O => n_0_bram_en_int_i_6
    );
bram_en_int_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => n_0_pend_rd_op_reg,
      I1 => \^o3\,
      I2 => s_axi_rready,
      I3 => bram_addr_ld_en,
      O => n_0_bram_en_int_i_7
    );
bram_en_int_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(0),
      O => n_0_bram_en_int_i_8
    );
bram_en_int_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBBBB88888"
    )
    port map (
      I0 => n_0_bram_en_int_i_13,
      I1 => rd_data_sm_cs(1),
      I2 => n_0_axi_rd_burst_two_reg,
      I3 => axi_rd_burst,
      I4 => rd_data_sm_cs(0),
      I5 => bram_addr_ld_en,
      O => n_0_bram_en_int_i_9
    );
bram_en_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_bram_en_int_i_1,
      Q => \^bram_en_b\,
      R => \^o1\
    );
\brst_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B800FFB8B8FF00"
    )
    port map (
      I0 => axi_arlen_pipe(0),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(0),
      I3 => bram_addr_inc,
      I4 => bram_addr_ld_en,
      I5 => \n_0_brst_cnt_reg[0]\,
      O => \n_0_brst_cnt[0]_i_1\
    );
\brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AACFAA30"
    )
    port map (
      I0 => curr_arlen(1),
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => bram_addr_inc,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[1]\,
      O => \n_0_brst_cnt[1]_i_1\
    );
\brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFCFFAAAA0300"
    )
    port map (
      I0 => curr_arlen(2),
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => bram_addr_inc,
      I4 => bram_addr_ld_en,
      I5 => \n_0_brst_cnt_reg[2]\,
      O => \n_0_brst_cnt[2]_i_1\
    );
\brst_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3FAAC0"
    )
    port map (
      I0 => curr_arlen(3),
      I1 => \n_0_brst_cnt[3]_i_2\,
      I2 => bram_addr_inc,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[3]\,
      O => \n_0_brst_cnt[3]_i_1\
    );
\brst_cnt[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[0]\,
      I1 => \n_0_brst_cnt_reg[1]\,
      I2 => \n_0_brst_cnt_reg[2]\,
      O => \n_0_brst_cnt[3]_i_2\
    );
\brst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3FAAC0"
    )
    port map (
      I0 => curr_arlen(4),
      I1 => \n_0_brst_cnt[4]_i_3\,
      I2 => bram_addr_inc,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[4]\,
      O => \n_0_brst_cnt[4]_i_1\
    );
\brst_cnt[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arlen_pipe(4),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(4),
      O => curr_arlen(4)
    );
\brst_cnt[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[2]\,
      I1 => \n_0_brst_cnt_reg[1]\,
      I2 => \n_0_brst_cnt_reg[0]\,
      I3 => \n_0_brst_cnt_reg[3]\,
      O => \n_0_brst_cnt[4]_i_3\
    );
\brst_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3FAAC0"
    )
    port map (
      I0 => curr_arlen(5),
      I1 => \n_0_brst_cnt[5]_i_3\,
      I2 => bram_addr_inc,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[5]\,
      O => \n_0_brst_cnt[5]_i_1\
    );
\brst_cnt[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arlen_pipe(5),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(5),
      O => curr_arlen(5)
    );
\brst_cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[3]\,
      I1 => \n_0_brst_cnt_reg[0]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => \n_0_brst_cnt_reg[2]\,
      I4 => \n_0_brst_cnt_reg[4]\,
      O => \n_0_brst_cnt[5]_i_3\
    );
\brst_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA3FAAC0"
    )
    port map (
      I0 => curr_arlen(6),
      I1 => \n_0_brst_cnt[7]_i_3\,
      I2 => bram_addr_inc,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[6]\,
      O => \n_0_brst_cnt[6]_i_1\
    );
\brst_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arlen_pipe(6),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(6),
      O => curr_arlen(6)
    );
\brst_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACFFFAAAA3000"
    )
    port map (
      I0 => curr_arlen(7),
      I1 => \n_0_brst_cnt_reg[6]\,
      I2 => \n_0_brst_cnt[7]_i_3\,
      I3 => bram_addr_inc,
      I4 => bram_addr_ld_en,
      I5 => \n_0_brst_cnt_reg[7]\,
      O => \n_0_brst_cnt[7]_i_1\
    );
\brst_cnt[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_arlen_pipe(7),
      I1 => axi_araddr_full,
      I2 => s_axi_arlen(7),
      O => curr_arlen(7)
    );
\brst_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[4]\,
      I1 => \n_0_brst_cnt_reg[2]\,
      I2 => \n_0_brst_cnt_reg[1]\,
      I3 => \n_0_brst_cnt_reg[0]\,
      I4 => \n_0_brst_cnt_reg[3]\,
      I5 => \n_0_brst_cnt_reg[5]\,
      O => \n_0_brst_cnt[7]_i_3\
    );
brst_cnt_max_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      Q => brst_cnt_max_d1,
      R => \^o1\
    );
\brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[0]_i_1\,
      Q => \n_0_brst_cnt_reg[0]\,
      R => \^o1\
    );
\brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[1]_i_1\,
      Q => \n_0_brst_cnt_reg[1]\,
      R => \^o1\
    );
\brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[2]_i_1\,
      Q => \n_0_brst_cnt_reg[2]\,
      R => \^o1\
    );
\brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[3]_i_1\,
      Q => \n_0_brst_cnt_reg[3]\,
      R => \^o1\
    );
\brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[4]_i_1\,
      Q => \n_0_brst_cnt_reg[4]\,
      R => \^o1\
    );
\brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[5]_i_1\,
      Q => \n_0_brst_cnt_reg[5]\,
      R => \^o1\
    );
\brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[6]_i_1\,
      Q => \n_0_brst_cnt_reg[6]\,
      R => \^o1\
    );
\brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_brst_cnt[7]_i_1\,
      Q => \n_0_brst_cnt_reg[7]\,
      R => \^o1\
    );
brst_one_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0000000E00"
    )
    port map (
      I0 => brst_one,
      I1 => brst_one0,
      I2 => n_0_brst_one_i_3,
      I3 => s_axi_aresetn,
      I4 => bram_addr_ld_en,
      I5 => axi_rd_burst_two,
      O => n_0_brst_one_i_1
    );
brst_one_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F888F000F000"
    )
    port map (
      I0 => bram_addr_inc,
      I1 => n_0_brst_one_i_5,
      I2 => axi_rd_burst_two,
      I3 => bram_addr_ld_en,
      I4 => \n_0_brst_cnt_reg[0]\,
      I5 => \n_0_brst_cnt_reg[1]\,
      O => brst_one0
    );
brst_one_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => bram_addr_inc,
      I1 => n_0_brst_one_i_5,
      I2 => \n_0_brst_cnt_reg[0]\,
      I3 => \n_0_brst_cnt_reg[1]\,
      O => n_0_brst_one_i_3
    );
brst_one_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => s_axi_arlen(0),
      I1 => axi_araddr_full,
      I2 => axi_arlen_pipe(0),
      I3 => axi_rd_burst0,
      O => axi_rd_burst_two
    );
brst_one_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_brst_cnt_reg[2]\,
      I1 => \n_0_brst_cnt_reg[3]\,
      I2 => \n_0_brst_cnt_reg[6]\,
      I3 => \n_0_brst_cnt_reg[7]\,
      I4 => \n_0_brst_cnt_reg[5]\,
      I5 => \n_0_brst_cnt_reg[4]\,
      O => n_0_brst_one_i_5
    );
brst_one_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_brst_one_i_1,
      Q => brst_one,
      R => '0'
    );
brst_zero_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => brst_zero,
      I1 => n_0_brst_one_i_3,
      I2 => s_axi_aresetn,
      I3 => n_0_brst_zero_i_2,
      O => n_0_brst_zero_i_1
    );
brst_zero_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA888"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => axi_rd_burst0,
      I2 => axi_arlen_pipe(0),
      I3 => axi_araddr_full,
      I4 => s_axi_arlen(0),
      O => n_0_brst_zero_i_2
    );
brst_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_brst_zero_i_1,
      Q => brst_zero,
      R => '0'
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
    port map (
      I0 => s_axi_arburst(1),
      I1 => axi_arburst_pipe(1),
      I2 => s_axi_arburst(0),
      I3 => axi_araddr_full,
      I4 => axi_arburst_pipe(0),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_fixed_burst,
      Q => n_0_curr_fixed_burst_reg_reg,
      R => \^o1\
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
    port map (
      I0 => s_axi_arburst(1),
      I1 => axi_arburst_pipe(1),
      I2 => s_axi_arburst(0),
      I3 => axi_araddr_full,
      I4 => axi_arburst_pipe(0),
      O => curr_wrap_burst
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_wrap_burst,
      Q => curr_wrap_burst_reg,
      R => \^o1\
    );
disable_b2b_brst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEAAEAAEEEAEEEE"
    )
    port map (
      I0 => n_0_disable_b2b_brst_i_2,
      I1 => disable_b2b_brst,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(0),
      O => disable_b2b_brst_cmb
    );
disable_b2b_brst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
    port map (
      I0 => n_0_disable_b2b_brst_i_3,
      I1 => n_0_disable_b2b_brst_i_4,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(0),
      O => n_0_disable_b2b_brst_i_2
    );
disable_b2b_brst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA0000FFCF"
    )
    port map (
      I0 => disable_b2b_brst,
      I1 => rd_data_sm_cs(1),
      I2 => axi_rd_burst,
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => n_0_disable_b2b_brst_i_3
    );
disable_b2b_brst_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF010000"
    )
    port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      I2 => brst_one,
      I3 => rd_adv_buf79_out,
      I4 => rd_data_sm_cs(1),
      I5 => disable_b2b_brst,
      O => n_0_disable_b2b_brst_i_4
    );
disable_b2b_brst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^o1\
    );
end_brst_rd_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEEFFEF11000000"
    )
    port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(1),
      I2 => bram_addr_ld_en,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => n_0_end_brst_rd_clr_i_1
    );
end_brst_rd_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_end_brst_rd_clr_i_1,
      Q => end_brst_rd_clr,
      R => \^o1\
    );
end_brst_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0040F040"
    )
    port map (
      I0 => brst_cnt_max_d1,
      I1 => \n_0_GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg\,
      I2 => s_axi_aresetn,
      I3 => end_brst_rd,
      I4 => end_brst_rd_clr,
      O => n_0_end_brst_rd_i_1
    );
end_brst_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_end_brst_rd_i_1,
      Q => end_brst_rd,
      R => '0'
    );
last_bram_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBAAAAAAAAAAAAFB"
    )
    port map (
      I0 => n_0_brst_one_i_3,
      I1 => n_0_last_bram_addr_i_2,
      I2 => n_0_last_bram_addr_i_3,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => last_bram_addr0
    );
last_bram_addr_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFFFFF"
    )
    port map (
      I0 => axi_rd_burst,
      I1 => n_0_axi_rd_burst_two_reg,
      I2 => \^o3\,
      I3 => s_axi_rready,
      I4 => rd_data_sm_cs(3),
      I5 => rd_data_sm_cs(2),
      O => n_0_last_bram_addr_i_2
    );
last_bram_addr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222200020000"
    )
    port map (
      I0 => n_0_last_bram_addr_i_4,
      I1 => n_0_brst_zero_i_2,
      I2 => axi_rd_burst,
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => n_0_pend_rd_op_reg,
      I5 => bram_addr_ld_en,
      O => n_0_last_bram_addr_i_3
    );
last_bram_addr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3111200031110000"
    )
    port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => s_axi_rready,
      I3 => \^o3\,
      I4 => bram_addr_ld_en,
      I5 => n_0_pend_rd_op_reg,
      O => n_0_last_bram_addr_i_4
    );
last_bram_addr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^o1\
    );
no_ar_ack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2AAA2AEA2AAA2A"
    )
    port map (
      I0 => no_ar_ack,
      I1 => n_22_I_WRAP_BRST,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => bram_addr_ld_en,
      I5 => rd_adv_buf79_out,
      O => n_0_no_ar_ack_i_1
    );
no_ar_ack_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_no_ar_ack_i_1,
      Q => no_ar_ack,
      R => \^o1\
    );
pend_rd_op_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBBAB000088A8"
    )
    port map (
      I0 => n_0_pend_rd_op_i_2,
      I1 => n_0_pend_rd_op_i_3,
      I2 => rd_data_sm_cs(2),
      I3 => n_0_pend_rd_op_i_4,
      I4 => rd_data_sm_cs(3),
      I5 => n_0_pend_rd_op_reg,
      O => n_0_pend_rd_op_i_1
    );
pend_rd_op_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FFF20803FF02080"
    )
    port map (
      I0 => n_0_pend_rd_op_i_5,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => bram_addr_ld_en,
      I5 => n_0_act_rd_burst_i_5,
      O => n_0_pend_rd_op_i_2
    );
pend_rd_op_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88888000"
    )
    port map (
      I0 => n_0_pend_rd_op_i_6,
      I1 => rd_data_sm_cs(0),
      I2 => bram_addr_ld_en,
      I3 => n_0_act_rd_burst_i_5,
      I4 => n_0_pend_rd_op_reg,
      I5 => n_0_pend_rd_op_i_7,
      O => n_0_pend_rd_op_i_3
    );
pend_rd_op_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FFFAAAAAAAACCCC"
    )
    port map (
      I0 => n_0_pend_rd_op_i_8,
      I1 => n_0_pend_rd_op_i_9,
      I2 => n_0_pend_rd_op_reg,
      I3 => rd_adv_buf79_out,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => n_0_pend_rd_op_i_4
    );
pend_rd_op_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => ar_active,
      I1 => end_brst_rd,
      O => n_0_pend_rd_op_i_5
    );
pend_rd_op_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      O => n_0_pend_rd_op_i_6
    );
pend_rd_op_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C080C000C000C00"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => bram_addr_ld_en,
      I4 => \^o2\,
      I5 => n_0_pend_rd_op_reg,
      O => n_0_pend_rd_op_i_7
    );
pend_rd_op_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => end_brst_rd,
      I1 => ar_active,
      I2 => bram_addr_ld_en,
      O => n_0_pend_rd_op_i_8
    );
pend_rd_op_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => \^o2\,
      I2 => n_0_pend_rd_op_reg,
      O => n_0_pend_rd_op_i_9
    );
pend_rd_op_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_pend_rd_op_i_1,
      Q => n_0_pend_rd_op_reg,
      R => \^o1\
    );
\rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F001F1F0F001010"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => \n_0_rd_data_sm_cs[0]_i_2\,
      I4 => rd_data_sm_cs(2),
      I5 => \n_0_rd_data_sm_cs[0]_i_3\,
      O => \n_0_rd_data_sm_cs[0]_i_1\
    );
\rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3C0B3B0FFFFFFFF"
    )
    port map (
      I0 => n_0_pend_rd_op_reg,
      I1 => rd_data_sm_cs(1),
      I2 => rd_adv_buf79_out,
      I3 => \n_0_GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\,
      I4 => bram_addr_ld_en,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[0]_i_2\
    );
\rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808FFFFFFFFF"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      I2 => rd_data_sm_cs(1),
      I3 => n_0_axi_rd_burst_two_reg,
      I4 => axi_rd_burst,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[0]_i_3\
    );
\rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[1]_i_2\,
      I1 => rd_data_sm_cs(2),
      I2 => \n_0_rd_data_sm_cs[1]_i_3\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[1]_i_1\
    );
\rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F008FF08F0080F0"
    )
    port map (
      I0 => n_20_I_WRAP_BRST,
      I1 => rd_adv_buf79_out,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => axi_rd_burst,
      O => \n_0_rd_data_sm_cs[1]_i_2\
    );
\rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF57FFFFFF0000"
    )
    port map (
      I0 => rd_adv_buf79_out,
      I1 => act_rd_burst_two,
      I2 => act_rd_burst,
      I3 => bram_addr_ld_en,
      I4 => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[1]_i_3\
    );
\rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[2]_i_2\,
      I1 => rd_data_sm_cs(2),
      I2 => \n_0_rd_data_sm_cs[2]_i_3\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[2]_i_1\
    );
\rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70F0700070F07F00"
    )
    port map (
      I0 => n_20_I_WRAP_BRST,
      I1 => rd_adv_buf79_out,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => axi_rd_burst,
      O => \n_0_rd_data_sm_cs[2]_i_2\
    );
\rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FF000057FFFFFF"
    )
    port map (
      I0 => rd_adv_buf79_out,
      I1 => act_rd_burst_two,
      I2 => act_rd_burst,
      I3 => bram_addr_ld_en,
      I4 => rd_data_sm_cs(0),
      I5 => \n_0_GEN_ARREADY.axi_early_arready_int_i_2\,
      O => \n_0_rd_data_sm_cs[2]_i_3\
    );
\rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFE0000"
    )
    port map (
      I0 => rd_adv_buf79_out,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(3),
      I5 => \n_0_rd_data_sm_cs[3]_i_3\,
      O => \n_0_rd_data_sm_cs[3]_i_1\
    );
\rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => \n_0_rd_data_sm_cs[3]_i_4\,
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(3),
      O => \n_0_rd_data_sm_cs[3]_i_2\
    );
\rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFB8BBB8FFB888"
    )
    port map (
      I0 => rd_adv_buf79_out,
      I1 => rd_data_sm_cs(2),
      I2 => \n_0_rd_data_sm_cs[3]_i_5\,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => bram_addr_ld_en,
      O => \n_0_rd_data_sm_cs[3]_i_3\
    );
\rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4440888800008888"
    )
    port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => act_rd_burst_two,
      I3 => act_rd_burst,
      I4 => rd_adv_buf79_out,
      I5 => bram_addr_ld_en,
      O => \n_0_rd_data_sm_cs[3]_i_4\
    );
\rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF77FFF7FFFFFFFF"
    )
    port map (
      I0 => \^o3\,
      I1 => s_axi_rready,
      I2 => end_brst_rd,
      I3 => brst_zero,
      I4 => axi_b2b_brst,
      I5 => rd_data_sm_cs(0),
      O => \n_0_rd_data_sm_cs[3]_i_5\
    );
\rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[0]_i_1\,
      Q => rd_data_sm_cs(0),
      R => \^o1\
    );
\rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[1]_i_1\,
      Q => rd_data_sm_cs(1),
      R => \^o1\
    );
\rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[2]_i_1\,
      Q => rd_data_sm_cs(2),
      R => \^o1\
    );
\rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => \n_0_rd_data_sm_cs[3]_i_1\,
      D => \n_0_rd_data_sm_cs[3]_i_2\,
      Q => rd_data_sm_cs(3),
      R => \^o1\
    );
rd_skid_buf_ld_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000E666"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => \^o3\,
      I3 => s_axi_rready,
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => rd_skid_buf_ld_cmb
    );
rd_skid_buf_ld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^o1\
    );
rddata_mux_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE02"
    )
    port map (
      I0 => rddata_mux_sel_cmb,
      I1 => rd_data_sm_cs(3),
      I2 => n_0_rddata_mux_sel_i_3,
      I3 => rddata_mux_sel,
      O => n_0_rddata_mux_sel_i_1
    );
rddata_mux_sel_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D208D208D208F208"
    )
    port map (
      I0 => rd_data_sm_cs(0),
      I1 => rd_data_sm_cs(1),
      I2 => rd_adv_buf79_out,
      I3 => rd_data_sm_cs(2),
      I4 => act_rd_burst,
      I5 => act_rd_burst_two,
      O => rddata_mux_sel_cmb
    );
rddata_mux_sel_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000F000707F7F7F"
    )
    port map (
      I0 => s_axi_rready,
      I1 => \^o3\,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => n_0_axi_rd_burst_two_reg,
      I5 => rd_data_sm_cs(0),
      O => n_0_rddata_mux_sel_i_3
    );
rddata_mux_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_rddata_mux_sel_i_1,
      Q => rddata_mux_sel,
      R => \^o1\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => \n_0_GEN_ARREADY.axi_arready_int_reg\,
      I1 => \^o3\,
      I2 => s_axi_rready,
      I3 => axi_early_arready_int,
      O => s_axi_arready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_wr_chnl is
  port (
    bram_en_a : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O1 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    O2 : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_wr_chnl : entity is "wr_chnl";
end bram32_axi_bram_ctrl_0_0_wr_chnl;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_wr_chnl is
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o5\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^o7\ : STD_LOGIC;
  signal \^o8\ : STD_LOGIC;
  signal \^o9\ : STD_LOGIC;
  signal axi_aresetn_d1 : STD_LOGIC;
  signal axi_aresetn_d2 : STD_LOGIC;
  signal axi_aresetn_re : STD_LOGIC;
  signal axi_aresetn_re_reg : STD_LOGIC;
  signal axi_awaddr_full : STD_LOGIC;
  signal axi_awburst_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal axi_awid_pipe : STD_LOGIC;
  signal axi_awlen_pipe : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal axi_awlen_pipe_1_or_2 : STD_LOGIC;
  signal axi_awsize_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_byte_div_curr_awsize : STD_LOGIC_VECTOR ( 0 to 0 );
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_cmb116_out : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wlast_d1 : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_cmb : STD_LOGIC;
  signal axi_wr_burst_cmb0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bram_addr_inc : STD_LOGIC;
  signal bram_addr_ld : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal bram_addr_ld_en : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal bvalid_cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal bvalid_cnt_inc : STD_LOGIC;
  signal bvalid_cnt_inc12_out : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal clr_bram_we_cmb : STD_LOGIC;
  signal clr_bram_we_cmb7_out : STD_LOGIC;
  signal curr_awaddr_lsb : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal curr_awlen : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal curr_awlen_reg_1_or_2 : STD_LOGIC;
  signal curr_awlen_reg_1_or_20 : STD_LOGIC;
  signal curr_awsize : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal curr_narrow_burst : STD_LOGIC;
  signal curr_narrow_burst_en : STD_LOGIC;
  signal curr_wrap_burst : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal delay_aw_active_clr : STD_LOGIC;
  signal delay_aw_active_clr_cmb : STD_LOGIC;
  signal last_data_ack_mod : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_AWREADY.axi_awready_int_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AWREADY.axi_awready_int_i_2\ : STD_LOGIC;
  signal \n_0_GEN_AW_DUAL.aw_active_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AW_DUAL.aw_active_i_2\ : STD_LOGIC;
  signal \n_0_GEN_AW_DUAL.aw_active_i_3\ : STD_LOGIC;
  signal \n_0_GEN_AW_DUAL.aw_active_reg\ : STD_LOGIC;
  signal \n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\ : STD_LOGIC;
  signal \n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_33\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\ : STD_LOGIC;
  signal \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1\ : STD_LOGIC;
  signal \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3\ : STD_LOGIC;
  signal \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\ : STD_LOGIC;
  signal n_0_I_WRAP_BRST : STD_LOGIC;
  signal n_0_axi_bvalid_int_i_1 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_1 : STD_LOGIC;
  signal n_0_axi_wr_burst_i_3 : STD_LOGIC;
  signal n_0_axi_wready_int_mod_i_1 : STD_LOGIC;
  signal n_0_bid_gets_fifo_load_d1_i_3 : STD_LOGIC;
  signal \n_0_bvalid_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_bvalid_cnt[2]_i_1\ : STD_LOGIC;
  signal n_0_curr_awlen_reg_1_or_2_i_3 : STD_LOGIC;
  signal n_14_I_WRAP_BRST : STD_LOGIC;
  signal n_16_I_WRAP_BRST : STD_LOGIC;
  signal n_17_I_WRAP_BRST : STD_LOGIC;
  signal n_1_BID_FIFO : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\ : STD_LOGIC;
  signal \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal n_1_I_WRAP_BRST : STD_LOGIC;
  signal n_26_I_WRAP_BRST : STD_LOGIC;
  signal n_27_I_WRAP_BRST : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\ : STD_LOGIC;
  signal \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal n_2_I_WRAP_BRST : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\ : STD_LOGIC;
  signal \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\ : STD_LOGIC;
  signal n_4_BID_FIFO : STD_LOGIC;
  signal n_6_BID_FIFO : STD_LOGIC;
  signal narrow_addr_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal narrow_bram_addr_inc : STD_LOGIC;
  signal narrow_bram_addr_inc_d1 : STD_LOGIC;
  signal narrow_burst_cnt_ld_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal p_26_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  signal wr_addr_sm_cs : STD_LOGIC;
  signal wr_data_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal wrdata_reg_ld : STD_LOGIC;
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2\ : label is "soft_lutpair61";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1]\ : label is "yes";
  attribute KEEP of \FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_7\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_8\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[0]_i_9\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_15\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_16\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_20\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_24\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_26\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of axi_wready_int_mod_i_1 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of bid_gets_fifo_load_d1_i_3 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of curr_awlen_reg_1_or_2_i_2 : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of curr_awlen_reg_1_or_2_i_3 : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of curr_awlen_reg_1_or_2_i_4 : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of curr_fixed_burst_reg_i_2 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of curr_wrap_burst_reg_i_2 : label is "soft_lutpair55";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  O4 <= \^o4\;
  O5 <= \^o5\;
  O6 <= \^o6\;
  O7 <= \^o7\;
  O8 <= \^o8\;
  O9 <= \^o9\;
  bram_addr_a(3 downto 0) <= \^bram_addr_a\(3 downto 0);
  s_axi_bid(0) <= \^s_axi_bid\(0);
  s_axi_wready <= \^s_axi_wready\;
BID_FIFO: entity work.bram32_axi_bram_ctrl_0_0_SRL_FIFO
    port map (
      I1 => I1,
      I2 => n_16_I_WRAP_BRST,
      I3 => \n_0_GEN_AW_DUAL.aw_active_reg\,
      I4 => \^o2\,
      I5 => n_0_bid_gets_fifo_load_d1_i_3,
      I6 => \^o1\,
      O1 => n_1_BID_FIFO,
      O2 => n_4_BID_FIFO,
      O3 => n_6_BID_FIFO,
      axi_aresetn_d2 => axi_aresetn_d2,
      axi_awaddr_full => axi_awaddr_full,
      axi_awid_pipe => axi_awid_pipe,
      axi_wdata_full_cmb116_out => axi_wdata_full_cmb116_out,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bram_addr_ld_en => bram_addr_ld_en,
      bvalid_cnt(2 downto 0) => bvalid_cnt(2 downto 0),
      bvalid_cnt_inc => bvalid_cnt_inc,
      bvalid_cnt_inc12_out => bvalid_cnt_inc12_out,
      clr_bram_we_cmb7_out => clr_bram_we_cmb7_out,
      \out\(2 downto 0) => wr_data_sm_cs(2 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => \^s_axi_bid\(0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid,
      wr_addr_sm_cs => wr_addr_sm_cs
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F7FFFF00F70000"
    )
    port map (
      I0 => s_axi_wlast,
      I1 => axi_wdata_full_cmb116_out,
      I2 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2\,
      I3 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3\,
      I4 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\,
      I5 => wr_data_sm_cs(0),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => wr_data_sm_cs(1),
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(0),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_2\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF3F500"
    )
    port map (
      I0 => axi_wr_burst,
      I1 => s_axi_wvalid,
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(0),
      I4 => wr_data_sm_cs(1),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_3\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\,
      I1 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\,
      I2 => wr_data_sm_cs(1),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03034F4C"
    )
    port map (
      I0 => axi_wr_burst_cmb0,
      I1 => wr_data_sm_cs(0),
      I2 => wr_data_sm_cs(1),
      I3 => axi_wdata_full_cmb116_out,
      I4 => wr_data_sm_cs(2),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_2\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000000"
    )
    port map (
      I0 => wr_data_sm_cs(1),
      I1 => axi_wr_burst_cmb0,
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(0),
      I4 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\,
      I5 => wr_data_sm_cs(2),
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5515"
    )
    port map (
      I0 => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\,
      I1 => bvalid_cnt(2),
      I2 => bvalid_cnt(1),
      I3 => bvalid_cnt(0),
      O => axi_wr_burst_cmb0
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40007744"
    )
    port map (
      I0 => wr_data_sm_cs(2),
      I1 => wr_data_sm_cs(1),
      I2 => s_axi_wlast,
      I3 => s_axi_wvalid,
      I4 => wr_data_sm_cs(0),
      I5 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\,
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_3\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => axi_awaddr_full,
      I1 => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\,
      I2 => axi_awlen_pipe_1_or_2,
      I3 => curr_awlen_reg_1_or_2,
      O => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_4\
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[0]_i_1\,
      Q => wr_data_sm_cs(0),
      R => I1
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[1]_i_1\,
      Q => wr_data_sm_cs(1),
      R => I1
    );
\FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_FSM_sequential_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.wr_data_sm_cs[2]_i_1\,
      Q => wr_data_sm_cs(2),
      R => I1
    );
\GEN_AWREADY.axi_aresetn_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_aresetn,
      Q => axi_aresetn_d1,
      R => '0'
    );
\GEN_AWREADY.axi_aresetn_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_d1,
      Q => axi_aresetn_d2,
      R => '0'
    );
\GEN_AWREADY.axi_aresetn_re_reg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => axi_aresetn_d1,
      O => axi_aresetn_re
    );
\GEN_AWREADY.axi_aresetn_re_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_aresetn_re,
      Q => axi_aresetn_re_reg,
      R => '0'
    );
\GEN_AWREADY.axi_awready_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8AAA88"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => \n_0_GEN_AWREADY.axi_awready_int_i_2\,
      I2 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      I3 => axi_aresetn_re_reg,
      I4 => \^o2\,
      O => \n_0_GEN_AWREADY.axi_awready_int_i_1\
    );
\GEN_AWREADY.axi_awready_int_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AE000000"
    )
    port map (
      I0 => n_16_I_WRAP_BRST,
      I1 => n_2_I_WRAP_BRST,
      I2 => wr_addr_sm_cs,
      I3 => axi_awaddr_full,
      I4 => axi_aresetn_d2,
      O => \n_0_GEN_AWREADY.axi_awready_int_i_2\
    );
\GEN_AWREADY.axi_awready_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AWREADY.axi_awready_int_i_1\,
      Q => \^o2\,
      R => '0'
    );
\GEN_AW_DUAL.aw_active_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD000055550000"
    )
    port map (
      I0 => \n_0_GEN_AW_DUAL.aw_active_i_2\,
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(0),
      I3 => \n_0_GEN_AW_DUAL.aw_active_i_3\,
      I4 => axi_aresetn_d2,
      I5 => \n_0_GEN_AW_DUAL.aw_active_reg\,
      O => \n_0_GEN_AW_DUAL.aw_active_i_1\
    );
\GEN_AW_DUAL.aw_active_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555554445"
    )
    port map (
      I0 => n_16_I_WRAP_BRST,
      I1 => wr_addr_sm_cs,
      I2 => s_axi_awvalid,
      I3 => axi_awaddr_full,
      I4 => \n_0_GEN_AW_DUAL.aw_active_reg\,
      I5 => n_4_BID_FIFO,
      O => \n_0_GEN_AW_DUAL.aw_active_i_2\
    );
\GEN_AW_DUAL.aw_active_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => wr_data_sm_cs(1),
      I1 => delay_aw_active_clr,
      O => \n_0_GEN_AW_DUAL.aw_active_i_3\
    );
\GEN_AW_DUAL.aw_active_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AW_DUAL.aw_active_i_1\,
      Q => \n_0_GEN_AW_DUAL.aw_active_reg\,
      R => '0'
    );
\GEN_AW_DUAL.last_data_ack_mod_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_wvalid,
      I2 => s_axi_wlast,
      O => p_26_in
    );
\GEN_AW_DUAL.last_data_ack_mod_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_26_in,
      Q => last_data_ack_mod,
      R => I1
    );
\GEN_AW_DUAL.wr_addr_sm_cs_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => axi_aresetn_d2,
      I1 => s_axi_awvalid,
      I2 => n_2_I_WRAP_BRST,
      I3 => axi_awaddr_full,
      I4 => wr_addr_sm_cs,
      I5 => n_16_I_WRAP_BRST,
      O => \n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1\
    );
\GEN_AW_DUAL.wr_addr_sm_cs_reg\: unisim.vcomponents.FDRE
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AW_DUAL.wr_addr_sm_cs_i_1\,
      Q => wr_addr_sm_cs,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(0),
      Q => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(10),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(11),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(12),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(1),
      Q => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
    port map (
      I0 => axi_awaddr_full,
      I1 => n_16_I_WRAP_BRST,
      I2 => wr_addr_sm_cs,
      I3 => s_axi_awvalid,
      I4 => n_2_I_WRAP_BRST,
      I5 => axi_aresetn_d2,
      O => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(2),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(3),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(4),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(5),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(6),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(7),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(8),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awaddr(9),
      Q => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
    port map (
      I0 => axi_awaddr_full,
      I1 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      I2 => s_axi_aresetn,
      I3 => \n_0_GEN_AWREADY.axi_awready_int_i_2\,
      O => \n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\
    );
\GEN_AW_PIPE_DUAL.axi_awaddr_full_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AW_PIPE_DUAL.axi_awaddr_full_i_1\,
      Q => axi_awaddr_full,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"03AA"
    )
    port map (
      I0 => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\,
      I1 => s_axi_awburst(1),
      I2 => s_axi_awburst(0),
      I3 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      O => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1\
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_i_1\,
      Q => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awburst(0),
      Q => axi_awburst_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awburst_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awburst(1),
      Q => axi_awburst_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awid_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awid(0),
      Q => axi_awid_pipe,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2\,
      I1 => s_axi_awlen(4),
      O => p_9_out
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => s_axi_awlen(6),
      I1 => s_axi_awlen(5),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(7),
      I5 => s_axi_awlen(3),
      O => \n_0_GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_i_2\
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_1_or_2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => p_9_out,
      Q => axi_awlen_pipe_1_or_2,
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(0),
      Q => axi_awlen_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(1),
      Q => axi_awlen_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(2),
      Q => axi_awlen_pipe(2),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(3),
      Q => axi_awlen_pipe(3),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(4),
      Q => axi_awlen_pipe(4),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(5),
      Q => axi_awlen_pipe(5),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(6),
      Q => axi_awlen_pipe(6),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awlen_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awlen(7),
      Q => axi_awlen_pipe(7),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awsize(0),
      Q => axi_awsize_pipe(0),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awsize(1),
      Q => axi_awsize_pipe(1),
      R => '0'
    );
\GEN_AW_PIPE_DUAL.axi_awsize_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe[2]_i_1\,
      D => s_axi_awsize(2),
      Q => axi_awsize_pipe(2),
      R => '0'
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\,
      I1 => bram_addr_ld(8),
      I2 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I3 => n_1_I_WRAP_BRST,
      I4 => \^bram_addr_a\(1),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\,
      I1 => \^bram_addr_a\(1),
      I2 => bram_addr_ld(9),
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I4 => n_1_I_WRAP_BRST,
      I5 => \^bram_addr_a\(2),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^bram_addr_a\(0),
      I1 => \^o6\,
      I2 => n_17_I_WRAP_BRST,
      I3 => \^o7\,
      I4 => \^o8\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \^bram_addr_a\(3),
      I1 => n_1_I_WRAP_BRST,
      I2 => bram_addr_ld(10),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101010101050"
    )
    port map (
      I0 => curr_fixed_burst_reg,
      I1 => curr_narrow_burst,
      I2 => bram_addr_inc,
      I3 => narrow_addr_int(1),
      I4 => narrow_addr_int(0),
      I5 => narrow_bram_addr_inc_d1,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_data_sm_cs(1),
      I1 => wr_data_sm_cs(2),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \GEN_AW_PIPE_DUAL.GEN_AWADDR[2].axi_awaddr_pipe_reg\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(2),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \^o3\,
      I1 => bram_addr_ld(1),
      I2 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I3 => n_1_I_WRAP_BRST,
      I4 => \^o5\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \^o3\,
      I1 => \^o5\,
      I2 => bram_addr_ld(2),
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I4 => n_1_I_WRAP_BRST,
      I5 => \^o4\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2\,
      I1 => \^o4\,
      I2 => bram_addr_ld(3),
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I4 => n_1_I_WRAP_BRST,
      I5 => \^o9\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o5\,
      I1 => \^o3\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => n_17_I_WRAP_BRST,
      I1 => bram_addr_ld(4),
      I2 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I3 => n_1_I_WRAP_BRST,
      I4 => \^o7\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => n_17_I_WRAP_BRST,
      I1 => \^o7\,
      I2 => bram_addr_ld(5),
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I4 => n_1_I_WRAP_BRST,
      I5 => \^o6\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FCCA0CC"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2\,
      I1 => bram_addr_ld(6),
      I2 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I3 => n_1_I_WRAP_BRST,
      I4 => \^o8\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77FFF0F08800F0F0"
    )
    port map (
      I0 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2\,
      I1 => \^o8\,
      I2 => bram_addr_ld(7),
      I3 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I4 => n_1_I_WRAP_BRST,
      I5 => \^bram_addr_a\(0),
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \^o6\,
      I1 => \^o9\,
      I2 => \^o5\,
      I3 => \^o3\,
      I4 => \^o4\,
      I5 => \^o7\,
      O => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_2\
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[10]_i_1\,
      Q => \^bram_addr_a\(1),
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[11]_i_1\,
      Q => \^bram_addr_a\(2),
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_2\,
      Q => \^bram_addr_a\(3),
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_14_I_WRAP_BRST,
      Q => \^o3\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[3]_i_1\,
      Q => \^o5\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[4]_i_1\,
      Q => \^o4\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[5]_i_1\,
      Q => \^o9\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[6]_i_1\,
      Q => \^o7\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[7]_i_1\,
      Q => \^o6\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[8]_i_1\,
      Q => \^o8\,
      R => n_0_I_WRAP_BRST
    );
\GEN_DUAL_ADDR_CNT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[9]_i_1\,
      Q => \^bram_addr_a\(0),
      R => n_0_I_WRAP_BRST
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030553000"
    )
    port map (
      I0 => s_axi_awsize(2),
      I1 => axi_awsize_pipe(2),
      I2 => axi_awsize_pipe(1),
      I3 => axi_awaddr_full,
      I4 => s_axi_awsize(1),
      I5 => curr_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AB02A8FFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\,
      I1 => curr_awsize(1),
      I2 => curr_awsize(0),
      I3 => curr_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFC00FC004C"
    )
    port map (
      I0 => curr_awsize(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26\,
      I2 => curr_awsize(1),
      I3 => curr_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_awlen_pipe(6),
      I1 => s_axi_awlen(6),
      I2 => curr_awsize(0),
      I3 => axi_awlen_pipe(7),
      I4 => axi_awaddr_full,
      I5 => s_axi_awlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B80000FF000000"
    )
    port map (
      I0 => curr_awlen(2),
      I1 => curr_awsize(0),
      I2 => curr_awlen(3),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\,
      I4 => curr_awsize(2),
      I5 => curr_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020200FF0202FF00"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(0),
      I1 => p_1_out,
      I2 => p_2_out,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B8B00FF8B8BFF00"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(0),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\,
      I5 => narrow_addr_int(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044400000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\,
      I2 => curr_awaddr_lsb(1),
      I3 => curr_awaddr_lsb(0),
      I4 => bram_addr_ld_en,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10\,
      O => p_1_out
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_11\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_12__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\,
      I4 => curr_wrap_burst,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\,
      O => p_2_out
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF01FF00FFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11540054"
    )
    port map (
      I0 => curr_awsize(2),
      I1 => curr_awsize(1),
      I2 => curr_awaddr_lsb(0),
      I3 => curr_awsize(0),
      I4 => curr_awaddr_lsb(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(1),
      O => curr_awaddr_lsb(1)
    );
\GEN_NARROW_CNT.narrow_addr_int[0]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(0),
      O => curr_awaddr_lsb(0)
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFABFCA800"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\,
      I1 => curr_awsize(0),
      I2 => curr_awsize(1),
      I3 => curr_awsize(2),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF5DFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3030FFFF3030BB88"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\,
      I1 => curr_awsize(1),
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\,
      I4 => curr_awsize(2),
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_33\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBFFFBF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10\,
      I1 => bram_addr_ld_en,
      I2 => s_axi_awaddr(0),
      I3 => axi_awaddr_full,
      I4 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\,
      I5 => curr_awaddr_lsb(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awburst_pipe(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awburst(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awburst_pipe(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awburst(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8A8A8AAAAAA"
    )
    port map (
      I0 => bram_addr_ld_en,
      I1 => curr_awsize(2),
      I2 => curr_awsize(0),
      I3 => axi_awsize_pipe(1),
      I4 => axi_awaddr_full,
      I5 => s_axi_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1FFFFF"
    )
    port map (
      I0 => curr_awaddr_lsb(1),
      I1 => curr_awaddr_lsb(0),
      I2 => bram_addr_ld_en,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_10\,
      I4 => curr_wrap_burst,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1514"
    )
    port map (
      I0 => curr_awsize(2),
      I1 => curr_awsize(1),
      I2 => curr_awsize(0),
      I3 => curr_awaddr_lsb(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_awlen(3),
      I1 => curr_awlen(2),
      I2 => curr_awsize(0),
      I3 => curr_awsize(1),
      I4 => curr_awlen(1),
      I5 => curr_awlen(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_awlen(7),
      I1 => curr_awlen(6),
      I2 => curr_awsize(0),
      I3 => curr_awsize(1),
      I4 => curr_awlen(5),
      I5 => curr_awlen(4),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FEA00"
    )
    port map (
      I0 => curr_awsize(2),
      I1 => curr_awsize(0),
      I2 => curr_awsize(1),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_24\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"550F33FF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\,
      I3 => curr_awsize(2),
      I4 => curr_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_25__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EBBB2888"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44\,
      I1 => curr_awsize(2),
      I2 => curr_awsize(1),
      I3 => curr_awsize(0),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_26\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_27__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAF0FF8F8A808"
    )
    port map (
      I0 => curr_awsize(0),
      I1 => s_axi_awsize(1),
      I2 => axi_awaddr_full,
      I3 => axi_awsize_pipe(1),
      I4 => axi_awsize_pipe(2),
      I5 => s_axi_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_27__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5030503F5F305F3F"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\,
      I2 => curr_awsize(2),
      I3 => curr_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_13\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_28\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"333E0002"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_23\,
      I1 => curr_awsize(2),
      I2 => curr_awsize(0),
      I3 => curr_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_22\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_29__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222F0FF22220F00"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\,
      I2 => narrow_addr_int(0),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_awlen_pipe(2),
      I1 => s_axi_awlen(2),
      I2 => curr_awsize(0),
      I3 => axi_awlen_pipe(3),
      I4 => axi_awaddr_full,
      I5 => s_axi_awlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_awlen_pipe(0),
      I1 => s_axi_awlen(0),
      I2 => curr_awsize(0),
      I3 => axi_awlen_pipe(1),
      I4 => axi_awaddr_full,
      I5 => s_axi_awlen(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => axi_awlen_pipe(4),
      I1 => s_axi_awlen(4),
      I2 => curr_awsize(0),
      I3 => axi_awlen_pipe(5),
      I4 => axi_awaddr_full,
      I5 => s_axi_awlen(5),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4700"
    )
    port map (
      I0 => axi_awsize_pipe(2),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(2),
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_34__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCA00CA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_32\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_31\,
      I2 => curr_awsize(2),
      I3 => curr_awsize(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_30\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_35\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43\,
      I1 => curr_awsize(2),
      I2 => curr_awsize(1),
      I3 => curr_awsize(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_36__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888AAA"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48\,
      I2 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\,
      I3 => axi_awaddr_full,
      I4 => s_axi_awaddr(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000202020002"
    )
    port map (
      I0 => curr_awsize(0),
      I1 => curr_awsize(1),
      I2 => curr_awsize(2),
      I3 => s_axi_awaddr(1),
      I4 => axi_awaddr_full,
      I5 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4540FFFF"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48\,
      I1 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[1].axi_awaddr_pipe_reg[1]\,
      I2 => axi_awaddr_full,
      I3 => s_axi_awaddr(1),
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACFFFAAAA3000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9\,
      I1 => narrow_addr_int(0),
      I2 => bram_addr_inc,
      I3 => curr_narrow_burst,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\,
      I5 => narrow_addr_int(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000033A8"
    )
    port map (
      I0 => curr_awaddr_lsb(1),
      I1 => curr_awsize(0),
      I2 => curr_awaddr_lsb(0),
      I3 => curr_awsize(1),
      I4 => curr_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_41__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awlen_pipe(7),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(7),
      O => curr_awlen(7)
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_42__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awlen_pipe(5),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(5),
      O => curr_awlen(5)
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_awlen(1),
      I1 => curr_awlen(0),
      I2 => curr_awsize(0),
      I3 => curr_awsize(1),
      I4 => curr_awlen(3),
      I5 => curr_awlen(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_43\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
    port map (
      I0 => curr_awlen(5),
      I1 => curr_awlen(4),
      I2 => curr_awsize(0),
      I3 => curr_awsize(1),
      I4 => curr_awlen(7),
      I5 => curr_awlen(6),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_44\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => curr_awlen(0),
      I1 => curr_awlen(1),
      I2 => curr_awsize(1),
      I3 => curr_awlen(2),
      I4 => curr_awsize(0),
      I5 => curr_awlen(3),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => curr_awlen(4),
      I1 => curr_awlen(5),
      I2 => curr_awsize(1),
      I3 => curr_awlen(6),
      I4 => curr_awsize(0),
      I5 => curr_awlen(7),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000440347"
    )
    port map (
      I0 => axi_awsize_pipe(1),
      I1 => axi_awaddr_full,
      I2 => s_axi_awsize(1),
      I3 => axi_awsize_pipe(0),
      I4 => s_axi_awsize(0),
      I5 => curr_awsize(2),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_47\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF47"
    )
    port map (
      I0 => \n_0_GEN_AW_PIPE_DUAL.GEN_AWADDR[0].axi_awaddr_pipe_reg[0]\,
      I1 => axi_awaddr_full,
      I2 => s_axi_awaddr(0),
      I3 => curr_awsize(2),
      I4 => curr_awsize(0),
      I5 => curr_awsize(1),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_48\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FE00FF0000"
    )
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_12__0\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_13__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_14\,
      I4 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_15\,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_16\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_6\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => s_axi_wvalid,
      I2 => wr_data_sm_cs(2),
      I3 => wr_data_sm_cs(1),
      I4 => wr_data_sm_cs(0),
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_7\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
    port map (
      I0 => narrow_bram_addr_inc_d1,
      I1 => narrow_addr_int(0),
      I2 => narrow_addr_int(1),
      I3 => bram_addr_inc,
      I4 => curr_narrow_burst,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_17__0\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_8\
    );
\GEN_NARROW_CNT.narrow_addr_int[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000888AFFFFBBBA"
    )
    port map (
      I0 => narrow_burst_cnt_ld_reg(1),
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_18\,
      I2 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_11__0\,
      I3 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_19\,
      I4 => p_1_out,
      I5 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_20\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_9\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\,
      Q => narrow_addr_int(0),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_2\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[0]_i_3\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[0]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\,
      Q => narrow_addr_int(1),
      R => I1
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_3\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_4\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_1\,
      S => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\: unisim.vcomponents.CARRY4
    port map (
      CI => '0',
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_37__0\,
      DI(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_38\,
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_21_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_39\,
      S(0) => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_40__0\
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_33\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_45\,
      I1 => \n_0_GEN_NARROW_CNT.narrow_addr_int[1]_i_46\,
      O => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_33\,
      S => curr_awsize(2)
    );
\GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_10\,
      CO(3) => \n_0_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(2) => \n_1_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(1) => \n_2_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CO(0) => \n_3_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => '0',
      DI(1) => '0',
      DI(0) => '0',
      O(3 downto 0) => \NLW_GEN_NARROW_CNT.narrow_addr_int_reg[1]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => '1',
      S(2) => '1',
      S(1) => '1',
      S(0) => '1'
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => narrow_addr_int(0),
      I1 => narrow_addr_int(1),
      I2 => bram_addr_inc,
      I3 => curr_narrow_burst,
      O => narrow_bram_addr_inc
    );
\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_bram_addr_inc,
      Q => narrow_bram_addr_inc_d1,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F10"
    )
    port map (
      I0 => curr_awsize(2),
      I1 => curr_awsize(1),
      I2 => bram_addr_ld_en,
      I3 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\,
      O => narrow_burst_cnt_ld_reg(0)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
    port map (
      I0 => curr_awsize(0),
      I1 => curr_awsize(2),
      I2 => curr_awsize(1),
      I3 => bram_addr_ld_en,
      I4 => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
      O => narrow_burst_cnt_ld_reg(1)
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(0),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0]\,
      R => I1
    );
\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => narrow_burst_cnt_ld_reg(1),
      Q => \n_0_GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1]\,
      R => I1
    );
\GEN_NARROW_EN.axi_wlast_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_26_in,
      Q => axi_wlast_d1,
      R => I1
    );
\GEN_NARROW_EN.curr_narrow_burst_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30303030A000A0A0"
    )
    port map (
      I0 => curr_narrow_burst,
      I1 => axi_byte_div_curr_awsize(0),
      I2 => s_axi_aresetn,
      I3 => axi_wlast_d1,
      I4 => p_26_in,
      I5 => curr_narrow_burst_en,
      O => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\
    );
\GEN_NARROW_EN.curr_narrow_burst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B8FF0000"
    )
    port map (
      I0 => axi_awlen_pipe(0),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(0),
      I3 => curr_awlen_reg_1_or_20,
      I4 => bram_addr_ld_en,
      I5 => curr_fixed_burst,
      O => curr_narrow_burst_en
    );
\GEN_NARROW_EN.curr_narrow_burst_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_NARROW_EN.curr_narrow_burst_i_1__0\,
      Q => curr_narrow_burst,
      R => '0'
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"72737070"
    )
    port map (
      I0 => wr_data_sm_cs(1),
      I1 => wr_data_sm_cs(2),
      I2 => axi_wdata_full_reg,
      I3 => axi_wdata_full_cmb116_out,
      I4 => s_axi_wvalid,
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F101"
    )
    port map (
      I0 => axi_wdata_full_cmb116_out,
      I1 => \n_0_GEN_AWREADY.axi_awready_int_i_2\,
      I2 => wr_data_sm_cs(1),
      I3 => axi_wdata_full_reg,
      I4 => wr_data_sm_cs(2),
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_reg_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_2\,
      I1 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.axi_wdata_full_reg_i_3\,
      O => axi_wdata_full_cmb,
      S => wr_data_sm_cs(0)
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCFFCCECCCCCCCC"
    )
    port map (
      I0 => axi_wdata_full_cmb116_out,
      I1 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\,
      I2 => wr_data_sm_cs(0),
      I3 => wr_data_sm_cs(1),
      I4 => wr_data_sm_cs(2),
      I5 => s_axi_wvalid,
      O => bram_en_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
    port map (
      I0 => axi_wdata_full_cmb116_out,
      I1 => \n_0_GEN_AWREADY.axi_awready_int_i_2\,
      I2 => wr_data_sm_cs(0),
      I3 => wr_data_sm_cs(2),
      I4 => wr_data_sm_cs(1),
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => bram_en_a,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\,
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(1),
      O => clr_bram_we_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8888888"
    )
    port map (
      I0 => clr_bram_we_cmb7_out,
      I1 => wr_data_sm_cs(0),
      I2 => axi_wdata_full_cmb116_out,
      I3 => s_axi_wvalid,
      I4 => s_axi_wlast,
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => clr_bram_we_cmb,
      Q => clr_bram_we,
      R => I1
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFCC02003300"
    )
    port map (
      I0 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.clr_bram_we_i_2\,
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(1),
      I3 => delay_aw_active_clr_cmb,
      I4 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3\,
      I5 => delay_aw_active_clr,
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAEBAA"
    )
    port map (
      I0 => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.bram_en_int_i_3\,
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(0),
      I3 => s_axi_wlast,
      I4 => wr_data_sm_cs(2),
      O => delay_aw_active_clr_cmb
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7F7F7F737F7F7F7"
    )
    port map (
      I0 => delay_aw_active_clr,
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(0),
      I3 => s_axi_wvalid,
      I4 => s_axi_wlast,
      I5 => axi_wr_burst_cmb0,
      O => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_3\
    );
\GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_GEN_WDATA_SM_NO_ECC_DUAL_REG_WREADY.delay_aw_active_clr_i_1\,
      Q => delay_aw_active_clr,
      R => I1
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2FF0000FFFFFFFF"
    )
    port map (
      I0 => wr_data_sm_cs(0),
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(2),
      I3 => s_axi_wvalid,
      I4 => clr_bram_we,
      I5 => s_axi_aresetn,
      O => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1D00"
    )
    port map (
      I0 => wr_data_sm_cs(0),
      I1 => wr_data_sm_cs(1),
      I2 => wr_data_sm_cs(2),
      I3 => s_axi_wvalid,
      O => wrdata_reg_ld
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => bram_we_a(0),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => bram_we_a(1),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => bram_we_a(2),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => bram_we_a(3),
      R => \n_0_GEN_WR_NO_ECC.bram_we_int[3]_i_1\
    );
I_WRAP_BRST: entity work.bram32_axi_bram_ctrl_0_0_wrap_brst
    port map (
      D(9 downto 0) => bram_addr_ld(10 downto 1),
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[10].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[11].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[12].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[3].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[4].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[5].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[6].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[7].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[8].axi_awaddr_pipe_reg\,
      \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\ => \GEN_AW_PIPE_DUAL.GEN_AWADDR[9].axi_awaddr_pipe_reg\,
      I1 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_3\,
      I10 => \^o9\,
      I11(3 downto 0) => axi_awlen_pipe(3 downto 0),
      I12 => I1,
      I2 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[12]_i_5\,
      I3 => \n_0_GEN_AW_DUAL.aw_active_reg\,
      I4 => \^o3\,
      I5 => \^o4\,
      I6 => \^o5\,
      I7 => \n_0_GEN_DUAL_ADDR_CNT.bram_addr_int[2]_i_3\,
      I8 => n_4_BID_FIFO,
      I9 => \n_0_GEN_AW_PIPE_DUAL.axi_awburst_pipe_fixed_reg\,
      O1 => n_0_I_WRAP_BRST,
      O2 => n_1_I_WRAP_BRST,
      O3 => n_2_I_WRAP_BRST,
      O4 => n_14_I_WRAP_BRST,
      O5 => n_16_I_WRAP_BRST,
      O6 => n_17_I_WRAP_BRST,
      O7 => n_26_I_WRAP_BRST,
      O8 => n_27_I_WRAP_BRST,
      Q(2 downto 0) => axi_awsize_pipe(2 downto 0),
      axi_aresetn_d2 => axi_aresetn_d2,
      axi_awaddr_full => axi_awaddr_full,
      axi_awlen_pipe_1_or_2 => axi_awlen_pipe_1_or_2,
      axi_byte_div_curr_awsize(0) => axi_byte_div_curr_awsize(0),
      bram_addr_inc => bram_addr_inc,
      bram_addr_ld_en => bram_addr_ld_en,
      bvalid_cnt(2 downto 0) => bvalid_cnt(2 downto 0),
      curr_awlen(3 downto 0) => curr_awlen(3 downto 0),
      curr_awlen_reg_1_or_2 => curr_awlen_reg_1_or_2,
      curr_awsize(2 downto 0) => curr_awsize(2 downto 0),
      curr_fixed_burst => curr_fixed_burst,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_narrow_burst => curr_narrow_burst,
      curr_wrap_burst => curr_wrap_burst,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      last_data_ack_mod => last_data_ack_mod,
      narrow_addr_int(1 downto 0) => narrow_addr_int(1 downto 0),
      narrow_bram_addr_inc_d1 => narrow_bram_addr_inc_d1,
      \out\(2 downto 0) => wr_data_sm_cs(2 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(9 downto 0) => s_axi_awaddr(12 downto 3),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_wvalid => s_axi_wvalid,
      wr_addr_sm_cs => wr_addr_sm_cs
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_6_BID_FIFO,
      Q => \^s_axi_bid\(0),
      R => I1
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA8AAA88"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => bvalid_cnt_inc,
      I2 => n_1_BID_FIFO,
      I3 => bvalid_cnt(1),
      I4 => bvalid_cnt(0),
      I5 => bvalid_cnt(2),
      O => n_0_axi_bvalid_int_i_1
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000CC000000B888"
    )
    port map (
      I0 => clr_bram_we_cmb7_out,
      I1 => wr_data_sm_cs(0),
      I2 => axi_wdata_full_cmb116_out,
      I3 => bvalid_cnt_inc12_out,
      I4 => wr_data_sm_cs(2),
      I5 => wr_data_sm_cs(1),
      O => bvalid_cnt_inc
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_bvalid_int_i_1,
      Q => \^o1\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_wr_burst_cmb,
      I1 => n_0_axi_wr_burst_i_3,
      I2 => axi_wr_burst,
      O => n_0_axi_wr_burst_i_1
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF220F0000220F"
    )
    port map (
      I0 => s_axi_wvalid,
      I1 => wr_data_sm_cs(1),
      I2 => s_axi_wlast,
      I3 => wr_data_sm_cs(2),
      I4 => wr_data_sm_cs(0),
      I5 => axi_wr_burst_cmb0,
      O => axi_wr_burst_cmb
    );
axi_wr_burst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220A020A020A020A"
    )
    port map (
      I0 => s_axi_wvalid,
      I1 => wr_data_sm_cs(2),
      I2 => wr_data_sm_cs(0),
      I3 => wr_data_sm_cs(1),
      I4 => s_axi_wlast,
      I5 => axi_wr_burst_cmb0,
      O => n_0_axi_wr_burst_i_3
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_wr_burst_i_1,
      Q => axi_wr_burst,
      R => I1
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => n_0_axi_wready_int_mod_i_1
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_0_axi_wready_int_mod_i_1,
      Q => \^s_axi_wready\,
      R => '0'
    );
bid_gets_fifo_load_d1_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => bvalid_cnt(2),
      I1 => bvalid_cnt(0),
      I2 => bvalid_cnt(1),
      O => n_0_bid_gets_fifo_load_d1_i_3
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => I1
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"959595956A6A6AAA"
    )
    port map (
      I0 => bvalid_cnt_inc,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => bvalid_cnt(2),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(0),
      O => \n_0_bvalid_cnt[0]_i_1\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D52A2ABFBF4000"
    )
    port map (
      I0 => bvalid_cnt_inc,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => bvalid_cnt(2),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(0),
      O => \n_0_bvalid_cnt[1]_i_1\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52AFF00FF00BF00"
    )
    port map (
      I0 => bvalid_cnt_inc,
      I1 => \^o1\,
      I2 => s_axi_bready,
      I3 => bvalid_cnt(2),
      I4 => bvalid_cnt(1),
      I5 => bvalid_cnt(0),
      O => \n_0_bvalid_cnt[2]_i_1\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[0]_i_1\,
      Q => bvalid_cnt(0),
      R => I1
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[1]_i_1\,
      Q => bvalid_cnt(1),
      R => I1
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => \n_0_bvalid_cnt[2]_i_1\,
      Q => bvalid_cnt(2),
      R => I1
    );
curr_awlen_reg_1_or_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => curr_awlen(4),
      I1 => n_0_curr_awlen_reg_1_or_2_i_3,
      I2 => curr_awlen(2),
      I3 => curr_awlen(1),
      I4 => curr_awlen(6),
      I5 => curr_awlen(3),
      O => curr_awlen_reg_1_or_20
    );
curr_awlen_reg_1_or_2_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awlen_pipe(4),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(4),
      O => curr_awlen(4)
    );
curr_awlen_reg_1_or_2_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
    port map (
      I0 => s_axi_awlen(5),
      I1 => axi_awlen_pipe(5),
      I2 => s_axi_awlen(7),
      I3 => axi_awaddr_full,
      I4 => axi_awlen_pipe(7),
      O => n_0_curr_awlen_reg_1_or_2_i_3
    );
curr_awlen_reg_1_or_2_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => axi_awlen_pipe(6),
      I1 => axi_awaddr_full,
      I2 => s_axi_awlen(6),
      O => curr_awlen(6)
    );
curr_awlen_reg_1_or_2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => bram_addr_ld_en,
      D => curr_awlen_reg_1_or_20,
      Q => curr_awlen_reg_1_or_2,
      R => I1
    );
curr_fixed_burst_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00053305"
    )
    port map (
      I0 => s_axi_awburst(1),
      I1 => axi_awburst_pipe(1),
      I2 => s_axi_awburst(0),
      I3 => axi_awaddr_full,
      I4 => axi_awburst_pipe(0),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_27_I_WRAP_BRST,
      Q => curr_fixed_burst_reg,
      R => '0'
    );
curr_wrap_burst_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000ACC0A"
    )
    port map (
      I0 => s_axi_awburst(1),
      I1 => axi_awburst_pipe(1),
      I2 => s_axi_awburst(0),
      I3 => axi_awaddr_full,
      I4 => axi_awburst_pipe(0),
      O => curr_wrap_burst
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axi_aclk,
      CE => '1',
      D => n_26_I_WRAP_BRST,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_full_axi is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O12 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_en_b : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_full_axi : entity is "full_axi";
end bram32_axi_bram_ctrl_0_0_full_axi;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_full_axi is
  signal \^o7\ : STD_LOGIC;
begin
  O7 <= \^o7\;
I_RD_CHNL: entity work.bram32_axi_bram_ctrl_0_0_rd_chnl
    port map (
      O1 => \^o7\,
      O2 => O1,
      O3 => O2,
      O4 => bram_addr_b(1),
      O5 => bram_addr_b(2),
      O6 => bram_addr_b(0),
      bram_addr_b(7 downto 0) => bram_addr_b(10 downto 3),
      bram_en_b => bram_en_b,
      bram_rddata_b(31 downto 0) => bram_rddata_b(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready
    );
I_WR_CHNL: entity work.bram32_axi_bram_ctrl_0_0_wr_chnl
    port map (
      I1 => \^o7\,
      O1 => O12,
      O2 => O3,
      O3 => O4,
      O4 => O5,
      O5 => O6,
      O6 => O10,
      O7 => O9,
      O8 => O11,
      O9 => O8,
      bram_addr_a(3 downto 0) => bram_addr_a(3 downto 0),
      bram_en_a => bram_en_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    bram_addr_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O12 : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    bram_en_b : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bready : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bram32_axi_bram_ctrl_0_0_axi_bram_ctrl_top : entity is "axi_bram_ctrl_top";
end bram32_axi_bram_ctrl_0_0_axi_bram_ctrl_top;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.bram32_axi_bram_ctrl_0_0_full_axi
    port map (
      O1 => O1,
      O10 => O10,
      O11 => O11,
      O12 => O12,
      O2 => O2,
      O3 => O3,
      O4 => O4,
      O5 => O5,
      O6 => O6,
      O7 => O7,
      O8 => O8,
      O9 => O9,
      bram_addr_a(3 downto 0) => bram_addr_a(3 downto 0),
      bram_addr_b(10 downto 0) => bram_addr_b(10 downto 0),
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_rddata_b(31 downto 0) => bram_rddata_b(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ecc_interrupt : out STD_LOGIC;
    ecc_ue : out STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_ctrl_awvalid : in STD_LOGIC;
    s_axi_ctrl_awready : out STD_LOGIC;
    s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_wvalid : in STD_LOGIC;
    s_axi_ctrl_wready : out STD_LOGIC;
    s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_bvalid : out STD_LOGIC;
    s_axi_ctrl_bready : in STD_LOGIC;
    s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_arvalid : in STD_LOGIC;
    s_axi_ctrl_arready : out STD_LOGIC;
    s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_ctrl_rvalid : out STD_LOGIC;
    s_axi_ctrl_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is "axi_bram_ctrl";
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is "EXTERNAL";
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 2048;
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 11;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 13;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 1;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is "zynq";
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 32;
  attribute C_ECC : integer;
  attribute C_ECC of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is 0;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ : entity is "yes";
end \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\;

architecture STRUCTURE of \bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \^bram_addr_b\ : STD_LOGIC_VECTOR ( 12 downto 2 );
  signal \^bram_rst_a\ : STD_LOGIC;
  signal \^s_axi_aclk\ : STD_LOGIC;
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(12 downto 2) <= \^bram_addr_a\(12 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_addr_b(12 downto 2) <= \^bram_addr_b\(12 downto 2);
  bram_addr_b(1) <= \<const0>\;
  bram_addr_b(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  bram_clk_b <= \^s_axi_aclk\;
  bram_rst_a <= \^bram_rst_a\;
  bram_rst_b <= \^bram_rst_a\;
  bram_we_b(3) <= \<const0>\;
  bram_we_b(2) <= \<const0>\;
  bram_we_b(1) <= \<const0>\;
  bram_we_b(0) <= \<const0>\;
  bram_wrdata_b(31) <= \<const0>\;
  bram_wrdata_b(30) <= \<const0>\;
  bram_wrdata_b(29) <= \<const0>\;
  bram_wrdata_b(28) <= \<const0>\;
  bram_wrdata_b(27) <= \<const0>\;
  bram_wrdata_b(26) <= \<const0>\;
  bram_wrdata_b(25) <= \<const0>\;
  bram_wrdata_b(24) <= \<const0>\;
  bram_wrdata_b(23) <= \<const0>\;
  bram_wrdata_b(22) <= \<const0>\;
  bram_wrdata_b(21) <= \<const0>\;
  bram_wrdata_b(20) <= \<const0>\;
  bram_wrdata_b(19) <= \<const0>\;
  bram_wrdata_b(18) <= \<const0>\;
  bram_wrdata_b(17) <= \<const0>\;
  bram_wrdata_b(16) <= \<const0>\;
  bram_wrdata_b(15) <= \<const0>\;
  bram_wrdata_b(14) <= \<const0>\;
  bram_wrdata_b(13) <= \<const0>\;
  bram_wrdata_b(12) <= \<const0>\;
  bram_wrdata_b(11) <= \<const0>\;
  bram_wrdata_b(10) <= \<const0>\;
  bram_wrdata_b(9) <= \<const0>\;
  bram_wrdata_b(8) <= \<const0>\;
  bram_wrdata_b(7) <= \<const0>\;
  bram_wrdata_b(6) <= \<const0>\;
  bram_wrdata_b(5) <= \<const0>\;
  bram_wrdata_b(4) <= \<const0>\;
  bram_wrdata_b(3) <= \<const0>\;
  bram_wrdata_b(2) <= \<const0>\;
  bram_wrdata_b(1) <= \<const0>\;
  bram_wrdata_b(0) <= \<const0>\;
  ecc_interrupt <= \<const0>\;
  ecc_ue <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_ctrl_arready <= \<const0>\;
  s_axi_ctrl_awready <= \<const0>\;
  s_axi_ctrl_bresp(1) <= \<const0>\;
  s_axi_ctrl_bresp(0) <= \<const0>\;
  s_axi_ctrl_bvalid <= \<const0>\;
  s_axi_ctrl_rdata(31) <= \<const0>\;
  s_axi_ctrl_rdata(30) <= \<const0>\;
  s_axi_ctrl_rdata(29) <= \<const0>\;
  s_axi_ctrl_rdata(28) <= \<const0>\;
  s_axi_ctrl_rdata(27) <= \<const0>\;
  s_axi_ctrl_rdata(26) <= \<const0>\;
  s_axi_ctrl_rdata(25) <= \<const0>\;
  s_axi_ctrl_rdata(24) <= \<const0>\;
  s_axi_ctrl_rdata(23) <= \<const0>\;
  s_axi_ctrl_rdata(22) <= \<const0>\;
  s_axi_ctrl_rdata(21) <= \<const0>\;
  s_axi_ctrl_rdata(20) <= \<const0>\;
  s_axi_ctrl_rdata(19) <= \<const0>\;
  s_axi_ctrl_rdata(18) <= \<const0>\;
  s_axi_ctrl_rdata(17) <= \<const0>\;
  s_axi_ctrl_rdata(16) <= \<const0>\;
  s_axi_ctrl_rdata(15) <= \<const0>\;
  s_axi_ctrl_rdata(14) <= \<const0>\;
  s_axi_ctrl_rdata(13) <= \<const0>\;
  s_axi_ctrl_rdata(12) <= \<const0>\;
  s_axi_ctrl_rdata(11) <= \<const0>\;
  s_axi_ctrl_rdata(10) <= \<const0>\;
  s_axi_ctrl_rdata(9) <= \<const0>\;
  s_axi_ctrl_rdata(8) <= \<const0>\;
  s_axi_ctrl_rdata(7) <= \<const0>\;
  s_axi_ctrl_rdata(6) <= \<const0>\;
  s_axi_ctrl_rdata(5) <= \<const0>\;
  s_axi_ctrl_rdata(4) <= \<const0>\;
  s_axi_ctrl_rdata(3) <= \<const0>\;
  s_axi_ctrl_rdata(2) <= \<const0>\;
  s_axi_ctrl_rdata(1) <= \<const0>\;
  s_axi_ctrl_rdata(0) <= \<const0>\;
  s_axi_ctrl_rresp(1) <= \<const0>\;
  s_axi_ctrl_rresp(0) <= \<const0>\;
  s_axi_ctrl_rvalid <= \<const0>\;
  s_axi_ctrl_wready <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\gext_inst.abcv4_0_ext_inst\: entity work.bram32_axi_bram_ctrl_0_0_axi_bram_ctrl_top
    port map (
      O1 => s_axi_rlast,
      O10 => \^bram_addr_a\(7),
      O11 => \^bram_addr_a\(8),
      O12 => s_axi_bvalid,
      O2 => s_axi_rvalid,
      O3 => s_axi_awready,
      O4 => \^bram_addr_a\(2),
      O5 => \^bram_addr_a\(4),
      O6 => \^bram_addr_a\(3),
      O7 => \^bram_rst_a\,
      O8 => \^bram_addr_a\(5),
      O9 => \^bram_addr_a\(6),
      bram_addr_a(3 downto 0) => \^bram_addr_a\(12 downto 9),
      bram_addr_b(10 downto 0) => \^bram_addr_b\(12 downto 2),
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_rddata_b(31 downto 0) => bram_rddata_b(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bram32_axi_bram_ctrl_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rst_b : out STD_LOGIC;
    bram_clk_b : out STD_LOGIC;
    bram_en_b : out STD_LOGIC;
    bram_we_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_b : out STD_LOGIC_VECTOR ( 12 downto 0 );
    bram_wrdata_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_b : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bram32_axi_bram_ctrl_0_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of bram32_axi_bram_ctrl_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of bram32_axi_bram_ctrl_0_0 : entity is "axi_bram_ctrl,Vivado 2014.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bram32_axi_bram_ctrl_0_0 : entity is "bram32_axi_bram_ctrl_0_0,axi_bram_ctrl,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of bram32_axi_bram_ctrl_0_0 : entity is "bram32_axi_bram_ctrl_0_0,axi_bram_ctrl,{x_ipProduct=Vivado 2014.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_bram_ctrl,x_ipVersion=4.0,x_ipCoreRevision=3,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_BRAM_INST_MODE=EXTERNAL,C_MEMORY_DEPTH=2048,C_BRAM_ADDR_WIDTH=11,C_S_AXI_ADDR_WIDTH=13,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ID_WIDTH=1,C_S_AXI_PROTOCOL=AXI4,C_S_AXI_SUPPORTS_NARROW_BURST=1,C_SINGLE_PORT_BRAM=0,C_FAMILY=zynq,C_S_AXI_CTRL_ADDR_WIDTH=32,C_S_AXI_CTRL_DATA_WIDTH=32,C_ECC=0,C_ECC_TYPE=0,C_FAULT_INJECT=0,C_ECC_ONOFF_RESET_VALUE=0}";
end bram32_axi_bram_ctrl_0_0;

architecture STRUCTURE of bram32_axi_bram_ctrl_0_0 is
  signal NLW_U0_ecc_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_ecc_ue_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_ctrl_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_ctrl_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ctrl_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_ctrl_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_BRAM_ADDR_WIDTH : integer;
  attribute C_BRAM_ADDR_WIDTH of U0 : label is 11;
  attribute C_BRAM_INST_MODE : string;
  attribute C_BRAM_INST_MODE of U0 : label is "EXTERNAL";
  attribute C_ECC : integer;
  attribute C_ECC of U0 : label is 0;
  attribute C_ECC_ONOFF_RESET_VALUE : integer;
  attribute C_ECC_ONOFF_RESET_VALUE of U0 : label is 0;
  attribute C_ECC_TYPE : integer;
  attribute C_ECC_TYPE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_FAULT_INJECT : integer;
  attribute C_FAULT_INJECT of U0 : label is 0;
  attribute C_MEMORY_DEPTH : integer;
  attribute C_MEMORY_DEPTH of U0 : label is 2048;
  attribute C_SINGLE_PORT_BRAM : integer;
  attribute C_SINGLE_PORT_BRAM of U0 : label is 0;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 13;
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of U0 : label is 32;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_S_AXI_ID_WIDTH : integer;
  attribute C_S_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_S_AXI_PROTOCOL : string;
  attribute C_S_AXI_PROTOCOL of U0 : label is "AXI4";
  attribute C_S_AXI_SUPPORTS_NARROW_BURST : integer;
  attribute C_S_AXI_SUPPORTS_NARROW_BURST of U0 : label is 1;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of U0 : label is std.standard.true;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.\bram32_axi_bram_ctrl_0_0_axi_bram_ctrl__parameterized0\
    port map (
      bram_addr_a(12 downto 0) => bram_addr_a(12 downto 0),
      bram_addr_b(12 downto 0) => bram_addr_b(12 downto 0),
      bram_clk_a => bram_clk_a,
      bram_clk_b => bram_clk_b,
      bram_en_a => bram_en_a,
      bram_en_b => bram_en_b,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rddata_b(31 downto 0) => bram_rddata_b(31 downto 0),
      bram_rst_a => bram_rst_a,
      bram_rst_b => bram_rst_b,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_we_b(3 downto 0) => bram_we_b(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      bram_wrdata_b(31 downto 0) => bram_wrdata_b(31 downto 0),
      ecc_interrupt => NLW_U0_ecc_interrupt_UNCONNECTED,
      ecc_ue => NLW_U0_ecc_ue_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(12 downto 0) => s_axi_araddr(12 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock => s_axi_arlock,
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(12 downto 0) => s_axi_awaddr(12 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock => s_axi_awlock,
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_ctrl_araddr(31) => '0',
      s_axi_ctrl_araddr(30) => '0',
      s_axi_ctrl_araddr(29) => '0',
      s_axi_ctrl_araddr(28) => '0',
      s_axi_ctrl_araddr(27) => '0',
      s_axi_ctrl_araddr(26) => '0',
      s_axi_ctrl_araddr(25) => '0',
      s_axi_ctrl_araddr(24) => '0',
      s_axi_ctrl_araddr(23) => '0',
      s_axi_ctrl_araddr(22) => '0',
      s_axi_ctrl_araddr(21) => '0',
      s_axi_ctrl_araddr(20) => '0',
      s_axi_ctrl_araddr(19) => '0',
      s_axi_ctrl_araddr(18) => '0',
      s_axi_ctrl_araddr(17) => '0',
      s_axi_ctrl_araddr(16) => '0',
      s_axi_ctrl_araddr(15) => '0',
      s_axi_ctrl_araddr(14) => '0',
      s_axi_ctrl_araddr(13) => '0',
      s_axi_ctrl_araddr(12) => '0',
      s_axi_ctrl_araddr(11) => '0',
      s_axi_ctrl_araddr(10) => '0',
      s_axi_ctrl_araddr(9) => '0',
      s_axi_ctrl_araddr(8) => '0',
      s_axi_ctrl_araddr(7) => '0',
      s_axi_ctrl_araddr(6) => '0',
      s_axi_ctrl_araddr(5) => '0',
      s_axi_ctrl_araddr(4) => '0',
      s_axi_ctrl_araddr(3) => '0',
      s_axi_ctrl_araddr(2) => '0',
      s_axi_ctrl_araddr(1) => '0',
      s_axi_ctrl_araddr(0) => '0',
      s_axi_ctrl_arready => NLW_U0_s_axi_ctrl_arready_UNCONNECTED,
      s_axi_ctrl_arvalid => '0',
      s_axi_ctrl_awaddr(31) => '0',
      s_axi_ctrl_awaddr(30) => '0',
      s_axi_ctrl_awaddr(29) => '0',
      s_axi_ctrl_awaddr(28) => '0',
      s_axi_ctrl_awaddr(27) => '0',
      s_axi_ctrl_awaddr(26) => '0',
      s_axi_ctrl_awaddr(25) => '0',
      s_axi_ctrl_awaddr(24) => '0',
      s_axi_ctrl_awaddr(23) => '0',
      s_axi_ctrl_awaddr(22) => '0',
      s_axi_ctrl_awaddr(21) => '0',
      s_axi_ctrl_awaddr(20) => '0',
      s_axi_ctrl_awaddr(19) => '0',
      s_axi_ctrl_awaddr(18) => '0',
      s_axi_ctrl_awaddr(17) => '0',
      s_axi_ctrl_awaddr(16) => '0',
      s_axi_ctrl_awaddr(15) => '0',
      s_axi_ctrl_awaddr(14) => '0',
      s_axi_ctrl_awaddr(13) => '0',
      s_axi_ctrl_awaddr(12) => '0',
      s_axi_ctrl_awaddr(11) => '0',
      s_axi_ctrl_awaddr(10) => '0',
      s_axi_ctrl_awaddr(9) => '0',
      s_axi_ctrl_awaddr(8) => '0',
      s_axi_ctrl_awaddr(7) => '0',
      s_axi_ctrl_awaddr(6) => '0',
      s_axi_ctrl_awaddr(5) => '0',
      s_axi_ctrl_awaddr(4) => '0',
      s_axi_ctrl_awaddr(3) => '0',
      s_axi_ctrl_awaddr(2) => '0',
      s_axi_ctrl_awaddr(1) => '0',
      s_axi_ctrl_awaddr(0) => '0',
      s_axi_ctrl_awready => NLW_U0_s_axi_ctrl_awready_UNCONNECTED,
      s_axi_ctrl_awvalid => '0',
      s_axi_ctrl_bready => '0',
      s_axi_ctrl_bresp(1 downto 0) => NLW_U0_s_axi_ctrl_bresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_bvalid => NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED,
      s_axi_ctrl_rdata(31 downto 0) => NLW_U0_s_axi_ctrl_rdata_UNCONNECTED(31 downto 0),
      s_axi_ctrl_rready => '0',
      s_axi_ctrl_rresp(1 downto 0) => NLW_U0_s_axi_ctrl_rresp_UNCONNECTED(1 downto 0),
      s_axi_ctrl_rvalid => NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED,
      s_axi_ctrl_wdata(31) => '0',
      s_axi_ctrl_wdata(30) => '0',
      s_axi_ctrl_wdata(29) => '0',
      s_axi_ctrl_wdata(28) => '0',
      s_axi_ctrl_wdata(27) => '0',
      s_axi_ctrl_wdata(26) => '0',
      s_axi_ctrl_wdata(25) => '0',
      s_axi_ctrl_wdata(24) => '0',
      s_axi_ctrl_wdata(23) => '0',
      s_axi_ctrl_wdata(22) => '0',
      s_axi_ctrl_wdata(21) => '0',
      s_axi_ctrl_wdata(20) => '0',
      s_axi_ctrl_wdata(19) => '0',
      s_axi_ctrl_wdata(18) => '0',
      s_axi_ctrl_wdata(17) => '0',
      s_axi_ctrl_wdata(16) => '0',
      s_axi_ctrl_wdata(15) => '0',
      s_axi_ctrl_wdata(14) => '0',
      s_axi_ctrl_wdata(13) => '0',
      s_axi_ctrl_wdata(12) => '0',
      s_axi_ctrl_wdata(11) => '0',
      s_axi_ctrl_wdata(10) => '0',
      s_axi_ctrl_wdata(9) => '0',
      s_axi_ctrl_wdata(8) => '0',
      s_axi_ctrl_wdata(7) => '0',
      s_axi_ctrl_wdata(6) => '0',
      s_axi_ctrl_wdata(5) => '0',
      s_axi_ctrl_wdata(4) => '0',
      s_axi_ctrl_wdata(3) => '0',
      s_axi_ctrl_wdata(2) => '0',
      s_axi_ctrl_wdata(1) => '0',
      s_axi_ctrl_wdata(0) => '0',
      s_axi_ctrl_wready => NLW_U0_s_axi_ctrl_wready_UNCONNECTED,
      s_axi_ctrl_wvalid => '0',
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
