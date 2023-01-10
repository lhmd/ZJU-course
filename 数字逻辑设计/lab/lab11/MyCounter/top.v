`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:22 11/18/2021 
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
module top(
    input wire clk,
    output wire [3:0] AN,
    output wire [7:0] SEGMENT,
    output wire RC
    );
    wire c1s;
    wire num[3:0];
    assign AN=4'b1110;
    clk_1s clk0(clk, c1s);
    Counter4b counter(.clk(c1s), .Qa(num[0]), .Qb(num[1]), .Qc(num[2]), .Qd(num[3]), .Rc(RC));
    MyMC14495 disp(.D0(num[0]), 
                   .D1(num[1]),
                   .D2(num[2]),
                   .D3(num[3]),
                   .LE(1'b0),
                   .point(1'b0),
                   .a(SEGMENT[0]), 
                   .b(SEGMENT[1]), 
                   .c(SEGMENT[2]), 
                   .d(SEGMENT[3]), 
                   .e(SEGMENT[4]), 
                   .f(SEGMENT[5]), 
                   .g(SEGMENT[6]), 
                   .p(SEGMENT[7]));

endmodule
