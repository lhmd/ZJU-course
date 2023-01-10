// Verilog test fixture created from schematic D:\isepro\Mylatch\MS_FLIPFLOP.sch - Wed Nov 20 18:51:48 2019

`timescale 1ns / 1ps

module MS_FLIPFLOP_MS_FLIPFLOP_sch_tb();

// Inputs
   reg S;
   reg R;
   reg C;

// Output
   wire Y;
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   MS_FLIPFLOP UUT (
		.S(S), 
		.R(R), 
		.C(C), 
		.Y(Y), 
		.Q(Q), 
		.Qbar(Qbar)
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
always begin
	C=0;#20;
	C=1;#20;
end


 //  `endif
endmodule
