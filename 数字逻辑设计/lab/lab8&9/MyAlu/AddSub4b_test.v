// Verilog test fixture created from schematic D:\projectStore\ise\MyAlu\AddSub4b.sch - Tue Oct 25 12:13:16 2022

`timescale 1ns / 1ps

module AddSub4b_AddSub4b_sch_tb();

// Inputs
   reg Ctrl;
   reg [3:0] A;
   reg [3:0] B;

// Output
   wire [3:0] S;
   wire Co;

// Bidirs

// Instantiate the UUT
   AddSub4b UUT (
		.Ctrl(Ctrl), 
		.A(A), 
		.B(B), 
		.S(S), 
		.Co(Co)
   );
// Initialize Inputs
      initial begin
		Ctrl = 0;
		A = 1010;
		B = 0001;
		end

endmodule
