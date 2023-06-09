-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Jun  7 09:15:31 2023
-- Host        : Penta0308-E402N running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_rfbdes_0_0/bajie7020_rfbdes_0_0_sim_netlist.vhdl
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
    RFB_AXIS_DATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RFB_DCLK_i : out STD_LOGIC;
    RFB_AXIS_CLK : out STD_LOGIC;
    RFB_AXIS_VALID : out STD_LOGIC;
    RFB_AXIS_USER : out STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DATA_P : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_DATA_N : in STD_LOGIC_VECTOR ( 3 downto 0 );
    idelay_refclk : in STD_LOGIC;
    \pins[0].RFB_DCLK_inv\ : in STD_LOGIC;
    des_reset : in STD_LOGIC;
    iod_reset : in STD_LOGIC;
    RFB_DCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DATAVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bajie7020_rfbdes_0_0_rfbdes : entity is "rfbdes";
end bajie7020_rfbdes_0_0_rfbdes;

architecture STRUCTURE of bajie7020_rfbdes_0_0_rfbdes is
  signal \^rfb_axis_clk\ : STD_LOGIC;
  signal \^rfb_dclk_i\ : STD_LOGIC;
  signal RFB_FCLK_d : STD_LOGIC;
  signal RFB_FCLK_i : STD_LOGIC;
  signal data_in_from_pins_delay_0 : STD_LOGIC;
  signal data_in_from_pins_delay_1 : STD_LOGIC;
  signal data_in_from_pins_delay_2 : STD_LOGIC;
  signal data_in_from_pins_delay_3 : STD_LOGIC;
  signal data_in_from_pins_int_0 : STD_LOGIC;
  signal data_in_from_pins_int_1 : STD_LOGIC;
  signal data_in_from_pins_int_2 : STD_LOGIC;
  signal data_in_from_pins_int_3 : STD_LOGIC;
  signal NLW_idelaye2_inst_dv_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_idelaye2_inst_fclk_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[0].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[0].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[1].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[2].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \NLW_pins[3].iserdese2_master_O_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYCTRL_inst : label is "RFB_idelay";
  attribute BOX_TYPE of bufr_inst_clkdiv : label is "PRIMITIVE";
  attribute BOX_TYPE of ibufds_inst_dclk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of ibufds_inst_dclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of ibufds_inst_dclk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of ibufds_inst_dclk : label is "AUTO";
  attribute BOX_TYPE of ibufds_inst_fclk : label is "PRIMITIVE";
  attribute CAPACITANCE of ibufds_inst_fclk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of ibufds_inst_fclk : label is "0";
  attribute IFD_DELAY_VALUE of ibufds_inst_fclk : label is "AUTO";
  attribute BOX_TYPE of idelaye2_inst_dv : label is "PRIMITIVE";
  attribute IODELAY_GROUP of idelaye2_inst_dv : label is "RFB_idelay";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of idelaye2_inst_dv : label is 0;
  attribute BOX_TYPE of idelaye2_inst_fclk : label is "PRIMITIVE";
  attribute IODELAY_GROUP of idelaye2_inst_fclk : label is "RFB_idelay";
  attribute SIM_DELAY_D of idelaye2_inst_fclk : label is 0;
  attribute BOX_TYPE of \pins[0].IDELAYE2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[0].IDELAYE2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \pins[0].IDELAYE2_inst\ : label is 0;
  attribute BOX_TYPE of \pins[0].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[0].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[0].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[0].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \pins[0].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[1].IDELAYE2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[1].IDELAYE2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \pins[1].IDELAYE2_inst\ : label is 0;
  attribute BOX_TYPE of \pins[1].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[1].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[1].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[1].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[1].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[2].IDELAYE2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[2].IDELAYE2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \pins[2].IDELAYE2_inst\ : label is 0;
  attribute BOX_TYPE of \pins[2].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[2].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[2].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[2].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[2].iserdese2_master\ : label is "MLO";
  attribute BOX_TYPE of \pins[3].IDELAYE2_inst\ : label is "PRIMITIVE";
  attribute IODELAY_GROUP of \pins[3].IDELAYE2_inst\ : label is "RFB_idelay";
  attribute SIM_DELAY_D of \pins[3].IDELAYE2_inst\ : label is 0;
  attribute BOX_TYPE of \pins[3].ibufds_inst\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \pins[3].ibufds_inst\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "0";
  attribute IFD_DELAY_VALUE of \pins[3].ibufds_inst\ : label is "AUTO";
  attribute BOX_TYPE of \pins[3].iserdese2_master\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \pins[3].iserdese2_master\ : label is "MLO";
begin
  RFB_AXIS_CLK <= \^rfb_axis_clk\;
  RFB_DCLK_i <= \^rfb_dclk_i\;
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => RFB_AXIS_VALID,
      REFCLK => idelay_refclk,
      RST => iod_reset
    );
bufr_inst_clkdiv: unisim.vcomponents.BUFR
    generic map(
      BUFR_DIVIDE => "BYPASS",
      SIM_DEVICE => "7SERIES"
    )
        port map (
      CE => '0',
      CLR => '1',
      I => RFB_FCLK_d,
      O => \^rfb_axis_clk\
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
      O => RFB_FCLK_i
    );
idelaye2_inst_dv: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 28,
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
      CNTVALUEOUT(4 downto 0) => NLW_idelaye2_inst_dv_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => RFB_AXIS_USER(0),
      IDATAIN => RFB_DATAVALID,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
idelaye2_inst_fclk: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 22,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "CLOCK"
    )
        port map (
      C => idelay_refclk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => B"00000",
      CNTVALUEOUT(4 downto 0) => NLW_idelaye2_inst_fclk_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => RFB_FCLK_d,
      IDATAIN => RFB_FCLK_i,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[0].IDELAYE2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 8,
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
      CNTVALUEOUT(4 downto 0) => \NLW_pins[0].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_0,
      IDATAIN => data_in_from_pins_int_0,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[0].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_DATA_P(0),
      IB => RFB_DATA_N(0),
      O => data_in_from_pins_int_0
    );
\pins[0].iserdese2_master\: unisim.vcomponents.ISERDESE2
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
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => \pins[0].RFB_DCLK_inv\,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => data_in_from_pins_int_0,
      DDLY => data_in_from_pins_delay_0,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[0].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(20),
      Q2 => RFB_AXIS_DATA(16),
      Q3 => RFB_AXIS_DATA(12),
      Q4 => RFB_AXIS_DATA(8),
      Q5 => RFB_AXIS_DATA(4),
      Q6 => RFB_AXIS_DATA(0),
      Q7 => \NLW_pins[0].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[0].iserdese2_master_Q8_UNCONNECTED\,
      RST => des_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[0].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[0].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[1].IDELAYE2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 8,
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
      CNTVALUEOUT(4 downto 0) => \NLW_pins[1].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_1,
      IDATAIN => data_in_from_pins_int_1,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[1].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_DATA_P(1),
      IB => RFB_DATA_N(1),
      O => data_in_from_pins_int_1
    );
\pins[1].iserdese2_master\: unisim.vcomponents.ISERDESE2
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
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => \pins[0].RFB_DCLK_inv\,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => data_in_from_pins_int_1,
      DDLY => data_in_from_pins_delay_1,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[1].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(21),
      Q2 => RFB_AXIS_DATA(17),
      Q3 => RFB_AXIS_DATA(13),
      Q4 => RFB_AXIS_DATA(9),
      Q5 => RFB_AXIS_DATA(5),
      Q6 => RFB_AXIS_DATA(1),
      Q7 => \NLW_pins[1].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[1].iserdese2_master_Q8_UNCONNECTED\,
      RST => des_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[1].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[1].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[2].IDELAYE2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 8,
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
      CNTVALUEOUT(4 downto 0) => \NLW_pins[2].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_2,
      IDATAIN => data_in_from_pins_int_2,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[2].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_DATA_P(2),
      IB => RFB_DATA_N(2),
      O => data_in_from_pins_int_2
    );
\pins[2].iserdese2_master\: unisim.vcomponents.ISERDESE2
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
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => \pins[0].RFB_DCLK_inv\,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => data_in_from_pins_int_2,
      DDLY => data_in_from_pins_delay_2,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[2].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(22),
      Q2 => RFB_AXIS_DATA(18),
      Q3 => RFB_AXIS_DATA(14),
      Q4 => RFB_AXIS_DATA(10),
      Q5 => RFB_AXIS_DATA(6),
      Q6 => RFB_AXIS_DATA(2),
      Q7 => \NLW_pins[2].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[2].iserdese2_master_Q8_UNCONNECTED\,
      RST => des_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[2].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[2].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
\pins[3].IDELAYE2_inst\: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "FALSE",
      IDELAY_TYPE => "FIXED",
      IDELAY_VALUE => 8,
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
      CNTVALUEOUT(4 downto 0) => \NLW_pins[3].IDELAYE2_inst_CNTVALUEOUT_UNCONNECTED\(4 downto 0),
      DATAIN => '0',
      DATAOUT => data_in_from_pins_delay_3,
      IDATAIN => data_in_from_pins_int_3,
      INC => '0',
      LD => '0',
      LDPIPEEN => '0',
      REGRST => '0'
    );
\pins[3].ibufds_inst\: unisim.vcomponents.IBUFDS
     port map (
      I => RFB_DATA_P(3),
      IB => RFB_DATA_N(3),
      O => data_in_from_pins_int_3
    );
\pins[3].iserdese2_master\: unisim.vcomponents.ISERDESE2
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
      BITSLIP => '0',
      CE1 => '1',
      CE2 => '1',
      CLK => \^rfb_dclk_i\,
      CLKB => \pins[0].RFB_DCLK_inv\,
      CLKDIV => \^rfb_axis_clk\,
      CLKDIVP => '0',
      D => data_in_from_pins_int_3,
      DDLY => data_in_from_pins_delay_3,
      DYNCLKDIVSEL => '0',
      DYNCLKSEL => '0',
      O => \NLW_pins[3].iserdese2_master_O_UNCONNECTED\,
      OCLK => '0',
      OCLKB => '0',
      OFB => '0',
      Q1 => RFB_AXIS_DATA(23),
      Q2 => RFB_AXIS_DATA(19),
      Q3 => RFB_AXIS_DATA(15),
      Q4 => RFB_AXIS_DATA(11),
      Q5 => RFB_AXIS_DATA(7),
      Q6 => RFB_AXIS_DATA(3),
      Q7 => \NLW_pins[3].iserdese2_master_Q7_UNCONNECTED\,
      Q8 => \NLW_pins[3].iserdese2_master_Q8_UNCONNECTED\,
      RST => des_reset,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => \NLW_pins[3].iserdese2_master_SHIFTOUT1_UNCONNECTED\,
      SHIFTOUT2 => \NLW_pins[3].iserdese2_master_SHIFTOUT2_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_rfbdes_0_0 is
  port (
    RFB_DATA_P : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_DATA_N : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RFB_DATAVALID : in STD_LOGIC;
    RFB_AXIS_DATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    RFB_AXIS_VALID : out STD_LOGIC;
    RFB_DCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_DCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_FCLK_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    RFB_AXIS_CLK : out STD_LOGIC;
    RFB_AXIS_USER : out STD_LOGIC_VECTOR ( 0 to 0 );
    idelay_refclk : in STD_LOGIC;
    des_reset : in STD_LOGIC;
    iod_reset : in STD_LOGIC
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
  attribute X_CORE_INFO of bajie7020_rfbdes_0_0 : entity is "rfbdes,Vivado 2021.2";
end bajie7020_rfbdes_0_0;

architecture STRUCTURE of bajie7020_rfbdes_0_0 is
  signal RFB_DCLK_i : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of RFB_AXIS_CLK : signal is "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of RFB_AXIS_CLK : signal is "XIL_INTERFACENAME RFB_AXIS_CLK, ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET des_reset, FREQ_HZ 48000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_AXIS_VALID : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of des_reset : signal is "xilinx.com:signal:reset:1.0 des_reset RST";
  attribute X_INTERFACE_PARAMETER of des_reset : signal is "XIL_INTERFACENAME des_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of idelay_refclk : signal is "xilinx.com:signal:clock:1.0 idelay_refclk CLK";
  attribute X_INTERFACE_PARAMETER of idelay_refclk : signal is "XIL_INTERFACENAME idelay_refclk, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of iod_reset : signal is "xilinx.com:signal:reset:1.0 io_reset RST";
  attribute X_INTERFACE_PARAMETER of iod_reset : signal is "XIL_INTERFACENAME io_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_AXIS_DATA : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of RFB_AXIS_USER : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of RFB_AXIS_USER : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 48000000, PHASE 0.0, CLK_DOMAIN bajie7020_rfbdes_0_0_RFB_AXIS_CLK, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of RFB_DATA_N : signal is "digilentinc.com:interface:tmds:1.0 RFB DATA_N";
  attribute X_INTERFACE_INFO of RFB_DATA_P : signal is "digilentinc.com:interface:tmds:1.0 RFB DATA_P";
  attribute X_INTERFACE_INFO of RFB_DCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of RFB_DCLK_clk_n : signal is "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000";
  attribute X_INTERFACE_INFO of RFB_DCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P";
  attribute X_INTERFACE_PARAMETER of RFB_DCLK_clk_p : signal is "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000";
  attribute X_INTERFACE_INFO of RFB_FCLK_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N";
  attribute X_INTERFACE_PARAMETER of RFB_FCLK_clk_n : signal is "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000";
  attribute X_INTERFACE_INFO of RFB_FCLK_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P";
  attribute X_INTERFACE_PARAMETER of RFB_FCLK_clk_p : signal is "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000";
begin
inst: entity work.bajie7020_rfbdes_0_0_rfbdes
     port map (
      RFB_AXIS_CLK => RFB_AXIS_CLK,
      RFB_AXIS_DATA(23 downto 0) => RFB_AXIS_DATA(23 downto 0),
      RFB_AXIS_USER(0) => RFB_AXIS_USER(0),
      RFB_AXIS_VALID => RFB_AXIS_VALID,
      RFB_DATAVALID => RFB_DATAVALID,
      RFB_DATA_N(3 downto 0) => RFB_DATA_N(3 downto 0),
      RFB_DATA_P(3 downto 0) => RFB_DATA_P(3 downto 0),
      RFB_DCLK_clk_n(0) => RFB_DCLK_clk_n(0),
      RFB_DCLK_clk_p(0) => RFB_DCLK_clk_p(0),
      RFB_DCLK_i => RFB_DCLK_i,
      RFB_FCLK_clk_n(0) => RFB_FCLK_clk_n(0),
      RFB_FCLK_clk_p(0) => RFB_FCLK_clk_p(0),
      des_reset => des_reset,
      idelay_refclk => idelay_refclk,
      iod_reset => iod_reset,
      \pins[0].RFB_DCLK_inv\ => RFB_DCLK_i
    );
end STRUCTURE;
