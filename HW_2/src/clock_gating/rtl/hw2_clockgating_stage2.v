module hw2_clockgating_stage2 (
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
        else if (c == 8'b0) 
            result <= 16'b0; // 直接將輸出設為 0
        else 
            result <= temp_result[15:0];
    end
endmodule