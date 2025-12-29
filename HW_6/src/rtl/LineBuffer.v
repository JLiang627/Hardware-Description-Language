module LineBuffer (
    input clk,
    input rst,
    input [15:0] data_in,      // Input SRAM
    input enable,              // Control 訊號
    output [143:0] window_out  // 9個 16-bit 數值 (3x3 Kernel window)
);    
    reg [15:0] shift_reg [0:114]; // 56*2 + 3 = 115 
    integer i;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 115; i = i + 1) begin
                shift_reg[i] <= 16'd0;
            end
        end else if (enable) begin
            shift_reg[0] <= data_in;
            for (i = 1; i < 115; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end
    end

    // Window 輸出映射 (對應 3x3 卷積窗)
    // Row 0
    assign window_out[15:0]    = shift_reg[0];
    assign window_out[31:16]   = shift_reg[1];
    assign window_out[47:32]   = shift_reg[2];
    // Row 1 (Shift 56)
    assign window_out[63:48]   = shift_reg[56];
    assign window_out[79:64]   = shift_reg[57];
    assign window_out[95:80]   = shift_reg[58];
    // Row 2 (Shift 112)
    assign window_out[111:96]  = shift_reg[112];
    assign window_out[127:112] = shift_reg[113];
    assign window_out[143:128] = shift_reg[114];

endmodule