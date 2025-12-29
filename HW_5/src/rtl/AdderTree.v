// 檔案名稱: AdderTree.v
module AdderTree(
    input signed [35:0] z0, z1, z2, z3,
    input signed [35:0] ps_prev,
    output signed [35:0] out
);
    wire signed [35:0] sum_z;
    
    assign sum_z = z0 + z1 + z2 + z3;
    assign out = sum_z + ps_prev;

endmodule