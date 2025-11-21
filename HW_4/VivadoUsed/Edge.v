`timescale 1ns / 1ns
module Edge(
    input clk, rst,
    input [7:0] R,
    input [7:0] G,
    input [7:0] B,

    output [7:0] edge_x,
    output [7:0] edge_y
);
    // 宣告內部訊號
    wire [9:0] Y_calc; // 暫存計算結果
    wire [7:0] Y;      // 灰階值
    integer i;         // 迴圈用變數

    // 實作移位與加減運算
    // 公式：Y = R*0.299 + G*0.587 + B*0.114
    assign Y_calc = (R >> 2) + (R >> 5) +   // R 
                    (G >> 1) + (G >> 4) +   // G 
                    (B >> 3) - (B >> 6);    // B 

    // 截斷回 8 bits
    assign Y = Y_calc[7:0];
    
    // 宣告 3x3 Window 暫存器 (9 個 Pixel)
    reg [7:0] R0, R1, R2; 
    reg [7:0] R3, R4, R5; 
    reg [7:0] R6, R7, R8; 

    // 宣告 Line Buffers (兩條長走廊)
    // buf2 接在 R3 後面 (Row 1 -> Row 0)
    // buf1 接在 R6 後面 (Row 2 -> Row 1)
    reg [7:0] buf2 [0:478]; 
    reg [7:0] buf1 [0:478];

    // 宣告 Counter 與 Enable 訊號
    reg [8:0] cnt;
    wire enable;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            // 重置所有暫存器
            R0 <= 0; R1 <= 0; R2 <= 0;
            R3 <= 0; R4 <= 0; R5 <= 0;
            R6 <= 0; R7 <= 0; R8 <= 0;
            cnt <= 0;
            // 重置 Line Buffer
            for(i=0; i<479; i=i+1) begin
                buf2[i] <= 0;
                buf1[i] <= 0;
            end
        end 
        else begin
            // --- 資料移位邏輯 (Data Shifting) ---
            
            // 1. 更新 3x3 Window (向左移)
            // R8 是最新進來的 Y 值 (Row 2)
            R8 <= Y;      
            R7 <= R8;
            R6 <= R7;

            // R5 來自 buf1 的出口 (Row 1)
            R5 <= buf1[478]; 
            R4 <= R5;
            R3 <= R4;

            // R2 來自 buf2 的出口 (Row 0)
            R2 <= buf2[478]; 
            R1 <= R2;
            R0 <= R1;

            // 2. 更新 Line Buffer (推入新數據)
            // 最新的行頭 (R6) 推入 buf1
            // 中間的行頭 (R3) 推入 buf2
            buf1[0] <= R6;
            buf2[0] <= R3;
            
            // Shift 動作
            for (i = 1; i < 479; i = i + 1) begin
                buf1[i] <= buf1[i-1];
                buf2[i] <= buf2[i-1];
            end

            // --- Counter 控制 ---
            if (cnt == 481) 
                cnt <= 0;
            else 
                cnt <= cnt + 1;
        end
    end

    // 當 cnt 在邊界時 (0 或 481)，資料無效
    assign enable = !((cnt == 9'd481) || (cnt == 9'd0));
  
    // 宣告有號數 (Signed) 的 wire 來處理加減運算
    // 運算結果最大約為 255*4 = 1020，加上正負號，11 bits 比較保險
    wire signed [10:0] Gx_calc;
    wire signed [10:0] Gy_calc;
    wire [10:0] abs_Gx, abs_Gy; // 取絕對值後的結果

    // 設定閥值 (Threshold)
    parameter THRESHOLD = 125; 

    // 公式: (R2 + 2*R5 + R8) - (R0 + 2*R3 + R6)
    assign Gx_calc = ($signed({1'b0, R2}) + $signed({1'b0, R5} << 1) + $signed({1'b0, R8})) - 
                     ($signed({1'b0, R0}) + $signed({1'b0, R3} << 1) + $signed({1'b0, R6}));

    // 公式: (R0 + 2*R1 + R2) - (R6 + 2*R7 + R8)
    assign Gy_calc = ($signed({1'b0, R0}) + $signed({1'b0, R1} << 1) + $signed({1'b0, R2})) - 
                     ($signed({1'b0, R6}) + $signed({1'b0, R7} << 1) + $signed({1'b0, R8}));

    // 取絕對值 (Absolute Value)
    // 如果最高位 (Sign bit) 是 1，代表負數，取 2's complement (轉正)
    assign abs_Gx = (Gx_calc[10]) ? (~Gx_calc + 1) : Gx_calc;
    assign abs_Gy = (Gy_calc[10]) ? (~Gy_calc + 1) : Gy_calc;
    
    // 如果 enable 為 1 且 絕對值 > Threshold，輸出 255 (白)，否則 0 (黑)
    assign edge_x = (enable && (abs_Gx > THRESHOLD)) ? 8'd255 : 8'd0;
    assign edge_y = (enable && (abs_Gy > THRESHOLD)) ? 8'd255 : 8'd0;
    
endmodule