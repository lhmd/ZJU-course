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
module clk_div(input clk, input rst, output reg[31:0] clk_div=0
    );
    always @(posedge clk)begin
        if(rst) clk_div <= 0;
        else clk_div <= clk_div + 1'b1;
    end
endmodule
