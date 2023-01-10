`timescale 1ns / 1ps

module clk_1s(
	clk,
	clk_1s
);
	
	input wire clk;
	output reg clk_1s;
	
	reg[31:0] cnt;
	
	always @ (posedge clk) begin
		if (cnt < 20_000_000) begin
			cnt <= cnt + 1;
		end 
		else begin
			cnt <= 0;
			clk_1s <= ~clk_1s;
		end
	end

endmodule
