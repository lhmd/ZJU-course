// Verilog test fixture created from schematic D:\isepro\Mylatch\D_FLIPFLOP.sch - Mon Nov 18 14:27:30 2019

`timescale 1ns / 1ps

module D_FLIPFLOP_D_FLIPFLOP_sch_tb();

// Inputs
   reg R;
   reg S;
   reg D;
   reg C;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   D_FLIPFLOP UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.R(R), 
		.S(S), 
		.D(D), 
		.C(C)
   );
// Initialize Inputs
//   `ifdef auto_init
initial begin
  S = 1;
  R = 1;
  //D = 1; #150;
	D = 0; #150;
	D = 1; #150;	 
end

always begin
	C=0; #50;
	C=1; #50;
end
//   `endif
endmodule
