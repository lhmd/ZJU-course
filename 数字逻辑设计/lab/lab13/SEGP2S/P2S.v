`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:09:08 12/22/2022 
// Design Name: 
// Module Name:    P2S 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module P2S(
		input clk,
		input start,
		input [63:0] cnum,
		output ser_out,
		output finish
		);
		
		wire q, q_n, s, r, fin;
		assign finish = fin;
		wire [8:0] par_high = {1'b0, cnum[63:56]};
		wire [8:0] q_high;
		wire [7:0] q_0, q_1, q_2, q_3, q_4, q_5, q_6;
		
		AND2 is_convert(.O(s), .I0(start), .I1(fin));
		INV is_end(.O(r), .I(fin));
		NOR2 sr1(q_n, s, q);
		NOR2 sr2(q, r, q_n);
		
		ShfitReg9b t0(.clk(clk), .Q(q_high), .shfit_in(1'b1), .par_in(par_high), .L(q));
		ShfitReg8b t1(.clk(clk), .Q(q_0), .shfit_in(q_high[0]), .par_in(cnum[55:48]), .L(q));
		ShfitReg8b t2(.clk(clk), .Q(q_1), .shfit_in(q_0[0]), .par_in(cnum[47:40]), .L(q));
		ShfitReg8b t3(.clk(clk), .Q(q_2), .shfit_in(q_1[0]), .par_in(cnum[39:32]), .L(q));
		ShfitReg8b t4(.clk(clk), .Q(q_3), .shfit_in(q_2[0]), .par_in(cnum[31:24]), .L(q));
		ShfitReg8b t5(.clk(clk), .Q(q_4), .shfit_in(q_3[0]), .par_in(cnum[23:16]), .L(q));
		ShfitReg8b t6(.clk(clk), .Q(q_5), .shfit_in(q_4[0]), .par_in(cnum[15:8]), .L(q));
		ShfitReg8b t7(.clk(clk), .Q(q_6), .shfit_in(q_5[0]), .par_in(cnum[7:0]), .L(q));
		
		assign ser_out = q_6[0];
		assign fin = (&q_high) & (&q_0) & (&q_1) & (&q_2) & (&q_3) & (&q_4) & (&q_5) & (&q_6);
		
endmodule
