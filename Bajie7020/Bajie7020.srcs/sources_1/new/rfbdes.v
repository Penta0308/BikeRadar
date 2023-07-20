`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 12:53:36 PM
// Design Name: 
// Module Name: rfbdes
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rfbdes #(
din_idelay_tap = 22
) (
  input  [3:0] RFB_IN_p,
  input  [3:0] RFB_IN_n,
  input        RFB_IN_dv,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
  output [23:0] RFB_AXIS_DATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
  output reg RFB_AXIS_VALID,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *) input [0:0] RFB_DCLK_clk_p,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *) input [0:0] RFB_FCLK_clk_p,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK" *)
  (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET reset, FREQ_HZ 48000000" *)
  output       RFB_AXIS_CLK,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
  output reg [0:0] RFB_AXIS_USER,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_refclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 200000000" *)
  input              idelay_refclk,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
  (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
  input             reset,
  
    output [5:0] isd_q0,
    output [5:0] isd_q1,
    output [5:0] isd_q2,
    output [5:0] isd_q3,
    output [5:0] isd_q4,
    output [5:0] isd_q5,
    output reg isd_bitslip,
    output reg [1:0] bitslipcount
  );
  
  wire clock_enable = 1'b1;
  
  wire [5:0] din_i;
  wire [5:0] din_d;
  
  wire [7:0] isd_q[5:0];
  
  assign isd_q0 = isd_q[0];
  assign isd_q1 = isd_q[1];
  assign isd_q2 = isd_q[2];
  assign isd_q3 = isd_q[3];
  assign isd_q4 = isd_q[4];
  assign isd_q5 = isd_q[5];
  
  //reg isd_bitslip;
  
  wire idelayctrl_ready;
  
  
  (* IODELAY_GROUP = "RFB_idelay" *)
   IDELAYCTRL IDELAYCTRL_inst (
      .RDY(idelayctrl_ready),       // 1-bit output: Ready output
      .REFCLK(idelay_refclk), // 1-bit input: Reference clock input
      .RST(reset)        // 1-bit input: Active high reset input
   );
  
  IBUFDS 
    #(.DIFF_TERM  ("TRUE"),
      .IOSTANDARD ("LVDS_25"))
    ibufds_inst_dclk
      (.I          (RFB_DCLK_clk_p),
      .IB         (RFB_DCLK_clk_n),
      .O          (RFB_DCLK_i));
    
    assign RFB_DCLK_o = RFB_DCLK_i;
  
    IBUFDS #(.DIFF_TERM  ("TRUE"), .IOSTANDARD ("LVDS_25")) ibufds_inst_fclk
    (.I          (RFB_FCLK_clk_p),
    .IB         (RFB_FCLK_clk_n),
    .O          (din_i[4]));
    IBUFDS #(.DIFF_TERM  ("TRUE"), .IOSTANDARD ("LVDS_25")) ibufds_inst_d0
    (.I          (RFB_IN_p[0]),
    .IB         (RFB_IN_n[0]),
    .O          (din_i[0]));
    IBUFDS #(.DIFF_TERM  ("TRUE"), .IOSTANDARD ("LVDS_25")) ibufds_inst_d1
    (.I          (RFB_IN_p[1]),
    .IB         (RFB_IN_n[1]),
    .O          (din_i[1]));
    IBUFDS #(.DIFF_TERM  ("TRUE"), .IOSTANDARD ("LVDS_25")) ibufds_inst_d2
    (.I          (RFB_IN_p[2]),
    .IB         (RFB_IN_n[2]),
    .O          (din_i[2]));
    IBUFDS #(.DIFF_TERM  ("TRUE"), .IOSTANDARD ("LVDS_25")) ibufds_inst_d3
    (.I          (RFB_IN_p[3]),
    .IB         (RFB_IN_n[3]),
    .O          (din_i[3]));
    IBUF #(.IOSTANDARD ("LVCMOS25")) ibuf_inst_dv
    (.I          (RFB_IN_dv),
    .O          (din_i[5]));
    
        
    wire RFB_DCLK_div;

    BUFR #(
     .BUFR_DIVIDE("3"),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
     .SIM_DEVICE("7SERIES")  // Must be set to "7SERIES" 
    )
    bufr_inst_clkdiv (
      .O(RFB_DCLK_div),
      .CE(1'b1), .CLR(1'b0),
      .I(RFB_DCLK_i)
    );
   
    assign RFB_AXIS_CLK = RFB_DCLK_div;
    wire RFB_DCLK_q;
    assign RFB_DCLK_q = ~ RFB_DCLK_o;
    
    genvar isd_count;
    generate for (isd_count = 0; isd_count < 6; isd_count = isd_count + 1) begin: isds
        (* IODELAY_GROUP = "RFB_idelay" *)
        IDELAYE2 #(.CINVCTRL_SEL("FALSE"), .DELAY_SRC("IDATAIN"), .HIGH_PERFORMANCE_MODE("FALSE"), .IDELAY_TYPE("FIXED"),
        .IDELAY_VALUE(din_idelay_tap), .PIPE_SEL("FALSE"), .REFCLK_FREQUENCY(200.0), .SIGNAL_PATTERN("DATA")) idelaye2_inst
        (.CNTVALUEOUT(), .C(idelay_refclk), .CE(1'b0), .CINVCTRL(1'b0), .CNTVALUEIN(5'b0),
        .DATAIN(1'b0), .INC(1'b0), .LD(1'b0), .LDPIPEEN(1'b0), .REGRST(1'b0),
        .DATAOUT(din_d[isd_count]), .IDATAIN(din_i[isd_count]));
        
        
        ISERDESE2 #(.DATA_RATE ("DDR"), .DATA_WIDTH (6), .INTERFACE_TYPE ("NETWORKING"), .DYN_CLKDIV_INV_EN ("FALSE"), .DYN_CLK_INV_EN ("FALSE"),
        .NUM_CE (2), .OFB_USED ("FALSE"), .IOBDELAY ("BOTH"), .SERDES_MODE ("MASTER")) iserdese2_master (
        .Q1 (isd_q[isd_count][0]), .Q2 (isd_q[isd_count][1]), .Q3 (isd_q[isd_count][2]), .Q4 (isd_q[isd_count][3]),
        .Q5 (isd_q[isd_count][4]), .Q6 (isd_q[isd_count][5]), .Q7 (isd_q[isd_count][6]), .Q8 (isd_q[isd_count][7]),
        .SHIFTOUT1 (), .SHIFTOUT2 (),
        .BITSLIP (isd_bitslip),
        .CE1 (clock_enable), .CE2 (clock_enable),
        .CLK (RFB_DCLK_o), .CLKB (RFB_DCLK_q),
        .CLKDIV (RFB_DCLK_div), .CLKDIVP (1'b0),
        .D (din_i[isd_count]), .DDLY (din_d[isd_count]),
        .RST (reset),
        .SHIFTIN1 (1'b0), .SHIFTIN2 (1'b0),
        
        .DYNCLKDIVSEL      (1'b0),
        .DYNCLKSEL         (1'b0),
        .OFB               (1'b0),
        .OCLK              (1'b0),
        .OCLKB             (1'b0),
        .O                 ());
    end
    endgenerate
    
    //reg [2:0] bitslipcount;
    
    reg dv_p;
    wire dv = isd_q[5][3];
    
    always @(posedge RFB_DCLK_div) begin
        if(reset || !idelayctrl_ready) begin
            RFB_AXIS_VALID <= 0;
            isd_bitslip <= 0;
            bitslipcount <= 0;
            RFB_AXIS_USER[0] <= 0;
            dv_p <= dv;
        end else begin
            RFB_AXIS_USER[0] <= dv ^ dv_p;
            dv_p <= dv;
            if(bitslipcount == 2'b00) begin
                if(isd_q[4][5:0] == 6'b111000) begin
                    RFB_AXIS_VALID <= 1;
                    isd_bitslip <= 0;
                end else begin
                    RFB_AXIS_VALID <= 0;
                    isd_bitslip <= 1;
                    bitslipcount <= 1;
                end
            end else if(bitslipcount == 1) begin
                isd_bitslip <= 0;
                bitslipcount = 2;
            end else if(bitslipcount == 2) begin
                bitslipcount = 3;
            end else if(bitslipcount == 3) begin
                bitslipcount = 0;
            end
        end
    end

      
    assign RFB_AXIS_DATA[23] = isd_q[1][0];
    assign RFB_AXIS_DATA[22] = ~isd_q[0][0];
    assign RFB_AXIS_DATA[21] = isd_q[1][1];
    assign RFB_AXIS_DATA[20] = ~isd_q[0][1];
    assign RFB_AXIS_DATA[19] = isd_q[1][2];
    assign RFB_AXIS_DATA[18] = ~isd_q[0][2];
    assign RFB_AXIS_DATA[17] = isd_q[1][3];
    assign RFB_AXIS_DATA[16] = ~isd_q[0][3];
    assign RFB_AXIS_DATA[15] = isd_q[1][4];
    assign RFB_AXIS_DATA[14] = ~isd_q[0][4];
    assign RFB_AXIS_DATA[13] = isd_q[1][5];
    assign RFB_AXIS_DATA[12] = ~isd_q[0][5];
    
    assign RFB_AXIS_DATA[10] = isd_q[2][0];
    assign RFB_AXIS_DATA[11] = isd_q[3][0];
    assign RFB_AXIS_DATA[8] = isd_q[2][1];
    assign RFB_AXIS_DATA[9] = isd_q[3][1];
    assign RFB_AXIS_DATA[6] = isd_q[2][2];
    assign RFB_AXIS_DATA[7] = isd_q[3][2];
    assign RFB_AXIS_DATA[4] = isd_q[2][3];
    assign RFB_AXIS_DATA[5] = isd_q[3][3];
    assign RFB_AXIS_DATA[2] = isd_q[2][4];
    assign RFB_AXIS_DATA[3] = isd_q[3][4];
    assign RFB_AXIS_DATA[0] = isd_q[2][5];
    assign RFB_AXIS_DATA[1] = isd_q[3][5];
endmodule
