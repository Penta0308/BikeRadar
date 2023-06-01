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
module i2c_spi_bridge_tb();

wire clk,XRESET;

// i2c ports
wire scl; 
wire sda;       
wire intn;
//spi interface

wire MOSI_MASTER;
wire [4:0] SS_N_MASTER;
wire SCLK_MASTER,MISO_SLAVE;

pullup(sda);
pullup(scl);

GSR GSR_INST(.GSR(1'b1));
PUR PUR_INST(.PUR(1'b1));

i2c_to_spi #(
  .CLOCK_SEL(1),
  .I2C_SLAVE_ADDR(7'b1010010)
  )
   bridge(
// generic ports
 .clk(clk),
 .XRESET(XRESET),              // System Reset

// i2c ports
 .scl_in(scl),          // SCL clock line
 .sda(sda),
 .intn(intn),
//spi interface
 .MISO_MASTER(MISO_SLAVE),
 .MOSI_MASTER(MOSI_MASTER),
 .SS_N_MASTER(SS_N_MASTER),
 .SCLK_MASTER(SCLK_MASTER)
);

i2c_mstr i2c_master(
                .XRESET(XRESET), 
                .clk(clk),
                .scl(scl), 
                .sda(sda)
                );
                
spi_slave spi_slave
   (
   .DATA_IN(8'hab),    
   .DATA_OUT(),    


   .CLK_I(clk),
   .RST_I(XRESET),
 
   //spi interface   
   .MISO_SLAVE(MISO_SLAVE),
   .MOSI_SLAVE(MOSI_MASTER),
   .CSn_SLAVE(SS_N_MASTER[4]),
   .SCLK_SLAVE(SCLK_MASTER)
   );                

endmodule 
