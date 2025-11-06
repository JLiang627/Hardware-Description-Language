module hw2_pipe (
	input[7:0] a, b, c, 
	input s, clk, reset, 
	output [15:0] d
);
	wire [8:0] sum_to_stage2;  
    wire [7:0] c_to_stage2; 

    //Stage 1 æ¨¡ç??
    hw2_pipe_stage1 u_stage1 (
        .clk(clk),
        .reset(reset),
        .a(a), 
        .b(b),         
        .s(s),
        .c(c), 
        .sum_pipe_out(sum_to_stage2),
        .c_pipe_out(c_to_stage2)     
    );
    hw2_pipe_stage2 u_stage2 (
        .clk(clk),
        .reset(reset),
        .c(c_to_stage2),    
        .sum(sum_to_stage2),
        .result(d)                     
    );
endmodule