`timescale 1ns/10ps
`define DATA_NUM 200 

// --- macro定義 (需在 VCS 編譯時傳入實際路徑) ---
`ifndef SDF_FILE_1
    `define SDF_FILE_1 "multiply_add.sdf" 
    `define DUT_INSTANCE_1 u_dist 
    `define SDF_FILE_2 "multiply_add_common_factor.sdf" 
    `define DUT_INSTANCE_2 u_common
`endif

module testbench(); 

    // 訊號宣告 
    reg [7:0] a, b, c; 

    // 輸出線: 16位元
    wire [15:0] d_dist_syn, d_common_syn; 

    // 內部用於計算正確答案 (Expected D) 的暫存器
    reg [15:0] expected_d_dist;
    reg [15:0] expected_d_common;
    reg [16:0] result_calc; // 17位元無符號數運算

    
    // ----------------------------------------------------
    // 模組實例化 (Instantiation) 
    // ----------------------------------------------------
    // Module 1: 分散乘法 d = a*c + b*c
    multiply_add u_dist ( .a(a), .b(b), .c(c), .d(d_dist_syn) );
    
    // Module 2: 提取公因數 d = (a+b)*c
    multiply_add_common_factor u_common ( .a(a), .b(b), .c(c), .d(d_common_syn) );


    // ----------------------------------------------------
    // SDF 延遲註解 
    // ----------------------------------------------------
    initial begin
        // 載入時序延遲資訊到兩個實例
        $sdf_annotate(`SDF_FILE_1, `DUT_INSTANCE_1);
        $sdf_annotate(`SDF_FILE_2, `DUT_INSTANCE_2);

        $display("SDF Annotation successful. Files: 1:%s, 2:%s", 
                 `SDF_FILE_1, `SDF_FILE_2);
    end
    
    // ----------------------------------------------------
    // 測試流程 (Test Flow Block)
    // ----------------------------------------------------
    integer i;
    integer errors = 0;
    integer total_tests;

    initial begin
        // 設定 VCD 輸出 
        $dumpfile("multiply_add_post.vcd"); 
        $dumpvars(0, testbench);

        // 初始設定
        a = 0; b = 0; c = 0;
        #10; // 延遲 10ns 讓信號穩定

        $display("-------------------------------------------------------------------");
        $display("Starting Gate-level Post-sim for Multiply-Add Modules (%0d tests)...", `DATA_NUM);
        $display("-------------------------------------------------------------------");

        total_tests = `DATA_NUM * 2; 

        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            
            // 隨機生成輸入
            a = $random;
            b = $random;
            c = $random; 

            // ----------------------------------------------------
            // 計算分散乘法 (a*c + b*c) 
            // ----------------------------------------------------
            result_calc = (a * c) + (b * c);
            expected_d_dist = result_calc[15:0];
            
            // ----------------------------------------------------
            // 計算提取公因數 ((a+b)*c) 
            // ----------------------------------------------------
            result_calc = (a + b) * c; 
            expected_d_common = result_calc[15:0];
            
            #1; 

            // ----------------------------------------------------
            // 驗證檢查 
            // ----------------------------------------------------
            
            // 檢查模組 : 分散乘法
            if (expected_d_dist != d_dist_syn) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [multiply_add]: A=%h, B=%h, C=%h | Expected D=%h, Actual D=%h",
                         i, a, b, c, expected_d_dist, d_dist_syn);
            end

            // 檢查模組 : 提取公因數
            if (expected_d_common != d_common_syn) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [common_factor]: A=%h, B=%h, C=%h | Expected D=%h, Actual D=%h",
                         i, a, b, c, expected_d_common, d_common_syn);
            end

            #4; 
        end
        
        // 總結報告
        $display("\n===================================================================");
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed across both modules.", total_tests);
        else
            $display("FAILURE! Total %0d errors found. Please check Gate-level timing constraints.", errors);
        $display("===================================================================");
        
        $finish;
    end
endmodule