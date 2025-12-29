module FA_dataflow_reg(input clk, a, b, cin, output reg s, output reg cout);
	always @(posedge clk) begin
		{cout, s} <= a + b + cin;
	end
endmodule