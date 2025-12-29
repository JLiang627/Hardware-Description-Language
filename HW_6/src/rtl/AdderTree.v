module AdderTree (
    input [287:0] products, // 來自 PE
    output signed [31:0] sum_out
);
    wire signed [31:0] p[0:8];
    
    // Unpack input
    genvar i;
    generate
        for(i=0; i<9; i=i+1) begin : unpack
            assign p[i] = products[(i*32)+31 : (i*32)];
        end
    endgenerate

    // Adder Tree 邏輯
    wire signed [31:0] level1[0:4];
    wire signed [31:0] level2[0:2];
    wire signed [31:0] level3[0:1];

    assign level1[0] = p[0] + p[1];
    assign level1[1] = p[2] + p[3];
    assign level1[2] = p[4] + p[5];
    assign level1[3] = p[6] + p[7];
    assign level1[4] = p[8];

    assign level2[0] = level1[0] + level1[1];
    assign level2[1] = level1[2] + level1[3];
    assign level2[2] = level1[4];

    assign level3[0] = level2[0] + level2[1];
    assign level3[1] = level2[2];

    assign sum_out = level3[0] + level3[1];

endmodule