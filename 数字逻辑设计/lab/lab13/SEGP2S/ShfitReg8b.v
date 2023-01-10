`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:05 12/22/2022 
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
		input wire L,
		input wire clk,
		input wire shfit_in,
		input wire [7:0] par_in,
		output wire [7:0] Q
		);

		wire [7:0] Q_out;
		wire S;
		assign Q [7:0] = Q_out [7:0];
		wire or0, or1, or2, or3, or4, or5, or6, or7;
		wire and00, and01, and02, and03, and04, and05, and06, and07;
		wire and10, and11, and12, and13, and14, and15, and16, and17;

		INV inv0(.O(S), .I(L));
		
		FD #(.INIT(1'b0)) fd0(.D(or0), .C(clk), .Q(Q_out[7]));
		FD #(.INIT(1'b0)) fd1(.D(or1), .C(clk), .Q(Q_out[6]));
		FD #(.INIT(1'b0)) fd2(.D(or2), .C(clk), .Q(Q_out[5]));
		FD #(.INIT(1'b0)) fd3(.D(or3), .C(clk), .Q(Q_out[4]));
		FD #(.INIT(1'b0)) fd4(.D(or4), .C(clk), .Q(Q_out[3]));
		FD #(.INIT(1'b0)) fd5(.D(or5), .C(clk), .Q(Q_out[2]));
		FD #(.INIT(1'b0)) fd6(.D(or6), .C(clk), .Q(Q_out[1]));
		FD #(.INIT(1'b0)) fd7(.D(or7), .C(clk), .Q(Q_out[0]));
		
		OR2 or2_0(.O(or0), .I0(and00), .I1(and10));
		OR2 or2_1(.O(or1), .I0(and01), .I1(and11));
		OR2 or2_2(.O(or2), .I0(and02), .I1(and12));
		OR2 or2_3(.O(or3), .I0(and03), .I1(and13));
		OR2 or2_4(.O(or4), .I0(and04), .I1(and14));
		OR2 or2_5(.O(or5), .I0(and05), .I1(and15));
		OR2 or2_6(.O(or6), .I0(and06), .I1(and16));
		OR2 or2_7(.O(or7), .I0(and07), .I1(and17));
		
		AND2 and2_00(.O(and00), .I0(S), .I1(shfit_in));
		AND2 and2_01(.O(and01), .I0(S), .I1(Q_out[7]));
		AND2 and2_02(.O(and02), .I0(S), .I1(Q_out[6]));
		AND2 and2_03(.O(and03), .I0(S), .I1(Q_out[5]));
		AND2 and2_04(.O(and04), .I0(S), .I1(Q_out[4]));
		AND2 and2_05(.O(and05), .I0(S), .I1(Q_out[3]));
		AND2 and2_06(.O(and06), .I0(S), .I1(Q_out[2]));
		AND2 and2_07(.O(and07), .I0(S), .I1(Q_out[1]));
		
		AND2 and2_10(.O(and10), .I0(S), .I1(par_in[7]));
		AND2 and2_11(.O(and11), .I0(S), .I1(par_in[6]));
		AND2 and2_12(.O(and12), .I0(S), .I1(par_in[5]));
		AND2 and2_13(.O(and13), .I0(S), .I1(par_in[4]));
		AND2 and2_14(.O(and14), .I0(S), .I1(par_in[3]));
		AND2 and2_15(.O(and15), .I0(S), .I1(par_in[2]));
		AND2 and2_16(.O(and16), .I0(S), .I1(par_in[1]));
		AND2 and2_17(.O(and17), .I0(S), .I1(par_in[0]));

endmodule
