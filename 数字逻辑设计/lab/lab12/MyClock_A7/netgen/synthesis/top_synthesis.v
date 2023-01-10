////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_synthesis.v
// /___/   /\     Timestamp: Mon Dec 21 16:18:04 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top.ngc top_synthesis.v 
// Device	: xc7a100t-2L-csg324
// Input file	: top.ngc
// Output file	: D:\lab12\MyClock_A7\netgen\synthesis\top_synthesis.v
// # of Modules	: 1
// Design Name	: top
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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
  clk, seg_clk, seg_clrn, seg_sout, SEG_PEN
);
  input clk;
  output seg_clk;
  output seg_clrn;
  output seg_sout;
  output SEG_PEN;
  wire clk_BUFGP_0;
  wire LD1;
  wire N0;
  wire \m2/XLXN_10 ;
  wire \m2/XLXN_11 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_15 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_16 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_9 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_18 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_17 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_8 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_22 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_21 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_20 ;
  wire \m2/XLXI_2/XLXI_3/XLXN_19 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_15 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_16 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_9 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_18 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_17 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_8 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_22 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_21 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_20 ;
  wire \m2/XLXI_2/XLXI_2/XLXN_19 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_6 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_7 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_5 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_9 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_8 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_4 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_144 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_140 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_136 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_132 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_143 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_139 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_135 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_131 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_142 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_138 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_134 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_130 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_141 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_137 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_133 ;
  wire \m2/XLXI_2/XLXI_1/XLXN_129 ;
  wire \m2/XLXI_3/XLXN_140 ;
  wire \m2/XLXI_3/XLXN_130 ;
  wire \m2/XLXI_3/XLXN_136 ;
  wire \m2/XLXI_3/XLXN_137 ;
  wire \m2/XLXI_3/XLXN_138 ;
  wire \m2/XLXI_3/XLXN_139 ;
  wire \m2/XLXI_3/XLXN_141 ;
  wire \m2/XLXI_3/XLXN_142 ;
  wire \m2/XLXI_3/XLXN_123 ;
  wire \m2/XLXI_3/XLXN_133 ;
  wire \m2/XLXI_3/XLXN_121 ;
  wire \m2/XLXI_3/XLXN_113 ;
  wire \m2/XLXI_3/XLXN_105 ;
  wire \m2/XLXI_3/XLXN_97 ;
  wire \m2/XLXI_3/XLXN_59 ;
  wire \m2/XLXI_3/XLXN_48 ;
  wire \m2/XLXI_3/XLXN_126 ;
  wire \m2/XLXI_3/XLXN_118 ;
  wire \m2/XLXI_3/XLXN_106 ;
  wire \m2/XLXI_3/XLXN_104 ;
  wire \m2/XLXI_3/XLXN_96 ;
  wire \m2/XLXI_3/XLXN_50 ;
  wire \m2/XLXI_3/XLXN_132 ;
  wire \m2/XLXI_3/XLXN_128 ;
  wire \m2/XLXI_3/XLXN_127 ;
  wire \m2/XLXI_3/XLXN_125 ;
  wire \m2/XLXI_3/XLXN_122 ;
  wire \m2/XLXI_3/XLXN_119 ;
  wire \m2/XLXI_3/XLXN_114 ;
  wire \m2/XLXI_3/XLXN_112 ;
  wire \m2/XLXI_3/XLXN_98 ;
  wire \m2/XLXI_3/XLXN_95 ;
  wire \m2/XLXI_3/XLXN_61 ;
  wire \m2/XLXI_3/XLXN_60 ;
  wire \m2/XLXI_3/XLXN_58 ;
  wire \m2/XLXI_3/XLXN_117 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<1>_rt_145 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<2>_rt_146 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<3>_rt_147 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<4>_rt_148 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<5>_rt_149 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<6>_rt_150 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<7>_rt_151 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<8>_rt_152 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<9>_rt_153 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<10>_rt_154 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<11>_rt_155 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<12>_rt_156 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<13>_rt_157 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<14>_rt_158 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<15>_rt_159 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<16>_rt_160 ;
  wire \m2/XLXI_5/Mcount_clkdiv_cy<17>_rt_161 ;
  wire \m2/XLXI_5/Mcount_clkdiv_xor<18>_rt_162 ;
  wire \NLW_m2/XLXI_3/XLXI_105_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_103_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_102_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_101_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_100_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_99_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_98_O_UNCONNECTED ;
  wire \NLW_m2/XLXI_3/XLXI_97_O_UNCONNECTED ;
  wire [18 : 0] \m2/XLXI_5/clkdiv ;
  wire [3 : 0] \m2/HEX ;
  wire [18 : 0] Result;
  wire [0 : 0] \m2/XLXI_5/Mcount_clkdiv_lut ;
  wire [17 : 0] \m2/XLXI_5/Mcount_clkdiv_cy ;
  GND   XST_GND (
    .G(LD1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_0  (
    .C(clk_BUFGP_0),
    .D(Result[0]),
    .Q(\m2/XLXI_5/clkdiv [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_1  (
    .C(clk_BUFGP_0),
    .D(Result[1]),
    .Q(\m2/XLXI_5/clkdiv [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_2  (
    .C(clk_BUFGP_0),
    .D(Result[2]),
    .Q(\m2/XLXI_5/clkdiv [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_3  (
    .C(clk_BUFGP_0),
    .D(Result[3]),
    .Q(\m2/XLXI_5/clkdiv [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_4  (
    .C(clk_BUFGP_0),
    .D(Result[4]),
    .Q(\m2/XLXI_5/clkdiv [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_5  (
    .C(clk_BUFGP_0),
    .D(Result[5]),
    .Q(\m2/XLXI_5/clkdiv [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_6  (
    .C(clk_BUFGP_0),
    .D(Result[6]),
    .Q(\m2/XLXI_5/clkdiv [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_7  (
    .C(clk_BUFGP_0),
    .D(Result[7]),
    .Q(\m2/XLXI_5/clkdiv [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_8  (
    .C(clk_BUFGP_0),
    .D(Result[8]),
    .Q(\m2/XLXI_5/clkdiv [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_9  (
    .C(clk_BUFGP_0),
    .D(Result[9]),
    .Q(\m2/XLXI_5/clkdiv [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_10  (
    .C(clk_BUFGP_0),
    .D(Result[10]),
    .Q(\m2/XLXI_5/clkdiv [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_11  (
    .C(clk_BUFGP_0),
    .D(Result[11]),
    .Q(\m2/XLXI_5/clkdiv [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_12  (
    .C(clk_BUFGP_0),
    .D(Result[12]),
    .Q(\m2/XLXI_5/clkdiv [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_13  (
    .C(clk_BUFGP_0),
    .D(Result[13]),
    .Q(\m2/XLXI_5/clkdiv [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_14  (
    .C(clk_BUFGP_0),
    .D(Result[14]),
    .Q(\m2/XLXI_5/clkdiv [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_15  (
    .C(clk_BUFGP_0),
    .D(Result[15]),
    .Q(\m2/XLXI_5/clkdiv [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_16  (
    .C(clk_BUFGP_0),
    .D(Result[16]),
    .Q(\m2/XLXI_5/clkdiv [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_17  (
    .C(clk_BUFGP_0),
    .D(Result[17]),
    .Q(\m2/XLXI_5/clkdiv [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \m2/XLXI_5/clkdiv_18  (
    .C(clk_BUFGP_0),
    .D(Result[18]),
    .Q(\m2/XLXI_5/clkdiv [18])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<0>  (
    .CI(LD1),
    .DI(N0),
    .S(\m2/XLXI_5/Mcount_clkdiv_lut [0]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [0])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<0>  (
    .CI(LD1),
    .LI(\m2/XLXI_5/Mcount_clkdiv_lut [0]),
    .O(Result[0])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<1>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [0]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<1>_rt_145 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [1])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<1>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [0]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<1>_rt_145 ),
    .O(Result[1])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<2>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [1]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<2>_rt_146 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [2])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<2>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [1]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<2>_rt_146 ),
    .O(Result[2])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<3>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [2]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<3>_rt_147 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [3])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<3>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [2]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<3>_rt_147 ),
    .O(Result[3])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<4>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [3]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<4>_rt_148 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [4])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<4>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [3]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<4>_rt_148 ),
    .O(Result[4])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<5>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [4]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<5>_rt_149 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [5])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<5>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [4]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<5>_rt_149 ),
    .O(Result[5])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<6>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [5]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<6>_rt_150 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [6])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<6>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [5]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<6>_rt_150 ),
    .O(Result[6])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<7>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [6]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<7>_rt_151 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [7])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<7>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [6]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<7>_rt_151 ),
    .O(Result[7])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<8>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [7]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<8>_rt_152 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [8])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<8>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [7]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<8>_rt_152 ),
    .O(Result[8])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<9>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [8]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<9>_rt_153 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [9])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<9>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [8]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<9>_rt_153 ),
    .O(Result[9])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<10>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [9]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<10>_rt_154 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [10])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<10>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [9]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<10>_rt_154 ),
    .O(Result[10])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<11>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [10]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<11>_rt_155 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [11])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<11>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [10]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<11>_rt_155 ),
    .O(Result[11])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<12>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [11]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<12>_rt_156 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [12])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<12>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [11]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<12>_rt_156 ),
    .O(Result[12])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<13>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [12]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<13>_rt_157 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [13])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<13>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [12]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<13>_rt_157 ),
    .O(Result[13])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<14>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [13]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<14>_rt_158 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [14])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<14>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [13]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<14>_rt_158 ),
    .O(Result[14])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<15>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [14]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<15>_rt_159 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [15])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<15>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [14]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<15>_rt_159 ),
    .O(Result[15])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<16>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [15]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<16>_rt_160 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [16])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<16>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [15]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<16>_rt_160 ),
    .O(Result[16])
  );
  MUXCY   \m2/XLXI_5/Mcount_clkdiv_cy<17>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [16]),
    .DI(LD1),
    .S(\m2/XLXI_5/Mcount_clkdiv_cy<17>_rt_161 ),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy [17])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<17>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [16]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_cy<17>_rt_161 ),
    .O(Result[17])
  );
  XORCY   \m2/XLXI_5/Mcount_clkdiv_xor<18>  (
    .CI(\m2/XLXI_5/Mcount_clkdiv_cy [17]),
    .LI(\m2/XLXI_5/Mcount_clkdiv_xor<18>_rt_162 ),
    .O(Result[18])
  );
  VCC   \m2/XLXI_2/XLXI_5  (
    .P(N0)
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_5  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_9 ),
    .I1(\m2/XLXI_2/XLXI_3/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_3/XLXN_15 )
  );
  OR4   \m2/XLXI_2/XLXI_3/XLXI_13  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_22 ),
    .I1(\m2/XLXI_2/XLXI_3/XLXN_21 ),
    .I2(\m2/XLXI_2/XLXI_3/XLXN_20 ),
    .I3(\m2/XLXI_2/XLXI_3/XLXN_19 ),
    .O(\m2/XLXN_11 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_6  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_2/XLXI_3/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_3/XLXN_16 )
  );
  INV   \m2/XLXI_2/XLXI_3/XLXI_2  (
    .I(\m2/XLXI_5/clkdiv [17]),
    .O(\m2/XLXI_2/XLXI_3/XLXN_9 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_8  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_3/XLXN_18 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_7  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_9 ),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_3/XLXN_17 )
  );
  INV   \m2/XLXI_2/XLXI_3/XLXI_1  (
    .I(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_3/XLXN_8 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_12  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_18 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_3/XLXN_22 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_11  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_17 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_3/XLXN_21 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_10  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_16 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_3/XLXN_20 )
  );
  AND2   \m2/XLXI_2/XLXI_3/XLXI_9  (
    .I0(\m2/XLXI_2/XLXI_3/XLXN_15 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_3/XLXN_19 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_5  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_9 ),
    .I1(\m2/XLXI_2/XLXI_2/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_2/XLXN_15 )
  );
  OR4   \m2/XLXI_2/XLXI_2/XLXI_13  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_22 ),
    .I1(\m2/XLXI_2/XLXI_2/XLXN_21 ),
    .I2(\m2/XLXI_2/XLXI_2/XLXN_20 ),
    .I3(\m2/XLXI_2/XLXI_2/XLXN_19 ),
    .O(\m2/XLXN_10 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_6  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_2/XLXI_2/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_2/XLXN_16 )
  );
  INV   \m2/XLXI_2/XLXI_2/XLXI_2  (
    .I(\m2/XLXI_5/clkdiv [17]),
    .O(\m2/XLXI_2/XLXI_2/XLXN_9 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_8  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_2/XLXN_18 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_7  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_9 ),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_2/XLXN_17 )
  );
  INV   \m2/XLXI_2/XLXI_2/XLXI_1  (
    .I(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_2/XLXN_8 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_12  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_18 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_2/XLXN_22 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_11  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_17 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_2/XLXN_21 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_10  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_16 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_2/XLXN_20 )
  );
  AND2   \m2/XLXI_2/XLXI_2/XLXI_9  (
    .I0(\m2/XLXI_2/XLXI_2/XLXN_15 ),
    .I1(LD1),
    .O(\m2/XLXI_2/XLXI_2/XLXN_19 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_3  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_5 ),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_4 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_6 )
  );
  OR4   \m2/XLXI_2/XLXI_1/XLXI_114  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_144 ),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_143 ),
    .I2(\m2/XLXI_2/XLXI_1/XLXN_142 ),
    .I3(\m2/XLXI_2/XLXI_1/XLXN_141 ),
    .O(\m2/HEX [3])
  );
  OR4   \m2/XLXI_2/XLXI_1/XLXI_113  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_140 ),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_139 ),
    .I2(\m2/XLXI_2/XLXI_1/XLXN_138 ),
    .I3(\m2/XLXI_2/XLXI_1/XLXN_137 ),
    .O(\m2/HEX [2])
  );
  OR4   \m2/XLXI_2/XLXI_1/XLXI_112  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_136 ),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_135 ),
    .I2(\m2/XLXI_2/XLXI_1/XLXN_134 ),
    .I3(\m2/XLXI_2/XLXI_1/XLXN_133 ),
    .O(\m2/HEX [1])
  );
  OR4   \m2/XLXI_2/XLXI_1/XLXI_111  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_132 ),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_131 ),
    .I2(\m2/XLXI_2/XLXI_1/XLXN_130 ),
    .I3(\m2/XLXI_2/XLXI_1/XLXN_129 ),
    .O(\m2/HEX [0])
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_4  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_4 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_7 )
  );
  INV   \m2/XLXI_2/XLXI_1/XLXI_2  (
    .I(\m2/XLXI_5/clkdiv [17]),
    .O(\m2/XLXI_2/XLXI_1/XLXN_5 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_6  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_1/XLXN_9 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_5  (
    .I0(\m2/XLXI_2/XLXI_1/XLXN_5 ),
    .I1(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_1/XLXN_8 )
  );
  INV   \m2/XLXI_2/XLXI_1/XLXI_1  (
    .I(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_2/XLXI_1/XLXN_4 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_24  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_9 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_144 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_19  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_9 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_140 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_14  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_9 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_136 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_10  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_9 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_132 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_23  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_143 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_18  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_139 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_13  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_135 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_9  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_8 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_131 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_22  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_7 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_142 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_17  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_7 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_138 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_12  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_7 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_134 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_8  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_7 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_130 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_21  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_6 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_141 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_16  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_6 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_137 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_11  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_6 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_133 )
  );
  AND2   \m2/XLXI_2/XLXI_1/XLXI_7  (
    .I0(LD1),
    .I1(\m2/XLXI_2/XLXI_1/XLXN_6 ),
    .O(\m2/XLXI_2/XLXI_1/XLXN_129 )
  );
  OR3   \m2/XLXI_3/XLXI_74  (
    .I0(\m2/XLXI_3/XLXN_106 ),
    .I1(\m2/XLXI_3/XLXN_105 ),
    .I2(\m2/XLXI_3/XLXN_104 ),
    .O(\m2/XLXI_3/XLXN_140 )
  );
  AND3   \m2/XLXI_3/XLXI_93  (
    .I0(\m2/XLXI_3/XLXN_50 ),
    .I1(\m2/XLXI_3/XLXN_48 ),
    .I2(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_130 )
  );
  OR3   \m2/XLXI_3/XLXI_96  (
    .I0(\m2/XLXI_3/XLXN_133 ),
    .I1(\m2/XLXI_3/XLXN_132 ),
    .I2(\m2/XLXI_3/XLXN_130 ),
    .O(\m2/XLXI_3/XLXN_136 )
  );
  OR4   \m2/XLXI_3/XLXI_92  (
    .I0(\m2/XLXI_3/XLXN_128 ),
    .I1(\m2/XLXI_3/XLXN_127 ),
    .I2(\m2/XLXI_3/XLXN_126 ),
    .I3(\m2/XLXI_3/XLXN_125 ),
    .O(\m2/XLXI_3/XLXN_137 )
  );
  OR3   \m2/XLXI_3/XLXI_86  (
    .I0(\m2/XLXI_3/XLXN_122 ),
    .I1(\m2/XLXI_3/XLXN_121 ),
    .I2(\m2/XLXI_3/XLXN_119 ),
    .O(\m2/XLXI_3/XLXN_138 )
  );
  OR4   \m2/XLXI_3/XLXI_79  (
    .I0(\m2/XLXI_3/XLXN_118 ),
    .I1(\m2/XLXI_3/XLXN_114 ),
    .I2(\m2/XLXI_3/XLXN_113 ),
    .I3(\m2/XLXI_3/XLXN_112 ),
    .O(\m2/XLXI_3/XLXN_139 )
  );
  OR4   \m2/XLXI_3/XLXI_70  (
    .I0(\m2/XLXI_3/XLXN_98 ),
    .I1(\m2/XLXI_3/XLXN_97 ),
    .I2(\m2/XLXI_3/XLXN_96 ),
    .I3(\m2/XLXI_3/XLXN_95 ),
    .O(\m2/XLXI_3/XLXN_141 )
  );
  OR4   \m2/XLXI_3/XLXI_65  (
    .I0(\m2/XLXI_3/XLXN_61 ),
    .I1(\m2/XLXI_3/XLXN_60 ),
    .I2(\m2/XLXI_3/XLXN_59 ),
    .I3(\m2/XLXI_3/XLXN_58 ),
    .O(\m2/XLXI_3/XLXN_142 )
  );
  INV   \m2/XLXI_3/XLXI_105  (
    .I(\m2/XLXN_10 ),
    .O(\NLW_m2/XLXI_3/XLXI_105_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_103  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_136 ),
    .O(\NLW_m2/XLXI_3/XLXI_103_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_102  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_137 ),
    .O(\NLW_m2/XLXI_3/XLXI_102_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_101  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_138 ),
    .O(\NLW_m2/XLXI_3/XLXI_101_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_100  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_139 ),
    .O(\NLW_m2/XLXI_3/XLXI_100_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_99  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_140 ),
    .O(\NLW_m2/XLXI_3/XLXI_99_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_98  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_141 ),
    .O(\NLW_m2/XLXI_3/XLXI_98_O_UNCONNECTED )
  );
  OR2   \m2/XLXI_3/XLXI_97  (
    .I0(\m2/XLXN_11 ),
    .I1(\m2/XLXI_3/XLXN_142 ),
    .O(\NLW_m2/XLXI_3/XLXI_97_O_UNCONNECTED )
  );
  INV   \m2/XLXI_3/XLXI_57  (
    .I(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_123 )
  );
  AND4   \m2/XLXI_3/XLXI_95  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_133 )
  );
  AND3   \m2/XLXI_3/XLXI_84  (
    .I0(\m2/XLXI_3/XLXN_50 ),
    .I1(\m2/HEX [2]),
    .I2(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_121 )
  );
  AND4   \m2/XLXI_3/XLXI_76  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_113 )
  );
  AND3   \m2/XLXI_3/XLXI_72  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/HEX [2]),
    .I2(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_105 )
  );
  AND3   \m2/XLXI_3/XLXI_68  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/HEX [2]),
    .I2(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_97 )
  );
  AND4   \m2/XLXI_3/XLXI_62  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_59 )
  );
  INV   \m2/XLXI_3/XLXI_58  (
    .I(\m2/HEX [2]),
    .O(\m2/XLXI_3/XLXN_48 )
  );
  AND3   \m2/XLXI_3/XLXI_89  (
    .I0(\m2/HEX [1]),
    .I1(\m2/XLXI_3/XLXN_48 ),
    .I2(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_126 )
  );
  AND4   \m2/XLXI_3/XLXI_82  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/HEX [1]),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .I3(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_118 )
  );
  AND3   \m2/XLXI_3/XLXI_73  (
    .I0(\m2/HEX [1]),
    .I1(\m2/HEX [2]),
    .I2(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_106 )
  );
  AND4   \m2/XLXI_3/XLXI_71  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/HEX [1]),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_104 )
  );
  AND3   \m2/XLXI_3/XLXI_67  (
    .I0(\m2/XLXI_3/XLXN_117 ),
    .I1(\m2/HEX [1]),
    .I2(\m2/HEX [2]),
    .O(\m2/XLXI_3/XLXN_96 )
  );
  INV   \m2/XLXI_3/XLXI_59  (
    .I(\m2/HEX [1]),
    .O(\m2/XLXI_3/XLXN_50 )
  );
  AND4   \m2/XLXI_3/XLXI_94  (
    .I0(\m2/HEX [0]),
    .I1(\m2/HEX [1]),
    .I2(\m2/HEX [2]),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_132 )
  );
  AND4   \m2/XLXI_3/XLXI_91  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_128 )
  );
  AND3   \m2/XLXI_3/XLXI_90  (
    .I0(\m2/HEX [0]),
    .I1(\m2/HEX [1]),
    .I2(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_127 )
  );
  AND3   \m2/XLXI_3/XLXI_88  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_48 ),
    .I2(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_125 )
  );
  AND3   \m2/XLXI_3/XLXI_85  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .O(\m2/XLXI_3/XLXN_122 )
  );
  AND2   \m2/XLXI_3/XLXI_83  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_119 )
  );
  AND3   \m2/XLXI_3/XLXI_77  (
    .I0(\m2/HEX [0]),
    .I1(\m2/HEX [1]),
    .I2(\m2/HEX [2]),
    .O(\m2/XLXI_3/XLXN_114 )
  );
  AND4   \m2/XLXI_3/XLXI_75  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_112 )
  );
  AND3   \m2/XLXI_3/XLXI_69  (
    .I0(\m2/HEX [0]),
    .I1(\m2/HEX [1]),
    .I2(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_98 )
  );
  AND4   \m2/XLXI_3/XLXI_66  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_95 )
  );
  AND4   \m2/XLXI_3/XLXI_64  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/HEX [2]),
    .I3(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_61 )
  );
  AND4   \m2/XLXI_3/XLXI_63  (
    .I0(\m2/HEX [0]),
    .I1(\m2/HEX [1]),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .I3(\m2/HEX [3]),
    .O(\m2/XLXI_3/XLXN_60 )
  );
  AND4   \m2/XLXI_3/XLXI_61  (
    .I0(\m2/HEX [0]),
    .I1(\m2/XLXI_3/XLXN_50 ),
    .I2(\m2/XLXI_3/XLXN_48 ),
    .I3(\m2/XLXI_3/XLXN_123 ),
    .O(\m2/XLXI_3/XLXN_58 )
  );
  INV   \m2/XLXI_3/XLXI_60  (
    .I(\m2/HEX [0]),
    .O(\m2/XLXI_3/XLXN_117 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<1>_rt  (
    .I0(\m2/XLXI_5/clkdiv [1]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<1>_rt_145 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<2>_rt  (
    .I0(\m2/XLXI_5/clkdiv [2]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<2>_rt_146 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<3>_rt  (
    .I0(\m2/XLXI_5/clkdiv [3]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<3>_rt_147 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<4>_rt  (
    .I0(\m2/XLXI_5/clkdiv [4]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<4>_rt_148 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<5>_rt  (
    .I0(\m2/XLXI_5/clkdiv [5]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<5>_rt_149 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<6>_rt  (
    .I0(\m2/XLXI_5/clkdiv [6]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<6>_rt_150 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<7>_rt  (
    .I0(\m2/XLXI_5/clkdiv [7]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<7>_rt_151 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<8>_rt  (
    .I0(\m2/XLXI_5/clkdiv [8]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<8>_rt_152 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<9>_rt  (
    .I0(\m2/XLXI_5/clkdiv [9]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<9>_rt_153 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<10>_rt  (
    .I0(\m2/XLXI_5/clkdiv [10]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<10>_rt_154 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<11>_rt  (
    .I0(\m2/XLXI_5/clkdiv [11]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<11>_rt_155 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<12>_rt  (
    .I0(\m2/XLXI_5/clkdiv [12]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<12>_rt_156 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<13>_rt  (
    .I0(\m2/XLXI_5/clkdiv [13]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<13>_rt_157 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<14>_rt  (
    .I0(\m2/XLXI_5/clkdiv [14]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<14>_rt_158 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<15>_rt  (
    .I0(\m2/XLXI_5/clkdiv [15]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<15>_rt_159 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<16>_rt  (
    .I0(\m2/XLXI_5/clkdiv [16]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<16>_rt_160 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_cy<17>_rt  (
    .I0(\m2/XLXI_5/clkdiv [17]),
    .O(\m2/XLXI_5/Mcount_clkdiv_cy<17>_rt_161 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \m2/XLXI_5/Mcount_clkdiv_xor<18>_rt  (
    .I0(\m2/XLXI_5/clkdiv [18]),
    .O(\m2/XLXI_5/Mcount_clkdiv_xor<18>_rt_162 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \m2/XLXI_5/Mcount_clkdiv_lut<0>_INV_0  (
    .I(\m2/XLXI_5/clkdiv [0]),
    .O(\m2/XLXI_5/Mcount_clkdiv_lut [0])
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

