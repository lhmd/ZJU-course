`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:20 10/24/2022 
// Design Name: 
// Module Name:    Mux4to1 
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
module Mux4to1(
    input [1:0] s,
	 input I0,
    input I1,
    input I2,
    input I3,
    output reg o
    );
	always@(*)begin
		 case (s)
			 2'b00: o <= I0;
			 2'b01: o <= I1;
			 2'b10: o <= I2;
			 2'b11: o <= I3;
		 endcase
	end


endmodule
