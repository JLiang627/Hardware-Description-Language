module add_sub_1 (
    input  signed [7:0] a, b, 
    input               s, 
    output signed [15:0] d // 輸出宣告為 signed [15:0]
);

    wire signed [15:0] tmp; 
    
    
    assign tmp = s ? b : -b; // 因為 tmp 是 16 位元，b 會擴展到 16 位元再運算
    
    // 運算結果將是 17 位元，並被 d [15:0] 截斷
    assign d = a + tmp; 

endmodule
