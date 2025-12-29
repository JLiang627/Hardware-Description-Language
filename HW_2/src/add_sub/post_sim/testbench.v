`timescale 1ns/10ps
`define DATA_NUM 200 

// 這裡定義三個模組的路徑和實例名稱 (僅為範例，需在編譯時傳入)
`ifndef SDF_FILE_1
    `define SDF_FILE_1 "add_sub_1_syn.sdf" 
    `define DUT_INSTANCE_1 u_as1 
    `define SDF_FILE_2 "add_sub_2_syn.sdf" 
    `define DUT_INSTANCE_2 u_as2
    `define SDF_FILE_3 "add_sub_3_syn.sdf" 
    `define DUT_INSTANCE_3 u_as3
`endif

module testbench(); 

    // 訊號宣告 (輸入)
    reg signed [7:0] a, b;
    reg s; // s=1: a+b, s=0: a-b

    wire signed [15:0] d1_syn, d2_syn, d3_syn; 

    // 內部用於計算正確答案 (Expected D) 的暫存器
    reg [15:0] expected_d;
    reg signed [16:0] a_ext, b_ext, result_calc; 

    
    // ----------------------------------------------------
    // 模組實例化 (Instantiation)
    // ----------------------------------------------------
    add_sub_1 `DUT_INSTANCE_1 ( .a(a), .b(b), .s(s), .d(d1_syn) );
    add_sub_2 `DUT_INSTANCE_2 ( .a(a), .b(b), .s(s), .d(d2_syn) );
    add_sub_3 `DUT_INSTANCE_3 ( .a(a), .b(b), .s(s), .d(d3_syn) );


    // ----------------------------------------------------
    // SDF 延遲註解 (Simulation Initial Block)
    // ----------------------------------------------------
    initial begin
        // 載入時序延遲資訊到三個實例
        $sdf_annotate(`SDF_FILE_1, `DUT_INSTANCE_1);
        $sdf_annotate(`SDF_FILE_2, `DUT_INSTANCE_2);
        $sdf_annotate(`SDF_FILE_3, `DUT_INSTANCE_3);

        $display("SDF Annotation successful. Files: 1:%s, 2:%s, 3:%s", 
                 `SDF_FILE_1, `SDF_FILE_2, `SDF_FILE_3);
    end
    
    // ----------------------------------------------------
    // 測試流程 (Test Flow Block)
    // ----------------------------------------------------
    integer i;
    integer errors = 0;
    integer total_tests = 0;

    initial begin
        // 設定 VCD 輸出 (供 PrimeTime 使用)
        $dumpfile("add_sub_post.vcd"); 
        $dumpvars(0, testbench);

        // 初始設定
        a = 0; b = 0; s = 0;
        #10;

        $display("-------------------------------------------------------------------");
        $display("Starting Gate-level Post-sim for ALL 3 Add/Sub Modules (%0d tests)...", `DATA_NUM);
        $display("-------------------------------------------------------------------");
        $display("Time | Test | A | B | S | Expected D | D1 | D2 | D3 (Gate-level)");
        $display("-------------------------------------------------------------------");

        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            
            // 隨機生成輸入
            a = $random;
            b = $random;
            s = $random % 2; 

            // ----------------------------------------------------
            // 計算正確答案 
            // ----------------------------------------------------
            // 符號擴展到 17 位元
            a_ext = a; 
            b_ext = b;
            
            // 進行 17 位元有符號運算
            if (s == 1) 
                result_calc = a_ext + b_ext;
            else 
                result_calc = a_ext - b_ext;
            
            // 3. 截斷到 16 位元作為期望值
            expected_d = result_calc[15:0];
            
            #1; 

            // ----------------------------------------------------
            // 驗證檢查 
            // ----------------------------------------------------
            total_tests = total_tests + 1; 
            
            // Module 1 檢查
            if (expected_d !== d1_syn) begin
                errors = errors + 1;
                $display("ERROR @ %0t | %0d | %h | %h | %b | %h | %h | %h | %h [Module 1]",
                         $time, i, a, b, s, expected_d, d1_syn, d2_syn, d3_syn);
            end

            // Module 2 檢查
            if (expected_d !== d2_syn) begin
                errors = errors + 1;
                $display("ERROR @ %0t | %0d | %h | %h | %b | %h | %h | %h | %h [Module 2]",
                         $time, i, a, b, s, expected_d, d1_syn, d2_syn, d3_syn);
            end

            // Module 3 檢查
            if (expected_d !== d3_syn) begin
                errors = errors + 1;
                $display("ERROR @ %0t | %0d | %h | %h | %b | %h | %h | %h | %h [Module 3]",
                         $time, i, a, b, s, expected_d, d1_syn, d2_syn, d3_syn);
            end
            
            // print通過的測試，方便查看
            if (expected_d === d1_syn && expected_d === d2_syn && expected_d === d3_syn) begin
                $display("PASS  @ %0t | %0d | %h | %h | %b | %h | %h | %h | %h",
                         $time, i, a, b, s, expected_d, d1_syn, d2_syn, d3_syn);
            end

            #4; // 推進時間，準備下一個測試向量 (共 5ns 週期)
        end
        
        // 總結報告
        $display("\n===================================================================");
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed across all 3 modules.", total_tests * 3);
        else
            $display("FAILURE! Total %0d errors found across all 3 modules. Please check timing constraints.", errors);
        $display("===================================================================");
        
        $finish;
    end
endmodule