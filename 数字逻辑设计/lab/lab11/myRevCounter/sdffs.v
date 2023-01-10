`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:21:59 11/28/2022
// Design Name:   RevCounter
// Module Name:   E:/SOPHOMORE_AW/Digital Logic Design/lab/lab11/myRevCounter/sdffs.v
// Project Name:  MyRevCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RevCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sdffs;

	// Inputs
	reg clk;
	reg s;

	// Outputs
	wire [15:0] cnt;
	wire Rc;

	// Instantiate the Unit Under Test (UUT)
	RevCounter uut (
		.clk(clk), 
		.s(s), 
		.cnt(cnt), 
		.Rc(Rc)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		s = 0;

		// Wait 100 ns for global reset to finish
		clk <= ~clk;#100;
        
		// Add stimulus here

	end
      
endmodule

