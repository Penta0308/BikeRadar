-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
-- Date        : Sun Jul 16 17:37:58 2023
-- Host        : Penta0308-15U560-U running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/penta/Documents/BikeRadar/Bajie7020/Bajie7020.gen/sources_1/bd/bajie7020/ip/bajie7020_axis_subset_converter_0_1/bajie7020_axis_subset_converter_0_1_sim_netlist.vhdl
-- Design      : bajie7020_axis_subset_converter_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    transfer_dropped : out STD_LOGIC;
    sparse_tkeep_removed : out STD_LOGIC
  );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is "zynq";
  attribute C_M_AXIS_SIGNAL_SET : integer;
  attribute C_M_AXIS_SIGNAL_SET of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 27;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 64;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute C_S_AXIS_SIGNAL_SET : integer;
  attribute C_S_AXIS_SIGNAL_SET of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 19;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 64;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 : entity is "top_bajie7020_axis_subset_converter_0_1";
end bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1;

architecture STRUCTURE of bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(63 downto 0) <= s_axis_tdata(63 downto 0);
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(63 downto 0) <= \^s_axis_tdata\(63 downto 0);
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(7) <= \<const0>\;
  m_axis_tkeep(6) <= \<const0>\;
  m_axis_tkeep(5) <= \<const0>\;
  m_axis_tkeep(4) <= \<const0>\;
  m_axis_tkeep(3) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
  sparse_tkeep_removed <= \<const0>\;
  transfer_dropped <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bajie7020_axis_subset_converter_0_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bajie7020_axis_subset_converter_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bajie7020_axis_subset_converter_0_1 : entity is "bajie7020_axis_subset_converter_0_1,top_bajie7020_axis_subset_converter_0_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bajie7020_axis_subset_converter_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bajie7020_axis_subset_converter_0_1 : entity is "top_bajie7020_axis_subset_converter_0_1,Vivado 2022.1";
end bajie7020_axis_subset_converter_0_1;

architecture STRUCTURE of bajie7020_axis_subset_converter_0_1 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_sparse_tkeep_removed_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_transfer_dropped_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_DEFAULT_TLAST : integer;
  attribute C_DEFAULT_TLAST of inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_M_AXIS_SIGNAL_SET : integer;
  attribute C_M_AXIS_SIGNAL_SET of inst : label is 27;
  attribute C_M_AXIS_TDATA_WIDTH : integer;
  attribute C_M_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_M_AXIS_TDEST_WIDTH : integer;
  attribute C_M_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TID_WIDTH : integer;
  attribute C_M_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_M_AXIS_TUSER_WIDTH : integer;
  attribute C_M_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_S_AXIS_SIGNAL_SET : integer;
  attribute C_S_AXIS_SIGNAL_SET of inst : label is 19;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 64;
  attribute C_S_AXIS_TDEST_WIDTH : integer;
  attribute C_S_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TID_WIDTH : integer;
  attribute C_S_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_S_AXIS_TUSER_WIDTH : integer;
  attribute C_S_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 133333344, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, INSERT_VIP 0, ASSOCIATED_CLKEN aclken";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_PARAMETER of s_axis_tlast : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 133333344, PHASE 0.0, CLK_DOMAIN bajie7020_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
begin
  m_axis_tkeep(7) <= \<const1>\;
  m_axis_tkeep(6) <= \<const1>\;
  m_axis_tkeep(5) <= \<const1>\;
  m_axis_tkeep(4) <= \<const1>\;
  m_axis_tkeep(3) <= \<const1>\;
  m_axis_tkeep(2) <= \<const1>\;
  m_axis_tkeep(1) <= \<const1>\;
  m_axis_tkeep(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.bajie7020_axis_subset_converter_0_1_top_bajie7020_axis_subset_converter_0_1
     port map (
      aclk => '0',
      aclken => '1',
      aresetn => '0',
      m_axis_tdata(63 downto 0) => m_axis_tdata(63 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(7 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(7 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(7 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(7 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(7 downto 0) => B"11111111",
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(7 downto 0) => B"11111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid,
      sparse_tkeep_removed => NLW_inst_sparse_tkeep_removed_UNCONNECTED,
      transfer_dropped => NLW_inst_transfer_dropped_UNCONNECTED
    );
end STRUCTURE;
