// Verilog test fixture created from schematic D:\Code\ComputerLogic\MyCounter\Counter4b.sch - Thu Nov 18 11:20:40 2021

`timescale 1ns / 1ps

module Counter4b_Counter4b_sch_tb();

// Inputs
   reg clk;

// Output
   wire Qb;
   wire Qc;
   wire Qd;
   wire Qa;
   wire Rc;

// Bidirs

// Instantiate the UUT
   Counter4b UUT (
		.clk(clk), 
		.Qb(Qb), 
		.Qc(Qc), 
		.Qd(Qd), 
		.Qa(Qa), 
		.Rc(Rc)
   );
   initial begin
      fork clk = 0; #50;
			forever #50 clk <= ~clk;
		join
   end

endmodule
