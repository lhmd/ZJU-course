// Verilog test fixture created from schematic F:\_TOT_FILES\ZJU\A_1_Course\2_1\Digital_Logic_Design\Lab8\MyAdder\Adder4b.sch - Fri Nov 20 13:13:53 2020

`timescale 1ns / 1ps

module Adder4b_Adder4b_sch_tb();

// Inputs
   reg Cin;
   reg [3:0] A;
   reg [3:0] B;

// Output
   wire [3:0] S;
   wire Cout;

// Bidirs

// Instantiate the UUT
   Adder4b UUT (
		.Cin(Cin), 
		.A(A), 
		.B(B), 
		.S(S), 
		.Cout(Cout)
   );
// Initialize Inputs
   //`ifdef auto_init
      integer i, j, k;
		initial begin
			for(i = 0; i < 2; i = i + 1) begin
				for(j = 0; j < 16; j = j + 1) begin
					for(k = 0; k < 16; k = k + 1) begin
						Cin = i;
						A = j;
						B = k;
						#50;
					end
				end
			end
		end
   //`endif
endmodule
