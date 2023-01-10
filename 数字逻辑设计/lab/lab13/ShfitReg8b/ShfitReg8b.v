`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:59:28 12/28/2020 
// Design Name: 
// Module Name:    ShfitReg8b 
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
module ShfitReg8b(
    input wire clk, S_L, s_in,
    input wire [7:0] p_in,
    output wire [7:0] Q
    );
    reg [7:0] rev;
    initial rev = 0;
    // S_L = 0, 串行移位
    // S_L = 1, 并行输入
    always@(posedge clk)
    begin
        if(S_L)
            rev = p_in;
        else begin
            rev = rev >> 1;
            rev[7] = s_in;            
        end
    end
    assign Q = rev;
endmodule
