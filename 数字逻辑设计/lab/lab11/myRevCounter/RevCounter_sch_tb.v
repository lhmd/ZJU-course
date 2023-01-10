`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:11 11/28/2022
// Design Name:   RevCounter
// Module Name:   E:/SOPHOMORE_AW/Digital Logic Design/lab/lab11/myRevCounter/RevCounter_sch_tb.v
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

module RevCounter_sch_tb();

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
		s=0;
      fork clk = 0; #50;
			forever #50 clk <= ~clk;
		join
   end
      
endmodule

