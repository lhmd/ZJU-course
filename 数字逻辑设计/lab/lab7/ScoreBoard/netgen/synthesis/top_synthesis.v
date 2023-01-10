////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Thu Oct 28 21:43:21 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc7k160t-1-ffg676
// Input file	: top.ngc
// Output file	: D:\Code\ComputerLogic\ScoreBoard\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : D:\ISE\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top (
  clk, BTNX4, SW, btn, AN, SEGMENT
);
  input clk;
  output BTNX4;
  input [7 : 0] SW;
  input [3 : 0] btn;
  output [3 : 0] AN;
  output [7 : 0] SEGMENT;
  wire SW_7_IBUF_6;
  wire SW_6_IBUF_7;
  wire SW_5_IBUF_8;
  wire SW_4_IBUF_9;
  wire SW_3_IBUF_10;
  wire SW_2_IBUF_11;
  wire SW_1_IBUF_12;
  wire SW_0_IBUF_13;
  wire btn_3_BUFGP_14;
  wire btn_2_BUFGP_15;
  wire btn_1_BUFGP_16;
  wire btn_0_BUFGP_17;
  wire clk_BUFGP_18;
  wire AN_3_OBUF_19;
  wire AN_2_OBUF_20;
  wire AN_1_OBUF_21;
  wire AN_0_OBUF_22;
  wire SEGMENT_7_OBUF_23;
  wire SEGMENT_6_OBUF_24;
  wire SEGMENT_5_OBUF_25;
  wire SEGMENT_4_OBUF_26;
  wire SEGMENT_3_OBUF_27;
  wire SEGMENT_2_OBUF_28;
  wire SEGMENT_1_OBUF_29;
  wire SEGMENT_0_OBUF_30;
  wire N0;
  wire BTNX4_OBUF_32;
  wire \d0/XLXN_16 ;
  wire \d0/XLXN_15 ;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \Result<0>2 ;
  wire \Result<1>2 ;
  wire \Result<2>2 ;
  wire \Result<3>2 ;
  wire \Result<0>3 ;
  wire \Result<1>3 ;
  wire \Result<2>3 ;
  wire \Result<3>3 ;
  wire \Result<0>4 ;
  wire \Result<1>4 ;
  wire \Result<2>4_59 ;
  wire \Result<3>4_60 ;
  wire \c0/num<12>_num<13>_num<14>_num<15><3> ;
  wire \c0/num<12>_num<13>_num<14>_num<15><2> ;
  wire \c0/num<12>_num<13>_num<14>_num<15><1> ;
  wire \c0/num<12>_num<13>_num<14>_num<15><0> ;
  wire \c0/num<8>_num<9>_num<10>_num<11><3> ;
  wire \c0/num<8>_num<9>_num<10>_num<11><2> ;
  wire \c0/num<8>_num<9>_num<10>_num<11><1> ;
  wire \c0/num<8>_num<9>_num<10>_num<11><0> ;
  wire \c0/num<4>_num<5>_num<6>_num<7><3> ;
  wire \c0/num<4>_num<5>_num<6>_num<7><2> ;
  wire \c0/num<4>_num<5>_num<6>_num<7><1> ;
  wire \c0/num<4>_num<5>_num<6>_num<7><0> ;
  wire \d0/XLXI_2/XLXN_44 ;
  wire \d0/XLXI_2/XLXN_43 ;
  wire \d0/XLXI_2/XLXN_42 ;
  wire \d0/XLXI_2/XLXN_41 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_88 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_91 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_12 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_98 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_95 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_4 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_80 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_75 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_70 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_19 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_83 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_78 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_73 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_18 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_81 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_76 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_71 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_17 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_79 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_74 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_69 ;
  wire \d0/XLXI_2/XLXI_1/XLXN_16 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_11 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_12 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_5 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_14 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_13 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_4 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_32 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_31 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_30 ;
  wire \d0/XLXI_2/XLXI_3/XLXN_29 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_11 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_12 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_5 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_14 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_13 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_4 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_32 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_31 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_30 ;
  wire \d0/XLXI_2/XLXI_2/XLXN_29 ;
  wire \d0/XLXI_3/XLXN_3 ;
  wire \d0/XLXI_3/XLXN_44 ;
  wire \d0/XLXI_3/XLXN_41 ;
  wire \d0/XLXI_3/XLXN_45 ;
  wire \d0/XLXI_3/XLXN_40 ;
  wire \d0/XLXI_3/XLXN_48 ;
  wire \d0/XLXI_3/XLXN_42 ;
  wire \d0/XLXI_3/XLXN_39 ;
  wire \d0/XLXI_3/XLXN_76 ;
  wire \d0/XLXI_3/XLXN_72 ;
  wire \d0/XLXI_3/XLXN_15 ;
  wire \d0/XLXI_3/XLXN_28 ;
  wire \d0/XLXI_3/XLXN_35 ;
  wire \d0/XLXI_3/XLXN_2 ;
  wire \d0/XLXI_3/XLXN_66 ;
  wire \d0/XLXI_3/XLXN_5 ;
  wire \d0/XLXI_3/XLXN_22 ;
  wire \d0/XLXI_3/XLXN_25 ;
  wire \d0/XLXI_3/XLXN_26 ;
  wire \d0/XLXI_3/XLXN_31 ;
  wire \d0/XLXI_3/XLXN_61 ;
  wire \d0/XLXI_3/XLXN_4 ;
  wire \d0/XLXI_3/XLXN_13 ;
  wire \d0/XLXI_3/XLXN_14 ;
  wire \d0/XLXI_3/XLXN_16 ;
  wire \d0/XLXI_3/XLXN_24 ;
  wire \d0/XLXI_3/XLXN_27 ;
  wire \d0/XLXI_3/XLXN_32 ;
  wire \d0/XLXI_3/XLXN_33 ;
  wire \d0/XLXI_3/XLXN_34 ;
  wire \d0/XLXI_3/XLXN_36 ;
  wire \d0/XLXI_3/XLXN_1 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<1>_rt_232 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<2>_rt_233 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<3>_rt_234 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<4>_rt_235 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<5>_rt_236 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<6>_rt_237 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<7>_rt_238 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<8>_rt_239 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<9>_rt_240 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<10>_rt_241 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<11>_rt_242 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<12>_rt_243 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<13>_rt_244 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<14>_rt_245 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<15>_rt_246 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<16>_rt_247 ;
  wire \d0/XLXI_1/Mcount_clkdiv_cy<17>_rt_248 ;
  wire \d0/XLXI_1/Mcount_clkdiv_xor<18>_rt_249 ;
  wire [18 : 0] \d0/XLXI_1/clkdiv ;
  wire [3 : 0] \d0/HEX ;
  wire [18 : 0] Result;
  wire [0 : 0] \d0/XLXI_1/Mcount_clkdiv_lut ;
  wire [17 : 0] \d0/XLXI_1/Mcount_clkdiv_cy ;
  wire [3 : 0] \c0/num<3:0> ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(BTNX4_OBUF_32)
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<12>_num<13>_num<14>_num<15>_3  (
    .C(btn_3_BUFGP_14),
    .D(Result[0]),
    .Q(\c0/num<12>_num<13>_num<14>_num<15><3> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<12>_num<13>_num<14>_num<15>_2  (
    .C(btn_3_BUFGP_14),
    .D(Result[1]),
    .Q(\c0/num<12>_num<13>_num<14>_num<15><2> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<12>_num<13>_num<14>_num<15>_1  (
    .C(btn_3_BUFGP_14),
    .D(Result[2]),
    .Q(\c0/num<12>_num<13>_num<14>_num<15><1> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<12>_num<13>_num<14>_num<15>_0  (
    .C(btn_3_BUFGP_14),
    .D(Result[3]),
    .Q(\c0/num<12>_num<13>_num<14>_num<15><0> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<8>_num<9>_num<10>_num<11>_3  (
    .C(btn_2_BUFGP_15),
    .D(\Result<0>1 ),
    .Q(\c0/num<8>_num<9>_num<10>_num<11><3> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<8>_num<9>_num<10>_num<11>_2  (
    .C(btn_2_BUFGP_15),
    .D(\Result<1>1 ),
    .Q(\c0/num<8>_num<9>_num<10>_num<11><2> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<8>_num<9>_num<10>_num<11>_1  (
    .C(btn_2_BUFGP_15),
    .D(\Result<2>1 ),
    .Q(\c0/num<8>_num<9>_num<10>_num<11><1> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<8>_num<9>_num<10>_num<11>_0  (
    .C(btn_2_BUFGP_15),
    .D(\Result<3>1 ),
    .Q(\c0/num<8>_num<9>_num<10>_num<11><0> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<4>_num<5>_num<6>_num<7>_3  (
    .C(btn_1_BUFGP_16),
    .D(\Result<0>2 ),
    .Q(\c0/num<4>_num<5>_num<6>_num<7><3> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<4>_num<5>_num<6>_num<7>_2  (
    .C(btn_1_BUFGP_16),
    .D(\Result<1>2 ),
    .Q(\c0/num<4>_num<5>_num<6>_num<7><2> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<4>_num<5>_num<6>_num<7>_1  (
    .C(btn_1_BUFGP_16),
    .D(\Result<2>2 ),
    .Q(\c0/num<4>_num<5>_num<6>_num<7><1> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<4>_num<5>_num<6>_num<7>_0  (
    .C(btn_1_BUFGP_16),
    .D(\Result<3>2 ),
    .Q(\c0/num<4>_num<5>_num<6>_num<7><0> )
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<3:0>_3  (
    .C(btn_0_BUFGP_17),
    .D(\Result<0>3 ),
    .Q(\c0/num<3:0> [3])
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<3:0>_2  (
    .C(btn_0_BUFGP_17),
    .D(\Result<1>3 ),
    .Q(\c0/num<3:0> [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \c0/num<3:0>_1  (
    .C(btn_0_BUFGP_17),
    .D(\Result<2>3 ),
    .Q(\c0/num<3:0> [1])
  );
  FD #(
    .INIT ( 1'b1 ))
  \c0/num<3:0>_0  (
    .C(btn_0_BUFGP_17),
    .D(\Result<3>3 ),
    .Q(\c0/num<3:0> [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_0  (
    .C(clk_BUFGP_18),
    .D(\Result<0>4 ),
    .Q(\d0/XLXI_1/clkdiv [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_1  (
    .C(clk_BUFGP_18),
    .D(\Result<1>4 ),
    .Q(\d0/XLXI_1/clkdiv [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_2  (
    .C(clk_BUFGP_18),
    .D(\Result<2>4_59 ),
    .Q(\d0/XLXI_1/clkdiv [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_3  (
    .C(clk_BUFGP_18),
    .D(\Result<3>4_60 ),
    .Q(\d0/XLXI_1/clkdiv [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_4  (
    .C(clk_BUFGP_18),
    .D(Result[4]),
    .Q(\d0/XLXI_1/clkdiv [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_5  (
    .C(clk_BUFGP_18),
    .D(Result[5]),
    .Q(\d0/XLXI_1/clkdiv [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_6  (
    .C(clk_BUFGP_18),
    .D(Result[6]),
    .Q(\d0/XLXI_1/clkdiv [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_7  (
    .C(clk_BUFGP_18),
    .D(Result[7]),
    .Q(\d0/XLXI_1/clkdiv [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_8  (
    .C(clk_BUFGP_18),
    .D(Result[8]),
    .Q(\d0/XLXI_1/clkdiv [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_9  (
    .C(clk_BUFGP_18),
    .D(Result[9]),
    .Q(\d0/XLXI_1/clkdiv [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_10  (
    .C(clk_BUFGP_18),
    .D(Result[10]),
    .Q(\d0/XLXI_1/clkdiv [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_11  (
    .C(clk_BUFGP_18),
    .D(Result[11]),
    .Q(\d0/XLXI_1/clkdiv [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_12  (
    .C(clk_BUFGP_18),
    .D(Result[12]),
    .Q(\d0/XLXI_1/clkdiv [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_13  (
    .C(clk_BUFGP_18),
    .D(Result[13]),
    .Q(\d0/XLXI_1/clkdiv [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_14  (
    .C(clk_BUFGP_18),
    .D(Result[14]),
    .Q(\d0/XLXI_1/clkdiv [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_15  (
    .C(clk_BUFGP_18),
    .D(Result[15]),
    .Q(\d0/XLXI_1/clkdiv [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_16  (
    .C(clk_BUFGP_18),
    .D(Result[16]),
    .Q(\d0/XLXI_1/clkdiv [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_17  (
    .C(clk_BUFGP_18),
    .D(Result[17]),
    .Q(\d0/XLXI_1/clkdiv [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \d0/XLXI_1/clkdiv_18  (
    .C(clk_BUFGP_18),
    .D(Result[18]),
    .Q(\d0/XLXI_1/clkdiv [18])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<0>  (
    .CI(BTNX4_OBUF_32),
    .DI(N0),
    .S(\d0/XLXI_1/Mcount_clkdiv_lut [0]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [0])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<0>  (
    .CI(BTNX4_OBUF_32),
    .LI(\d0/XLXI_1/Mcount_clkdiv_lut [0]),
    .O(\Result<0>4 )
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<1>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [0]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<1>_rt_232 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [1])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<1>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [0]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<1>_rt_232 ),
    .O(\Result<1>4 )
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<2>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [1]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<2>_rt_233 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [2])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<2>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [1]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<2>_rt_233 ),
    .O(\Result<2>4_59 )
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<3>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [2]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<3>_rt_234 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [3])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<3>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [2]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<3>_rt_234 ),
    .O(\Result<3>4_60 )
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<4>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [3]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<4>_rt_235 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [4])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<4>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [3]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<4>_rt_235 ),
    .O(Result[4])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<5>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [4]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<5>_rt_236 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [5])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<5>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [4]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<5>_rt_236 ),
    .O(Result[5])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<6>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [5]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<6>_rt_237 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [6])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<6>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [5]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<6>_rt_237 ),
    .O(Result[6])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<7>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [6]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<7>_rt_238 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [7])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<7>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [6]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<7>_rt_238 ),
    .O(Result[7])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<8>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [7]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<8>_rt_239 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [8])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<8>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [7]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<8>_rt_239 ),
    .O(Result[8])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<9>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [8]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<9>_rt_240 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [9])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<9>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [8]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<9>_rt_240 ),
    .O(Result[9])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<10>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [9]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<10>_rt_241 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [10])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<10>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [9]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<10>_rt_241 ),
    .O(Result[10])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<11>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [10]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<11>_rt_242 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [11])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<11>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [10]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<11>_rt_242 ),
    .O(Result[11])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<12>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [11]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<12>_rt_243 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [12])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<12>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [11]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<12>_rt_243 ),
    .O(Result[12])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<13>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [12]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<13>_rt_244 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [13])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<13>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [12]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<13>_rt_244 ),
    .O(Result[13])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<14>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [13]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<14>_rt_245 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [14])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<14>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [13]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<14>_rt_245 ),
    .O(Result[14])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<15>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [14]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<15>_rt_246 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [15])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<15>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [14]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<15>_rt_246 ),
    .O(Result[15])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<16>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [15]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<16>_rt_247 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [16])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<16>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [15]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<16>_rt_247 ),
    .O(Result[16])
  );
  MUXCY   \d0/XLXI_1/Mcount_clkdiv_cy<17>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [16]),
    .DI(BTNX4_OBUF_32),
    .S(\d0/XLXI_1/Mcount_clkdiv_cy<17>_rt_248 ),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy [17])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<17>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [16]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_cy<17>_rt_248 ),
    .O(Result[17])
  );
  XORCY   \d0/XLXI_1/Mcount_clkdiv_xor<18>  (
    .CI(\d0/XLXI_1/Mcount_clkdiv_cy [17]),
    .LI(\d0/XLXI_1/Mcount_clkdiv_xor<18>_rt_249 ),
    .O(Result[18])
  );
  INV   \d0/XLXI_2/XLXI_12  (
    .I(\d0/XLXI_2/XLXN_44 ),
    .O(AN_3_OBUF_19)
  );
  INV   \d0/XLXI_2/XLXI_11  (
    .I(\d0/XLXI_2/XLXN_43 ),
    .O(AN_2_OBUF_20)
  );
  INV   \d0/XLXI_2/XLXI_10  (
    .I(\d0/XLXI_2/XLXN_42 ),
    .O(AN_1_OBUF_21)
  );
  INV   \d0/XLXI_2/XLXI_9  (
    .I(\d0/XLXI_2/XLXN_41 ),
    .O(AN_0_OBUF_22)
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_3  (
    .I0(\d0/XLXI_2/XLXI_1/XLXN_12 ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_88 )
  );
  OR4   \d0/XLXI_2/XLXI_1/XLXI_72  (
    .I0(\d0/XLXI_2/XLXI_1/XLXN_80 ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_83 ),
    .I2(\d0/XLXI_2/XLXI_1/XLXN_81 ),
    .I3(\d0/XLXI_2/XLXI_1/XLXN_79 ),
    .O(\d0/HEX [3])
  );
  OR4   \d0/XLXI_2/XLXI_1/XLXI_67  (
    .I0(\d0/XLXI_2/XLXI_1/XLXN_75 ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_78 ),
    .I2(\d0/XLXI_2/XLXI_1/XLXN_76 ),
    .I3(\d0/XLXI_2/XLXI_1/XLXN_74 ),
    .O(\d0/HEX [2])
  );
  OR4   \d0/XLXI_2/XLXI_1/XLXI_62  (
    .I0(\d0/XLXI_2/XLXI_1/XLXN_70 ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_73 ),
    .I2(\d0/XLXI_2/XLXI_1/XLXN_71 ),
    .I3(\d0/XLXI_2/XLXI_1/XLXN_69 ),
    .O(\d0/HEX [1])
  );
  OR4   \d0/XLXI_2/XLXI_1/XLXI_12  (
    .I0(\d0/XLXI_2/XLXI_1/XLXN_19 ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_18 ),
    .I2(\d0/XLXI_2/XLXI_1/XLXN_17 ),
    .I3(\d0/XLXI_2/XLXI_1/XLXN_16 ),
    .O(\d0/HEX [0])
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_4  (
    .I0(\d0/XLXI_1/clkdiv [17]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_91 )
  );
  INV   \d0/XLXI_2/XLXI_1/XLXI_2  (
    .I(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_1/XLXN_12 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_7  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_1/XLXN_98 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_5  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_12 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_95 )
  );
  INV   \d0/XLXI_2/XLXI_1/XLXI_1  (
    .I(\d0/XLXI_1/clkdiv [18]),
    .O(\d0/XLXI_2/XLXI_1/XLXN_4 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_71  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><0> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_98 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_80 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_66  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><1> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_98 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_75 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_61  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><2> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_98 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_70 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_11  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><3> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_98 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_19 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_68  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><0> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_95 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_83 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_63  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><1> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_95 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_78 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_58  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><2> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_95 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_73 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_10  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><3> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_95 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_18 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_69  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><0> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_91 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_81 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_64  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><1> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_91 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_76 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_59  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><2> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_91 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_71 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_9  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><3> ),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_91 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_17 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_70  (
    .I0(\c0/num<3:0> [0]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_88 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_79 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_65  (
    .I0(\c0/num<3:0> [1]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_88 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_74 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_60  (
    .I0(\c0/num<3:0> [2]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_88 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_69 )
  );
  AND2   \d0/XLXI_2/XLXI_1/XLXI_8  (
    .I0(\c0/num<3:0> [3]),
    .I1(\d0/XLXI_2/XLXI_1/XLXN_88 ),
    .O(\d0/XLXI_2/XLXI_1/XLXN_16 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_3  (
    .I0(\d0/XLXI_2/XLXI_3/XLXN_5 ),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_11 )
  );
  OR4   \d0/XLXI_2/XLXI_3/XLXI_11  (
    .I0(\d0/XLXI_2/XLXI_3/XLXN_32 ),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_31 ),
    .I2(\d0/XLXI_2/XLXI_3/XLXN_30 ),
    .I3(\d0/XLXI_2/XLXI_3/XLXN_29 ),
    .O(\d0/XLXN_15 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_4  (
    .I0(\d0/XLXI_1/clkdiv [17]),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_12 )
  );
  INV   \d0/XLXI_2/XLXI_3/XLXI_2  (
    .I(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_3/XLXN_5 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_6  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_3/XLXN_14 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_5  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_5 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_13 )
  );
  INV   \d0/XLXI_2/XLXI_3/XLXI_1  (
    .I(\d0/XLXI_1/clkdiv [18]),
    .O(\d0/XLXI_2/XLXI_3/XLXN_4 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_10  (
    .I0(SW_7_IBUF_6),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_14 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_32 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_9  (
    .I0(SW_6_IBUF_7),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_13 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_31 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_8  (
    .I0(SW_5_IBUF_8),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_12 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_30 )
  );
  AND2   \d0/XLXI_2/XLXI_3/XLXI_7  (
    .I0(SW_4_IBUF_9),
    .I1(\d0/XLXI_2/XLXI_3/XLXN_11 ),
    .O(\d0/XLXI_2/XLXI_3/XLXN_29 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_3  (
    .I0(\d0/XLXI_2/XLXI_2/XLXN_5 ),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_11 )
  );
  OR4   \d0/XLXI_2/XLXI_2/XLXI_11  (
    .I0(\d0/XLXI_2/XLXI_2/XLXN_32 ),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_31 ),
    .I2(\d0/XLXI_2/XLXI_2/XLXN_30 ),
    .I3(\d0/XLXI_2/XLXI_2/XLXN_29 ),
    .O(\d0/XLXN_16 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_4  (
    .I0(\d0/XLXI_1/clkdiv [17]),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_4 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_12 )
  );
  INV   \d0/XLXI_2/XLXI_2/XLXI_2  (
    .I(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_2/XLXN_5 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_6  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXI_2/XLXN_14 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_5  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_5 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_13 )
  );
  INV   \d0/XLXI_2/XLXI_2/XLXI_1  (
    .I(\d0/XLXI_1/clkdiv [18]),
    .O(\d0/XLXI_2/XLXI_2/XLXN_4 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_10  (
    .I0(SW_3_IBUF_10),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_14 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_32 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_9  (
    .I0(SW_2_IBUF_11),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_13 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_31 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_8  (
    .I0(SW_1_IBUF_12),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_12 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_30 )
  );
  AND2   \d0/XLXI_2/XLXI_2/XLXI_7  (
    .I0(SW_0_IBUF_13),
    .I1(\d0/XLXI_2/XLXI_2/XLXN_11 ),
    .O(\d0/XLXI_2/XLXI_2/XLXN_29 )
  );
  AND3   \d0/XLXI_3/XLXI_43  (
    .I0(\d0/XLXI_3/XLXN_66 ),
    .I1(\d0/XLXI_3/XLXN_72 ),
    .I2(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_3 )
  );
  OR3   \d0/XLXI_3/XLXI_12  (
    .I0(\d0/XLXI_3/XLXN_25 ),
    .I1(\d0/XLXI_3/XLXN_26 ),
    .I2(\d0/XLXI_3/XLXN_28 ),
    .O(\d0/XLXI_3/XLXN_44 )
  );
  OR3   \d0/XLXI_3/XLXI_14  (
    .I0(\d0/XLXI_3/XLXN_14 ),
    .I1(\d0/XLXI_3/XLXN_15 ),
    .I2(\d0/XLXI_3/XLXN_16 ),
    .O(\d0/XLXI_3/XLXN_41 )
  );
  OR4   \d0/XLXI_3/XLXI_7  (
    .I0(\d0/XLXI_3/XLXN_27 ),
    .I1(\d0/XLXI_3/XLXN_28 ),
    .I2(\d0/XLXI_3/XLXN_31 ),
    .I3(\d0/XLXI_3/XLXN_32 ),
    .O(\d0/XLXI_3/XLXN_45 )
  );
  OR4   \d0/XLXI_3/XLXI_4  (
    .I0(\d0/XLXI_3/XLXN_4 ),
    .I1(\d0/XLXI_3/XLXN_5 ),
    .I2(\d0/XLXI_3/XLXN_13 ),
    .I3(\d0/XLXI_3/XLXN_34 ),
    .O(\d0/XLXI_3/XLXN_40 )
  );
  OR4   \d0/XLXI_3/XLXI_8  (
    .I0(\d0/XLXI_3/XLXN_33 ),
    .I1(\d0/XLXI_3/XLXN_34 ),
    .I2(\d0/XLXI_3/XLXN_35 ),
    .I3(\d0/XLXI_3/XLXN_36 ),
    .O(\d0/XLXI_3/XLXN_48 )
  );
  OR4   \d0/XLXI_3/XLXI_2  (
    .I0(\d0/XLXI_3/XLXN_22 ),
    .I1(\d0/XLXI_3/XLXN_24 ),
    .I2(\d0/XLXI_3/XLXN_35 ),
    .I3(\d0/XLXI_3/XLXN_36 ),
    .O(\d0/XLXI_3/XLXN_42 )
  );
  OR3   \d0/XLXI_3/XLXI_15  (
    .I0(\d0/XLXI_3/XLXN_2 ),
    .I1(\d0/XLXI_3/XLXN_1 ),
    .I2(\d0/XLXI_3/XLXN_3 ),
    .O(\d0/XLXI_3/XLXN_39 )
  );
  INV   \d0/XLXI_3/XLXI_54  (
    .I(\d0/XLXN_16 ),
    .O(SEGMENT_7_OBUF_23)
  );
  OR2   \d0/XLXI_3/XLXI_53  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_39 ),
    .O(SEGMENT_6_OBUF_24)
  );
  OR2   \d0/XLXI_3/XLXI_52  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_40 ),
    .O(SEGMENT_5_OBUF_25)
  );
  OR2   \d0/XLXI_3/XLXI_51  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_41 ),
    .O(SEGMENT_4_OBUF_26)
  );
  OR2   \d0/XLXI_3/XLXI_50  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_42 ),
    .O(SEGMENT_3_OBUF_27)
  );
  OR2   \d0/XLXI_3/XLXI_48  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_44 ),
    .O(SEGMENT_2_OBUF_28)
  );
  OR2   \d0/XLXI_3/XLXI_47  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_45 ),
    .O(SEGMENT_1_OBUF_29)
  );
  OR2   \d0/XLXI_3/XLXI_46  (
    .I0(\d0/XLXN_15 ),
    .I1(\d0/XLXI_3/XLXN_48 ),
    .O(SEGMENT_0_OBUF_30)
  );
  INV   \d0/XLXI_3/XLXI_58  (
    .I(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_76 )
  );
  INV   \d0/XLXI_3/XLXI_57  (
    .I(\d0/HEX [2]),
    .O(\d0/XLXI_3/XLXN_72 )
  );
  AND3   \d0/XLXI_3/XLXI_38  (
    .I0(\d0/XLXI_3/XLXN_66 ),
    .I1(\d0/HEX [2]),
    .I2(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_15 )
  );
  AND3   \d0/XLXI_3/XLXI_23  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/HEX [2]),
    .I2(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_28 )
  );
  AND4   \d0/XLXI_3/XLXI_18  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/XLXI_3/XLXN_66 ),
    .I2(\d0/HEX [2]),
    .I3(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_35 )
  );
  AND4   \d0/XLXI_3/AD0  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/XLXI_3/XLXN_66 ),
    .I2(\d0/HEX [2]),
    .I3(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_2 )
  );
  INV   \d0/XLXI_3/XLXI_56  (
    .I(\d0/HEX [1]),
    .O(\d0/XLXI_3/XLXN_66 )
  );
  AND3   \d0/XLXI_3/XLXI_41  (
    .I0(\d0/HEX [1]),
    .I1(\d0/XLXI_3/XLXN_72 ),
    .I2(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_5 )
  );
  AND4   \d0/XLXI_3/XLXI_36  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/HEX [1]),
    .I2(\d0/XLXI_3/XLXN_72 ),
    .I3(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_22 )
  );
  AND3   \d0/XLXI_3/XLXI_34  (
    .I0(\d0/HEX [1]),
    .I1(\d0/HEX [2]),
    .I2(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_25 )
  );
  AND4   \d0/XLXI_3/XLXI_33  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/HEX [1]),
    .I2(\d0/XLXI_3/XLXN_72 ),
    .I3(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_26 )
  );
  AND3   \d0/XLXI_3/XLXI_22  (
    .I0(\d0/XLXI_3/XLXN_61 ),
    .I1(\d0/HEX [1]),
    .I2(\d0/HEX [2]),
    .O(\d0/XLXI_3/XLXN_31 )
  );
  INV   \d0/XLXI_3/XLXI_55  (
    .I(\d0/HEX [0]),
    .O(\d0/XLXI_3/XLXN_61 )
  );
  AND3   \d0/XLXI_3/XLXI_42  (
    .I0(\d0/HEX [0]),
    .I1(\d0/HEX [1]),
    .I2(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_4 )
  );
  AND3   \d0/XLXI_3/XLXI_40  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_72 ),
    .I2(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_13 )
  );
  AND3   \d0/XLXI_3/XLXI_39  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_66 ),
    .I2(\d0/XLXI_3/XLXN_72 ),
    .O(\d0/XLXI_3/XLXN_14 )
  );
  AND2   \d0/XLXI_3/XLXI_37  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_16 )
  );
  AND3   \d0/XLXI_3/XLXI_35  (
    .I0(\d0/HEX [0]),
    .I1(\d0/HEX [1]),
    .I2(\d0/HEX [2]),
    .O(\d0/XLXI_3/XLXN_24 )
  );
  AND3   \d0/XLXI_3/XLXI_24  (
    .I0(\d0/HEX [0]),
    .I1(\d0/HEX [1]),
    .I2(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_27 )
  );
  AND4   \d0/XLXI_3/XLXI_21  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_66 ),
    .I2(\d0/HEX [2]),
    .I3(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_32 )
  );
  AND4   \d0/XLXI_3/XLXI_20  (
    .I0(\d0/HEX [0]),
    .I1(\d0/HEX [1]),
    .I2(\d0/XLXI_3/XLXN_72 ),
    .I3(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_33 )
  );
  AND4   \d0/XLXI_3/XLXI_19  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_66 ),
    .I2(\d0/HEX [2]),
    .I3(\d0/HEX [3]),
    .O(\d0/XLXI_3/XLXN_34 )
  );
  AND4   \d0/XLXI_3/XLXI_17  (
    .I0(\d0/HEX [0]),
    .I1(\d0/XLXI_3/XLXN_72 ),
    .I2(\d0/XLXI_3/XLXN_66 ),
    .I3(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_36 )
  );
  AND4   \d0/XLXI_3/AD1  (
    .I0(\d0/HEX [0]),
    .I1(\d0/HEX [1]),
    .I2(\d0/HEX [2]),
    .I3(\d0/XLXI_3/XLXN_76 ),
    .O(\d0/XLXI_3/XLXN_1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \c0/Mcount_num<12>_num<13>_num<14>_num<15>_xor<1>11  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><2> ),
    .I1(\c0/num<12>_num<13>_num<14>_num<15><3> ),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \c0/Mcount_num<8>_num<9>_num<10>_num<11>_xor<1>11  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><2> ),
    .I1(\c0/num<8>_num<9>_num<10>_num<11><3> ),
    .O(\Result<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \c0/Mcount_num<4>_num<5>_num<6>_num<7>_xor<1>11  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><2> ),
    .I1(\c0/num<4>_num<5>_num<6>_num<7><3> ),
    .O(\Result<1>2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \c0/Mcount_num<3:0>_xor<1>11  (
    .I0(\c0/num<3:0> [2]),
    .I1(\c0/num<3:0> [3]),
    .O(\Result<1>3 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>4  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><1> ),
    .I1(\c0/num<12>_num<13>_num<14>_num<15><0> ),
    .I2(\c0/num<12>_num<13>_num<14>_num<15><3> ),
    .I3(\c0/num<12>_num<13>_num<14>_num<15><2> ),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>4  (
    .I0(\c0/num<12>_num<13>_num<14>_num<15><1> ),
    .I1(\c0/num<12>_num<13>_num<14>_num<15><3> ),
    .I2(\c0/num<12>_num<13>_num<14>_num<15><2> ),
    .O(Result[2])
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>11  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><1> ),
    .I1(\c0/num<8>_num<9>_num<10>_num<11><0> ),
    .I2(\c0/num<8>_num<9>_num<10>_num<11><3> ),
    .I3(\c0/num<8>_num<9>_num<10>_num<11><2> ),
    .O(\Result<3>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>11  (
    .I0(\c0/num<8>_num<9>_num<10>_num<11><1> ),
    .I1(\c0/num<8>_num<9>_num<10>_num<11><3> ),
    .I2(\c0/num<8>_num<9>_num<10>_num<11><2> ),
    .O(\Result<2>1 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>21  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><1> ),
    .I1(\c0/num<4>_num<5>_num<6>_num<7><0> ),
    .I2(\c0/num<4>_num<5>_num<6>_num<7><3> ),
    .I3(\c0/num<4>_num<5>_num<6>_num<7><2> ),
    .O(\Result<3>2 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>21  (
    .I0(\c0/num<4>_num<5>_num<6>_num<7><1> ),
    .I1(\c0/num<4>_num<5>_num<6>_num<7><3> ),
    .I2(\c0/num<4>_num<5>_num<6>_num<7><2> ),
    .O(\Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'h6CCC ))
  \Result<3>31  (
    .I0(\c0/num<3:0> [1]),
    .I1(\c0/num<3:0> [0]),
    .I2(\c0/num<3:0> [3]),
    .I3(\c0/num<3:0> [2]),
    .O(\Result<3>3 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>31  (
    .I0(\c0/num<3:0> [1]),
    .I1(\c0/num<3:0> [3]),
    .I2(\c0/num<3:0> [2]),
    .O(\Result<2>3 )
  );
  IBUF   SW_7_IBUF (
    .I(SW[7]),
    .O(SW_7_IBUF_6)
  );
  IBUF   SW_6_IBUF (
    .I(SW[6]),
    .O(SW_6_IBUF_7)
  );
  IBUF   SW_5_IBUF (
    .I(SW[5]),
    .O(SW_5_IBUF_8)
  );
  IBUF   SW_4_IBUF (
    .I(SW[4]),
    .O(SW_4_IBUF_9)
  );
  IBUF   SW_3_IBUF (
    .I(SW[3]),
    .O(SW_3_IBUF_10)
  );
  IBUF   SW_2_IBUF (
    .I(SW[2]),
    .O(SW_2_IBUF_11)
  );
  IBUF   SW_1_IBUF (
    .I(SW[1]),
    .O(SW_1_IBUF_12)
  );
  IBUF   SW_0_IBUF (
    .I(SW[0]),
    .O(SW_0_IBUF_13)
  );
  OBUF   AN_3_OBUF (
    .I(AN_3_OBUF_19),
    .O(AN[3])
  );
  OBUF   AN_2_OBUF (
    .I(AN_2_OBUF_20),
    .O(AN[2])
  );
  OBUF   AN_1_OBUF (
    .I(AN_1_OBUF_21),
    .O(AN[1])
  );
  OBUF   AN_0_OBUF (
    .I(AN_0_OBUF_22),
    .O(AN[0])
  );
  OBUF   SEGMENT_7_OBUF (
    .I(SEGMENT_7_OBUF_23),
    .O(SEGMENT[7])
  );
  OBUF   SEGMENT_6_OBUF (
    .I(SEGMENT_6_OBUF_24),
    .O(SEGMENT[6])
  );
  OBUF   SEGMENT_5_OBUF (
    .I(SEGMENT_5_OBUF_25),
    .O(SEGMENT[5])
  );
  OBUF   SEGMENT_4_OBUF (
    .I(SEGMENT_4_OBUF_26),
    .O(SEGMENT[4])
  );
  OBUF   SEGMENT_3_OBUF (
    .I(SEGMENT_3_OBUF_27),
    .O(SEGMENT[3])
  );
  OBUF   SEGMENT_2_OBUF (
    .I(SEGMENT_2_OBUF_28),
    .O(SEGMENT[2])
  );
  OBUF   SEGMENT_1_OBUF (
    .I(SEGMENT_1_OBUF_29),
    .O(SEGMENT[1])
  );
  OBUF   SEGMENT_0_OBUF (
    .I(SEGMENT_0_OBUF_30),
    .O(SEGMENT[0])
  );
  OBUF   BTNX4_OBUF (
    .I(BTNX4_OBUF_32),
    .O(BTNX4)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<1>_rt  (
    .I0(\d0/XLXI_1/clkdiv [1]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<1>_rt_232 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<2>_rt  (
    .I0(\d0/XLXI_1/clkdiv [2]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<2>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<3>_rt  (
    .I0(\d0/XLXI_1/clkdiv [3]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<3>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<4>_rt  (
    .I0(\d0/XLXI_1/clkdiv [4]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<4>_rt_235 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<5>_rt  (
    .I0(\d0/XLXI_1/clkdiv [5]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<5>_rt_236 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<6>_rt  (
    .I0(\d0/XLXI_1/clkdiv [6]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<6>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<7>_rt  (
    .I0(\d0/XLXI_1/clkdiv [7]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<7>_rt_238 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<8>_rt  (
    .I0(\d0/XLXI_1/clkdiv [8]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<8>_rt_239 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<9>_rt  (
    .I0(\d0/XLXI_1/clkdiv [9]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<9>_rt_240 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<10>_rt  (
    .I0(\d0/XLXI_1/clkdiv [10]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<10>_rt_241 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<11>_rt  (
    .I0(\d0/XLXI_1/clkdiv [11]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<11>_rt_242 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<12>_rt  (
    .I0(\d0/XLXI_1/clkdiv [12]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<12>_rt_243 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<13>_rt  (
    .I0(\d0/XLXI_1/clkdiv [13]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<13>_rt_244 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<14>_rt  (
    .I0(\d0/XLXI_1/clkdiv [14]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<14>_rt_245 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<15>_rt  (
    .I0(\d0/XLXI_1/clkdiv [15]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<15>_rt_246 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<16>_rt  (
    .I0(\d0/XLXI_1/clkdiv [16]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<16>_rt_247 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_cy<17>_rt  (
    .I0(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_1/Mcount_clkdiv_cy<17>_rt_248 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \d0/XLXI_1/Mcount_clkdiv_xor<18>_rt  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .O(\d0/XLXI_1/Mcount_clkdiv_xor<18>_rt_249 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_18)
  );
  BUFGP   btn_3_BUFGP (
    .I(btn[3]),
    .O(btn_3_BUFGP_14)
  );
  BUFGP   btn_2_BUFGP (
    .I(btn[2]),
    .O(btn_2_BUFGP_15)
  );
  BUFGP   btn_1_BUFGP (
    .I(btn[1]),
    .O(btn_1_BUFGP_16)
  );
  BUFGP   btn_0_BUFGP (
    .I(btn[0]),
    .O(btn_0_BUFGP_17)
  );
  INV   \d0/XLXI_1/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\d0/XLXI_1/clkdiv [0]),
    .O(\d0/XLXI_1/Mcount_clkdiv_lut [0])
  );
  INV   \c0/Mcount_num<12>_num<13>_num<14>_num<15>_xor<0>11_INV_0  (
    .I(\c0/num<12>_num<13>_num<14>_num<15><3> ),
    .O(Result[0])
  );
  INV   \c0/Mcount_num<8>_num<9>_num<10>_num<11>_xor<0>11_INV_0  (
    .I(\c0/num<8>_num<9>_num<10>_num<11><3> ),
    .O(\Result<0>1 )
  );
  INV   \c0/Mcount_num<4>_num<5>_num<6>_num<7>_xor<0>11_INV_0  (
    .I(\c0/num<4>_num<5>_num<6>_num<7><3> ),
    .O(\Result<0>2 )
  );
  INV   \c0/Mcount_num<3:0>_xor<0>11_INV_0  (
    .I(\c0/num<3:0> [3]),
    .O(\Result<0>3 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \d0/XLXI_2/XLXI_7/Mmux_D311  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXN_44 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \d0/XLXI_2/XLXI_7/Mmux_D211  (
    .I0(\d0/XLXI_1/clkdiv [17]),
    .I1(\d0/XLXI_1/clkdiv [18]),
    .O(\d0/XLXI_2/XLXN_43 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \d0/XLXI_2/XLXI_7/Mmux_D111  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXN_42 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \d0/XLXI_2/XLXI_7/Mmux_D011  (
    .I0(\d0/XLXI_1/clkdiv [18]),
    .I1(\d0/XLXI_1/clkdiv [17]),
    .O(\d0/XLXI_2/XLXN_41 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

