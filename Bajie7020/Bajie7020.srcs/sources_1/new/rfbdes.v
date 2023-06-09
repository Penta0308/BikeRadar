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
    parameter SYS_W = 4,
    parameter DEV_W = 24
  ) (
  input  [SYS_W-1:0] RFB_DATA_P,
  input  [SYS_W-1:0] RFB_DATA_N,
  input              RFB_DATAVALID,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
  output [DEV_W-1:0] RFB_AXIS_DATA,
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
  output RFB_AXIS_VALID,
  //output reg RFB_AXIS_VALID,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_DCLK, CAN_DEBUG false, FREQ_HZ 144000000" *) input [0:0]RFB_DCLK_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_DCLK CLK_P" *) input [0:0]RFB_DCLK_clk_p,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RFB_FCLK, CAN_DEBUG false, FREQ_HZ 48000000" *) input [0:0]RFB_FCLK_clk_n,
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 RFB_FCLK CLK_P" *) input [0:0]RFB_FCLK_clk_p,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 RFB_AXIS_CLK CLK" *)
  (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF M_AXIS, ASSOCIATED_RESET des_reset, FREQ_HZ 48000000" *)
  output             RFB_AXIS_CLK,
  
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *)
  output [0:0] RFB_AXIS_USER,
  
  //output reg [0:0] RFB_AXIS_BEGIN,
  //output reg RFB_AXIS_LAST,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 idelay_refclk CLK" *)
  (* X_INTERFACE_PARAMETER = "FREQ_HZ 200000000" *)
  input              idelay_refclk,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 des_reset RST" *)
  (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
  input             des_reset,
  
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 io_reset RST" *)
  (* X_INTERFACE_PARAMETER = "POLARITY ACTIVE_HIGH" *)
  input iod_reset
  );
  
  localparam         num_serial_bits = DEV_W/SYS_W;
  wire clock_enable = 1'b1;
  // Signal declarations
  ////------------------------------
  // After the buffer
  wire   [SYS_W-1:0] data_in_from_pins_int;
  // Between the delay and serdes
  wire [SYS_W-1:0]  data_in_from_pins_delay;
  // Array to use intermediately from the serdes to the internal
  //  devices. bus "0" is the leftmost bus
  wire [SYS_W-1:0]  iserdes_q[0:13];   // fills in starting with 0
  // Create the clock logic
  
  wire [SYS_W-1:0] bitslip;
  assign bitslip = 4'b0000;
  
  wire RFB_DCLK;
  //wire RFB_DCLK_i;
  
  (* IODELAY_GROUP = "RFB_idelay" *)
   IDELAYCTRL IDELAYCTRL_inst (
      .RDY(RFB_AXIS_VALID),       // 1-bit output: Ready output
      .REFCLK(idelay_refclk), // 1-bit input: Reference clock input
      .RST(iod_reset)        // 1-bit input: Active high reset input
   );
  
  IBUFDS 
    #(.DIFF_TERM  ("TRUE"),
      .IOSTANDARD ("LVDS_25"))
    ibufds_inst_dclk
      (.I          (RFB_DCLK_clk_p),
      .IB         (RFB_DCLK_clk_n),
      .O          (RFB_DCLK_i));
      
  assign RFB_DCLK = RFB_DCLK_i;
  /*(* IODELAY_GROUP = "RFB_idelay" *)
  IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
    ) idelaye2_inst_dclk (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(RFB_DCLK),         // 1-bit output: Delayed data output
      .C(idelay_refclk),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(5'b0),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(RFB_DCLK_i),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1'b0),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
    );*/

  wire RFB_FCLK;
  assign RFB_AXIS_CLK = RFB_FCLK;
  wire RFB_FCLK_i;
  wire RFB_FCLK_d;
  
  IBUFDS 
    #(.DIFF_TERM  ("TRUE"),
      .IOSTANDARD ("LVDS_25"))
    ibufds_inst_fclk
      (.I          (RFB_FCLK_clk_p),
      .IB         (RFB_FCLK_clk_n),
      .O          (RFB_FCLK_i));
      
      
  
  (* IODELAY_GROUP = "RFB_idelay" *)
  IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(22),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("CLOCK")          // DATA, CLOCK input signal
    ) idelaye2_inst_fclk (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(RFB_FCLK_d),         // 1-bit output: Delayed data output
      .C(idelay_refclk),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(5'b0),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(RFB_FCLK_i),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1'b0),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
    );
  
  wire rfb_dclk_div;
  
  BUFR #(
     .BUFR_DIVIDE("BYPASS"),   // Values: "BYPASS, 1, 2, 3, 4, 5, 6, 7, 8" 
     .SIM_DEVICE("7SERIES")  // Must be set to "7SERIES" 
  )
  bufr_inst_clkdiv (
      .O(RFB_FCLK),     // 1-bit output: Clock output port
      .CE(1'b0),   // 1-bit input: Active high, clock enable (Divided modes only)
      .CLR(1'b1), // 1-bit input: Active high, asynchronous clear (Divided modes only)
      .I(RFB_FCLK_d)      // 1-bit input: Clock buffer input driven by an IBUF, MMCM or local interconnect
   );
   
   wire rfb_axis_valid_i;
   
  (* IODELAY_GROUP = "RFB_idelay" *)
  IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(28),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
    ) idelaye2_inst_dv (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(rfb_axis_valid_i),         // 1-bit output: Delayed data output
      .C(idelay_refclk),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(5'b0),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(RFB_DATAVALID),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1'b0),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
    );

  genvar pin_count;
  genvar slice_count;
  generate for (pin_count = 0; pin_count < SYS_W; pin_count = pin_count + 1) begin: pins
    // Instantiate the buffers
    ////------------------------------
    // Instantiate a buffer for every bit of the data bus
    IBUFDS
      #(.DIFF_TERM  ("TRUE"),
        .IOSTANDARD ("LVDS_25"))
     ibufds_inst
       (.I          (RFB_DATA_P[pin_count]),
        .IB         (RFB_DATA_N[pin_count]),
        .O          (data_in_from_pins_int[pin_count]));

    // Pass through the delay
    ////-------------------------------
    
   (* IODELAY_GROUP = "RFB_idelay" *)
   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("FIXED"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(8),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   
   IDELAYE2_inst (
      .CNTVALUEOUT(), // 5-bit output: Counter value output
      .DATAOUT(data_in_from_pins_delay[pin_count]),         // 1-bit output: Delayed data output
      .C(idelay_refclk),                     // 1-bit input: Clock input
      .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(5'b0),   // 5-bit input: Counter value input
      .DATAIN(1'b0),           // 1-bit input: Internal delay data input
      .IDATAIN(data_in_from_pins_int[pin_count]),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(1'b0),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST(1'b0)            // 1-bit input: Active-high reset tap-delay input
   );
   
   //assign data_in_from_pins_delay[pin_count] = data_in_from_pins_int[pin_count];
 
     // Instantiate the serdes primitive
     ////------------------------------

     // local wire only for use in this generate loop
     wire cascade_shift;
     wire [SYS_W-1:0] icascade1;
     wire [SYS_W-1:0] icascade2;
     wire RFB_DCLK_inv;

     assign RFB_DCLK_inv = ~ RFB_DCLK;

     // declare the iserdes
     ISERDESE2
       # (
         .DATA_RATE         ("DDR"),
         .DATA_WIDTH        (6),
         .INTERFACE_TYPE    ("NETWORKING"), 
         .DYN_CLKDIV_INV_EN ("FALSE"),
         .DYN_CLK_INV_EN    ("FALSE"),
         .NUM_CE            (2),
         .OFB_USED          ("FALSE"),
         .IOBDELAY          ("BOTH"),
         .SERDES_MODE       ("MASTER"))
       iserdese2_master (
         .Q1                (iserdes_q[0][pin_count]),
         .Q2                (iserdes_q[1][pin_count]),
         .Q3                (iserdes_q[2][pin_count]),
         .Q4                (iserdes_q[3][pin_count]),
         .Q5                (iserdes_q[4][pin_count]),
         .Q6                (iserdes_q[5][pin_count]),
         .Q7                (iserdes_q[6][pin_count]),
         .Q8                (iserdes_q[7][pin_count]),
         .SHIFTOUT1         (),
         .SHIFTOUT2         (),
         .BITSLIP           (bitslip[pin_count]),                             // 1-bit Invoke Bitslip. This can be used with any DATA_WIDTH, cascaded or not.
                                                                   // The amount of BITSLIP is fixed by the DATA_WIDTH selection.
         .CE1               (clock_enable),                        // 1-bit Clock enable input
         .CE2               (clock_enable),                        // 1-bit Clock enable input
         .CLK               (RFB_DCLK),                              // Fast clock driven by MMCM
         .CLKB              (RFB_DCLK_inv),                      // Locally inverted fast 
         .CLKDIV            (RFB_FCLK),                          // Slow clock from MMCM
         .CLKDIVP           (1'b0),
         .D                 (data_in_from_pins_int[pin_count]),  // 1-bit Input signal from IOB 
         .DDLY              (data_in_from_pins_delay[pin_count]),// 1-bit Input from Input Delay component 
         .RST               (des_reset),                            // 1-bit Asynchronous reset only.
         .SHIFTIN1          (1'b0),
         .SHIFTIN2          (1'b0),
    // unused connections
         .DYNCLKDIVSEL      (1'b0),
         .DYNCLKSEL         (1'b0),
         .OFB               (1'b0),
         .OCLK              (1'b0),
         .OCLKB             (1'b0),
         .O                 ());                                   // unregistered output of ISERDESE1

     // Concatenate the serdes outputs together. Keep the timesliced
     //   bits together, and placing the earliest bits on the right
     //   ie, if data comes in 0, 1, 2, 3, 4, 5, 6, 7, ...
     //       the output will be 3210, 7654, ...
     ////---------------------------------------------------------
     for (slice_count = 0; slice_count < num_serial_bits; slice_count = slice_count + 1) begin: in_slices
        // This places the first data in time on the right
        assign RFB_AXIS_DATA[slice_count*SYS_W+:SYS_W] =
          iserdes_q[num_serial_bits-slice_count-1];
        // To place the first data in time on the left, use the
        //   following code, instead
        // assign data_in_to_device[slice_count*SYS_W+:SYS_W] =
        //   iserdes_q[slice_count];
     end
  end
  endgenerate
  
  //reg sample_active;
  //reg [17:0] sample_n;
  //wire [17:0] sample_q;
  //wire [17:0] sample_r;
  //assign sample_q = 18'd14400;
  //assign sample_r = 18'd14399;
  
  //reg sample_valid;
  assign RFB_AXIS_USER[0] = rfb_axis_valid_i;
  /*reg sample_begin, sample_last, sample_valid;
  assign RFB_AXIS_USER[2] = sample_begin;
  assign RFB_AXIS_USER[1] = sample_valid;
  assign RFB_AXIS_USER[0] = sample_last;
  
  always @(posedge RFB_FCLK) begin
    if(des_reset) begin
      sample_active <= 0;
      sample_n <= 0;
      sample_begin <= 0;
      sample_last <= 0;
      sample_valid <= 0;
    end else begin
      if(sample_valid) begin
        sample_begin <= 0;
        sample_n = sample_n + 1;
        if(sample_n == sample_q) begin
          sample_valid <= 0;
          sample_last <= 0;
        end else if(sample_n == sample_r) begin
          sample_last <= 1;
        end
      end else begin
        if(rfb_axis_valid_i) begin
          sample_valid <= 1;
          sample_begin <= 1;
        end
      end
    end
  end*/

endmodule
