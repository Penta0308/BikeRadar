/* Verilog netlist generated by SCUBA ispLever_v8.1_PROD_Build (20) */
/* Module Version: 3.5 */
/* C:\ispTOOLS8_1\ispfpga\bin\nt\scuba.exe -w -lang verilog -synth synplify -bus_exp 7 -bb -arch mj5g00 -type sdpram -rdata_width 8 -data_width 8 -num_rows 128 -outData REGISTERED -e  */
/* Fri Dec 10 17:18:20 2010 */


`timescale 1 ns / 1 ps
module DPRAM (WrAddress, Data, WrClock, WE, WrClockEn, RdAddress, 
    RdClock, RdClockEn, Reset, Q);
    input wire [6:0] WrAddress;
    input wire [7:0] Data;
    input wire WrClock;
    input wire WE;
    input wire WrClockEn;
    input wire [6:0] RdAddress;
    input wire RdClock;
    input wire RdClockEn;
    input wire Reset;
    output wire [7:0] Q;

    wire func_and_inet;
    wire func_and_inet_1;
    wire func_and_inet_2;
    wire waddr6_inv;
    wire func_and_inet_3;
    wire func_and_inet_4;
    wire waddr5_inv;
    wire func_and_inet_5;
    wire waddr4_inv;
    wire func_and_inet_6;
    wire scuba_vhi;
    wire func_and_inet_7;
    wire dataout7_ffin;
    wire dataout6_ffin;
    wire dataout5_ffin;
    wire dataout4_ffin;
    wire dataout3_ffin;
    wire dataout2_ffin;
    wire dataout1_ffin;
    wire dataout0_ffin;
    wire mdL0_0_0;
    wire mdL0_0_1;
    wire mdL0_0_2;
    wire mdL0_0_3;
    wire mdL0_0_4;
    wire mdL0_0_5;
    wire mdL0_0_6;
    wire mdL0_0_7;
    wire dec0_wre3;
    wire mdL0_1_0;
    wire mdL0_1_1;
    wire mdL0_1_2;
    wire mdL0_1_3;
    wire mdL0_1_4;
    wire mdL0_1_5;
    wire mdL0_1_6;
    wire mdL0_1_7;
    wire dec1_wre7;
    wire mdL0_2_0;
    wire mdL0_2_1;
    wire mdL0_2_2;
    wire mdL0_2_3;
    wire mdL0_2_4;
    wire mdL0_2_5;
    wire mdL0_2_6;
    wire mdL0_2_7;
    wire dec2_wre11;
    wire mdL0_3_0;
    wire mdL0_3_1;
    wire mdL0_3_2;
    wire mdL0_3_3;
    wire mdL0_3_4;
    wire mdL0_3_5;
    wire mdL0_3_6;
    wire mdL0_3_7;
    wire dec3_wre15;
    wire mdL0_4_0;
    wire mdL0_4_1;
    wire mdL0_4_2;
    wire mdL0_4_3;
    wire mdL0_4_4;
    wire mdL0_4_5;
    wire mdL0_4_6;
    wire mdL0_4_7;
    wire dec4_wre19;
    wire mdL0_5_0;
    wire mdL0_5_1;
    wire mdL0_5_2;
    wire mdL0_5_3;
    wire mdL0_5_4;
    wire mdL0_5_5;
    wire mdL0_5_6;
    wire mdL0_5_7;
    wire dec5_wre23;
    wire mdL0_6_0;
    wire mdL0_6_1;
    wire mdL0_6_2;
    wire mdL0_6_3;
    wire mdL0_6_4;
    wire mdL0_6_5;
    wire mdL0_6_6;
    wire mdL0_6_7;
    wire dec6_wre27;
    wire mdL0_7_0;
    wire mdL0_7_1;
    wire mdL0_7_2;
    wire mdL0_7_3;
    wire mdL0_7_4;
    wire mdL0_7_5;
    wire mdL0_7_6;
    wire mdL0_7_7;
    wire dec7_wre31;

    INV INV_2 (.A(WrAddress[4]), .Z(waddr4_inv));

    INV INV_1 (.A(WrAddress[5]), .Z(waddr5_inv));

    INV INV_0 (.A(WrAddress[6]), .Z(waddr6_inv));

    // synopsys translate_off
    defparam LUT4_15.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_15 (.AD3(WE), .AD2(WrClockEn), .AD1(waddr4_inv), .AD0(waddr5_inv), 
        .DO0(func_and_inet))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_14.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_14 (.AD3(func_and_inet), .AD2(waddr6_inv), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec0_wre3))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_13.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_13 (.AD3(WE), .AD2(WrClockEn), .AD1(WrAddress[4]), .AD0(waddr5_inv), 
        .DO0(func_and_inet_1))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_12.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_12 (.AD3(func_and_inet_1), .AD2(waddr6_inv), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec1_wre7))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_11.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_11 (.AD3(WE), .AD2(WrClockEn), .AD1(waddr4_inv), .AD0(WrAddress[5]), 
        .DO0(func_and_inet_2))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_10.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_10 (.AD3(func_and_inet_2), .AD2(waddr6_inv), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec2_wre11))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_9.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_9 (.AD3(WE), .AD2(WrClockEn), .AD1(WrAddress[4]), .AD0(WrAddress[5]), 
        .DO0(func_and_inet_3))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_8.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_8 (.AD3(func_and_inet_3), .AD2(waddr6_inv), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec3_wre15))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_7.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_7 (.AD3(WE), .AD2(WrClockEn), .AD1(waddr4_inv), .AD0(waddr5_inv), 
        .DO0(func_and_inet_4))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_6.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_6 (.AD3(func_and_inet_4), .AD2(WrAddress[6]), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec4_wre19))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_5.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_5 (.AD3(WE), .AD2(WrClockEn), .AD1(WrAddress[4]), .AD0(waddr5_inv), 
        .DO0(func_and_inet_5))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_4.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_4 (.AD3(func_and_inet_5), .AD2(WrAddress[6]), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec5_wre23))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_3.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_3 (.AD3(WE), .AD2(WrClockEn), .AD1(waddr4_inv), .AD0(WrAddress[5]), 
        .DO0(func_and_inet_6))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_2.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_2 (.AD3(func_and_inet_6), .AD2(WrAddress[6]), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec6_wre27))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam LUT4_1.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_1 (.AD3(WE), .AD2(WrClockEn), .AD1(WrAddress[4]), .AD0(WrAddress[5]), 
        .DO0(func_and_inet_7))
             /* synthesis initval="0x8000" */;

    VHI scuba_vhi_inst (.Z(scuba_vhi));

    // synopsys translate_off
    defparam LUT4_0.initval =  16'h8000 ;
    // synopsys translate_on
    ROM16X1 LUT4_0 (.AD3(func_and_inet_7), .AD2(WrAddress[6]), .AD1(scuba_vhi), 
        .AD0(scuba_vhi), .DO0(dec7_wre31))
             /* synthesis initval="0x8000" */;

    // synopsys translate_off
    defparam FF_7.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_7 (.D(dataout7_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[7]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_6.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_6 (.D(dataout6_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[6]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_5.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_5 (.D(dataout5_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[5]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_4.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_4 (.D(dataout4_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[4]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_3.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_3 (.D(dataout3_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[3]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_2.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_2 (.D(dataout2_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[2]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_1.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_1 (.D(dataout1_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[1]))
             /* synthesis GSR="ENABLED" */;

    // synopsys translate_off
    defparam FF_0.GSR = "ENABLED" ;
    // synopsys translate_on
    FD1P3DX FF_0 (.D(dataout0_ffin), .SP(RdClockEn), .CK(RdClock), .CD(Reset), 
        .Q(Q[0]))
             /* synthesis GSR="ENABLED" */;

    MUX81 mux_7 (.D0(mdL0_0_0), .D1(mdL0_1_0), .D2(mdL0_2_0), .D3(mdL0_3_0), 
        .D4(mdL0_4_0), .D5(mdL0_5_0), .D6(mdL0_6_0), .D7(mdL0_7_0), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout7_ffin));

    MUX81 mux_6 (.D0(mdL0_0_1), .D1(mdL0_1_1), .D2(mdL0_2_1), .D3(mdL0_3_1), 
        .D4(mdL0_4_1), .D5(mdL0_5_1), .D6(mdL0_6_1), .D7(mdL0_7_1), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout6_ffin));

    MUX81 mux_5 (.D0(mdL0_0_2), .D1(mdL0_1_2), .D2(mdL0_2_2), .D3(mdL0_3_2), 
        .D4(mdL0_4_2), .D5(mdL0_5_2), .D6(mdL0_6_2), .D7(mdL0_7_2), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout5_ffin));

    MUX81 mux_4 (.D0(mdL0_0_3), .D1(mdL0_1_3), .D2(mdL0_2_3), .D3(mdL0_3_3), 
        .D4(mdL0_4_3), .D5(mdL0_5_3), .D6(mdL0_6_3), .D7(mdL0_7_3), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout4_ffin));

    MUX81 mux_3 (.D0(mdL0_0_4), .D1(mdL0_1_4), .D2(mdL0_2_4), .D3(mdL0_3_4), 
        .D4(mdL0_4_4), .D5(mdL0_5_4), .D6(mdL0_6_4), .D7(mdL0_7_4), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout3_ffin));

    MUX81 mux_2 (.D0(mdL0_0_5), .D1(mdL0_1_5), .D2(mdL0_2_5), .D3(mdL0_3_5), 
        .D4(mdL0_4_5), .D5(mdL0_5_5), .D6(mdL0_6_5), .D7(mdL0_7_5), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout2_ffin));

    MUX81 mux_1 (.D0(mdL0_0_6), .D1(mdL0_1_6), .D2(mdL0_2_6), .D3(mdL0_3_6), 
        .D4(mdL0_4_6), .D5(mdL0_5_6), .D6(mdL0_6_6), .D7(mdL0_7_6), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout1_ffin));

    MUX81 mux_0 (.D0(mdL0_0_7), .D1(mdL0_1_7), .D2(mdL0_2_7), .D3(mdL0_3_7), 
        .D4(mdL0_4_7), .D5(mdL0_5_7), .D6(mdL0_6_7), .D7(mdL0_7_7), .SD1(RdAddress[4]), 
        .SD2(RdAddress[5]), .SD3(RdAddress[6]), .Z(dataout0_ffin));

    DPR16X2B mem_0_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec0_wre3), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_0_1), .RDO1(mdL0_0_0));

    DPR16X2B mem_0_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec0_wre3), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_0_3), .RDO1(mdL0_0_2));

    DPR16X2B mem_0_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec0_wre3), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_0_5), .RDO1(mdL0_0_4));

    DPR16X2B mem_0_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec0_wre3), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_0_7), .RDO1(mdL0_0_6));

    DPR16X2B mem_1_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec1_wre7), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_1_1), .RDO1(mdL0_1_0));

    DPR16X2B mem_1_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec1_wre7), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_1_3), .RDO1(mdL0_1_2));

    DPR16X2B mem_1_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec1_wre7), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_1_5), .RDO1(mdL0_1_4));

    DPR16X2B mem_1_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec1_wre7), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_1_7), .RDO1(mdL0_1_6));

    DPR16X2B mem_2_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec2_wre11), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_2_1), .RDO1(mdL0_2_0));

    DPR16X2B mem_2_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec2_wre11), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_2_3), .RDO1(mdL0_2_2));

    DPR16X2B mem_2_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec2_wre11), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_2_5), .RDO1(mdL0_2_4));

    DPR16X2B mem_2_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec2_wre11), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_2_7), .RDO1(mdL0_2_6));

    DPR16X2B mem_3_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec3_wre15), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_3_1), .RDO1(mdL0_3_0));

    DPR16X2B mem_3_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec3_wre15), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_3_3), .RDO1(mdL0_3_2));

    DPR16X2B mem_3_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec3_wre15), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_3_5), .RDO1(mdL0_3_4));

    DPR16X2B mem_3_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec3_wre15), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_3_7), .RDO1(mdL0_3_6));

    DPR16X2B mem_4_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec4_wre19), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_4_1), .RDO1(mdL0_4_0));

    DPR16X2B mem_4_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec4_wre19), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_4_3), .RDO1(mdL0_4_2));

    DPR16X2B mem_4_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec4_wre19), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_4_5), .RDO1(mdL0_4_4));

    DPR16X2B mem_4_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec4_wre19), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_4_7), .RDO1(mdL0_4_6));

    DPR16X2B mem_5_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec5_wre23), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_5_1), .RDO1(mdL0_5_0));

    DPR16X2B mem_5_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec5_wre23), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_5_3), .RDO1(mdL0_5_2));

    DPR16X2B mem_5_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec5_wre23), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_5_5), .RDO1(mdL0_5_4));

    DPR16X2B mem_5_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec5_wre23), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_5_7), .RDO1(mdL0_5_6));

    DPR16X2B mem_6_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec6_wre27), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_6_1), .RDO1(mdL0_6_0));

    DPR16X2B mem_6_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec6_wre27), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_6_3), .RDO1(mdL0_6_2));

    DPR16X2B mem_6_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec6_wre27), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_6_5), .RDO1(mdL0_6_4));

    DPR16X2B mem_6_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec6_wre27), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_6_7), .RDO1(mdL0_6_6));

    DPR16X2B mem_7_0 (.DI0(Data[6]), .DI1(Data[7]), .WCK(WrClock), .WRE(dec7_wre31), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_7_1), .RDO1(mdL0_7_0));

    DPR16X2B mem_7_1 (.DI0(Data[4]), .DI1(Data[5]), .WCK(WrClock), .WRE(dec7_wre31), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_7_3), .RDO1(mdL0_7_2));

    DPR16X2B mem_7_2 (.DI0(Data[2]), .DI1(Data[3]), .WCK(WrClock), .WRE(dec7_wre31), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_7_5), .RDO1(mdL0_7_4));

    DPR16X2B mem_7_3 (.DI0(Data[0]), .DI1(Data[1]), .WCK(WrClock), .WRE(dec7_wre31), 
        .RAD0(RdAddress[0]), .RAD1(RdAddress[1]), .RAD2(RdAddress[2]), .RAD3(RdAddress[3]), 
        .WAD0(WrAddress[0]), .WAD1(WrAddress[1]), .WAD2(WrAddress[2]), .WAD3(WrAddress[3]), 
        .WDO0(), .WDO1(), .RDO0(mdL0_7_7), .RDO1(mdL0_7_6));



    // exemplar begin
    // exemplar attribute LUT4_15 initval 0x8000
    // exemplar attribute LUT4_14 initval 0x8000
    // exemplar attribute LUT4_13 initval 0x8000
    // exemplar attribute LUT4_12 initval 0x8000
    // exemplar attribute LUT4_11 initval 0x8000
    // exemplar attribute LUT4_10 initval 0x8000
    // exemplar attribute LUT4_9 initval 0x8000
    // exemplar attribute LUT4_8 initval 0x8000
    // exemplar attribute LUT4_7 initval 0x8000
    // exemplar attribute LUT4_6 initval 0x8000
    // exemplar attribute LUT4_5 initval 0x8000
    // exemplar attribute LUT4_4 initval 0x8000
    // exemplar attribute LUT4_3 initval 0x8000
    // exemplar attribute LUT4_2 initval 0x8000
    // exemplar attribute LUT4_1 initval 0x8000
    // exemplar attribute LUT4_0 initval 0x8000
    // exemplar attribute FF_7 GSR ENABLED
    // exemplar attribute FF_6 GSR ENABLED
    // exemplar attribute FF_5 GSR ENABLED
    // exemplar attribute FF_4 GSR ENABLED
    // exemplar attribute FF_3 GSR ENABLED
    // exemplar attribute FF_2 GSR ENABLED
    // exemplar attribute FF_1 GSR ENABLED
    // exemplar attribute FF_0 GSR ENABLED
    // exemplar end

endmodule
