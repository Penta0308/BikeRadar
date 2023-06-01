module FC1004_RGMII (
    //Sys/Common
    input  Clk,                    // 125 MHz
    input  Clk_Tx,                 // 125 MHz RGMII Transmit clock
    input  Reset,                  // Active high
    input  UseDHCP,                // '1' to use DHCP
    input  [31:0] IP_Addr,         // IP address if not using DHCP
    output IP_Ok,                  // DHCP ready

    //TCP Basic Server
    input  [15:0] TCP0_Service,    // Service
    input  [15:0] TCP0_ServerPort, // TCP local server port
    output TCP0_Connected,         // Client connected
    output TCP0_AllAcked,          // All outgoing data acked
    output [15:0] TCP0_nTxFree,    // Number of free bytes in outgoing buffer
    output [15:0] TCP0_nRxData,    // Number of bytes in receiving buffer
    input  [7:0] TCP0_TxData,      // Transmit data
    input  TCP0_TxValid,           // Transmit data valid
    output TCP0_TxReady,           // Transmit data ready
    output [7:0] TCP0_RxData,      // Receive data
    output TCP0_RxValid,           // Receive data valid
    input  TCP0_RxReady,           // Receive data ready

    //MAC/RGMII
    output RGMII_TXC,              // 
    output [3:0] RGMII_TXD,        // 
    output RGMII_TX_CTL,           // 
    input  RGMII_RXC,              // 
    input  [3:0] RGMII_RXD,        // 
    input  RGMII_RX_CTL,           // 
    output RGMII_MDC,              // 
    inout  RGMII_MDIO,             // 

    //SPI/Boot Control
    output SPI_CSn,                // Chip select
    output SPI_SCK,                // Serial clock
    output SPI_MOSI,               // Master out slave in
    input  SPI_MISO,               // Master in slave out

    //Logic Analyzer
    input  LA0_TrigIn,             // Trigger input
    input  LA0_Clk,                // Clock
    output LA0_TrigOut,            // Trigger out
    input  [31:0] LA0_Signals,     // Signals
    input  LA0_SampleEn,           // Sample enable

    //UDP Basic Server
    input  UDP0_Reset,             // Reset interface, active high
    input  [15:0] UDP0_Service,    // Service
    input  [15:0] UDP0_ServerPort, // UDP local server port
    output UDP0_Connected,         // Client connected
    output UDP0_OutIsEmpty,        // All outgoing data acked
    input  [7:0] UDP0_TxData,      // Transmit data
    input  UDP0_TxValid,           // Transmit data valid
    output UDP0_TxReady,           // Transmit data ready
    input  UDP0_TxLast,            // Transmit data last
    output [7:0] UDP0_RxData,      // Receive data
    output UDP0_RxValid,           // Receive data valid
    input  UDP0_RxReady,           // Receive data ready
    output UDP0_RxLast             // Transmit data last
);

endmodule
