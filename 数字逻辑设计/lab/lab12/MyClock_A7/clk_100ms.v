`timescale 1ns / 1ps

module clk_100ms(
	clk,
	clk_100ms
);
	
	input wire clk;
	output reg clk_100ms;
	
	reg[31:0] cnt;
	
	always @ (posedge clk) begin
		if (cnt < 5_000_000) begin
			cnt <= cnt + 1;
		end 
		else begin
			cnt <= 0;
			clk_100ms <= ~clk_100ms;
		end
	end

endmodule
