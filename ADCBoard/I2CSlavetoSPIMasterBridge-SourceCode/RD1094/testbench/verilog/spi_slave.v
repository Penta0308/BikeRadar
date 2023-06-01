//-------------------------------------------------------------------------
//  >>>>>>>>>>>>>>>>>>>>>>>>> COPYRIGHT NOTICE <<<<<<<<<<<<<<<<<<<<<<<<<
//-------------------------------------------------------------------------
//  Copyright (c) 2010 by Lattice Semiconductor Corporation      
// 
//-------------------------------------------------------------------------
// Permission:
//
//   Lattice Semiconductor grants permission to use this code for use
//   in synthesis for any Lattice programmable logic product.  Other
//   use of this code, including the selling or duplication of any
//   portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL or Verilog source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Lattice Semiconductor provides no warranty
//   regarding the use or functionality of this code.
//-------------------------------------------------------------------------
//
//    Lattice Semiconductor Corporation
//    5555 NE Moore Court
//    Hillsboro, OR 97124
//    U.S.A
//
//    TEL: 1-800-Lattice (USA and Canada)
//    503-268-8001 (other locations)
//
//    web: http://www.latticesemi.com/
//    email: techsupport@latticesemi.com
// 
//-------------------------------------------------------------------------
//
//     
//-------------------------------------------------------------------------
// Code Revision History :
//-------------------------------------------------------------------------
// Ver: | Author	|Mod. Date	|Changes Made:
// V1.0 | J.T     |5/2010   |Initial version
//-------------------------------------------------------------------------

`timescale 1 ns /  100 ps

`define CLOCK_PHASE 0
`define CLOCK_POLARITY 0

module spi_slave #(
   parameter  SHIFT_DIRECTION = 0,
   parameter  DATA_LENGTH     = 8		//  changed from 32 to 8
)
   (
   DATA_IN,    
   DATA_OUT,    
   
   CLK_I,
   RST_I,
 
   //spi interface   
   MISO_SLAVE,
   MOSI_SLAVE,
   CSn_SLAVE,
   SCLK_SLAVE
   );
   
   input [7:0]         DATA_IN;		//8 bit width - changed from 32 bits
   output [7:0]        DATA_OUT;		//8 bit width - changed from 32 bits

   input               CLK_I;
   input               RST_I;
  
   //spi interface
   output              MISO_SLAVE;
   input               MOSI_SLAVE;
   input               CSn_SLAVE;
   input               SCLK_SLAVE;
   
   parameter           UDLY          = 1;
   
   //register access
   reg                     MISO_SLAVE;
   
   reg [DATA_LENGTH-1:0]   reg_rxdata;
   reg [DATA_LENGTH-1:0]   reg_txdata;
   reg [DATA_LENGTH-1:0]   rx_shift_data;
      

   
   reg                     tx_done;
   reg                     rx_done;
   reg                     rx_done_flip1;
   reg                     rx_done_flip2;
   reg                     rx_done_flip3;
   reg                     tx_done_flip1;
   reg                     tx_done_flip2;
   reg                     tx_done_flip3;
   reg  [5:0]              rx_data_cnt;                     
   reg  [5:0]              tx_data_cnt;      


    
   assign  DATA_OUT=reg_rxdata;
       
//Receive Data Register
   always @(posedge CLK_I or posedge RST_I)
     if(RST_I)
       reg_rxdata            = #UDLY 'h0;
     else if (rx_done_flip1 && !rx_done_flip2) begin     
       reg_rxdata            = #UDLY rx_shift_data;
       $display($time,": SPI Slave Read Data = %h",reg_rxdata); 
     end
       
//Transmit Data Register
   always @(posedge CLK_I or posedge RST_I)
     if(RST_I)
       reg_txdata               <= #UDLY DATA_IN;
     else if (tx_done_flip2 && !tx_done_flip3) begin 
       $display($time,": SPI Slave Write Data = %h",reg_txdata);
       reg_txdata               <= #UDLY reg_txdata-1;
     end  
                                                     
//-----------------------------For Rx data, 
    //-----------------sample at posedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 0 
   `ifdef CLOCK_POLARITY
         `ifdef CLOCK_PHASE
           always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
               rx_shift_data     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                 if (SHIFT_DIRECTION)
                    rx_shift_data   <= #UDLY {MOSI_SLAVE,rx_shift_data[DATA_LENGTH-1:1]};
                 else
                    rx_shift_data   <= #UDLY {rx_shift_data,MOSI_SLAVE};
         
           always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_data_cnt     <= #UDLY 'h0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_data_cnt     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                rx_data_cnt     <= #UDLY rx_data_cnt + 1;
         
           always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_done         <= #UDLY 1'b0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_done         <= #UDLY 1'b1; 
             else
                rx_done         <= #UDLY 1'b0; 
                
         //-----------------sample at negedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 1
         `else
          //For Rx data, sample at negedge when CLOCK_PHASE is 1
          always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
               rx_shift_data     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                 if (SHIFT_DIRECTION)
                    rx_shift_data   <= #UDLY {MOSI_SLAVE,rx_shift_data[DATA_LENGTH-1:1]};
                 else
                    rx_shift_data   <= #UDLY {rx_shift_data,MOSI_SLAVE};
         
           always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_data_cnt     <= #UDLY 'h0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_data_cnt     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                rx_data_cnt     <= #UDLY rx_data_cnt + 1;
         
           always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_done         <= #UDLY 1'b0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_done         <= #UDLY 1'b1; 
             else
                rx_done         <= #UDLY 1'b0; 
           //end
         `endif
   //-----------------sample at negedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 0      
   `else
           `ifdef CLOCK_PHASE
           always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
               rx_shift_data     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                 if (SHIFT_DIRECTION)
                    rx_shift_data   <= #UDLY {MOSI_SLAVE,rx_shift_data[DATA_LENGTH-1:1]};
                 else
                    rx_shift_data   <= #UDLY {rx_shift_data,MOSI_SLAVE};
         
           always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_data_cnt     <= #UDLY 'h0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_data_cnt     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                rx_data_cnt     <= #UDLY rx_data_cnt + 1;
         
           always @(negedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_done         <= #UDLY 1'b0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_done         <= #UDLY 1'b1; 
             else
                rx_done         <= #UDLY 1'b0; 
         
         //-----------------sample at posedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 1
         `else
          //For Rx data, sample at negedge when CLOCK_PHASE is 1
          always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
               rx_shift_data     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                 if (SHIFT_DIRECTION)
                    rx_shift_data   <= #UDLY {MOSI_SLAVE,rx_shift_data[DATA_LENGTH-1:1]};
                 else
                    rx_shift_data   <= #UDLY {rx_shift_data,MOSI_SLAVE};
         
           always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_data_cnt     <= #UDLY 'h0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_data_cnt     <= #UDLY 'h0;
             else if (!CSn_SLAVE)
                rx_data_cnt     <= #UDLY rx_data_cnt + 1;
         
           always @(posedge SCLK_SLAVE or posedge RST_I)
             if (RST_I) 
                rx_done         <= #UDLY 1'b0; 
             else if (rx_data_cnt == DATA_LENGTH - 1) 
                rx_done         <= #UDLY 1'b1; 
             else
                rx_done         <= #UDLY 1'b0; 
           //end
         `endif
   `endif
   always @(posedge CLK_I or posedge RST_I)
     if (RST_I) begin
       rx_done_flip1                <= #UDLY 1'b0;
       rx_done_flip2                <= #UDLY 1'b0;
       rx_done_flip3                <= #UDLY 1'b0;
     end
     else begin
       rx_done_flip1                <= #UDLY rx_done;
       rx_done_flip2                <= #UDLY rx_done_flip1;
       rx_done_flip3                <= #UDLY rx_done_flip2;
     end

   
//--------------------For Tx data, 
   //-----------------------------------update at negedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 0
   `ifdef CLOCK_POLARITY
           `ifdef CLOCK_PHASE
             
             //always @(*) 
             always @(reg_txdata or tx_data_cnt or CSn_SLAVE ) 
               if (!CSn_SLAVE)
                 MISO_SLAVE   <= #UDLY SHIFT_DIRECTION ? reg_txdata[tx_data_cnt] :
                                                 reg_txdata[DATA_LENGTH-tx_data_cnt-1];
               else
                 MISO_SLAVE<=1'bz;
             
             always @(negedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_data_cnt     <= #UDLY 'h0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_data_cnt     <= #UDLY 'h0;
               else if (!CSn_SLAVE)
                  tx_data_cnt     <= #UDLY tx_data_cnt + 1;
                  
             always @(negedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_done     <= #UDLY 1'b0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_done     <= #UDLY 1'b1;
               else 
                  tx_done     <= #UDLY 1'b0;
           
           //-----------------------------------update at posedge when CLOCK_POLARITY=0 and CLOCK_PHASE is 1         
            `else          
             always @(posedge SCLK_SLAVE)                       
               if (!CSn_SLAVE)
                 MISO_SLAVE   <= #UDLY SHIFT_DIRECTION ? reg_txdata[tx_data_cnt] :
                                                         reg_txdata[DATA_LENGTH-tx_data_cnt-1];
               else
                 MISO_SLAVE<=1'bz;
                                                                                   
             always @(posedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_data_cnt     <= #UDLY 'h0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_data_cnt     <= #UDLY 'h0;
               else if (!CSn_SLAVE)
                  tx_data_cnt     <= #UDLY tx_data_cnt + 1;
                  
             always @(posedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_done     <= #UDLY 1'b0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_done     <= #UDLY 1'b1;
               else 
                  tx_done     <= #UDLY 1'b0;  
           `endif
           
   //-----------------------------------update at posedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 0        
   `else
           `ifdef CLOCK_PHASE                                                                     
             //always @(*) 
              always @(reg_txdata or tx_data_cnt or CSn_SLAVE ) 
               if (!CSn_SLAVE)
                 MISO_SLAVE   <= #UDLY SHIFT_DIRECTION ? reg_txdata[tx_data_cnt] :
                                                 reg_txdata[DATA_LENGTH-tx_data_cnt-1];
               else
                 MISO_SLAVE<=1'bz;
                                                         
             always @(posedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_data_cnt     <= #UDLY 'h0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_data_cnt     <= #UDLY 'h0;
               else if (!CSn_SLAVE)
                  tx_data_cnt     <= #UDLY tx_data_cnt + 1;
                  
             always @(posedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_done     <= #UDLY 1'b0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_done     <= #UDLY 1'b1;
               else 
                  tx_done     <= #UDLY 1'b0; 
                  
           //-----------------------------------update at negedge when CLOCK_POLARITY=1 and CLOCK_PHASE is 1        
           `else                                                                
              always @(negedge SCLK_SLAVE)                       
               if (!CSn_SLAVE)
                 MISO_SLAVE   <= #UDLY SHIFT_DIRECTION ? reg_txdata[tx_data_cnt] :
                                                         reg_txdata[DATA_LENGTH-tx_data_cnt-1];
               else
                 MISO_SLAVE<=1'bz;    
                 
             always @(negedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_data_cnt     <= #UDLY 'h0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_data_cnt     <= #UDLY 'h0;
               else if (!CSn_SLAVE)
                  tx_data_cnt     <= #UDLY tx_data_cnt + 1;
                  
             always @(negedge SCLK_SLAVE or posedge RST_I)
               if (RST_I) 
                  tx_done     <= #UDLY 1'b0; 
               else if (tx_data_cnt == DATA_LENGTH - 1)
                  tx_done     <= #UDLY 1'b1;
               else 
                  tx_done     <= #UDLY 1'b0;  
           `endif
   `endif 
   
   always @(posedge CLK_I or posedge RST_I)
     if (RST_I) begin
       tx_done_flip1                <= #UDLY 1'b0;
       tx_done_flip2                <= #UDLY 1'b0;
       tx_done_flip3                <= #UDLY 1'b0;
     end
     else begin
       tx_done_flip1                <= #UDLY tx_done;
       tx_done_flip2                <= #UDLY tx_done_flip1;
       tx_done_flip3                <= #UDLY tx_done_flip2;
     end
      
endmodule