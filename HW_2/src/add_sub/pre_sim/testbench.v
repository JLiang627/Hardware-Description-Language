`timescale 1ns/10ps
`define DATA_NUM 200 

module testbench();
    reg signed [7:0] a, b;
    reg s; // s=1: a+b, s=0: a-b

    wire signed [15:0] d1, d2, d3; 

    // 正確答案
    reg [15:0] expected_d;
    reg signed [16:0] a_ext, b_ext, result_calc; 

    
    // 模組實例化
    add_sub_1 u_as1 ( .a(a), .b(b), .s(s), .d(d1) );
    add_sub_2 u_as2 ( .a(a), .b(b), .s(s), .d(d2) );
    add_sub_3 u_as3 ( .a(a), .b(b), .s(s), .d(d3) );

    // 測試邏輯
    integer i;
    integer errors = 0;

    initial begin
        // 設定 VCD 輸出 (供波形觀察)
        $dumpfile("add_sub_pre.vcd");
        $dumpvars(0, testbench);

        // 初始設定
        a = 0; b = 0; s = 0;
        #10; // 延遲 10ns 讓信號穩定

        $display("-------------------------------------------------------------------");
        $display("Starting RTL Pre-sim for Add/Sub Comparison (200 tests)...");
        $display("-------------------------------------------------------------------");

        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            
            // 隨機生成輸入
            a = $random;
            b = $random;
            s = $random % 2; 

            a_ext = a; 
            b_ext = b;
            
            // 計算正確答案
            if (s == 1) // a + b
                result_calc = a_ext + b_ext;
            else        // a - b
                result_calc = a_ext - b_ext;
            
            // 3. 截斷到 16 位元作為期望值
            expected_d = result_calc[15:0];
            
            // 延遲 1ns 讓組合邏輯穩定
            #1; 

            // 驗證檢查 (使用 != 進行功能性比較)
            if (expected_d != d1) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [add_sub_1]: Input A=%h, B=%h, S=%b | Expected D=%h, Actual D=%h",
                         i, a, b, s, expected_d, d1);
            end

            if (expected_d != d2) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [add_sub_2]: Input A=%h, B=%h, S=%b | Expected D=%h, Actual D=%h",
                         i, a, b, s, expected_d, d2);
            end

            if (expected_d != d3) begin
                errors = errors + 1;
                $display("ERROR @ Test %0d [add_sub_3]: Input A=%h, B=%h, S=%b | Expected D=%h, Actual D=%h",
                         i, a, b, s, expected_d, d3);
            end

            #4; 
        end
        
        // 總結報告
        $display("\n===================================================================");
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed across all three modules.", `DATA_NUM * 3);
        else
            $display("FAILURE! Total %0d errors found.", errors);
        $display("===================================================================");
        
        $finish;
    end
endmodule
