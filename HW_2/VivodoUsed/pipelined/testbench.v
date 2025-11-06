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

    reg [16:0] expected_d; 
    reg [8:0] add_sub_res;

    integer i; 
    reg [31:0] errors; 

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
        errors = 0;
        
        reset = 1;      
        #15;            
        reset = 0;      

        for (i = 0; i < 300; i = i + 1) begin
            
            @(negedge clk);
            a = $random;
            b = $random;
            s = $random % 2;
            
            if (i < 100) begin 
                c = 0;
            end else begin      
                c = $random;
                while (c == 8'h00) begin
                    c = $random;
                end
            end
            
            // (p2 取得 p1 舊的值)
            a_d2 = a_d1; b_d2 = b_d1; c_d2 = c_d1; s_d2 = s_d1;
            // (p1 取得 "a" 現在的值)
            a_d1 = a;   b_d1 = b;   c_d1 = c;   s_d1 = s;


            @(posedge clk);//等待正緣觸發才繼續運行

            if (s_d2) begin 
                add_sub_res  = (a_d2 + b_d2);
            end else begin 
                add_sub_res  = (a_d2 - b_d2);
            end
            expected_d = add_sub_res * c_d2;
            #1; 

            if (i > 1) begin 
                if (d !== expected_d[15:0]) begin
                    errors = errors + 1;
                    $display("----------------------------------------");
                    $display("ERROR @ Time %0t | Test %0d [Pipelined] (Pre-sim)", $time, i);
                    $display("Inputs: a=%d, b=%d, c=%d, s=%b", a_d2, b_d2, c_d2, s_d2);
                    $display("Expected D: %d", expected_d[15:0]);
                    $display("Actual D:   %d", d);
                    $display("----------------------------------------");
                end else begin
                    $strobe("RTL Verification: Test %0d | Inputs(a=%d, b=%d, c=%d, s=%b) -> Output d=%d, Expected=%d, Status: PASS",
                             i, a_d2, b_d2, c_d2, s_d2, d, expected_d[15:0]);
                end
            end
        end
        #1; 

        $display("\n=====================================");
        if (errors == 0)
            $display(" SIMULATION PASSED! All 300 test cases are correct. ");
        else
            $display(" SIMULATION FAILED! Total %0d errors in 300 tests. ", errors);
        $display("=====================================");
        #20;
        $finish;
    end

endmodule

