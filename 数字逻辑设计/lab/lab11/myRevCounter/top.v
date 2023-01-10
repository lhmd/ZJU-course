`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:33 11/28/2022 
// Design Name: 
// Module Name:    top 
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
module top(input wire clk,
				input wire SW,
				output wire [7:0] SEGMENT,
				output wire LED,
				output wire [3:0] AN
    );
wire tem;
wire [15:0] num;
clk_100ms a0 (.clk(clk), .clk_100ms(tem));
RevCounter b0 (.clk(tem), .s(SW), .cnt(num), .Rc(LED));
DispNum d0 (.clk(clk), .RST(1'b0), .HEXS(num), .points(4'b0000), .LES(4'b0000), .Segment(SEGMENT), .AN(AN));

endmodule
