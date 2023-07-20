-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun Jul 16 23:01:59 2023
-- Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_rfbdes_0_0_1/bajie7020_rfbdes_0_0_sim_netlist.vhdl
-- Design      : bajie7020_rfbdes_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_rfbdes_0_0_rfbdes is
  port (
    isd_q0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_bitslip : out STD_LOGIC;
    RFB_DCLK_i : out STD_LOGIC;
    RFB_AXIS_CLK : out STD_LOGIC;
    RFB_AXIS_DATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    isd_q4 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q5 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    RFB_AXIS_VALID : out STD_LOGIC;
    RFB_AXIS_USER : out STD_LOGIC_VECTOR ( 0 to 0 );
    \bitslipcount_reg[0]_0\ : out STD_LOGIC;
    \bitslipcount_reg[1]_0\ : out STD_LOGIC;
    idelay_refclk : in STD_LOGIC;
    RFB_DCLK_q : in STD_LOGIC;
    reset : in STD_LOGIC;
    RFB_DCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_IN_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_IN_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_IN_dv : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bajie7020_rfbdes_0_0_rfbdes : entity is "rfbdes";
end bajie7020_rfbdes_0_0_rfbdes;

architecture STRUCTURE of bajie7020_rfbdes_0_0_rfbdes is
  signal \^rfb_axis_clk\ : STD_LOGIC;
  signal \RFB_AXIS_USER[0]_i_1_n_0\ : STD_LOGIC;
  signal \^rfb_axis_valid\ : STD_LOGIC;
  signal RFB_AXIS_VALID_i_1_n_0 : STD_LOGIC;
  signal RFB_AXIS_VALID_i_2_n_0 : STD_LOGIC;
  signal \^rfb_dclk_i\ : STD_LOGIC;
  signal \bitslipcount[0]_i_1_n_0\ : STD_LOGIC;
  signal \bitslipcount[1]_i_1_n_0\ : STD_LOGIC;
  signal \^bitslipcount_reg[0]_0\ : STD_LOGIC;
  signal \^bitslipcount_reg[1]_0\ : STD_LOGIC;
  signal din_d_0 : STD_LOGIC;
  signal din_d_1 : STD_LOGIC;
  signal din_d_2 : STD_LOGIC;
  signal din_d_3 : STD_LOGIC;
  signal din_d_4 : STD_LOGIC;
  signal din_d_5 : STD_LOGIC;
  signal din_i_0 : STD_LOGIC;
  signal din_i_1 : STD_LOGIC;
  signal din_i_2 : STD_LOGIC;
  signal din_i_3 : STD_LOGIC;
  signal din_i_4 : STD_LOGIC;
  signal din_i_5 : STD_LOGIC;
  signal dv_p : STD_LOGIC;
  signal idelayctrl_ready : STD_LOGIC;
  signal \^isd_bitslip\ : STD_LOGIC;
  signal isd_bitslip_i_1_n_0 : STD_LOGIC;
  signal isd_bitslip_i_2_n_0 : STD_LOGIC;
  signal \^isd_q0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^isd_q4\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^isd_q5\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \NLW_isds[0].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[0].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[0].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[0].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[1].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[1].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[1].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[1].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[2].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[2].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[2].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[2].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[3].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[3].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[3].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[3].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[4].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[4].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[4].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[4].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[4].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[4].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[5].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_isds[5].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[5].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[5].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[5].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_isds[5].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYCTRL_inst : label is "RFB_idelay";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of \RFB_AXIS_USER_reg[0]\ : label is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_INFO of RFB_AXIS_VALID_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bitslipcount[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bitslipcount[1]_i_1\ : label is "soft_lutpair0";
  attribute BOX_TYPE of bufr_inst_clkdiv : label is "PRIMITIVE";
  attribute BOX_TYPE of ibuf_inst_dv : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibuf_inst_dv : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibuf_inst_dv : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibuf_inst_dv : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_d0 : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_d0 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_d0 : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_d0 : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_d1 : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_d1 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_d1 : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_d1 : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_d2 : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_d2 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_d2 : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_d2 : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_d3 : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_d3 : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_d3 : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_d3 : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_dclk : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_dclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_dclk : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_dclk : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_fclk : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_fclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_fclk : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_fclk : label is "AUTO";
  attribute BOX_TYPE of \isds[0].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[0].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of \isds[0].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[0].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \isds[0].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \isds[1].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[1].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \isds[1].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[1].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \isds[1].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \isds[2].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[2].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \isds[2].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[2].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \isds[2].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \isds[3].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[3].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \isds[3].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[3].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \isds[3].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \isds[4].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[4].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \isds[4].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[4].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \isds[4].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \isds[5].idelaye2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \isds[5].idelaye2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \isds[5].idelaye2_inst\ : label is 0;
  attribute BOX_TYPE of \isds[5].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \isds[5].iserdese2_master\ : label is "MLO";
begin
  RFB_AXIS_CLK <= \^rfb_axis_clk\;
  RFB_AXIS_VALID <= \^rfb_axis_valid\;
  RFB_DCLK_i <= \^rfb_dclk_i\;
  \bitslipcount_reg[0]_0\ <= \^bitslipcount_reg[0]_0\;
  \bitslipcount_reg[1]_0\ <= \^bitslipcount_reg[1]_0\;
  isd_bitslip <= \^isd_bitslip\;
  isd_q0(5 downto 0) <= \^isd_q0\(5 downto 0);
  isd_q4(5 downto 0) <= \^isd_q4\(5 downto 0);
  isd_q5(5 downto 0) <= \^isd_q5\(5 downto 0);
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => idelayctrl_ready,
      REFCLK => idelay_refclk,
      RST => reset
    );
\RFB_AXIS_DATA[12]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(5),
      O => RFB_AXIS_DATA(12)
    );
\RFB_AXIS_DATA[14]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(4),
      O => RFB_AXIS_DATA(14)
    );
\RFB_AXIS_DATA[16]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(3),
      O => RFB_AXIS_DATA(16)
    );
\RFB_AXIS_DATA[18]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(2),
      O => RFB_AXIS_DATA(18)
    );
\RFB_AXIS_DATA[20]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(1),
      O => RFB_AXIS_DATA(20)
    );
\RFB_AXIS_DATA[22]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^isd_q0\(0),
      O => RFB_AXIS_DATA(22)
    );
\RFB_AXIS_USER[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^isd_q5\(3),
      I1 => dv_p,
      I2 => idelayctrl_ready,
      I3 => reset,
      O => \RFB_AXIS_USER[0]_i_1_n_0\
    );
\RFB_AXIS_USER_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => \RFB_AXIS_USER[0]_i_1_n_0\,
      Q => RFB_AXIS_USER(0),
      R => '0'
    );
RFB_AXIS_VALID_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000ABA80000"
    )
        port map (
      I0 => \^rfb_axis_valid\,
      I1 => \^bitslipcount_reg[0]_0\,
      I2 => \^bitslipcount_reg[1]_0\,
      I3 => RFB_AXIS_VALID_i_2_n_0,
      I4 => idelayctrl_ready,
      I5 => reset,
      O => RFB_AXIS_VALID_i_1_n_0
    );
RFB_AXIS_VALID_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => \^isd_q4\(5),
      I1 => \^isd_q4\(1),
      I2 => \^isd_q4\(2),
      I3 => \^isd_q4\(0),
      I4 => \^isd_q4\(4),
      I5 => \^isd_q4\(3),
      O => RFB_AXIS_VALID_i_2_n_0
    );
RFB_AXIS_VALID_reg: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => RFB_AXIS_VALID_i_1_n_0,
      Q => \^rfb_axis_valid\,
      R => '0'
    );
\bitslipcount[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005400"
    )
        port map (
      I0 => \^bitslipcount_reg[0]_0\,
      I1 => isd_bitslip_i_2_n_0,
      I2 => \^bitslipcount_reg[1]_0\,
      I3 => idelayctrl_ready,
      I4 => reset,
      O => \bitslipcount[0]_i_1_n_0\
    );
\bitslipcount[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \^bitslipcount_reg[0]_0\,
      I1 => \^bitslipcount_reg[1]_0\,
      I2 => idelayctrl_ready,
      I3 => reset,
      O => \bitslipcount[1]_i_1_n_0\
    );
\bitslipcount_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => \bitslipcount[0]_i_1_n_0\,
      Q => \^bitslipcount_reg[0]_0\,
      R => '0'
    );
\bitslipcount_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => \bitslipcount[1]_i_1_n_0\,
      Q => \^bitslipcount_reg[1]_0\,
      R => '0'
    );
bufr_inst_clkdiv: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "3",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '1',
      CLR => '0',
      I => \^rfb_dclk_i\,
      O => \^rfb_axis_clk\
    );
dv_p_reg: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => \^isd_q5\(3),
      Q => dv_p,
      R => '0'
    );
ibuf_inst_dv: unisim.vcomponents.IBUF
     port map (
      I => RFB_IN_dv,
      O => din_i_5
    );
ibufds_inst_d0: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_IN_p(0),
      IB => RFB_IN_n(0),
      O => din_i_0
    );
ibufds_inst_d1: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_IN_p(1),
      IB => RFB_IN_n(1),
      O => din_i_1
    );
ibufds_inst_d2: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_IN_p(2),
      IB => RFB_IN_n(2),
      O => din_i_2
    );
ibufds_inst_d3: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_IN_p(3),
      IB => RFB_IN_n(3),
      O => din_i_3
    );
ibufds_inst_dclk: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_DCLK_clk_p(0),
      IB => RFB_DCLK_clk_n(0),
      O => \^rfb_dclk_i\
    );
ibufds_inst_fclk: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_FCLK_clk_p(0),
      IB => RFB_FCLK_clk_n(0),
      O => din_i_4
    );
isd_bitslip_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008B8800000000"
    )
        port map (
      I0 => \^isd_bitslip\,
      I1 => \^bitslipcount_reg[1]_0\,
      I2 => \^bitslipcount_reg[0]_0\,
      I3 => isd_bitslip_i_2_n_0,
      I4 => reset,
      I5 => idelayctrl_ready,
      O => isd_bitslip_i_1_n_0
    );
isd_bitslip_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \^isd_q4\(5),
      I1 => \^isd_q4\(1),
      I2 => \^isd_q4\(0),
      I3 => \^isd_q4\(2),
      I4 => \^isd_q4\(4),
      I5 => \^isd_q4\(3),
      O => isd_bitslip_i_2_n_0
    );
isd_bitslip_reg: unisim.vcomponents.FDRE
     port map (
      C => \^rfb_axis_clk\,
      CE => '1',
      D => isd_bitslip_i_1_n_0,
      Q => \^isd_bitslip\,
      R => '0'
    );
\isds[0].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[0].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_0,
      IDATAIN => din_i_0,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[0].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_0,
      DDLY => din_d_0,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[0].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \^isd_q0\(0),
      Q2 => \^isd_q0\(1),
      Q3 => \^isd_q0\(2),
      Q4 => \^isd_q0\(3),
      Q5 => \^isd_q0\(4),
      Q6 => \^isd_q0\(5),
      Q7 => \NLW_isds[0].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[0].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\isds[1].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[1].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_1,
      IDATAIN => din_i_1,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[1].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_1,
      DDLY => din_d_1,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[1].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(23),
      Q2 => RFB_AXIS_DATA(21),
      Q3 => RFB_AXIS_DATA(19),
      Q4 => RFB_AXIS_DATA(17),
      Q5 => RFB_AXIS_DATA(15),
      Q6 => RFB_AXIS_DATA(13),
      Q7 => \NLW_isds[1].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[1].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\isds[2].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[2].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_2,
      IDATAIN => din_i_2,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[2].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_2,
      DDLY => din_d_2,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[2].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(10),
      Q2 => RFB_AXIS_DATA(8),
      Q3 => RFB_AXIS_DATA(6),
      Q4 => RFB_AXIS_DATA(4),
      Q5 => RFB_AXIS_DATA(2),
      Q6 => RFB_AXIS_DATA(0),
      Q7 => \NLW_isds[2].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[2].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\isds[3].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[3].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_3,
      IDATAIN => din_i_3,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[3].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_3,
      DDLY => din_d_3,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[3].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(11),
      Q2 => RFB_AXIS_DATA(9),
      Q3 => RFB_AXIS_DATA(7),
      Q4 => RFB_AXIS_DATA(5),
      Q5 => RFB_AXIS_DATA(3),
      Q6 => RFB_AXIS_DATA(1),
      Q7 => \NLW_isds[3].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[3].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\isds[4].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[4].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_4,
      IDATAIN => din_i_4,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[4].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_4,
      DDLY => din_d_4,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[4].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \^isd_q4\(0),
      Q2 => \^isd_q4\(1),
      Q3 => \^isd_q4\(2),
      Q4 => \^isd_q4\(3),
      Q5 => \^isd_q4\(4),
      Q6 => \^isd_q4\(5),
      Q7 => \NLW_isds[4].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[4].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[4].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[4].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\isds[5].idelaye2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 12,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => \NLW_isds[5].idelaye2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => din_d_5,
      IDATAIN => din_i_5,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\isds[5].iserdese2_master\: unisim.vcomponents.ISERDESE2
    generic map(
      DATA_RATE => "DDR",
      DATA_WIDTH => 6,
      DYN_CLKDIV_INV_EN => "FALSE",
      DYN_CLK_INV_EN => "FALSE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      INIT_Q3 => '0',
      INIT_Q4 => '0',
      INTERFACE_TYPE => "NETWORKING",
      IOBDELAY => "BOTH",
      IS_CLKB_INVERTED => '1',
      IS_CLKDIVP_INVERTED => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_OCLKB_INVERTED => '0',
      IS_OCLK_INVERTED => '0',
      NUM_CE => 2,
      OFB_USED => "FALSE",
      SERDES_MODE => "MASTER",
      SRVAL_Q1 => '0',
      SRVAL_Q2 => '0',
      SRVAL_Q3 => '0',
      SRVAL_Q4 => '0'
    )
        port map (
      BITSLIP => \^isd_bitslip\,
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => RFB_DCLK_q,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => din_i_5,
      DDLY => din_d_5,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_isds[5].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => \^isd_q5\(0),
      Q2 => \^isd_q5\(1),
      Q3 => \^isd_q5\(2),
      Q4 => \^isd_q5\(3),
      Q5 => \^isd_q5\(4),
      Q6 => \^isd_q5\(5),
      Q7 => \NLW_isds[5].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_isds[5].iserdese2_master_Q8_UNCONNECTED\,
      RST => reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_isds[5].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_isds[5].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_rfbdes_0_0 is
  port (
    RFB_IN_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_IN_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_IN_dv : in STD_LOGIC;
    RFB_AXIS_DATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RFB_AXIS_VALID : out STD_LOGIC;
    RFB_DCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_AXIS_CLK : out STD_LOGIC;
    RFB_AXIS_USER : out STD_LOGIC_VECTOR ( 0 to 0 );
    idelay_refclk : in STD_LOGIC;
    reset : in STD_LOGIC;
    isd_q0 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q1 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q2 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q3 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q4 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_q5 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    isd_bitslip : out STD_LOGIC;
    bitslipcount : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bajie7020_rfbdes_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bajie7020_rfbdes_0_0 : entity is "bajie7020_rfbdes_0_0,rfbdes,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bajie7020_rfbdes_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bajie7020_rfbdes_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bajie7020_rfbdes_0_0 : entity is "rfbdes,Vivado 2022.1";
end bajie7020_rfbdes_0_0;

architecture STRUCTURE of bajie7020_rfbdes_0_0 is
  signal \^rfb_axis_data\ : STD_LOGIC_VECTOR ( 22 downto 12 );
  signal RFB_DCLK_i : STD_LOGIC;
  signal \^isd_q1\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^isd_q2\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^isd_q3\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RFB_AXIS_CLK : signal is "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RFB_AXIS_CLK : signal is "XIL_INTERFACENAME RFB_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_AXIS_VALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of idelay_refclk : signal is "xilinx.com:signal:clock:1.0 idelay_refclk CLK";
  attribute X_INTERFACE_PARAMETER of idelay_refclk : signal is "XIL_INTERFACENAME idelay_refclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_AXIS_DATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of RFB_AXIS_USER : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of RFB_AXIS_USER : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 48000000, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_DCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of RFB_DCLK_clk_n : signal is "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000";
  attribute X_INTERFACE_INFO of RFB_DCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P";
  attribute X_INTERFACE_PARAMETER of RFB_DCLK_clk_p : signal is "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000";
  attribute X_INTERFACE_INFO of RFB_FCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of RFB_FCLK_clk_n : signal is "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000";
  attribute X_INTERFACE_INFO of RFB_FCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P";
  attribute X_INTERFACE_PARAMETER of RFB_FCLK_clk_p : signal is "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000";
begin
  RFB_AXIS_DATA(23) <= \^isd_q1\(0);
  RFB_AXIS_DATA(22) <= \^rfb_axis_data\(22);
  RFB_AXIS_DATA(21) <= \^isd_q1\(1);
  RFB_AXIS_DATA(20) <= \^rfb_axis_data\(20);
  RFB_AXIS_DATA(19) <= \^isd_q1\(2);
  RFB_AXIS_DATA(18) <= \^rfb_axis_data\(18);
  RFB_AXIS_DATA(17) <= \^isd_q1\(3);
  RFB_AXIS_DATA(16) <= \^rfb_axis_data\(16);
  RFB_AXIS_DATA(15) <= \^isd_q1\(4);
  RFB_AXIS_DATA(14) <= \^rfb_axis_data\(14);
  RFB_AXIS_DATA(13) <= \^isd_q1\(5);
  RFB_AXIS_DATA(12) <= \^rfb_axis_data\(12);
  RFB_AXIS_DATA(11) <= \^isd_q3\(0);
  RFB_AXIS_DATA(10) <= \^isd_q2\(0);
  RFB_AXIS_DATA(9) <= \^isd_q3\(1);
  RFB_AXIS_DATA(8) <= \^isd_q2\(1);
  RFB_AXIS_DATA(7) <= \^isd_q3\(2);
  RFB_AXIS_DATA(6) <= \^isd_q2\(2);
  RFB_AXIS_DATA(5) <= \^isd_q3\(3);
  RFB_AXIS_DATA(4) <= \^isd_q2\(3);
  RFB_AXIS_DATA(3) <= \^isd_q3\(4);
  RFB_AXIS_DATA(2) <= \^isd_q2\(4);
  RFB_AXIS_DATA(1) <= \^isd_q3\(5);
  RFB_AXIS_DATA(0) <= \^isd_q2\(5);
  isd_q1(5 downto 0) <= \^isd_q1\(5 downto 0);
  isd_q2(5 downto 0) <= \^isd_q2\(5 downto 0);
  isd_q3(5 downto 0) <= \^isd_q3\(5 downto 0);
inst: entity work.bajie7020_rfbdes_0_0_rfbdes
     port map (
      RFB_AXIS_CLK => RFB_AXIS_CLK,
      RFB_AXIS_DATA(23) => \^isd_q1\(0),
      RFB_AXIS_DATA(22) => \^rfb_axis_data\(22),
      RFB_AXIS_DATA(21) => \^isd_q1\(1),
      RFB_AXIS_DATA(20) => \^rfb_axis_data\(20),
      RFB_AXIS_DATA(19) => \^isd_q1\(2),
      RFB_AXIS_DATA(18) => \^rfb_axis_data\(18),
      RFB_AXIS_DATA(17) => \^isd_q1\(3),
      RFB_AXIS_DATA(16) => \^rfb_axis_data\(16),
      RFB_AXIS_DATA(15) => \^isd_q1\(4),
      RFB_AXIS_DATA(14) => \^rfb_axis_data\(14),
      RFB_AXIS_DATA(13) => \^isd_q1\(5),
      RFB_AXIS_DATA(12) => \^rfb_axis_data\(12),
      RFB_AXIS_DATA(11) => \^isd_q3\(0),
      RFB_AXIS_DATA(10) => \^isd_q2\(0),
      RFB_AXIS_DATA(9) => \^isd_q3\(1),
      RFB_AXIS_DATA(8) => \^isd_q2\(1),
      RFB_AXIS_DATA(7) => \^isd_q3\(2),
      RFB_AXIS_DATA(6) => \^isd_q2\(2),
      RFB_AXIS_DATA(5) => \^isd_q3\(3),
      RFB_AXIS_DATA(4) => \^isd_q2\(3),
      RFB_AXIS_DATA(3) => \^isd_q3\(4),
      RFB_AXIS_DATA(2) => \^isd_q2\(4),
      RFB_AXIS_DATA(1) => \^isd_q3\(5),
      RFB_AXIS_DATA(0) => \^isd_q2\(5),
      RFB_AXIS_USER(0) => RFB_AXIS_USER(0),
      RFB_AXIS_VALID => RFB_AXIS_VALID,
      RFB_DCLK_clk_n(0) => RFB_DCLK_clk_n(0),
      RFB_DCLK_clk_p(0) => RFB_DCLK_clk_p(0),
      RFB_DCLK_i => RFB_DCLK_i,
      RFB_DCLK_q => RFB_DCLK_i,
      RFB_FCLK_clk_n(0) => RFB_FCLK_clk_n(0),
      RFB_FCLK_clk_p(0) => RFB_FCLK_clk_p(0),
      RFB_IN_dv => RFB_IN_dv,
      RFB_IN_n(3 downto 0) => RFB_IN_n(3 downto 0),
      RFB_IN_p(3 downto 0) => RFB_IN_p(3 downto 0),
      \bitslipcount_reg[0]_0\ => bitslipcount(0),
      \bitslipcount_reg[1]_0\ => bitslipcount(1),
      idelay_refclk => idelay_refclk,
      isd_bitslip => isd_bitslip,
      isd_q0(5 downto 0) => isd_q0(5 downto 0),
      isd_q4(5 downto 0) => isd_q4(5 downto 0),
      isd_q5(5 downto 0) => isd_q5(5 downto 0),
      reset => reset
    );
end STRUCTURE;
