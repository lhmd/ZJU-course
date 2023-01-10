`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:22:27 12/28/2020
// Design Name:   ShfitReg8b
// Module Name:   D:/lab13/ShfitReg8b/shiftreg_sim.v
// Project Name:  ShfitReg8b
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ShfitReg8b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module shiftreg_sim;

	// Inputs
	reg clk;
	reg S_L;
	reg s_in;
	reg [7:0] p_in;

	// Outputs
	wire [7:0] Q;

	// Instantiate the Unit Under Test (UUT)
	ShfitReg8b uut (
		.clk(clk), 
		.S_L(S_L), 
		.s_in(s_in), 
		.p_in(p_in), 
		.Q(Q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		S_L = 0;
		s_in = 0;
		p_in = 0;
		#100;
        
		// Add stimulus here
		S_L = 0;
		s_in = 1;
		p_in =0;
		
		#200;
		S_L = 1;
		s_in = 0;
		p_in = 8'b0101_0101;
		#500;
	end
	
	always begin
		clk = 0; #20;
		clk = 1; #20;
	end

      
endmodule

