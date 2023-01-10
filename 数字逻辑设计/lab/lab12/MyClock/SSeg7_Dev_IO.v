`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:50 12/29/2015 
// Design Name: 
// Module Name:    SSeg7_Dev_IO 
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
module  SSeg7_Dev(input clk,			//	时钟
						input rst,			//复位
						input Start,		//串行扫描启动
						input SW0,			//文本(16进制)/图型(点阵)切换
						input flash,		//七段码闪烁频率
						input[31:0]Hexs,	//32位待显示输入数据
						input[7:0]point,	//七段码小数点：8个
						input[7:0]LES,		//七段码使能：=1时闪烁
						output seg_clk,	//串行移位时钟
						output seg_sout,	//七段显示数据(串行输出)
						output SEG_PEN,	//七段码显示刷新使能
						output seg_clrn	//七段码显示汪零
						);

endmodule
