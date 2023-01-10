// Verilog test fixture created from schematic D:\isepro\Mylatch\CSR_LATCH.sch - Mon Nov 18 13:59:36 2019

`timescale 1ns / 1ps

module CSR_LATCH_CSR_LATCH_sch_tb();

// Inputs
   reg R;
   reg S;
   reg C;

// Output
   wire Qbar;
   wire Q;

// Bidirs

// Instantiate the UUT
   CSR_LATCH UUT (
		.Qbar(Qbar), 
		.Q(Q), 
		.R(R), 
		.S(S), 
		.C(C)
   );
// Initialize Inputs
 //  `ifdef auto_init
       	initial begin
	C=1;R=1;S=1; #50;
	R=1;S=0; #50;
	R=1;S=1; #50;
	R=0;S=1; #50;
	R=1;S=1; #50;
	R=0;S=0; #50;
	R=1;S=1; #50;	 
	C=0;R=1;S=1; #50;
	R=1;S=0; #50;
	R=1;S=1; #50;
	R=0;S=1; #50;
	R=1;S=1; #50;
	R=0;S=0; #50;
	R=1;S=1; #50;
	end
 //  `endif
endmodule
