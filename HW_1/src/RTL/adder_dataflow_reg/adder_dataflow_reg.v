module adder_dataflow_reg #(
    parameter WIDTH = 32
)(
    output reg [WIDTH-1:0] s,
    output reg             co,
    input signed [WIDTH-1:0]      a, b,
    input                  ci,
    input                  clk
);
    // 在時脈的正緣進行計算並更新輸出暫存器
    always @(posedge clk) begin
        {co, s} <= {a[WIDTH-1], a} + {b[WIDTH-1], b} + ci;
    end
endmodule