module hw2_pipe_stage2 (
    input clk,
    input reset,
    input [7:0] c,   
    input [8:0] sum,
    output reg [15:0] result     
);

    wire [16:0] temp_result;

    assign temp_result = sum * c;

    always @(posedge clk or posedge reset)begin
        if (reset)
            result <= 0;
        else 
            result <= temp_result[15:0];
    end
endmodule