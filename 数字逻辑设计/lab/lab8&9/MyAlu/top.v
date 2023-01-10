`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:01 10/25/2022 
// Design Name: 
// Module Name:    top 
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
module top(
	input wire clk,
	input wire [1:0] BTN,
	input wire [1:0]SW1,
	input wire [1:0]SW2,
	input wire [7:0] SW,
	output wire [3:0]AN,
	output wire [7:0]SEGMENT
    );
   wire [15:0] num;
	wire [1:0] btn_out;
	wire [3:0] C;
	wire Co;
	wire [31:0] clk_div;
   wire [15:0] disp_hexs;
   assign disp_hexs[15:12] = num[7:4];//B
	assign disp_hexs[11:8] = num[3:0]; //A 
	assign disp_hexs[7:4] = {3'b000, Co};
	assign disp_hexs[3:0] = C[3:0];    //½á¹ûC

	clkdiv m2(clk,0,clk_div);
	pbdebounce m0(clk_div[17],BTN[0],btn_out[0]);
	pbdebounce m1(clk_div[17],BTN[1],btn_out[1]);
	CreateNumber m3({2'b0,btn_out},{2'b0,SW1},num);
	myALU m6 (
		.S(SW2), 
		.A(num[3:0]), 
		.B(num[7:4]), 
		.C(C[3:0]), 
		.Co(Co)
   );

	disp_num m5(clk,disp_hexs,SW[7:4],SW[3:0],1'b0,AN,SEGMENT);
endmodule
