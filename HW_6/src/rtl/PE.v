module PE (
    input [143:0] window_data, // 來自 LineBuffer (9 pixels)
    input [143:0] weight_data, // 來自 Kernel RF (9 weights)
    output [287:0] product_out // 9 個 32-bit 乘積結果
);
    // 展開 9 個乘法器
    genvar i;
    generate
        for (i = 0; i < 9; i = i + 1) begin : mult_block
            assign product_out[(i*32) + 31 : (i*32)] = 
                $signed(window_data[(i*16) + 15 : (i*16)]) * $signed(weight_data[(i*16) + 15 : (i*16)]);
        end
    endgenerate
endmodule