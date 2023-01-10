// Verilog test fixture created from schematic D:\isepro\Mylatch\D_LATCH.sch - Mon Nov 18 14:05:41 2019

`timescale 1ns / 1ps

module D_LATCH_D_LATCH_sch_tb();

// Inputs
   reg C;
   reg D;

// Output
   wire Qbar;
   wire Q;

// Bidirs

// Instantiate the UUT
   D_LATCH UUT (
		.Qbar(Qbar), 
		.Q(Q), 
		.C(C), 
		.D(D)
   );
// Initialize Inputs
//  `ifdef auto_init
        initial begin
	C=1; D=1; #50;
	D=0; #50;
	C=0;D=1; #50;
	D=0;
	end
//   `endif
endmodule
