`timescale 1ns/10ps
`define CYCLE 10.0      // 週期 10ns (100MHz)
`define DATA_NUM 300    //  300 組測試數據

// 1. SDF 檔案路徑 (相對於您執行 vcs 的目錄)
//    (假設您在 post_sim/ 目錄下執行 vcs, 且 .sdf 在 gate_level/Delay/ 下)
`define SDF_FILE "/MasterClass/M143010068_HDL/HW2/clock_gating /gate_level/Delay/hw2_clockgating .sdf" 

// 2. Gate-level Netlist 頂層模組的 "實例名稱" (Instance Name)
`define DUT_INSTANCE u_dut_clockgating 

// 3. Gate-level Netlist 頂層模組的 "模組名稱" (Module Name)
`define DUT_MODULE hw2_clockgating 
// ---

module testbench();
    // 訊號宣告 (輸入)
    reg [7:0] a, b, c; 
    reg s, CLK, reset;             
    
    // 內部計算的變數
    reg [8:0] add_sub_res; 
    reg [16:0] temp_result;

    // 待測模組輸出
    wire [15:0] d_pipe; 
    
    // 內部計算的正確答案 
    reg [15:0] expected_d; 

    // 修正點：用於追蹤 3 個週期延遲的暫存器 (3-Stage Latency)
    reg [15:0] expected_d_p1; // 延遲 1 個週期
    reg [15:0] expected_d_p2; // 延遲 2 個週期 (即：當前的正確答案)
    
    always #(`CYCLE/2) CLK = ~CLK;

    `DUT_MODULE `DUT_INSTANCE (
        .clk(CLK), .reset(reset), 
        .a(a), .b(b), .c(c), .s(s),
        .d(d_pipe)
    );

    // **SDF 時序註解**
    initial begin
        $sdf_annotate(`SDF_FILE, `DUT_INSTANCE);
    end

    integer i;
    integer errors = 0;
    
    initial begin
        $dumpfile("hw2_clockgating .vcd"); 
        $dumpvars(0, testbench);

        // 初始設定
        #1; 
        a = 8'h00; b = 8'h00; c = 8'h00; s = 1'b0;
        CLK = 1'b0;
        reset = 1'b1; 
        expected_d_p1 = 16'h0000;
        expected_d_p2 = 16'h0000;

        #(`CYCLE * 2); 
        reset = 1'b0; 

        // 隨機測試數據生成與驗證
        for(i = 0; i < `DATA_NUM; i = i + 1) begin
            a = $random;
            b = $random;
            s = $random % 2; 

            // c 有 50% 為 0，50% 為非 0
            if (i <= (`DATA_NUM / 2)) begin 
                c = 8'h00;
            end else begin
                c = $random;
                while (c == 8'h00) begin
                    c = $random;
                end 
            end
            
            // ----------------------------------------------------
            if (s == 1) 
                add_sub_res = a + b;
            else        
                add_sub_res = a - b;
            temp_result = (add_sub_res * c);
            expected_d = temp_result[15:0]; 
            // ----------------------------------------------------

            @(posedge CLK) begin
                expected_d_p2 <= expected_d_p1; // 2nd Cycle
                expected_d_p1 <= expected_d;    // 1st Cycle
            end

            #(`CYCLE); // 等待下一個時鐘邊緣
            
            // 驗證檢查
            if (i >= 2) begin 
                if (expected_d_p2 !== d_pipe) begin
                    errors = errors + 1;
                    $display("----------------------------------------");
                    $display("ERROR @ Time %0t | Test %0d [Pipelined] (Pre-sim)", $time, i);
                    $display("Inputs: a=%h, b=%h, c=%h, s=%b", a, b, c, s);
                    $display("Expected D: %h", expected_d_p2); // 使用延遲後的答案
                    $display("Actual D:   %h", d_pipe);
                    $display("----------------------------------------");
                end
            end
        end

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
    
    always @(posedge CLK) begin
        if (!reset && i >= 3) begin 
            $strobe("RTL Verification: Test %0d | Inputs: a=%h, b=%h, c=%h, s=%b | Expected D: %h | Actual D: %h",
                     i, a, b, c, s, expected_d_p2, d_pipe);
        end
    end
endmodule