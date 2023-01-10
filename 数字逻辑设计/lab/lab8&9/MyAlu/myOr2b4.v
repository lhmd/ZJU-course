`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:57:56 10/25/2022 
// Design Name: 
// Module Name:    myOr2b4 
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
module myOr2b4(
	input wire[3:0] A,
	input wire[3:0] B,
	output wire[3:0] C
    );
	assign C=A|B;

endmodule
