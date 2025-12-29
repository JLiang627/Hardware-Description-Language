module FA_behavior_reg(input clk, a, b, cin,  output reg s, output reg cout);
	always @(posedge clk)begin
		{s, cout} <= a + b + cin;
	end
endmodule