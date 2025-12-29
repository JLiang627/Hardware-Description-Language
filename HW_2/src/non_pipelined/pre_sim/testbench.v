`timescale 1ns/10ps
`define CYCLE 10.0      // 週期 10ns
`define DATA_NUM 200    // 200 組測試數據

module testbench();
    // 訊號宣告
    reg [7:0] a, b, c; // 8-bit 輸入
    reg s, CLK, reset;             // 1-bit 選擇信號 (1: +, 0: -)
    reg [8:0] add_sub_res; 
    // 待測模組輸出
    wire [15:0] d_nonpipe;
    reg [16:0] temp_result;
    // 內部計算的正確答案
    reg [15:0] expected_d; 
    
    always #(`CYCLE/2) CLK = ~CLK;
    
    // (Non-Pipelined)
    hw2_nonpipe u_nonpipe (
        .a(a), .b(b), .c(c), .s(s),
        .d(d_nonpipe)
    ); 

    // 測試邏輯
    integer i;
    integer errors = 0;
    
    initial begin
        $dumpfile("hw2_nonpipe.vcd"); 
        $dumpvars(0, testbench);

        // 初始設定
        a = 0; b = 0; c = 0; s = 0;
        CLK = 1'b0;
        reset = 1'b1;
        // 重置階段
        #(`CYCLE * 2); 
        reset = 1'b0;

        // 隨機測試數據生成與驗證
        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            a = $random;
            b = $random;
            s = $random % 2; 

            // c 有 50% 為 0，50% 為非 0
            if (i <= (`DATA_NUM / 2)) begin 
                // 前一半設為 c = 0
                c = 8'h00;
            end else begin
                // 後一半設為 c != 0
                c = $random;
                while (c == 8'h00) begin
                    c = $random;
                end // 確保非 0
            end
            
            // ----------------------------------------------------
            // 計算正確答案 (d = (a +/- b) * c)
            

            if (s == 1) // a + b
                add_sub_res = a + b;
            else        // a - b
                add_sub_res = a - b;
            temp_result = (add_sub_res * c);
            expected_d = temp_result[15:0]; 
            // ----------------------------------------------------

            #(`CYCLE); 
            // 驗證檢查
            if (i > 0) begin 
                if (expected_d != d_nonpipe) begin
                    errors = errors + 1;
                    $display("----------------------------------------");
                    $display("ERROR @ Time %0t | Test %0d [Non-Pipelined] (Pre-sim)", $time, i);
                    $display("Inputs: a=%h, b=%h, c=%h, s=%b", a, b, c, s);
                    $display("Expected D: %h", expected_d);
                    $display("Actual D:   %h", d_nonpipe);
                    $display("----------------------------------------");
                end
            end
        end

        // 等待管線清空 (額外的 2 個時脈週期)
        #(`CYCLE * 2);

        // 總結報告
        $display("\n==========================================");
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed.", `DATA_NUM);
        else
            $display("FAILURE! Total %0d errors in %0d tests.", errors, `DATA_NUM);
        $display("==========================================");
        
        $finish;
    end
    
    // 驗證截圖輔助：在每個時脈正緣列印資訊
    always @(posedge CLK) begin
        if (!reset && i > 0) begin
            $strobe("RTL Verification: Test %0d | Inputs: a=%h, b=%h, c=%h, s=%b | Expected D: %h | Actual D: %h",
                     i, a, b, c, s, expected_d, d_nonpipe);
        end
    end
endmodule
