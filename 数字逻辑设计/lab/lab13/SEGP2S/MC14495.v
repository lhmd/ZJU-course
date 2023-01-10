`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:16:42 12/22/2022 
// Design Name: 
// Module Name:    MC14495 
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
module MC14495(
		input [3:0] num,
		output [7:0] cnum
		);
		
		MyMC14495 m0(.D0(num[0]), .D1(num[1]), .D2(num[2]), .D3(num[3]), .LE(1'b0), .point(1'b0),
		.P(cnum[7]), .g(cnum[6]), .f(cnum[5]), .e(cnum[4]), .d(cnum[3]), .c(cnum[2]), .b(cnum[1]), .a(cnum[0]));

endmodule
