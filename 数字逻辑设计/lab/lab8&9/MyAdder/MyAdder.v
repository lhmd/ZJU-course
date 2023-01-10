`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:14 11/20/2020 
// Design Name: 
// Module Name:    MyAdder 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MyAdder(clk_100mhz, RSTN, BN, btn, SW, K_ROW, AN, SEGMENT);

   input	 clk_100mhz;
   input	 RSTN;
	input  BN;
	input	 [1:0]	btn;
	input	 [7:0]	SW;
	output K_ROW;
	output [3:0]	AN;
	output [7:0]	SEGMENT;
	
	wire	 V0, V5;
	wire	 [31:0]	clkdiv;
	wire	 [7:0] 	num;
	wire	 [3:0] 	S;
	wire	 [3:0]	o;
	wire	 Cout, LE, POINT;
	
	BUF buf_		(.I(BN), .O(K_ROW));
	VCC vcc_		(.P(V5));
	GND gnd_		(.G(V0));
	
	clkdiv CLKDIV 	  (.clk(clk_100mhz), 
							.rst(RSTN), 
							.clkdiv(clkdiv[31:0])
							);
						
	CreateNumber CN  (.btn(btn[1:0]), 
						   .clk(clkdiv[17]), 
						   .num(num[7:0])
						   );
						  
	Adder4b Adder    (.A(num[3:0]), 
							.B(num[7:4]), 
							.Cin(V0), 
							.Cout(Cout), 
							.S(S[3:0])
							);
						
	Mux4to1b4 MuxAN  (.s(clkdiv[18:17]), 
						   .I0({V5, V5, V5, V0}), 
						   .I1({V5, V5, V0, V5}), 
						   .I2({V5, V0, V5, V5}), 
						   .I3({V0, V5, V5, V5}), 
						   .o(AN[3:0])
						   );
						  
	Mux4to1b4 MuxNum (.s(clkdiv[18:17]), 
							.I0(num[3:0]), 
							.I1(num[7:4]), 
							.I2(S[3:0]), 
							.I3({V0, V0, V0, Cout}), 
							.o(o[3:0])
							);
							 
	Mux4to1 MuxLE	  (.s(clkdiv[18:17]), 
							.I0(SW[0]), 
							.I1(SW[1]), 
							.I2(SW[2]), 
							.I3(SW[3]), 
							.o(LE)
							);
							 
	Mux4to1 MuxPT	  (.s(clkdiv[18:17]), 
							.I0(SW[4]), 
							.I1(SW[5]), 
							.I2(SW[6]), 
							.I3(SW[7]), 
							.o(POINT)
							);
							
	MyMC14495 MC14495	(.D0(o[0]), 
							 .D1(o[1]), 
							 .D2(o[2]), 
							 .D3(o[3]), 
							 .LE(LE), 
							 .point(POINT),
							 .a(SEGMENT[0]), 
							 .b(SEGMENT[1]), 
							 .c(SEGMENT[2]), 
							 .d(SEGMENT[3]),
							 .e(SEGMENT[4]), 
							 .f(SEGMENT[5]), 
							 .g(SEGMENT[6]), 
							 .p(SEGMENT[7])
							 );
	
endmodule
