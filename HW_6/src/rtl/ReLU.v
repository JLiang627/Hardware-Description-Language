module ReLU (
    input signed [31:0] data_in,
    output reg [15:0] data_out
);
    always @(*) begin
        if (data_in > 0)
            data_out = data_in[15:0]; // 截斷或飽和處理視需求而定
        else
            data_out = 16'd0;
    end
endmodule