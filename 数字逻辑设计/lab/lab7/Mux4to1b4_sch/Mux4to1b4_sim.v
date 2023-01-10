// Verilog test fixture created from schematic G:\Digital_Logic_Design\SaltyfishXuan\Lab7\Mux4to1b4_sch\Mux4to1b4.sch - Mon Nov 09 15:10:12 2020

`timescale 1ns / 1ps

module Mux4to1b4_Mux4to1b4_sch_tb();

// Inputs
   reg [1:0] s;
   reg [3:0] I0;
   reg [3:0] I2;
   reg [3:0] I3;
   reg [3:0] I1;

// Output
   wire [3:0] o;

// Bidirs

// Instantiate the UUT
   Mux4to1b4 UUT (
		.s(s), 
		.o(o), 
		.I0(I0), 
		.I2(I2), 
		.I3(I3), 
		.I1(I1)
   );
// Initialize Inputs
   //`ifdef auto_init
		integer i;
      initial begin
			I0 = 1;
			I1 = 2;
			I2 = 4;
			I3 = 8;
			
			for(i=0; i<=3; i=i+1) begin
				s = i;
				#50;
			end
		end
   //`endif
endmodule
