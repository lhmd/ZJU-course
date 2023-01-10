// Verilog test fixture created from schematic D:\isepro\Mylatch\SE_LATCH.sch - Mon Nov 18 13:41:42 2019

`timescale 1ns / 1ps

module SE_LATCH_SE_LATCH_sch_tb();

// Inputs
   reg R;
   reg S;

// Output
   wire Qbar;
   wire Q;

// Bidirs

// Instantiate the UUT
   SE_LATCH UUT (
		.R(R), 
		.Qbar(Qbar), 
		.Q(Q), 
		.S(S)
   );
// Initialize Inputs
 //  `ifdef auto_init	 
		 initial begin
	R=1;S=1; #50;
	R=1;S=0; #50;
	R=1;S=1; #50;
	R=0;S=1; #50;
	R=1;S=1; #50;
	R=0;S=0; #50;
	R=1;S=1; #50;
	end
		
 //  `endif
endmodule
