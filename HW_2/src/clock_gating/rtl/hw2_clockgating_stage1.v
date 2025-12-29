module hw2_clockgating_stage1 (
    input clk,
    input reset,
    input [7:0] a, b, c,   
    input s,
    output reg [8:0] sum_pipe_out,  
    output reg [7:0] c_pipe_out   
    //output reg s_pipe_out          
);
    wire enable_s1;
    wire [8:0] temp_sum; 
    assign temp_sum = (s == 1'b1) ? (a + b) : (a - b);
    assign enable_s1 = |c;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sum_pipe_out <= 9'b0;
            c_pipe_out <= 8'b0;
            //s_pipe_out <= 1'b0;
        end
        else if (enable_s1)begin
            sum_pipe_out <= temp_sum;
            c_pipe_out <= c;
        end    
        // else begin
        //     sum_pipe_out <= temp_sum;  // 存 Stage 1 運算結果
        //     c_pipe_out <= c;         
        //     //s_pipe_out <= s;
        // end
    end

endmodule