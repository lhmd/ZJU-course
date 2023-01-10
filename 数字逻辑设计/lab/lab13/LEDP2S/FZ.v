`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:37:19 12/22/2022
// Design Name:   Top
// Module Name:   /home/zhangshuqi/ISE.text/LEDP2S/FZ.v
// Project Name:  LEDP2S
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
	reg [15:0] LED;

	// Outputs
	wire ser_out;
	wire finish;
	wire [8:0] temp_h;
	wire [7:0] temp_l;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.clk(clk), 
		.start(start), 
		.LED(LED), 
		.ser_out(ser_out), 
		.finish(finish), 
		.temp_h(temp_h), 
		.temp_l(temp_l)
		);

		initial forever begin
		#20; clk = ~clk;
		end
		
		initial begin
		// Initialize Inputs
		clk = 0;
		start = 0;
		LED = 0;

		#100;
		LED = 16'b0101_1000_0000_1001;//你的学号
		start = 1;
		end
      
endmodule

