// Verilog test fixture created from schematic F:\_TOT_FILES\ZJU\A_1_Course\2_1\Digital_Logic_Design\zbgg\isepro\isepro\lab10\Mylatch\SR_LATCH.sch - Mon Nov 30 16:38:28 2020

`timescale 1ns / 1ps

module SR_LATCH_SR_LATCH_sch_tb();

// Inputs
   reg S;
   reg R;

// Output
   wire Q;
   wire Qbar;

// Bidirs

// Instantiate the UUT
   SR_LATCH UUT (
		.Q(Q), 
		.Qbar(Qbar), 
		.S(S), 
		.R(R)
   );
// Initialize Inputs
      initial begin
		R=1;S=1; #50;
		R=1;S=0; #50;
		R=1;S=1; #50;
		R=0;S=1; #50;
		R=1;S=1; #50;
		R=0;S=0; #50;
		R=1;S=1; #50;
		end
endmodule
