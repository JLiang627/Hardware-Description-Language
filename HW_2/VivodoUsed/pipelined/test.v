`timescale 1ns/10ps
`define CYCLE 10.0      // 週期 10ns 
`define DATA_NUM 200    // 200 組測試數據 (i=0 to 199)

module testbench();
    // 訊號宣告 (輸入)
    reg [7:0] a, b, c; 
    reg s, clk, reset;             
    
    // 內部計算的變數
    reg unsigned [8:0] add_sub_res; 
    reg unsigned [16:0] temp_result;
    reg unsigned [15:0] expected_d;
`timescale 1ns/1ps
module pre_syn_testbench;
    reg clk;
    reg reset;
    reg [7:0] a, b, c;
    reg s;
    wire [15:0] d;

    reg [7:0] a_d1, b_d1, c_d1;
    reg s_d1;
    
    reg [7:0] a_d2, b_d2, c_d2;
    reg s_d2;

    reg signed [16:0] expected_d; //TB的運算結果
    
    integer i; 

    hw2_pipe uut (.clk(clk), .reset(reset), .a(a), .b(b), .c(c), .s(s), .d(d));

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $display("=====================================");
        $display(" Starting Pipelined RTL Simulation ");
        $display("=====================================");

        a = 0; b = 0; c = 0; s = 0;
        a_d1 = 0; b_d1 = 0; c_d1 = 0; s_d1 = 0;
        a_d2 = 0; b_d2 = 0; c_d2 = 0; s_d2 = 0;
        expected_d = 0;
        
        reset = 1;      
        #15;            
        reset = 0;      

        for (i = 0; i < 200; i = i + 1) begin
            
            @(negedge clk);//等待負緣觸發才繼續運行
            a = $random;
            b = $random;
            s = $random % 2;
            
            if (i < 100) begin 
                c = 0;
            end else begin      
                c = ($random % 255) + 1; 
            end

            a_d1 <= a;   b_d1 <= b;   c_d1 <= c;   s_d1 <= s;
            a_d2 <= a_d1; b_d2 <= b_d1; c_d2 <= c_d1; s_d2 <= s_d1;

            @(posedge clk);//等待正緣觸發才繼續運行

            if (s_d2) begin 
                expected_d = ($signed(a_d2) + $signed(b_d2)) * $signed(c_d2);
            end else begin 
                expected_d = ($signed(a_d2) - $signed(b_d2)) * $signed(c_d2);
            end

            #1; 

            if (i > 1) begin 
                $strobe("Time=%0t ns, Prev Inputs(a=%4d, b=%4d, c=%3d, s=%b) -> Current Output d=%6d, Expected=%6d, Status: %s",
                        $time, $signed(a_d2), $signed(b_d2), $signed(c_d2), s_d2,
                        $signed(d),                     
                        $signed(expected_d[15:0]),      
                        (d === expected_d[15:0] ? "PASS" : "FAIL")); 

                if (d !== expected_d[15:0]) begin
                    $display("\nERROR: Simulation failed at iteration %d. Halting.", i);
                    $finish;
                end
            end else begin
                $strobe("Time=%0t ns, Cycle %0d - Pipeline filling.", $time, i);
            end
        end

        $display("\n=====================================");
        $display(" SIMULATION PASSED! All 200 test cases are correct. ");
        $display("=====================================");
        #20;
        $finish;
    end

endmodule
    // 待測模組輸出
    wire [15:0] d_pipe; 
    
    // --- Pipelining 輸入 (2-Stage) ---
    // (我們將管線化 "輸入"，而不是 "黃金答案")
    reg [15:0] i_p1, i_p2; // 延遲 1, 2 拍的 i
    reg [7:0] a_p1, b_p1, c_p1;
    reg s_p1;
    reg [7:0] a_p2, b_p2, c_p2;
    reg s_p2;
    // ----------------------------------------
    
    // CLK 產生器
    always #(`CYCLE/2) clk = ~clk;

    // 實例化 DUT (Design Under Test)
    hw2_pipe u_pipe (
        .a(a), .b(b), .c(c), .s(s), .clk(clk), .reset(reset), 
        .d(d_pipe)
    ); 

    // -----------------------------------------------------------------
    // 測試邏輯
    // -----------------------------------------------------------------
    reg [15:0] i; // 使用 reg 代替 integer
    reg [31:0] errors; // 使用 32-bit 無號數避免溢位
    
    // 1. 初始設定區塊 (Initial Block)
    //    只負責重置和結束
    initial begin
        $dumpfile("hw2_pipe.vcd"); 
        $dumpvars(0, testbench);

        // 初始設定
        #1; 
        clk = 1'b0;
        reset = 1'b1;
        errors = 0; 
        i = 16'd0; 
        
        #(`CYCLE * 2); 
        reset = 1'b0; // 釋放 reset

        // 等待 (DATA_NUM + 10) 個週期後結束
        #(`CYCLE * (`DATA_NUM + 10));

        // 總結報告
        $display("\n==========================================");
        // (i >= 2 才開始檢查，所以總共 DATA_NUM-2 筆)
        if (errors == 0)
            $display("SUCCESS! All %0d tests passed.", `DATA_NUM-2); 
        else
            $display("FAILURE! Total %0d errors in %0d tests.", errors, `DATA_NUM-2);
        $display("==========================================");
        
        $finish;
    end
    
    // 2. 輸入產生器 (Always Block 1)
    //    (在「每個」時脈邊緣同步產生輸入)
    //    *** 這是修正波形對齊的關鍵 ***
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            a <= 8'h00;
            b <= 8'h00;
            c <= 8'h00;
            s <= 1'b0;
            i <= 16'd0; 
        end else if (i < `DATA_NUM) begin
            i <= i + 1; // i 在 posedge clk 遞增
            a <= $random;
            b <= $random;
            s <= $random % 2; 

            // c 
            if (i <= (`DATA_NUM / 2)) begin 
                c <= 8'h00;
            end else begin
                // 修正：保證 c 永遠不為 0 (1 到 255)
                c <= ($random % 255) + 1; 
            end
        end
    end


    // 3. 黃金模型 (同步版本)
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            add_sub_res <= 9'd0;
            temp_result <= 17'd0;
            expected_d  <= 16'd0;
        end else begin
            // 第一階段：加減
            if (s_p1 == 1)
                add_sub_res <= a_p1 + b_p1;
            else
                add_sub_res <= a_p1 - b_p1;

            // 第二階段：乘法
            if (s_p2 == 1)
                temp_result <= (a_p2 + b_p2) * c_p2;
            else
                temp_result <= (a_p2 - b_p2) * c_p2;

            expected_d <= temp_result[15:0]; 
        end
    end

    
    // 4. 輸入訊號 Pipeline (Always Block 2)
    //    (負責產生 2 拍延遲的輸入訊號)
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            i_p1 <= 16'd0;
            a_p1 <= 8'h00;
            b_p1 <= 8'h00;
            c_p1 <= 8'h00;
            s_p1 <= 1'b0;
            
            i_p2 <= 16'd0;
            a_p2 <= 8'h00;
            b_p2 <= 8'h00;
            c_p2 <= 8'h00;
            s_p2 <= 1'b0;

        end else begin
            // 延遲 1 拍
            i_p1 <= i;
            a_p1 <= a;
            b_p1 <= b;
            c_p1 <= c;
            s_p1 <= s;
            
            // 延遲 2 拍
            i_p2 <= i_p1;
            a_p2 <= a_p1;
            b_p2 <= b_p1;
            c_p2 <= c_p1;
            s_p2 <= s_p1;
        end
    end
    
    // 5. 檢查器與日誌 (Always Block 3)
    //    (在「每個」時脈邊緣同步比較和記錄)
    always @(posedge clk) begin
        // 檢查時機：Reset 結束後，且 i 在有效測試範圍內
        // (i >= 2 是為了讓 2-stage pipeline (p2) 的答案準備就緒)
        if (!reset && i >= 2 && i < `DATA_NUM) begin 
            
            // --- 1. 錯誤檢查 ---
            // 比較 2 拍延遲的 DUT 輸出 (d_pipe)
            // 與 2 拍延遲的黃金答案 (expected_d)
            if (d_pipe !== expected_d) begin
                errors = errors + 1;
                
                $display("----------------------------------------");
                $display("ERROR @ Time %0t | Test %0d [Pipelined] (Pre-sim)", $time, i_p2); // 顯示 p2 的 i
                $display("Inputs: a=%d, b=%d, c=%d, s=%b", a_p2, b_p2, c_p2, s_p2); // <-- 修正
                $display("Expected D: %d", expected_d); // <-- 修正
                $display("Actual D:   %d", d_pipe);      // <-- 修正
                $display("----------------------------------------");
            end 
            
            // --- 2. 日誌 (Log) ---
            else 
                $strobe("RTL Verification: Test %0d | Inputs: a=%d, b=%d, c=%d, s=%b | Expected D: %d | Actual D: %d",
                         i_p2, a_p2, b_p2, c_p2, s_p2, expected_d, d_pipe); // <-- 修正
        end
    end

endmodule

