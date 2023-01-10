`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:15 12/22/2022
// Design Name:   Top
// Module Name:   /home/zhangshuqi/ISE.text/SEGP2S/FZ.v
// Project Name:  SEGP2S
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FZ;

	// Inputs
	reg clk;
	reg start;
	reg [31:0] num;
	reg CR;

	// Outputs
	wire SEGDT;
	wire SEGCLK;
	wire SEGCLR;
	wire [63:0] temp_cnum;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.start(start), 
		.num(num), 
		.CR(CR), 
		.SEGDT(SEGDT), 
		.SEGCLK(SEGCLK), 
		.SEGCLR(SEGCLR), 
		.temp_cnum(temp_cnum)
	);

	initial begin
		clk = 0;
		start = 0;
		num = 0;
		CR = 0;
		
		#1000;
		num = 32'b0001_0000_0001_0000_0101_1000_0000_1001;//你的学号
		start = 1;
		
		#100;
		start = 0;
		end
      
		always begin
		#20; clk = ~clk;
		end
      
endmodule

