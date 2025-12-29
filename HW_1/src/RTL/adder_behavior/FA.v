module FA_behavior(input a, b, cin, output reg s, cout);
	always @(a, b, cin) begin
		{cout, s} = a + b + cin;
	end
endmodule