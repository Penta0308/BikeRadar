-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sat Jun 24 21:02:26 2023
-- Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_firoutmixer_0_0_1/bajie7020_firoutmixer_0_0_sim_netlist.vhdl
-- Design      : bajie7020_firoutmixer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_firoutmixer_0_0_firoutmixer is
  port (
    \sample_n_reg[15]_0\ : out STD_LOGIC;
    \sample_n_reg[14]_0\ : out STD_LOGIC;
    \sample_n_reg[13]_0\ : out STD_LOGIC;
    \sample_n_reg[12]_0\ : out STD_LOGIC;
    \sample_n_reg[11]_0\ : out STD_LOGIC;
    \sample_n_reg[10]_0\ : out STD_LOGIC;
    \sample_n_reg[9]_0\ : out STD_LOGIC;
    \sample_n_reg[8]_0\ : out STD_LOGIC;
    \sample_n_reg[7]_0\ : out STD_LOGIC;
    \sample_n_reg[6]_0\ : out STD_LOGIC;
    \sample_n_reg[5]_0\ : out STD_LOGIC;
    \sample_n_reg[4]_0\ : out STD_LOGIC;
    \sample_n_reg[3]_0\ : out STD_LOGIC;
    \sample_n_reg[2]_0\ : out STD_LOGIC;
    \sample_n_reg[1]_0\ : out STD_LOGIC;
    \sample_n_reg[0]_0\ : out STD_LOGIC;
    \sample_ln_reg[3]_0\ : out STD_LOGIC;
    \sample_ln_reg[2]_0\ : out STD_LOGIC;
    \sample_ln_reg[1]_0\ : out STD_LOGIC;
    \sample_ln_reg[0]_0\ : out STD_LOGIC;
    sample_active_reg_0 : out STD_LOGIC;
    sample_valid_reg_0 : out STD_LOGIC;
    sample_last : out STD_LOGIC;
    sample_begin : out STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_valid : in STD_LOGIC;
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bajie7020_firoutmixer_0_0_firoutmixer : entity is "firoutmixer";
end bajie7020_firoutmixer_0_0_firoutmixer;

architecture STRUCTURE of bajie7020_firoutmixer_0_0_firoutmixer is
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sample_active_i_1_n_0 : STD_LOGIC;
  signal \^sample_active_reg_0\ : STD_LOGIC;
  signal sample_begin_i_1_n_0 : STD_LOGIC;
  signal sample_begin_i_2_n_0 : STD_LOGIC;
  signal sample_begin_i_3_n_0 : STD_LOGIC;
  signal sample_begin_i_4_n_0 : STD_LOGIC;
  signal sample_begin_i_5_n_0 : STD_LOGIC;
  signal sample_begin_i_6_n_0 : STD_LOGIC;
  signal sample_begin_i_7_n_0 : STD_LOGIC;
  signal sample_begin_i_8_n_0 : STD_LOGIC;
  signal sample_begin_i_9_n_0 : STD_LOGIC;
  signal sample_last_i_1_n_0 : STD_LOGIC;
  signal sample_last_i_2_n_0 : STD_LOGIC;
  signal sample_last_i_3_n_0 : STD_LOGIC;
  signal sample_last_i_4_n_0 : STD_LOGIC;
  signal sample_last_i_5_n_0 : STD_LOGIC;
  signal \sample_ln[3]_i_2_n_0\ : STD_LOGIC;
  signal \^sample_ln_reg[0]_0\ : STD_LOGIC;
  signal \^sample_ln_reg[1]_0\ : STD_LOGIC;
  signal \^sample_ln_reg[2]_0\ : STD_LOGIC;
  signal \^sample_ln_reg[3]_0\ : STD_LOGIC;
  signal \sample_n0_carry__0_n_0\ : STD_LOGIC;
  signal \sample_n0_carry__0_n_1\ : STD_LOGIC;
  signal \sample_n0_carry__0_n_2\ : STD_LOGIC;
  signal \sample_n0_carry__0_n_3\ : STD_LOGIC;
  signal \sample_n0_carry__1_n_0\ : STD_LOGIC;
  signal \sample_n0_carry__1_n_1\ : STD_LOGIC;
  signal \sample_n0_carry__1_n_2\ : STD_LOGIC;
  signal \sample_n0_carry__1_n_3\ : STD_LOGIC;
  signal \sample_n0_carry__2_n_2\ : STD_LOGIC;
  signal \sample_n0_carry__2_n_3\ : STD_LOGIC;
  signal sample_n0_carry_n_0 : STD_LOGIC;
  signal sample_n0_carry_n_1 : STD_LOGIC;
  signal sample_n0_carry_n_2 : STD_LOGIC;
  signal sample_n0_carry_n_3 : STD_LOGIC;
  signal \sample_n[0]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[10]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[10]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[11]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[12]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[12]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[13]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[14]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[14]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[15]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[15]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[15]_i_3_n_0\ : STD_LOGIC;
  signal \sample_n[15]_i_4_n_0\ : STD_LOGIC;
  signal \sample_n[15]_i_5_n_0\ : STD_LOGIC;
  signal \sample_n[1]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[2]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[2]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[3]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[4]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[4]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[5]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[6]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[6]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[7]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[8]_i_1_n_0\ : STD_LOGIC;
  signal \sample_n[8]_i_2_n_0\ : STD_LOGIC;
  signal \sample_n[8]_i_3_n_0\ : STD_LOGIC;
  signal \sample_n[8]_i_4_n_0\ : STD_LOGIC;
  signal \sample_n[9]_i_1_n_0\ : STD_LOGIC;
  signal \^sample_n_reg[0]_0\ : STD_LOGIC;
  signal \^sample_n_reg[10]_0\ : STD_LOGIC;
  signal \^sample_n_reg[11]_0\ : STD_LOGIC;
  signal \^sample_n_reg[12]_0\ : STD_LOGIC;
  signal \^sample_n_reg[13]_0\ : STD_LOGIC;
  signal \^sample_n_reg[14]_0\ : STD_LOGIC;
  signal \^sample_n_reg[15]_0\ : STD_LOGIC;
  signal \^sample_n_reg[1]_0\ : STD_LOGIC;
  signal \^sample_n_reg[2]_0\ : STD_LOGIC;
  signal \^sample_n_reg[3]_0\ : STD_LOGIC;
  signal \^sample_n_reg[4]_0\ : STD_LOGIC;
  signal \^sample_n_reg[5]_0\ : STD_LOGIC;
  signal \^sample_n_reg[6]_0\ : STD_LOGIC;
  signal \^sample_n_reg[7]_0\ : STD_LOGIC;
  signal \^sample_n_reg[8]_0\ : STD_LOGIC;
  signal \^sample_n_reg[9]_0\ : STD_LOGIC;
  signal sample_valid_i_1_n_0 : STD_LOGIC;
  signal sample_valid_i_2_n_0 : STD_LOGIC;
  signal sample_valid_i_3_n_0 : STD_LOGIC;
  signal sample_valid_i_4_n_0 : STD_LOGIC;
  signal sample_valid_i_5_n_0 : STD_LOGIC;
  signal sample_valid_i_6_n_0 : STD_LOGIC;
  signal sample_valid_i_7_n_0 : STD_LOGIC;
  signal \^sample_valid_reg_0\ : STD_LOGIC;
  signal \NLW_sample_n0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sample_n0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of sample_begin_i_5 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of sample_begin_i_6 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of sample_last_i_2 : label is "soft_lutpair5";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sample_last_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute SOFT_HLUTNM of \sample_ln[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_ln[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sample_ln[3]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sample_n0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sample_n0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_n0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sample_n0_carry__2\ : label is 35;
  attribute SOFT_HLUTNM of \sample_n[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sample_n[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \sample_n[15]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sample_n[15]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sample_n[8]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sample_n[8]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of sample_valid_i_5 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of sample_valid_i_7 : label is "soft_lutpair2";
  attribute X_INTERFACE_INFO of sample_valid_reg : label is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
begin
  sample_active_reg_0 <= \^sample_active_reg_0\;
  \sample_ln_reg[0]_0\ <= \^sample_ln_reg[0]_0\;
  \sample_ln_reg[1]_0\ <= \^sample_ln_reg[1]_0\;
  \sample_ln_reg[2]_0\ <= \^sample_ln_reg[2]_0\;
  \sample_ln_reg[3]_0\ <= \^sample_ln_reg[3]_0\;
  \sample_n_reg[0]_0\ <= \^sample_n_reg[0]_0\;
  \sample_n_reg[10]_0\ <= \^sample_n_reg[10]_0\;
  \sample_n_reg[11]_0\ <= \^sample_n_reg[11]_0\;
  \sample_n_reg[12]_0\ <= \^sample_n_reg[12]_0\;
  \sample_n_reg[13]_0\ <= \^sample_n_reg[13]_0\;
  \sample_n_reg[14]_0\ <= \^sample_n_reg[14]_0\;
  \sample_n_reg[15]_0\ <= \^sample_n_reg[15]_0\;
  \sample_n_reg[1]_0\ <= \^sample_n_reg[1]_0\;
  \sample_n_reg[2]_0\ <= \^sample_n_reg[2]_0\;
  \sample_n_reg[3]_0\ <= \^sample_n_reg[3]_0\;
  \sample_n_reg[4]_0\ <= \^sample_n_reg[4]_0\;
  \sample_n_reg[5]_0\ <= \^sample_n_reg[5]_0\;
  \sample_n_reg[6]_0\ <= \^sample_n_reg[6]_0\;
  \sample_n_reg[7]_0\ <= \^sample_n_reg[7]_0\;
  \sample_n_reg[8]_0\ <= \^sample_n_reg[8]_0\;
  \sample_n_reg[9]_0\ <= \^sample_n_reg[9]_0\;
  sample_valid_reg_0 <= \^sample_valid_reg_0\;
sample_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => sample_valid_i_3_n_0,
      I1 => \sample_ln[3]_i_2_n_0\,
      I2 => \^sample_ln_reg[2]_0\,
      I3 => \^sample_ln_reg[0]_0\,
      I4 => \^sample_ln_reg[1]_0\,
      I5 => \^sample_ln_reg[3]_0\,
      O => sample_active_i_1_n_0
    );
sample_active_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_active_i_1_n_0,
      Q => \^sample_active_reg_0\,
      R => reset
    );
sample_begin_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF80"
    )
        port map (
      I0 => sample_begin_i_2_n_0,
      I1 => sample_begin_i_3_n_0,
      I2 => sample_begin_i_4_n_0,
      I3 => sample_begin_i_5_n_0,
      I4 => sample_begin_i_6_n_0,
      I5 => reset,
      O => sample_begin_i_1_n_0
    );
sample_begin_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^sample_valid_reg_0\,
      I1 => \^sample_n_reg[0]_0\,
      I2 => data0(3),
      I3 => data0(2),
      I4 => data0(1),
      I5 => sample_valid_i_2_n_0,
      O => sample_begin_i_2_n_0
    );
sample_begin_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data0(12),
      I1 => data0(13),
      I2 => data0(10),
      I3 => data0(11),
      I4 => data0(15),
      I5 => data0(14),
      O => sample_begin_i_3_n_0
    );
sample_begin_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data0(6),
      I1 => data0(7),
      I2 => data0(4),
      I3 => data0(5),
      I4 => data0(9),
      I5 => data0(8),
      O => sample_begin_i_4_n_0
    );
sample_begin_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^sample_valid_reg_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => sample_valid_i_3_n_0,
      O => sample_begin_i_5_n_0
    );
sample_begin_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_begin_i_7_n_0,
      I2 => sample_begin_i_8_n_0,
      O => sample_begin_i_6_n_0
    );
sample_begin_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \^sample_n_reg[13]_0\,
      I1 => \^sample_n_reg[14]_0\,
      I2 => \^sample_n_reg[1]_0\,
      I3 => \^sample_n_reg[0]_0\,
      I4 => \^sample_valid_reg_0\,
      I5 => sample_begin_i_9_n_0,
      O => sample_begin_i_7_n_0
    );
sample_begin_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^sample_n_reg[10]_0\,
      I1 => \^sample_n_reg[11]_0\,
      I2 => \^sample_n_reg[8]_0\,
      I3 => \^sample_n_reg[9]_0\,
      I4 => \^sample_n_reg[15]_0\,
      I5 => \^sample_n_reg[12]_0\,
      O => sample_begin_i_8_n_0
    );
sample_begin_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^sample_n_reg[4]_0\,
      I1 => \^sample_n_reg[5]_0\,
      I2 => \^sample_n_reg[2]_0\,
      I3 => \^sample_n_reg[3]_0\,
      I4 => \^sample_n_reg[7]_0\,
      I5 => \^sample_n_reg[6]_0\,
      O => sample_begin_i_9_n_0
    );
sample_begin_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_begin_i_1_n_0,
      Q => sample_begin,
      R => '0'
    );
sample_last_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EAAA"
    )
        port map (
      I0 => sample_last_i_2_n_0,
      I1 => sample_last_i_3_n_0,
      I2 => sample_last_i_4_n_0,
      I3 => sample_last_i_5_n_0,
      I4 => reset,
      O => sample_last_i_1_n_0
    );
sample_last_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^sample_valid_reg_0\,
      I1 => \sample_n[15]_i_2_n_0\,
      I2 => sample_valid_i_3_n_0,
      O => sample_last_i_2_n_0
    );
sample_last_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data0(7),
      I1 => data0(8),
      I2 => data0(5),
      I3 => data0(6),
      I4 => data0(10),
      I5 => data0(9),
      O => sample_last_i_3_n_0
    );
sample_last_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => data0(13),
      I1 => data0(14),
      I2 => data0(11),
      I3 => data0(12),
      I4 => \^sample_n_reg[0]_0\,
      I5 => data0(15),
      O => sample_last_i_4_n_0
    );
sample_last_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => data0(4),
      I1 => \^sample_valid_reg_0\,
      I2 => data0(3),
      I3 => data0(2),
      I4 => data0(1),
      I5 => sample_valid_i_2_n_0,
      O => sample_last_i_5_n_0
    );
sample_last_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_last_i_1_n_0,
      Q => sample_last,
      R => '0'
    );
\sample_ln[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5666"
    )
        port map (
      I0 => \^sample_ln_reg[0]_0\,
      I1 => \^sample_active_reg_0\,
      I2 => s_axis_valid,
      I3 => s_axis_user(0),
      O => p_0_in(0)
    );
\sample_ln[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"666C6C6C"
    )
        port map (
      I0 => \^sample_ln_reg[0]_0\,
      I1 => \^sample_ln_reg[1]_0\,
      I2 => \^sample_active_reg_0\,
      I3 => s_axis_valid,
      I4 => s_axis_user(0),
      O => p_0_in(1)
    );
\sample_ln[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"787878F078F078F0"
    )
        port map (
      I0 => \^sample_ln_reg[0]_0\,
      I1 => \^sample_ln_reg[1]_0\,
      I2 => \^sample_ln_reg[2]_0\,
      I3 => \^sample_active_reg_0\,
      I4 => s_axis_valid,
      I5 => s_axis_user(0),
      O => p_0_in(2)
    );
\sample_ln[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FF00"
    )
        port map (
      I0 => \^sample_ln_reg[2]_0\,
      I1 => \^sample_ln_reg[0]_0\,
      I2 => \^sample_ln_reg[1]_0\,
      I3 => \^sample_ln_reg[3]_0\,
      I4 => \sample_ln[3]_i_2_n_0\,
      O => p_0_in(3)
    );
\sample_ln[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => s_axis_user(0),
      I1 => s_axis_valid,
      I2 => \^sample_active_reg_0\,
      O => \sample_ln[3]_i_2_n_0\
    );
\sample_ln_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => \^sample_ln_reg[0]_0\,
      R => reset
    );
\sample_ln_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => \^sample_ln_reg[1]_0\,
      R => reset
    );
\sample_ln_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => \^sample_ln_reg[2]_0\,
      R => reset
    );
\sample_ln_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in(3),
      Q => \^sample_ln_reg[3]_0\,
      R => reset
    );
sample_n0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sample_n0_carry_n_0,
      CO(2) => sample_n0_carry_n_1,
      CO(1) => sample_n0_carry_n_2,
      CO(0) => sample_n0_carry_n_3,
      CYINIT => \^sample_n_reg[0]_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \^sample_n_reg[4]_0\,
      S(2) => \^sample_n_reg[3]_0\,
      S(1) => \^sample_n_reg[2]_0\,
      S(0) => \^sample_n_reg[1]_0\
    );
\sample_n0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sample_n0_carry_n_0,
      CO(3) => \sample_n0_carry__0_n_0\,
      CO(2) => \sample_n0_carry__0_n_1\,
      CO(1) => \sample_n0_carry__0_n_2\,
      CO(0) => \sample_n0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \^sample_n_reg[8]_0\,
      S(2) => \^sample_n_reg[7]_0\,
      S(1) => \^sample_n_reg[6]_0\,
      S(0) => \^sample_n_reg[5]_0\
    );
\sample_n0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_n0_carry__0_n_0\,
      CO(3) => \sample_n0_carry__1_n_0\,
      CO(2) => \sample_n0_carry__1_n_1\,
      CO(1) => \sample_n0_carry__1_n_2\,
      CO(0) => \sample_n0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \^sample_n_reg[12]_0\,
      S(2) => \^sample_n_reg[11]_0\,
      S(1) => \^sample_n_reg[10]_0\,
      S(0) => \^sample_n_reg[9]_0\
    );
\sample_n0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sample_n0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_sample_n0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sample_n0_carry__2_n_2\,
      CO(0) => \sample_n0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sample_n0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2) => \^sample_n_reg[15]_0\,
      S(1) => \^sample_n_reg[14]_0\,
      S(0) => \^sample_n_reg[13]_0\
    );
\sample_n[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => \^sample_n_reg[0]_0\,
      I2 => sample_valid_i_2_n_0,
      O => \sample_n[0]_i_1_n_0\
    );
\sample_n[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[10]_i_2_n_0\,
      I3 => \^sample_n_reg[9]_0\,
      I4 => \^sample_n_reg[10]_0\,
      I5 => data0(10),
      O => \sample_n[10]_i_1_n_0\
    );
\sample_n[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFBFFFF"
    )
        port map (
      I0 => sample_valid_i_6_n_0,
      I1 => \^sample_n_reg[0]_0\,
      I2 => \^sample_n_reg[15]_0\,
      I3 => \sample_n[15]_i_5_n_0\,
      I4 => \^sample_n_reg[11]_0\,
      I5 => \^sample_n_reg[12]_0\,
      O => \sample_n[10]_i_2_n_0\
    );
\sample_n[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFACCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[12]_i_2_n_0\,
      I3 => \^sample_n_reg[12]_0\,
      I4 => \^sample_n_reg[11]_0\,
      I5 => data0(11),
      O => \sample_n[11]_i_1_n_0\
    );
\sample_n[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFCCCC88888888"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => \^sample_n_reg[12]_0\,
      I2 => \sample_n[12]_i_2_n_0\,
      I3 => \^sample_n_reg[11]_0\,
      I4 => sample_valid_i_2_n_0,
      I5 => data0(12),
      O => \sample_n[12]_i_1_n_0\
    );
\sample_n[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFFFFFFFFFF"
    )
        port map (
      I0 => sample_valid_i_6_n_0,
      I1 => \^sample_n_reg[0]_0\,
      I2 => \^sample_n_reg[15]_0\,
      I3 => \sample_n[15]_i_5_n_0\,
      I4 => \^sample_n_reg[10]_0\,
      I5 => \^sample_n_reg[9]_0\,
      O => \sample_n[12]_i_2_n_0\
    );
\sample_n[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCCCC88888888"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => \^sample_n_reg[13]_0\,
      I2 => \sample_n[14]_i_2_n_0\,
      I3 => \^sample_n_reg[14]_0\,
      I4 => sample_valid_i_2_n_0,
      I5 => data0(13),
      O => \sample_n[13]_i_1_n_0\
    );
\sample_n[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCCCC88888888"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => \^sample_n_reg[14]_0\,
      I2 => \sample_n[14]_i_2_n_0\,
      I3 => \^sample_n_reg[13]_0\,
      I4 => sample_valid_i_2_n_0,
      I5 => data0(14),
      O => \sample_n[14]_i_1_n_0\
    );
\sample_n[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => sample_valid_i_7_n_0,
      I1 => \sample_n[15]_i_5_n_0\,
      I2 => \^sample_n_reg[0]_0\,
      I3 => \^sample_n_reg[15]_0\,
      O => \sample_n[14]_i_2_n_0\
    );
\sample_n[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCCCCC88888888"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => \^sample_n_reg[15]_0\,
      I2 => \sample_n[15]_i_3_n_0\,
      I3 => \sample_n[15]_i_4_n_0\,
      I4 => sample_valid_i_2_n_0,
      I5 => data0(15),
      O => \sample_n[15]_i_1_n_0\
    );
\sample_n[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \sample_ln[3]_i_2_n_0\,
      I1 => \^sample_ln_reg[3]_0\,
      I2 => \^sample_ln_reg[1]_0\,
      I3 => \^sample_ln_reg[0]_0\,
      I4 => \^sample_ln_reg[2]_0\,
      O => \sample_n[15]_i_2_n_0\
    );
\sample_n[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^sample_n_reg[14]_0\,
      I1 => \^sample_n_reg[13]_0\,
      I2 => \^sample_n_reg[0]_0\,
      O => \sample_n[15]_i_3_n_0\
    );
\sample_n[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFF"
    )
        port map (
      I0 => \sample_n[15]_i_5_n_0\,
      I1 => \^sample_n_reg[12]_0\,
      I2 => \^sample_n_reg[11]_0\,
      I3 => \^sample_n_reg[9]_0\,
      I4 => \^sample_n_reg[10]_0\,
      O => \sample_n[15]_i_4_n_0\
    );
\sample_n[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => \^sample_n_reg[3]_0\,
      I1 => \^sample_n_reg[4]_0\,
      I2 => \^sample_n_reg[1]_0\,
      I3 => \^sample_n_reg[2]_0\,
      I4 => sample_valid_i_4_n_0,
      O => \sample_n[15]_i_5_n_0\
    );
\sample_n[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[2]_i_2_n_0\,
      I3 => \^sample_n_reg[2]_0\,
      I4 => \^sample_n_reg[1]_0\,
      I5 => data0(1),
      O => \sample_n[1]_i_1_n_0\
    );
\sample_n[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[2]_i_2_n_0\,
      I3 => \^sample_n_reg[1]_0\,
      I4 => \^sample_n_reg[2]_0\,
      I5 => data0(2),
      O => \sample_n[2]_i_1_n_0\
    );
\sample_n[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sample_valid_i_4_n_0,
      I1 => \sample_n[8]_i_3_n_0\,
      I2 => \^sample_n_reg[4]_0\,
      I3 => \^sample_n_reg[3]_0\,
      O => \sample_n[2]_i_2_n_0\
    );
\sample_n[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[4]_i_2_n_0\,
      I3 => \^sample_n_reg[4]_0\,
      I4 => \^sample_n_reg[3]_0\,
      I5 => data0(3),
      O => \sample_n[3]_i_1_n_0\
    );
\sample_n[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[4]_i_2_n_0\,
      I3 => \^sample_n_reg[3]_0\,
      I4 => \^sample_n_reg[4]_0\,
      I5 => data0(4),
      O => \sample_n[4]_i_1_n_0\
    );
\sample_n[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sample_valid_i_4_n_0,
      I1 => \sample_n[8]_i_3_n_0\,
      I2 => \^sample_n_reg[2]_0\,
      I3 => \^sample_n_reg[1]_0\,
      O => \sample_n[4]_i_2_n_0\
    );
\sample_n[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[6]_i_2_n_0\,
      I3 => \^sample_n_reg[6]_0\,
      I4 => \^sample_n_reg[5]_0\,
      I5 => data0(5),
      O => \sample_n[5]_i_1_n_0\
    );
\sample_n[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[6]_i_2_n_0\,
      I3 => \^sample_n_reg[5]_0\,
      I4 => \^sample_n_reg[6]_0\,
      I5 => data0(6),
      O => \sample_n[6]_i_1_n_0\
    );
\sample_n[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sample_valid_i_5_n_0,
      I1 => \sample_n[8]_i_3_n_0\,
      I2 => \^sample_n_reg[8]_0\,
      I3 => \^sample_n_reg[7]_0\,
      O => \sample_n[6]_i_2_n_0\
    );
\sample_n[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[8]_i_2_n_0\,
      I3 => \^sample_n_reg[8]_0\,
      I4 => \^sample_n_reg[7]_0\,
      I5 => data0(7),
      O => \sample_n[7]_i_1_n_0\
    );
\sample_n[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[8]_i_2_n_0\,
      I3 => \^sample_n_reg[7]_0\,
      I4 => \^sample_n_reg[8]_0\,
      I5 => data0(8),
      O => \sample_n[8]_i_1_n_0\
    );
\sample_n[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => sample_valid_i_5_n_0,
      I1 => \sample_n[8]_i_3_n_0\,
      I2 => \^sample_n_reg[6]_0\,
      I3 => \^sample_n_reg[5]_0\,
      O => \sample_n[8]_i_2_n_0\
    );
\sample_n[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => \^sample_n_reg[12]_0\,
      I1 => \^sample_n_reg[11]_0\,
      I2 => \^sample_n_reg[9]_0\,
      I3 => \^sample_n_reg[10]_0\,
      I4 => \sample_n[8]_i_4_n_0\,
      O => \sample_n[8]_i_3_n_0\
    );
\sample_n[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \^sample_n_reg[14]_0\,
      I1 => \^sample_n_reg[13]_0\,
      I2 => \^sample_n_reg[0]_0\,
      I3 => \^sample_n_reg[15]_0\,
      O => \sample_n[8]_i_4_n_0\
    );
\sample_n[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFFCCCCAAAA0000"
    )
        port map (
      I0 => \sample_n[15]_i_2_n_0\,
      I1 => sample_valid_i_2_n_0,
      I2 => \sample_n[10]_i_2_n_0\,
      I3 => \^sample_n_reg[10]_0\,
      I4 => \^sample_n_reg[9]_0\,
      I5 => data0(9),
      O => \sample_n[9]_i_1_n_0\
    );
\sample_n_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[0]_i_1_n_0\,
      Q => \^sample_n_reg[0]_0\,
      R => reset
    );
\sample_n_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[10]_i_1_n_0\,
      Q => \^sample_n_reg[10]_0\,
      R => reset
    );
\sample_n_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[11]_i_1_n_0\,
      Q => \^sample_n_reg[11]_0\,
      R => reset
    );
\sample_n_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[12]_i_1_n_0\,
      Q => \^sample_n_reg[12]_0\,
      R => reset
    );
\sample_n_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[13]_i_1_n_0\,
      Q => \^sample_n_reg[13]_0\,
      R => reset
    );
\sample_n_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[14]_i_1_n_0\,
      Q => \^sample_n_reg[14]_0\,
      R => reset
    );
\sample_n_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[15]_i_1_n_0\,
      Q => \^sample_n_reg[15]_0\,
      R => reset
    );
\sample_n_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[1]_i_1_n_0\,
      Q => \^sample_n_reg[1]_0\,
      R => reset
    );
\sample_n_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[2]_i_1_n_0\,
      Q => \^sample_n_reg[2]_0\,
      R => reset
    );
\sample_n_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[3]_i_1_n_0\,
      Q => \^sample_n_reg[3]_0\,
      R => reset
    );
\sample_n_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[4]_i_1_n_0\,
      Q => \^sample_n_reg[4]_0\,
      R => reset
    );
\sample_n_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[5]_i_1_n_0\,
      Q => \^sample_n_reg[5]_0\,
      R => reset
    );
\sample_n_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[6]_i_1_n_0\,
      Q => \^sample_n_reg[6]_0\,
      R => reset
    );
\sample_n_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[7]_i_1_n_0\,
      Q => \^sample_n_reg[7]_0\,
      R => reset
    );
\sample_n_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[8]_i_1_n_0\,
      Q => \^sample_n_reg[8]_0\,
      R => reset
    );
\sample_n_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sample_n[9]_i_1_n_0\,
      Q => \^sample_n_reg[9]_0\,
      R => reset
    );
sample_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sample_valid_i_2_n_0,
      I1 => sample_valid_i_3_n_0,
      I2 => reset,
      O => sample_valid_i_1_n_0
    );
sample_valid_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \sample_ln[3]_i_2_n_0\,
      I1 => \^sample_ln_reg[3]_0\,
      I2 => \^sample_ln_reg[1]_0\,
      I3 => \^sample_ln_reg[0]_0\,
      I4 => \^sample_ln_reg[2]_0\,
      O => sample_valid_i_2_n_0
    );
sample_valid_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
        port map (
      I0 => sample_valid_i_4_n_0,
      I1 => sample_valid_i_5_n_0,
      I2 => sample_valid_i_6_n_0,
      I3 => \^sample_n_reg[0]_0\,
      I4 => \^sample_n_reg[15]_0\,
      I5 => sample_valid_i_7_n_0,
      O => sample_valid_i_3_n_0
    );
sample_valid_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^sample_n_reg[6]_0\,
      I1 => \^sample_n_reg[5]_0\,
      I2 => \^sample_n_reg[8]_0\,
      I3 => \^sample_n_reg[7]_0\,
      O => sample_valid_i_4_n_0
    );
sample_valid_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^sample_n_reg[2]_0\,
      I1 => \^sample_n_reg[1]_0\,
      I2 => \^sample_n_reg[4]_0\,
      I3 => \^sample_n_reg[3]_0\,
      O => sample_valid_i_5_n_0
    );
sample_valid_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^sample_n_reg[13]_0\,
      I1 => \^sample_n_reg[14]_0\,
      O => sample_valid_i_6_n_0
    );
sample_valid_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \^sample_n_reg[10]_0\,
      I1 => \^sample_n_reg[9]_0\,
      I2 => \^sample_n_reg[11]_0\,
      I3 => \^sample_n_reg[12]_0\,
      O => sample_valid_i_7_n_0
    );
sample_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sample_valid_i_1_n_0,
      Q => \^sample_valid_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_firoutmixer_0_0 is
  port (
    s_axis_data : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_valid : in STD_LOGIC;
    s_axis_user : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_data : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_valid : out STD_LOGIC;
    m_axis_last : out STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sample_n : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sample_ln : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sample_active : out STD_LOGIC;
    sample_valid : out STD_LOGIC;
    sample_begin : out STD_LOGIC;
    sample_last : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bajie7020_firoutmixer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bajie7020_firoutmixer_0_0 : entity is "bajie7020_firoutmixer_0_0,firoutmixer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bajie7020_firoutmixer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bajie7020_firoutmixer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bajie7020_firoutmixer_0_0 : entity is "firoutmixer,Vivado 2022.1";
end bajie7020_firoutmixer_0_0;

architecture STRUCTURE of bajie7020_firoutmixer_0_0 is
  signal \^m_axis_valid\ : STD_LOGIC;
  signal \^s_axis_data\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^sample_last\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXIS:S_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_last : signal is "xilinx.com:interface:axis:1.0 M_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of m_axis_last : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_valid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_valid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_data : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_data : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_user : signal is "xilinx.com:interface:axis:1.0 S_AXIS TUSER";
  attribute X_INTERFACE_PARAMETER of s_axis_user : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 200000000, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 2} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 32} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 19} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}} TDATA_WIDTH 64 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 3} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 3}, INSERT_VIP 0";
begin
  \^s_axis_data\(63 downto 0) <= s_axis_data(63 downto 0);
  m_axis_data(63 downto 0) <= \^s_axis_data\(63 downto 0);
  m_axis_last <= \^sample_last\;
  m_axis_valid <= \^m_axis_valid\;
  sample_last <= \^sample_last\;
  sample_valid <= \^m_axis_valid\;
inst: entity work.bajie7020_firoutmixer_0_0_firoutmixer
     port map (
      clk => clk,
      reset => reset,
      s_axis_user(0) => s_axis_user(0),
      s_axis_valid => s_axis_valid,
      sample_active_reg_0 => sample_active,
      sample_begin => sample_begin,
      sample_last => \^sample_last\,
      \sample_ln_reg[0]_0\ => sample_ln(0),
      \sample_ln_reg[1]_0\ => sample_ln(1),
      \sample_ln_reg[2]_0\ => sample_ln(2),
      \sample_ln_reg[3]_0\ => sample_ln(3),
      \sample_n_reg[0]_0\ => sample_n(0),
      \sample_n_reg[10]_0\ => sample_n(10),
      \sample_n_reg[11]_0\ => sample_n(11),
      \sample_n_reg[12]_0\ => sample_n(12),
      \sample_n_reg[13]_0\ => sample_n(13),
      \sample_n_reg[14]_0\ => sample_n(14),
      \sample_n_reg[15]_0\ => sample_n(15),
      \sample_n_reg[1]_0\ => sample_n(1),
      \sample_n_reg[2]_0\ => sample_n(2),
      \sample_n_reg[3]_0\ => sample_n(3),
      \sample_n_reg[4]_0\ => sample_n(4),
      \sample_n_reg[5]_0\ => sample_n(5),
      \sample_n_reg[6]_0\ => sample_n(6),
      \sample_n_reg[7]_0\ => sample_n(7),
      \sample_n_reg[8]_0\ => sample_n(8),
      \sample_n_reg[9]_0\ => sample_n(9),
      sample_valid_reg_0 => \^m_axis_valid\
    );
end STRUCTURE;
