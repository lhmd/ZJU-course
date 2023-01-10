`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:46:18 10/31/2022 
// Design Name: 
// Module Name:    Dispsync 
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
module dispsync(
		 input   [15:0] Hexs,		//端口变量说明与定义合并
		 input   [1:0] Scan,
		 input   [3:0] Point,
		 input   [3:0] Les,
		 output reg[3:0] Hex,
		 output reg p,LE,
		 output reg[3:0] AN);
   always @* begin		      //信号变化触发 (组合电路不用时钟触发)
	case (Scan)
	        2'b00 : begin Hex <= Hexs[3:0];     AN <= 4'b 1110; …	//同步输出
	        2'b01 : begin Hex <= Hexs[7:4];     AN <= 4'b 1101; …	//同步输出
	        2'b10 : begin Hex <= Hexs[11:8];   AN <= 4'b 1011; …	//同步输出
	        2'b11 : begin Hex <= Hexs[15:12]; AN <= 4'b 0111; …	//同步输出
	endcase
   end

endmodule


