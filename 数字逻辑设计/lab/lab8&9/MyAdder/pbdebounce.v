`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:34:58 11/09/2020 
// Design Name: 
// Module Name:    pbdebounce 
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
module pbdebounce(
		input wire clk_1ms,
		input wire button,
		output reg pbreg
    );
	 
	reg [7:0] pbshift;
	 
	always @ (posedge clk_1ms) begin
		pbshift = pbshift<<1;
		pbshift[0] = button;
		if(pbshift == 8'b0) pbreg = 0;
		if(pbshift == 8'hFF) pbreg = 1;
	end

endmodule
