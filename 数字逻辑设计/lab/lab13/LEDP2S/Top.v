`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:36:58 12/22/2022 
// Design Name: 
// Module Name:    Top 
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
module Top(
		input clk,
		input start,
		input [15:0] LED,
		output ser_out,
		output finish,
		output [8:0] temp_h,
		output [7:0] temp_l
		);

		wire q, q_n, s, r, fin;
		assign finish = fin;
		wire [8:0] par_high = {1'b0,LED[15:8]};
		wire [7:0] par_low = {LED[7:0]};
		wire [8:0] q_high;
		wire [7:0] q_low;
		
		AND2 is_convert(.O(s), .I0(start), .I1(fin));		
		INV is_end(.O(r), .I(fin));
		NOR2 sr1(q_n, s, q);
		NOR2 sr2(q, r, q_n);
		
		assign temp_h = q_high;
		assign temp_l = q_low;
		
		ShfitReg9b m0(.clk(clk), .Q(q_high), .shfit_in(1'b1), .par_in(par_high), .L(q));
		ShfitReg8b m1(.clk(clk), .Q(q_low), .shfit_in(q_high[0]), .par_in(par_low), .L(q));
		
		assign ser_out = q_low[0];
		assign fin = q_high[8] & q_high[7] & q_high[6] & q_high[5] & q_high[4] & q_high[3] & q_high[2] & q_high[1] &
		                    q_high[0] & q_low[7] & q_low[6] & q_low[5] & q_low[4] & q_low[3] & q_low[2] & q_low[1] & q_low[0];

endmodule
