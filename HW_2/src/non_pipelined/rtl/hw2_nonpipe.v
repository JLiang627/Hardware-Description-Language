module hw2_nonpipe (input [7:0] a, b, c, input s, output [15:0] d);
	wire [8:0] temp_sum;
	wire [17:0] temp_result;

	assign temp_sum = s ? a+b : a-b;
	assign temp_result = temp_sum * c;

	assign d = temp_result[15:0];
endmodule