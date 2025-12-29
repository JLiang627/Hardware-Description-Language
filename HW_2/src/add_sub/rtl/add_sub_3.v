module add_sub_3(
    input  signed [7:0] a, b, 
    input               s,
    output reg signed [15:0] d 
);
    // 宣告 17 位元 signed 暫存器用於運算擴展
    reg signed [16:0] a_ext, b_ext; 
    
    // 宣告一個 17 位元中間暫存器來承載運算結果
    reg signed [16:0] d_17bit; 
    
    always @(*) begin
        a_ext = a; 
        b_ext = b;
        
        // 在 17 位元空間內進行加減運算
        if (s == 1) begin
            d_17bit = a_ext + b_ext; 
        end else begin
            d_17bit = a_ext - b_ext; 
        end
        
        // 從中間暫存器上截斷 16 位元，賦值給輸出 d
        d = d_17bit[15:0]; 
    end
    
endmodule
