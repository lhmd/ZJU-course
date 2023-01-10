`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:57:59 12/21/2020 
// Design Name: 
// Module Name:    my74LS161 
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
module my74LS161(
    input CP,// 时钟信号
    input CTP,// 保持信号
    input CTT,// 保持信号
    input CR,// 清除信号
    input LD,
    input wire[3:0] D,
    output reg[3:0] Q,
    output reg Co
    );

    always @(posedge CP or negedge CR) begin
        if(~CR) begin
            Q = 0;
            Co = (Q == 4'b0000);
        end
        else
        begin
            if( ~CTT || (~CTP && CTT) ) 
            begin
                Q = Q;
            end
            else 
            begin
                Q = Q + 1'b1;
            end
            begin
                if(~LD) 
                begin
                    Q = D;
                end
            end
            Co = (Q == 4'b1111);           
        end
    end

endmodule
