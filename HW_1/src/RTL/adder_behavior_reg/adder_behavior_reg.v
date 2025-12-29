module adder_behavior_reg#(
	parameter width = 32
	)(
	output reg [width-1:0] s, 
	output reg co,
	input signed [width-1:0]a, b, 
	input ci, 
	input clk
	);

	always @(posedge clk)begin
		{co, s} <= {a[width-1], a} + {b[width-1], b} + ci;
	end
	
endmodule