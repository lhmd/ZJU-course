`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:38:40 10/21/2020 
// Design Name: 
// Module Name:    clkdiv 
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
module clkdiv(input clk, input rst, output reg[31:0] clkdiv=0
    );
    always @(posedge clk)begin
        if(rst) clkdiv <= 0;
        else clkdiv <= clkdiv + 1'b1;
    end


endmodule
