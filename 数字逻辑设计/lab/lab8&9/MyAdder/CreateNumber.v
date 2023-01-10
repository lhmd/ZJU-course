`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:37:44 11/09/2020 
// Design Name: 
// Module Name:    CreateNumber 
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
module CreateNumber(
	input wire clk,
	input wire [1:0] btn,
	output reg [7:0] num
    );
	 
	 wire [3:0] A, B;
	 wire [3:0] temp_btn;
	 
	 initial num<=8'b 00010010;
	 
	 assign A = num[3:0] + 1'b1;
	 assign B = num[7:4] + 1'b1;
	 
	 pbdebounce p0(.clk_1ms(clk), .button(btn[0]), .pbreg(temp_btn[0]));
	 pbdebounce p1(.clk_1ms(clk), .button(btn[1]), .pbreg(temp_btn[1]));

	 always@(posedge temp_btn[0]) num[3:0]<=A;
	 always@(posedge temp_btn[1]) num[7:4]<=B;
endmodule
