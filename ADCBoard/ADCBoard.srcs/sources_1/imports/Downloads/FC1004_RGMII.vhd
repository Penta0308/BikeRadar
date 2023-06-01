component FC1004_RGMII is
    port (
        --Sys/Common
        Clk             : in  std_logic; --125 MHz
        Clk_Tx          : in  std_logic; --125 MHz RGMII Transmit clock
        Reset           : in  std_logic; --Active high
        UseDHCP         : in  std_logic; --'1' to use DHCP
        IP_Addr         : in  std_logic_vector(31 downto 0); --IP address if not using DHCP
        IP_Ok           : out std_logic; --DHCP ready

        --TCP Basic Server
        TCP0_Service    : in  std_logic_vector(15 downto 0); --Service
        TCP0_ServerPort : in  std_logic_vector(15 downto 0); --TCP local server port
        TCP0_Connected  : out std_logic; --Client connected
        TCP0_AllAcked   : out std_logic; --All outgoing data acked
        TCP0_nTxFree    : out std_logic_vector(15 downto 0); --Number of free bytes in outgoing buffer
        TCP0_nRxData    : out std_logic_vector(15 downto 0); --Number of bytes in receiving buffer
        TCP0_TxData     : in  std_logic_vector(7 downto 0); --Transmit data
        TCP0_TxValid    : in  std_logic; --Transmit data valid
        TCP0_TxReady    : out std_logic; --Transmit data ready
        TCP0_RxData     : out std_logic_vector(7 downto 0); --Receive data
        TCP0_RxValid    : out std_logic; --Receive data valid
        TCP0_RxReady    : in  std_logic; --Receive data ready

        --MAC/RGMII
        RGMII_TXC       : out std_logic; --
        RGMII_TXD       : out std_logic_vector(3 downto 0); --
        RGMII_TX_CTL    : out std_logic; --
        RGMII_RXC       : in  std_logic; --
        RGMII_RXD       : in  std_logic_vector(3 downto 0); --
        RGMII_RX_CTL    : in  std_logic; --
        RGMII_MDC       : out std_logic; --
        RGMII_MDIO      : inout std_logic; --

        --SPI/Boot Control
        SPI_CSn         : out std_logic; --Chip select
        SPI_SCK         : out std_logic; --Serial clock
        SPI_MOSI        : out std_logic; --Master out slave in
        SPI_MISO        : in  std_logic; --Master in slave out

        --Logic Analyzer
        LA0_TrigIn      : in  std_logic; --Trigger input
        LA0_Clk         : in  std_logic; --Clock
        LA0_TrigOut     : out std_logic; --Trigger out
        LA0_Signals     : in  std_logic_vector(31 downto 0); --Signals
        LA0_SampleEn    : in  std_logic; --Sample enable

        --UDP Basic Server
        UDP0_Reset      : in  std_logic; --Reset interface, active high
        UDP0_Service    : in  std_logic_vector(15 downto 0); --Service
        UDP0_ServerPort : in  std_logic_vector(15 downto 0); --UDP local server port
        UDP0_Connected  : out std_logic; --Client connected
        UDP0_OutIsEmpty : out std_logic; --All outgoing data acked
        UDP0_TxData     : in  std_logic_vector(7 downto 0); --Transmit data
        UDP0_TxValid    : in  std_logic; --Transmit data valid
        UDP0_TxReady    : out std_logic; --Transmit data ready
        UDP0_TxLast     : in  std_logic; --Transmit data last
        UDP0_RxData     : out std_logic_vector(7 downto 0); --Receive data
        UDP0_RxValid    : out std_logic; --Receive data valid
        UDP0_RxReady    : in  std_logic; --Receive data ready
        UDP0_RxLast     : out std_logic  --Transmit data last
    );
end component;
