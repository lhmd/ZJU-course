`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:56:31 12/22/2022 
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
		input [31:0] num,
		input CR,
		output SEGDT,
		output SEGCLK,
		output SEGCLR,
		output [63:0] temp_cnum
		);
		
		wire [63:0] cnum;
		wire p2s_fin;
		assign temp_cnum = cnum;
		
		OR2 seg_clk(.O(SEGCLK), .I0(p2s_fin), .I1(clk));
		INV clear(.O(SEGCLR), .I(CR));
		
		MC14495 m0(.num(num[31:28]), .cnum(cnum[63:56]));
		MC14495 m1(.num(num[27:24]), .cnum(cnum[55:48]));
		MC14495 m2(.num(num[23:20]), .cnum(cnum[47:40]));
		MC14495 m3(.num(num[19:16]), .cnum(cnum[39:32]));
		MC14495 m4(.num(num[15:12]), .cnum(cnum[31:24]));
		MC14495 m5(.num(num[11:8]), .cnum(cnum[23:16]));
		MC14495 m6(.num(num[7:4]), .cnum(cnum[15:8]));
		MC14495 m7(.num(num[3:0]), .cnum(cnum[7:0]));
		
		P2S m8(.clk(clk), .cnum(cnum), .start(start), .finish(p2s_fin), .ser_out(SEGDT));
		
endmodule
