`timescale 1ns/10ps
`define DATA_NUM 200 

module testbench();
    // 輸入信號: 8位元
    reg [7:0] a, b, c; 
    
    // 輸出信號: 16位元
    wire [15:0] d_dist, d_common; 

    // 測試正確答案 (Expected D)
    reg [15:0] expected_d;
    
    // 中間運算信號 (用於 Testbench 內部計算正確答案)
    reg [16:0] result_calc; 
    reg [15:0] expected_d_common;

    // ================================================================
    // 模組實例化 (Instantiation)
    // ================================================================
    
    // 模組 1: 分散乘法 d = a*c + b*c
    multiply_add u_dist ( .a(a), .b(b), .c(c), .d(d_dist) );
    
    // 模組 2: 提取公因數 d = (a+b)*c
    multiply_add_common_factor u_common ( .a(a), .b(b), .c(c), .d(d_common) );
    
    // ================================================================
    // 測試邏輯
    // ================================================================
    
    integer i;
    integer errors = 0;
    integer total_tests;
    
    initial begin
        // 設定 VCD 輸出 (供波形觀察)
        $dumpfile("multiply_add_pre.vcd");
        $dumpvars(0, testbench);

        // 初始設定
        a = 0; b = 0; c = 0; 
        #10; // 延遲 10ns 讓組合邏輯信號穩定

        $display("-------------------------------------------------------------------");
        $display("Starting RTL Pre-sim for Multiply-Add Comparison (%0d tests)...", `DATA_NUM);
        $display("-------------------------------------------------------------------");
        
        total_tests = `DATA_NUM * 2; // 總共測試兩個模組

        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            
            // 隨機生成輸入 (8位元無符號數)
            a = $random;
            b = $random;
            c = $random; 

            // ----------------------------------------------------
            // 計算正確答案 (Expected D) 
            // ----------------------------------------------------
            
            
            // (a*c) 和 (b*c) 結果都是 [15:0]，相加需要 [16:0]
            result_calc = (a * c) + (b * c);
            
            expected_d = result_calc[15:0];
            
            // 延遲 1ns 讓組合邏輯穩定
            #1; 

            // ----------------------------------------------------
            // 驗證檢查 (使用 != 進行功能性比較)
            // ----------------------------------------------------
            
            // 檢查模組 1: 分散乘法
            if (expected_d != d_dist) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [multiply_add]: Input A=%h, B=%h, C=%h | Expected D=%h, Actual D=%h",
                         i, a, b, c, expected_d, d_dist);
            end

            // Common Factor: (a+b) * c
            
            // Testbench 內部重新計算 Common Factor 的期望值
            result_calc = (a + b) * c; // (8+8=9位) * 8位 = 17位
            expected_d_common = result_calc[15:0];

            if (expected_d_common != d_common) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [common_factor]: Input A=%h, B=%h, C=%h | Expected D=%h, Actual D=%h",
                         i, a, b, c, expected_d_common, d_common);
            end

            #4; // 總共 5ns 週期 (1ns 穩定 + 4ns 閒置)
        end
        
        // 總結報告
        $display("\n===================================================================");
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed across both modules.", total_tests);
        else
            $display("FAILURE! Total %0d errors found.", errors);
        $display("===================================================================");
        
        $finish;
    end
endmodule