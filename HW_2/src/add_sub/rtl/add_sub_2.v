module add_sub_2(
    input  signed [7:0] a, b, 
    input               s,
    output signed [15:0] d 
);
    // 使用 17 位元 (16:0) 儲存運算結果
    // 使用 signed 確保運算正確
    wire signed [16:0] a_ext, b_ext, result_17bit; 
    
    // 將 8 位元輸入符號擴展至 17 位元
    assign a_ext = a; 
    assign b_ext = b; 

    assign result_17bit = s ? (a_ext + b_ext) : (a_ext - b_ext);
    
    // 輸出：將 17 位元 signed 結果截斷到 16 位元 signed d
    assign d = result_17bit[15:0];
    
endmodule
