`timescale 1ns/10ps
`define CYCLE 50.0
`define DATA_NUM 10

module testbench();
    reg CLK = 0;
    reg RST = 0;
    reg signed [31:0] input_a;
    reg signed [31:0] input_b;

    // 測試內部的正確答案
    reg signed [32:0] answer;
    reg ran_cin;
    // 為每個模組宣告獨立的輸出 wire
    wire [31:0] s_df, s_df_reg, s_st, s_st_reg, s_bh, s_bh_reg;
    wire        cout_df, cout_df_reg, cout_st, cout_st_reg, cout_bh, cout_bh_reg;
    wire signed [32:0] outcome_df, outcome_df_reg, outcome_st, outcome_st_reg, outcome_bh, outcome_bh_reg;
    wire signed [32:0] result_st_reg; // for structure_reg used

    // 將 sum 和 carry-out 組合成完整的輸出結果
    assign outcome_df     = $signed({cout_df, s_df});
    assign outcome_df_reg = $signed({cout_df_reg, s_df_reg});
    assign outcome_bh     = $signed({cout_bh, s_bh});
    assign outcome_bh_reg = $signed({cout_bh_reg, s_bh_reg});
    assign outcome_st     = $signed({cout_st, s_st});
    assign outcome_st_reg = result_st_reg;



    //================================================================
    // 實例化 (Instantiation) 所有待測模組
    //================================================================
    
    adder_dataflow #( .WIDTH(32) ) u_adder_dataflow ( .s(s_df), .co(cout_df), .a(input_a), .b(input_b), .ci(ran_cin) );
    adder_dataflow_reg #( .WIDTH(32) ) u_adder_dataflow_reg ( .s(s_df_reg), .co(cout_df_reg), .a(input_a), .b(input_b), .ci(ran_cin), .clk(CLK) );
    adder_structure u_adder_structure ( .s(s_st), .co(cout_st), .a(input_a), .b(input_b) , .ci(ran_cin));
    adder_structure_reg u_adder_structure_reg ( .s_co(result_st_reg), .a(input_a), .b(input_b) , .ci(ran_cin), .clk(CLK));
    adder_behavior u_adder_behavior ( .s(s_bh), .co(cout_bh), .a(input_a), .b(input_b) , .ci(ran_cin));
    adder_behavior_reg u_adder_behavior_reg ( .s(s_bh_reg), .co(cout_bh_reg), .a(input_a), .b(input_b) , .ci(ran_cin), .clk(CLK));


    //================================================================
    // Testbench 主要邏輯
    //================================================================
    
    
    //Post_sim 使用，Pre_sim 請註解
    `ifdef SDF_FILE
        initial begin
            // 確保路徑和實例名稱匹配，才能正確載入時序資訊進行後模擬
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_dataflow/Between/dc_out_file/adder_dataflow.sdf", u_adder_dataflow);
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_dataflow_reg/Between/dc_out_file/adder_dataflow_reg.sdf", u_adder_dataflow_reg);

            // structure
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_structure/Between/dc_out_file/adder_structure.sdf", u_adder_structure);
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_structure_reg/Between/dc_out_file/adder_structure_reg.sdf", u_adder_structure_reg);

            // behavior
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_behavior/Between/dc_out_file/adder_behavior.sdf", u_adder_behavior);
            $sdf_annotate("/MasterClass/M143010068_HDL/HW1/gate_level/adder_behavior_reg/Between/dc_out_file/adder_behavior_reg.sdf", u_adder_behavior_reg);
        end
    `endif
    //設定 clock訊號    

    always #(`CYCLE/2) CLK = ~CLK;

    integer i, flag=0, error=0;

    initial begin
        flag = 0;
        error = 0;
        CLK = 0;
        RST = 1;

        #(`CYCLE*2);
        RST = 0;

        for(i=0; i < `DATA_NUM; i=i+1) begin
            input_a = $random;
            input_b = $random;
            ran_cin = $random % 2; // 隨機 cin
            answer = input_a + input_b + (ran_cin ? 1 : 0);

            #(`CYCLE);

            // 檢查 adder_dataflow
            if(answer != outcome_df) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_dataflow]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", ran_cin);

                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_df);
                    $display("----------------------------------------");
                    flag = 1; // 設置 flag，後續的詳細錯誤不再重複打印
                end
            end

            // 檢查 adder_dataflow_reg
            if(answer != outcome_df_reg) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_dataflow_reg]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", ran_cin);
                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_df_reg);
                    $display("----------------------------------------");
                    flag = 1;
                end
            end

            // 檢查 adder_structure
            if(answer != outcome_st) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_structure]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", {31'b0,ran_cin});
                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_st);
                    $display("----------------------------------------");
                    flag = 1;
                end
            end

            // 檢查 adder_structure_reg
            if(answer != outcome_st_reg) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_structure_reg]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", {31'b0,ran_cin});
                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_st_reg);
                    $display("----------------------------------------");
                    flag = 1;
                end
            end

            // 檢查 adder_behavior
            if(answer != outcome_bh) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_behavior]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", ran_cin);
                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_bh);
                    $display("----------------------------------------");
                    flag = 1;
                end
            end

            // 檢查 adder_behavior_reg
            if(answer != outcome_bh_reg) begin
                error = error+1;
                if(flag==0) begin
                    $display("----------------------------------------");
                    $display("Output error at #%d on [adder_behavior_reg]", i+1);
                    $display("The input A is    :  %b", input_a);
                    $display("The input B is    :  %b", input_b);
                    $display("The ran_cin is    :  %b", ran_cin);
                    $display("The answer is     : %b", answer);
                    $display("Your module output: %b", outcome_bh_reg);
                    $display("----------------------------------------");
                    flag = 1;
                end
            end

        end

        if(flag==1) begin
            $display("Total %4d error(s) in %4d testdata across all modules.", error, i);
            $display("----------------------------------------");
        end else begin
            $display("----------------------------------------");
            $display("All modules and all testdata correct!");
            $display("----------------------------------------");
        end
        $finish;
    end
endmodule