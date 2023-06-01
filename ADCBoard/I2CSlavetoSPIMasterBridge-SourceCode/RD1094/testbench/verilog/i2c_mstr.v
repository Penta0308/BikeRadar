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
module i2c_mstr(XRESET, 
                clk,
                scl, 
                sda);

   //---------------------------------------------------------------------
   // port list
   output          XRESET;
   output   reg    clk;
   output          scl;
   inout           sda;

   //---------------------------------------------------------------------
   // registers and wires

   reg             XRESET;                     // reset
   reg             scl_reg;                    // clock register
   reg             sda_reg;                    // SDA input stimulus

   //---------------------------------------------------------------------
   // parameters          

   parameter       scl_cycle   = 1000; // 10;
   parameter       delay       = 50; //3;
   parameter       reset_delay = 100;
   parameter       cycle_end   = 50;

   parameter       dev_add   = 7'b1010010;

   parameter       rd        = 1'b1;
   parameter       wr        = 1'b0;
   
   parameter       rd_addr = {dev_add,rd};   
   parameter       wr_addr = {dev_add,wr};
   parameter       spi_cfg_0=8'h70; //direction=0,phase=0,polarity=0;
   parameter       spi_cfg_1=8'h72; //direction=0,phase=1,polarity=0;
   parameter       spi_cfg_2=8'h71; //direction=0,phase=0,polarity=1;
   parameter       spi_cfg_3=8'h73; //direction=0,phase=1,polarity=1;
   

   //---------------------------------------------------------------------
   // assignments

   assign          sda   = (sda_reg) ? 1'bz : 1'b0;
   assign          scl   = (scl_reg) ? 1'bz : 1'b0;

   //---------------------------------------------------------------------
   // initial block

   initial begin
      
      $display($time,": Starting I2C to SPI Bridge Simulation");
      $display();
      $display($time,": Initializing Test Bench");
      $display();
      init_chip;
      #50;  
      
      $display($time,": Configure spi_cfg register,select spi mode(0,0) and MSB first");
      $display();
      start_proc;
      write_i2c_nostop(wr_addr,8'h01,spi_cfg_0,1);	
      stop_proc;
      #100;    
      	
      $display($time,": I2C Master write data,number=10");
      $display();
      start_proc;
      write_i2c_nostop(wr_addr,8'h02,8'h55,10);                 
      stop_proc;   
      #20000; 
      
      $display($time,": clear interrupt");
      $display();
      start_proc;
      write_i2c_nostop(wr_addr,8'h03,0,0);                 
      stop_proc;   
      #100;        
     	
      $display($time,": I2C Master Read data ");	
      $display();	
      start_proc;						
      read_i2c_nostop(rd_addr,10);     
      stop_proc;
      #100;                            
      $display($time,": I2C to SPI Bridge Complete");

      $stop;
   end  

   //---------------------------------------------------------------------
   // clock generation

   always #(scl_cycle/2) scl_reg = ~scl_reg;   
   
   always #(30/2) clk = ~clk;

   //---------------------------------------------------------------------
   // Reset the chip

   task init_chip;                
      begin
         XRESET    <= #1 1'b1;
         clk       <=#1 0;
         sda_reg   <= #1 1'b1;
         scl_reg   <= #1 1'b0;
         #reset_delay;
         XRESET    <= #1 1'b0;
      end

   endtask

   //---------------------------------------------------------------------
   // start process
   task start_proc;
      begin
         @(posedge scl_reg);                     // wait for next cycle
         #(scl_cycle/4);                         // middle of clock
         sda_reg    <= #1 1'b0;	                // start 
      end
   endtask    

   //--------------------------------------------------------------------
   // stop process
   task stop_proc;                	
      begin         
         @(negedge scl_reg);                     // nack           
         @(negedge scl_reg);                     // stop
         #(scl_cycle/4);                         // middle of clock
         sda_reg <= #1 1'b0;
         @(posedge scl_reg);                     // stop
         #(scl_cycle/4);                         // middle of clock
         sda_reg <= #1 1'b1;
         #(cycle_end);                            
      end			
   endtask

   task read_i2c_nostop;
      input   [7:0]   address;
      input   [7:0]   cnt;
      reg     [7:0]   rd_reg;
      integer         i,j;

      begin
         
         for (i = 7; i >= 0; i = i - 1) begin    // address
            @(negedge scl_reg);
            #(scl_cycle/4);                         // middle of clock
            sda_reg <= #1 address[i];
         end                               
         
         sda_reg <= #1 1'b1;                     // tri-state        
         @(negedge scl_reg);                     // ack           
         @(posedge scl_reg);                     // ack           
         
         for (j = cnt; j >0; j = j - 1) begin
            for (i = 7; i >= 0; i = i - 1) begin    // data
    	       @(posedge scl_reg);
               rd_reg[i] <= #1 sda;
            end                                           
            #2 $display($time,":I2C Master Read Data = %h",rd_reg);
            
            @(negedge scl_reg);                     // ack      
            #(scl_cycle/4);  
            sda_reg <= 1'b0;                     // tri-state    
            @(posedge scl_reg);                     // ack   
            @(negedge scl_reg);   
            #(scl_cycle/4); 
            sda_reg <= 1'b1;    
         end
      end 
      
   endtask  

   task write_i2c_nostop;                      
      input   [7:0]   address;
      input   [7:0]   command;
      input   [7:0]   data;
      input   [7:0]   cnt;
      integer         i,j;

      begin
         for (i = 7; i >= 0; i = i - 1) begin    // address
            @(negedge scl_reg);
            #(scl_cycle/4);                     // middle of clock
            sda_reg <= #1 address[i];
         end                               

         @(negedge scl_reg);                     // ack       
         #(scl_cycle/8)         // added to avoid timing simulation                                // glitch         
         sda_reg <= #1 1'b1;                     // tri-state
         @(posedge scl_reg);                     // ack           
         
         for (j = 7; j >= 0; j = j - 1) begin    // 
            @(negedge scl_reg)
               #(scl_cycle/8);                     // middle of clock
            sda_reg <= #1 command[j];
         end  
         
         if(cnt!=0) begin
           @(negedge scl_reg);                     // ack       
           #(scl_cycle/8)         // added to avoid timing simulation                                // glitch         
           sda_reg <= #1 1'b1;                     // tri-state
           @(posedge scl_reg);                     // ack     
         end 
         
         if(cnt!=0) begin
            for (j = cnt; j > 0; j = j - 1) begin    // data
                for (i = 7; i >= 0; i = i - 1) begin    // address
                  @(negedge scl_reg);
                  #(scl_cycle/4);                     // middle of clock
                  sda_reg <= #1 data[i];
                end   
                
                if(command!=8'h01) begin
                  $display($time,": I2C Master Write Data = %h",data); 
                end 
                                             
                if(j>1) begin                
                  @(negedge scl_reg);                     // ack       
                  #(scl_cycle/8)         // added to avoid timing simulation                                // glitch         
                  sda_reg <= #1 1'b1;                     // tri-state
                  @(posedge scl_reg);      
                  data<=data-1;                     
                end    
            end
         end
                  
      end 		

   endtask


endmodule