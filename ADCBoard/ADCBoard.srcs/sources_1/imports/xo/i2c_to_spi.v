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
// V1.0 | J.T     |5/2010     |Initial version
//-------------------------------------------------------------------------

`timescale 1ns/100ps

module i2c_to_spi #(parameter  CLOCK_SEL= 1,		//  SCLK = clk / (2 * (CLOCK_SEL + 1)) = clk / 4
                    parameter  I2C_SLAVE_ADDR = 7'b1010010,
// spi parameter          
parameter  INTERVAL_LENGTH = 2,
parameter  DELAY_TIME      = 2,    
parameter  ACTUAL_MAX      = 7
) (
    input wire clk,
    input wire areset,
    input wire scl,
    input wire sda_i,
    output wire sda_oL,
    input wire MISO_MASTER,
    output reg MOSI_MASTER,
    output reg [4:0] SS_N_MASTER,
    output reg SCLK_MASTER,
    output reg intn, 
    output wire [7:0] buf_dai, 
    output wire [7:0] buf_dbi, 
    output wire [6:0] buf_aa, 
    output reg [6:0] buf_ab, 
    output wire buf_cea,
    output reg buf_ceb,
    output wire buf_wea, 
    output reg buf_web, 
    input wire [7:0] buf_dao, 
    input wire [7:0] buf_dbo
);

//// generic ports
//input wire clk;
//input wire areset;                  // System Reset

//// i2c ports
//input  wire      scl;          // SCL clock line
//inout  wire      sda;
//output intn;
////spi interface
//input wire MISO_MASTER;
//output reg MOSI_MASTER;
//output reg [4:0] SS_N_MASTER;
//output reg SCLK_MASTER;


/*****************************************
 Define states of the state machine
*****************************************/

//parameter I2C_SLAVE_ADDR = 7'b1010010;

localparam idle=5'h0, addr7=5'h1, addr6=5'h2, addr5=5'h3,
          addr4=5'h4, addr3=5'h5, addr2=5'h6, addr1=5'h7,
          det_rw=5'h8, ack=5'h9, data7=5'ha, data6=5'hb,
          data5=5'hc, data4=5'hd, data3=5'he, data2=5'hf,
          data1=5'h10, data0=5'h11,wait_spi_1=5'h12,wait_spi_2=5'h13;

localparam           ST_IDLE       = 3'b000;
localparam           ST_CNT        = 3'b001;
localparam           ST_LOAD       = 3'b010;
localparam           ST_WAIT       = 3'b011;
localparam           ST_TRANS      = 3'b100;
localparam           ST_TURNAROUND = 3'b101;
localparam           ST_INTERVAL   = 3'b110;   

wire sda_oe;          // controls sda output enable                                                            
reg start, stop;                 // start and stop detection of I2C cycles
reg [4:0] sm_state;              // state machine 
reg [7:0] shift;                 // shift register attached to I2C controller
reg r_w;                         // indicate read/write operation
reg ack_out;                     // acknowledge output from slave to master
reg sda_en;                      // OE control of sda signal, could use open drain feature
reg vld_plse;                    // data valid pulse

wire start_rst;

reg sda_in_delay1;
reg sda_in_delay2;
reg sda_in_delay3;

reg  scl_delay1;
reg  scl_delay2;
reg  scl_delay3;

wire posedge_scl;
wire negedge_scl;

wire posedge_sda;
wire negedge_sda;

//reg intn;

reg [7:0] command;
reg cmd_flg;
reg [7:0] spi_cfg;
reg [7:0] i2c_in_cnt;  
reg [7:0] i2c_out_cnt;  
reg fst_addr;

//spi register
wire  SHIFT_DIRECTION ;
wire  CLOCK_PHASE     ;
wire  CLOCK_POLARITY  ;

reg spi_start;
reg spi_stop;
reg [7:0] i2c_data_cnt;


 reg [7:0]  rx_shift_data;
 reg [7:0]  tx_shift_data; 
 reg [7:0]  clock_cnt;
 reg [5:0]  data_cnt;
 reg [2:0]  c_status;
 reg [2:0]  n_status; 
 reg wait_one_tick_done;
 
//wire [7:0] data_in_a; //from dpram port a
//wire [7:0] data_out_a;         //to  dpram port a 
//wire clken_a;
//wire we_a;
//wire [6:0] address_a; 

//wire  [7:0] data_in_b;         //from dpram port b 
//wire [7:0] data_out_b;         //to  dpram port b
//reg we_b;
//reg clken_b;
//reg [6:0] address_b;

// dpram buff(
//    .DataInA(data_out_a),
//    .DataInB(data_out_b),
//    .AddressA(address_a),
//    .AddressB(address_b),
//    .ClockA(clk),
//    .ClockB(clk),
//    .ClockEnA(clken_a),
//    .ClockEnB(clken_b),
//    .WrA(we_a),
//    .WrB(we_b),
//    .ResetA(areset),
//    .ResetB(areset),
//    .QA(data_in_a),
//    .QB(data_in_b)
//);    

//assign sda_t = ~sda_oe;
//assign sda_o = 1'b0;

//assign sda=sda_oe ? 1'b0 : 1'bz; 
assign sda_oL = sda_oe;

assign  SHIFT_DIRECTION=spi_cfg[2];
assign  CLOCK_PHASE    =spi_cfg[1];
assign  CLOCK_POLARITY =spi_cfg[0];

//interface with spram
assign buf_wea=!r_w;
assign buf_cea=r_w?(spi_stop?1'b1:1'b0):((command==8'h02)?posedge_scl && ack_out && vld_plse &&!cmd_flg:1'b0);
assign buf_dai=shift;
assign buf_aa=r_w?i2c_out_cnt[6:0]:i2c_in_cnt[6:0];

assign buf_dbi = rx_shift_data;

always @ (posedge clk or posedge areset) begin
   if (areset) begin
      sda_in_delay1 <= 1'b0;
      sda_in_delay2 <= 1'b0;
      sda_in_delay3 <= 1'b0;
   end
   else begin
         sda_in_delay1 <= sda_i;
         sda_in_delay2 <= sda_in_delay1;
         sda_in_delay3 <= sda_in_delay2;
   end
end

assign posedge_sda = !sda_in_delay3 && sda_in_delay2;
assign negedge_sda = sda_in_delay3  && !sda_in_delay2;

always @ (posedge clk or posedge areset) begin
   if (areset) begin
      scl_delay1 <= 1'b0;
      scl_delay2 <= 1'b0;
      scl_delay3 <= 1'b0;
   end
   else begin
         scl_delay1 <= scl;
         scl_delay2 <= scl_delay1;
         scl_delay3 <= scl_delay2;
   end
end

assign posedge_scl = !scl_delay3 && scl_delay2;
assign negedge_scl = scl_delay3  && !scl_delay2;
/*****************************************
 Generate reset signals for start and stop
*****************************************/
assign start_rst = (sm_state == addr7)? 1'b1 : 1'b0;     // used to reset the start register after we move to addr7
wire start_async_rst = start_rst | areset;               // oring the reset signal external and internal
wire stop_async_rst = start | areset;                    // same for stop reset

/*****************************************
 Detect I2C Cycle Start
*****************************************/
always @ (posedge clk or posedge start_async_rst)
begin
  if (start_async_rst)
     start <=1'b0;
  else if(negedge_sda)
     start <=scl;
end

/*****************************************
 Detect I2C Cycle Stop
*****************************************/
always @(posedge clk or posedge stop_async_rst)
begin
  if (stop_async_rst)
     stop <=1'b0;
  else if(posedge_sda)
     stop <=scl;
end

/*****************************************
FSM check the addr byte and track rw opp
*****************************************/

always @(posedge clk or posedge areset)
begin
 if (areset)
   begin
     sm_state <=  idle;           // reset fsm to idle
     r_w      <=  1'b1;           // initial value for read
     vld_plse <=  1'b0;     
     i2c_in_cnt<=0;  
     i2c_out_cnt<=8'h00;
     cmd_flg<=1'b0;
     fst_addr<=0;
   end
 else
   if(posedge_scl) begin
     case (sm_state)     
     idle : begin
        r_w      <=  1'b1;
        i2c_in_cnt<=0; 
        i2c_out_cnt<=8'h00;
        cmd_flg<=1'b0;
        vld_plse <=  1'b0;
        fst_addr<=0;
        if (start && spi_stop)           // start the I2C addr cycle
              sm_state <=  addr7;
        else if (stop)                                 // stop and go to idle
              sm_state <=  idle;
        else  sm_state <=  idle;
     end
             
     addr7:  if (shift[0] == I2C_SLAVE_ADDR[6])         // checking the slave addr
               sm_state <=  addr6;
             else  sm_state <=  idle;
     
     addr6:  if (shift[0] == I2C_SLAVE_ADDR[5])
               sm_state <=  addr5;
             else  sm_state <=  idle;
     
     addr5:  if (shift[0] == I2C_SLAVE_ADDR[4])
               sm_state <=  addr4;
             else  sm_state <=  idle;
     
     addr4:  if (shift[0] == I2C_SLAVE_ADDR[3])
               sm_state <=  addr3;
             else  sm_state <=  idle;
     
     addr3:  if (shift[0] == I2C_SLAVE_ADDR[2])
               sm_state <=  addr2;
             else  sm_state <=  idle;
     
     addr2:  if (shift[0] == I2C_SLAVE_ADDR[1])
               sm_state <=  addr1;
             else  sm_state <=  idle;
     
     addr1: if (shift[0] == I2C_SLAVE_ADDR[0]) begin
               sm_state <=  det_rw;
               r_w      <=  sda_i;         // store the read / write direction bit
               fst_addr<=1;
            end
            else  sm_state <=  idle;
     
     det_rw: begin     
               sm_state <=  ack;               
             end
          
     ack   : begin     
            sm_state <=  data7;     
            if(r_w) begin
              i2c_out_cnt<=i2c_out_cnt+1;
            end
             end
      
     data7 : if (stop) 
                 sm_state <= idle;     
             else        sm_state <= data6;
     
     data6 : sm_state <=  data5;
     data5 : sm_state <=  data4;
     data4 : sm_state <=  data3;
     data3 : sm_state <=  data2;
     data2 : sm_state <=  data1;
     data1 : begin
       sm_state <=  data0;
       vld_plse <= 1'b1;
       if(fst_addr)
         cmd_flg<=1'b1;
       else
         cmd_flg<=1'b0;
     end
     data0 :
     begin
       fst_addr<=0;
       cmd_flg<=1'b0;
       if(!cmd_flg)
          i2c_in_cnt<=i2c_in_cnt+1;
       vld_plse <= 1'b0;   // detect repeated read, write or read/write
       if (!sda_i & ~r_w)                      // 0 means acknowledged
               sm_state <= ack;
       else if (!sda_i & r_w) begin                 // 0 means acknowledged
               sm_state <= ack;
       end
       else
               sm_state <= idle;
     
     end
     
     default:begin   r_w      <=  1'b1;
                     sm_state <= idle;                               // default state
                     vld_plse <= 1'b0;
                     i2c_in_cnt<=0;
                     i2c_out_cnt<=8'h00;
                     cmd_flg<=1'b0;
                     fst_addr<=0;
             end
     endcase
 end
end

//-----------------------------------------------------register command
always @ (posedge clk or posedge areset)
begin
 if (areset) begin
  command <=  8'h0;
 end
 else if(posedge_scl)
    if (!r_w && ack_out && vld_plse && cmd_flg)
     command <=  shift;
end


//-----------------------------------------------------register spi_cfg
always @ (posedge clk or posedge areset)
begin
 if (areset) begin
  spi_cfg <=  8'hf8;
 end
 else if(posedge_scl)
    if (!r_w && ack_out && vld_plse && command==8'h01 && !cmd_flg)
     spi_cfg <=  shift;
end

//-----------------------------------------------------register spi_start 
always @(posedge clk or posedge areset)
     if(areset) begin
       spi_start<=1'b0;
     end else if (sm_state==data7 && stop && command==8'h02 && !r_w) begin
       spi_start<= 1'b1;
     end else if (c_status == ST_CNT && i2c_data_cnt==0) begin
       spi_start<=1'b0;   
     end
       
//-----------------------------------------------------register spi_stop
always @(posedge clk or posedge areset)
     if(areset)
       spi_stop               <=1'b1;
     else if (c_status == ST_CNT && i2c_data_cnt==0)
       spi_stop               <= 1'b1;
     else if (sm_state==data7 && stop && command==8'h02 && !r_w)
       spi_stop               <=1'b0;            
/********************************************
 Read cycle (slave trasmit, master receive)
 Write Cycle (slave receive, master transmit)
 Slave generate ACKOUT during write cycle
********************************************/

always @(posedge clk or posedge areset)
begin                                      // data should be ready on SDA line when SCL is high
 if (areset)
    ack_out <=0;
 else if(negedge_scl)
 if (sm_state == det_rw)
     ack_out <=1'b1;
 else if (sm_state == data0)
     if (!r_w)                                          // if slave is rx, acknowledge after successful receive
   ack_out <=1'b1;
     else                                     // if slave is tx, acknowledge comes from Master
   ack_out <=1'b0;
 else
  ack_out <= 1'b0;
end


/********************************************
 Enable starting from ACK state
********************************************/

always @(posedge clk or posedge areset)
begin
 if (areset)
  sda_en <= 0;
 else if(negedge_scl)
 if (r_w && (sm_state == ack))
  sda_en <= ! buf_dao [7];
 else if (r_w && ((sm_state > ack) && (sm_state < data0)))
       sda_en <= ~shift[6];
 else
         sda_en <= 0;
end

/********************************************
 SDA OE cntr gen '1' will pull the line low
********************************************/

assign sda_oe = ((ack_out == 1'b1) | (sda_en == 1'b1));                         // sda_out is logic '0' at the top level
                                                                                // sda_oe cntrl sda_out at top level
/*******************************
 Shift operation for READ data
*******************************/

always @(posedge clk or posedge areset)
begin
 if (areset)                                                             // Reset added to make it work
  shift <=8'b0;
 else if(negedge_scl)
  if ((sm_state == idle) && (start))
   shift[0] <= sda_i;
  else if ((sm_state >= addr7) && (sm_state <= addr1))
   shift[0] <= sda_i;
  else if (r_w && (sm_state == ack))                            
   shift <= buf_dao;                
  else if ((sm_state > ack) && (sm_state <=data0))                // start shift the data out to SDA line
   begin              // 2nd version
    shift[7:1] <= shift[6:0];
    shift[0]   <= sda_i;
   end
end
//--------------------------------spi----------------------------------------              
    //-----------------------------------------------------register address_b 
   always @(posedge clk or posedge areset)
     if(areset) begin
       buf_ab<=0;    
     end else if (c_status==ST_INTERVAL && n_status==ST_CNT) begin
       buf_ab<= buf_ab+1;
     end else if (c_status == ST_IDLE) begin
       buf_ab<=0;   
     end
 
   //-----------------------------------------------------register clken_b 
   always @(posedge clk or posedge areset)
     if(areset) begin
       buf_ceb<=0;    
     end else if (c_status==ST_LOAD && n_status==ST_WAIT) begin
       buf_ceb<=1;
     end else if (c_status==ST_TURNAROUND && n_status==ST_INTERVAL) begin
       buf_ceb<=1;   
     end else
       buf_ceb<=0;
     
   
   //-----------------------------------------------------register we_b 
   always @(posedge clk or posedge areset)
     if(areset) begin
       buf_web<=0;    
     end else if (c_status==ST_IDLE || c_status==ST_CNT) begin
       buf_web<=0;
     end else if (c_status == ST_WAIT) begin
       buf_web<=1;   
     end
   
   //-----------------------------------------------------register i2c_data_cnt 
   always @(posedge clk or posedge areset)
     if(areset) begin
       i2c_data_cnt<=0;
     end else if (sm_state==data7 && stop && command==8'h02 && !r_w) begin
       i2c_data_cnt<= i2c_in_cnt-1;
     end else if (c_status == ST_CNT) begin
       i2c_data_cnt<=i2c_data_cnt-1;   
     end      

   always @(posedge clk or posedge areset) begin
     if (areset)
        SS_N_MASTER <= {5{1'b1}};     
     else if ((c_status == ST_TRANS) || (c_status == ST_WAIT) || (c_status == ST_TURNAROUND))
        SS_N_MASTER <= spi_cfg[7:3];
     else 
        SS_N_MASTER <= {5{1'b1}};
     end
     
   // Generate SCLK 
   always @(posedge clk or posedge areset)
     if (areset) 
        SCLK_MASTER    <=  CLOCK_POLARITY;
     else if (command==8'h01)
        SCLK_MASTER    <=  CLOCK_POLARITY;
     else if ((c_status == ST_TRANS)  && (clock_cnt == CLOCK_SEL))
        SCLK_MASTER    <= ~SCLK_MASTER;
     
   always @(posedge clk or posedge areset)
     if (areset)
        rx_shift_data       <=0;
     else if (((CLOCK_POLARITY==0) && (clock_cnt == CLOCK_SEL) && (CLOCK_PHASE == SCLK_MASTER) && (c_status == ST_TRANS)) || ((CLOCK_POLARITY==1) && (clock_cnt == CLOCK_SEL) && (CLOCK_PHASE != SCLK_MASTER) && (c_status == ST_TRANS)))  begin
        if (SHIFT_DIRECTION)
           rx_shift_data    <= {MISO_MASTER,rx_shift_data[7:1]};
        else
           rx_shift_data    <= {rx_shift_data,MISO_MASTER};
     end
  
   always @(posedge clk or posedge areset)
      if (areset || (c_status == ST_IDLE))
         clock_cnt <= 0;
      else if (clock_cnt == CLOCK_SEL)
         clock_cnt <= 0;
      else
         clock_cnt <= clock_cnt + 1;
         
   always @(posedge clk or posedge areset) begin
      if (areset)
         c_status <= ST_IDLE;
      else
         c_status <= n_status;
      end
        

     always @(negedge clk)
       begin
       case(c_status)
       ST_IDLE:   if (spi_start)
                       n_status <= ST_CNT;
                  else 
                       n_status <= ST_IDLE;
       ST_CNT:   begin
                    if(i2c_data_cnt==0)
                      n_status <= ST_IDLE;
                    else
                      n_status <= ST_LOAD;
       
                 end                
       ST_LOAD:  begin
                     if (DELAY_TIME == 0)
                         n_status <= ST_TRANS;
                     else
                         n_status <= ST_WAIT;
                  end
       ST_WAIT:   begin
                     if ((clock_cnt == CLOCK_SEL) && (data_cnt == DELAY_TIME - 1))
                         n_status <= ST_TRANS;
                     else 
                         n_status <= ST_WAIT;
                  end
       ST_TRANS:  begin
                     if ((clock_cnt == CLOCK_SEL) &&
                         (data_cnt == ACTUAL_MAX) &&
                         (SCLK_MASTER != CLOCK_POLARITY))                      
                         n_status <= ST_TURNAROUND;
                     else
                         n_status <= ST_TRANS;
                  end
       ST_TURNAROUND:  begin
                        if (clock_cnt == CLOCK_SEL)
                          if (INTERVAL_LENGTH)
                             n_status <= ST_INTERVAL;
                          else 
                             n_status <= ST_CNT;
                       end
       ST_INTERVAL:  begin
                       if ((clock_cnt == CLOCK_SEL) && (data_cnt == INTERVAL_LENGTH))
                          n_status <= ST_CNT;
                       else
                          n_status <= ST_INTERVAL;
                       end
       default:     n_status <= ST_IDLE;
       endcase
       end

   always @(posedge clk or posedge areset)  begin
      if (areset)
         data_cnt <= 0;
      else if ((c_status == ST_WAIT)   && (clock_cnt == CLOCK_SEL) &&  (data_cnt == DELAY_TIME - 1))
         data_cnt <= 0;
      else if ((c_status == ST_TRANS)  && (clock_cnt == CLOCK_SEL) && (data_cnt == ACTUAL_MAX) && (CLOCK_POLARITY != SCLK_MASTER))
         data_cnt <= 0;
      else if ((c_status == ST_INTERVAL) && (clock_cnt == CLOCK_SEL) && (data_cnt == INTERVAL_LENGTH))
         data_cnt <= 0;
      else if (((c_status == ST_WAIT)   && (clock_cnt == CLOCK_SEL)) || 
               ((CLOCK_POLARITY==0) && (c_status == ST_TRANS)  && (clock_cnt == CLOCK_SEL)  && (SCLK_MASTER==1))|| 
               ((CLOCK_POLARITY==1) && (c_status == ST_TRANS)  && (clock_cnt == CLOCK_SEL)  && (SCLK_MASTER==0)) ||
               ((c_status == ST_INTERVAL) && (clock_cnt == CLOCK_SEL)))
         data_cnt <= data_cnt + 1;
      end

   
    always @(posedge clk or posedge areset) begin
      if (areset) 
          wait_one_tick_done <= 1'b0;
      else if (CLOCK_PHASE == 0)
          wait_one_tick_done <= 1'b1;
      else if ((c_status == ST_TRANS) && (clock_cnt == CLOCK_SEL) && (data_cnt == 0))
          wait_one_tick_done <= 1'b1;
      else if (data_cnt == 0)
          wait_one_tick_done <= 1'b0;
      end      
 
    always @(posedge clk or posedge areset) begin
      if (areset) begin
         MOSI_MASTER <= 0;
         tx_shift_data <= 0;  end
      else if (((c_status == ST_LOAD) && (n_status == ST_TRANS)) || 
               ((c_status == ST_WAIT) && (n_status == ST_TRANS))) begin
             MOSI_MASTER   <= SHIFT_DIRECTION ? buf_dbo[0] : 
                                                buf_dbo[7];
             tx_shift_data <= SHIFT_DIRECTION ? {1'b0, buf_dbo[7:1]} :
                                                {buf_dbo, 1'b0}; 
             end
      else if (((CLOCK_POLARITY==0) && (c_status == ST_TRANS) && (clock_cnt == CLOCK_SEL) && (CLOCK_PHASE ^ SCLK_MASTER)) ||((CLOCK_POLARITY==1) &&  (c_status == ST_TRANS) && (clock_cnt == CLOCK_SEL) && (CLOCK_PHASE == SCLK_MASTER)))
            if (wait_one_tick_done) begin
              MOSI_MASTER   <= SHIFT_DIRECTION ? tx_shift_data[0] :
                                                 tx_shift_data[7];
              tx_shift_data <= SHIFT_DIRECTION ? {1'b0, tx_shift_data[7:1]} : 
                                                 {tx_shift_data, 1'b0}; 
            end
      end
      
//-------------------------------------------intn-------------------------
//-----------------------------------------------------register intn 
always @(posedge clk or posedge areset)
     if(areset) begin
       intn<=1'b1;
     end else if (c_status == ST_CNT && i2c_data_cnt==0) begin
       intn<=1'b0;   
     end else if (command==8'h03) begin
       intn<= 1'b1;
     end 
      
endmodule      