`timescale 1ns/10ps
`define CYCLE 10.0      // 週期 10ns
`define DATA_NUM 301    // 301 組測試數據
`define RESET_TIME 100.0

module testbench();
    reg [7:0] a, b, c;      
    reg s, CLK, reset;              
    reg [8:0] add_sub_res;  

    // 待測模組輸出 
    wire [15:0] d_nonpipe;
    reg [16:0] temp_result;
    
    // 內部計算的正確答案 
    reg [15:0] expected_d;  
    
    always #(`CYCLE/2) CLK = ~CLK;
    
    // -----------------------------------------------------------------
    // 待測模組例化 
    // -----------------------------------------------------------------
    hw2_nonpipe u_nonpipe (
        .a(a), 
        .b(b), 
        .c(c), 
        .s(s),
        .d(d_nonpipe)
    );  

    

    // -----------------------------------------------------------------
    // 測試邏輯
    // -----------------------------------------------------------------
    integer i;
    integer errors = 0;
    
    initial begin
        $dumpfile("hw2_nonpipe_post.vcd");   
        $dumpvars(0, testbench);
        `ifdef SDF_ANNOTATE
            $sdf_annotate(`SDF_FILE, testbench.`DUT_INSTANCE`);
        `endif
        // 初始設定 (設定 CLK 和 RESET 的初值)
        a = 8'h00; 
        b = 8'h00; 
        c = 8'h00; 
        s = 1'b0;
        CLK = 1'b0;
        reset = 1'b1; 

        // 重置階段
        #(`RESET_TIME);  
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
            
            // 計算正確答案
            if (s == 1) 
                add_sub_res = a + b;
            else        
                add_sub_res = a - b;
            temp_result = (add_sub_res * c);
            expected_d = temp_result[15:0];  

            // 等待一個完整的時脈週期
            #(`CYCLE);  
            
            // 驗證檢查
            if (i > 0) begin  
                if (expected_d !== d_nonpipe) begin 
                    errors = errors + 1;
                    $display("----------------------------------------");
                    $display("ERROR @ Time %0t | Test %0d [Non-Pipelined Post-sim]", $time, i);
                    $display("Inputs: a=%h, b=%h, c=%h, s=%b", a, b, c, s);
                    $display("Expected D: %h", expected_d);
                    $display("Actual D:   %h", d_nonpipe);
                    $display("----------------------------------------");
                end
            end
        end

        #(`CYCLE * 2); // 延遲結束

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
        if (!reset && i > 0 && i<=300) begin
            $strobe("Post-sim Verification: Test %0d | Inputs: a=%h, b=%h, c=%h, s=%b | Expected D: %h | Actual D: %h",
                     i, a, b, c, s, expected_d, d_nonpipe);
        end
    end
endmodule