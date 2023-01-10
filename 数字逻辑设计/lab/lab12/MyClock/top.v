`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:16:12 12/21/2020 
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
	output wire seg_clk,
	output wire seg_clrn,
	output wire seg_sout,
	output wire SEG_PEN
	//output wire[7:0] segment,
	//output wire[3:0] an,
    //output wire[7:0] LED
    );
	wire [15:0] disp_hexs;
	wire [31:0] clk_div;	
    wire Co1,Co2,Co3,Co4;
    assign LD1 = disp_hexs[3:0] == 9;
    assign LD2 = disp_hexs[7:4] == 5;
    assign LD3 = disp_hexs[15:12] != 2 ? (disp_hexs[11:8] == 9):(disp_hexs[11:8] == 3);
    assign LD4 = disp_hexs[15:12] == 2 ;   
    
	clk_1s m1(.clk(clk), .clk_1s(clk_1s));
	clk_100ms m2(.clk(clk), .clk_100ms(clk_100ms));

    // module my74LS161(
    // input CP,// 时钟信号
    // input CTP,// 保持信号
    // input CTT,// 保持信号
    // input CR,// 清除信号
    // input LD,
    // input wire[3:0] D,
    // output reg[3:0] Q,
    // output reg Co
    // );
    my74LS161 minute1(.CP(clk_100ms), .CTP(1'b1), .CTT(1'b1), .CR(1'b1), .LD(~LD1), .D(4'b0000), .Q(disp_hexs[3:0]), .Co(Co1));
    my74LS161 minute2(.CP(~LD1),.CTP(1'b1),.CTT(1'b1), .CR(1'b1), .LD(~LD2), .D(4'b0000), .Q(disp_hexs[7:4]), .Co(Co2));
    my74LS161 hour1(.CP(~LD2),.CTP(1'b1),.CTT(1'b1), .CR(1'b1), .LD(~LD3), .D(4'b0000), .Q(disp_hexs[11:8]), .Co(Co3));
    my74LS161 hour2(.CP(~LD3),.CTP(1'b1),.CTT(1'b1), .CR(1'b1), .LD(~LD4), .D(4'b0000), .Q(disp_hexs[15:12]), .Co(Co4));

    // display
    // disp_num m5(.clk(clk), .HEXS(disp_hexs), .LES(4'b0), .points(4'b1111), .rst(1'b0), .AN(an), .segment(segment));
	clkdiv m3( clk, { 1'b0 }, clk_div );
	SSeg7_Dev m4( .clk( clk ), .rst( { 1'b0 } ),.Start( clk_div[ 20 ] ),.SW0({1'b1}), .flash( clk_div[ 25 ] ),
              .Hexs({12'b0,disp_hexs[15:12],disp_hexs[11:8],4'h0,disp_hexs[7:4],disp_hexs[3:0]}), .point( { 8'b00000100 } ), .LES( { 8'b00000000 } ),
              .seg_clk( seg_clk ), .seg_sout( seg_sout ), .SEG_PEN( SEG_PEN ),.seg_clrn( seg_clrn ));

endmodule
