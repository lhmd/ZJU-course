`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:37:04 12/21/2020
// Design Name:   my74LS161
// Module Name:   D:/My74LS161/my74LS161_sim.v
// Project Name:  My74LS161
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: my74LS161
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module my74LS161_sim;

	// Inputs
	reg CP;
	reg CTP;
	reg CTT;
	reg CR;
	reg LD;
	reg [3:0] D;

	// Outputs
	wire [3:0] Q;
	wire Co;
	// Instantiate the Unit Under Test (UUT)
	my74LS161 uut (
		.CP(CP), 
		.CTP(CTP), 
		.CTT(CTT), 
		.CR(CR), 
		.LD(LD), 
		.D(D), 
		.Q(Q),
		.Co(Co)
	);
	always begin
		CP = 0;
		#20;
		CP = 1;
		#20;
	end
	initial begin
		CR = 0;
		D = 4'b1100;
		CTP = 0;
		CTT = 0;
		LD = 1;
		#100;
		CR = 1;
		LD = 1;
		CTT = 0;
		CTP = 0;
		#30 CR = 0;
		#20 CR = 1;
		#10 LD = 0;
		#30 CTT = 1;
		CTP = 1;
		#10 LD = 1;
		#510;
		CR = 0;
		#20 CR = 1;
		#500;
	end

      
endmodule

