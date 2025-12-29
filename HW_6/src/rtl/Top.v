module TOP(
    input clk,
    input reset,
    
    // Input SRAM 訊號
    input input_sram_en,        
    input input_sram_wr_en,     
    input [11:0] input_sram_wr_addr, 
    input [11:0] input_sram_rd_addr,
    input [15:0] input_sram_data,    
    
    // Bias SRAM 訊號
    input bias_sram_en,
    input bias_sram_wr_en,
    input [3:0] bias_sram_wr_addr,
    input [3:0] bias_sram_rd_addr,
    input signed [15:0] bias_sram1_wr_data, bias_sram2_wr_data, bias_sram3_wr_data, bias_sram4_wr_data,
    
    // Kernel SRAM 訊號
    input kernel_sram_en,
    input kernel_sram_wr_en,
    input [8:0] kernel_sram_wr_addr,
    input [8:0] kernel1_sram_rd_addr, kernel2_sram_rd_addr, kernel3_sram_rd_addr, kernel4_sram_rd_addr,
    input signed [15:0] kernel1_sram_wr_data, kernel2_sram_wr_data, kernel3_sram_wr_data, kernel4_sram_wr_data,
    
    // Partial Sum 訊號
    input ps_sram_en,
    input ps_sram_wr_en,   // 0:讀 1:寫
    input ps_sram_rst_en,
    input [11:0] ps_sram_addr,
    
    // 輸出
    output signed [35:0] out1, out2, out3, out4
);

    //================================================
    // 1. 內部連線
    //================================================
    
    // SRAM 資料線
    wire [15:0] img_data_out;
    wire [11:0] final_input_addr = (input_sram_wr_en) ? input_sram_wr_addr : input_sram_rd_addr;

    // LineBuffer 連線
    wire [143:0] lb_window; 

    // Kernel 連線
    wire signed [15:0] w [0:3];
    // 權重廣播給PE (1->9)
    wire [143:0] weight_packed [0:3];
    assign weight_packed[0] = {9{w[0]}};
    assign weight_packed[1] = {9{w[1]}};
    assign weight_packed[2] = {9{w[2]}};
    assign weight_packed[3] = {9{w[3]}};

    // Bias 連線
    wire signed [15:0] b [0:3];

    // PE 輸出
    wire [287:0] prod [0:3];

    // AdderTree 結果
    wire signed [31:0] at_sum [0:3];

    // Partial Sum SRAM Data
    wire signed [35:0] ps_rd [0:3]; // Read from SRAM
    wire signed [35:0] ps_wr [0:3]; // Write to SRAM
    
    // Accumulation Logic: New Sum = AdderTree + Partial Sum (from SRAM)
    assign ps_wr[0] = at_sum[0] + ps_rd[0];
    assign ps_wr[1] = at_sum[1] + ps_rd[1];
    assign ps_wr[2] = at_sum[2] + ps_rd[2];
    assign ps_wr[3] = at_sum[3] + ps_rd[3];

    // SRAM 64位元介面
    wire [63:0] ps_data_in [0:3];
    wire [63:0] q [0:3];
    
    assign ps_data_in[0] = (ps_sram_rst_en) ? 64'd0 : {28'd0, ps_wr[0]};
    assign ps_data_in[1] = (ps_sram_rst_en) ? 64'd0 : {28'd0, ps_wr[1]};
    assign ps_data_in[2] = (ps_sram_rst_en) ? 64'd0 : {28'd0, ps_wr[2]};
    assign ps_data_in[3] = (ps_sram_rst_en) ? 64'd0 : {28'd0, ps_wr[3]};

    // ReLU 輸入和輸出
    wire signed [35:0] pre_relu [0:3];
    wire [15:0] relu_out [0:3];
    
    assign pre_relu[0] = ps_wr[0] + {{20{b[0][15]}}, b[0]};
    assign pre_relu[1] = ps_wr[1] + {{20{b[1][15]}}, b[1]};
    assign pre_relu[2] = ps_wr[2] + {{20{b[2][15]}}, b[2]};
    assign pre_relu[3] = ps_wr[3] + {{20{b[3][15]}}, b[3]};

    //================================================
    // 2. 模組實例化
    //================================================

    // Input SRAM
    sram_4096x16m16 U_InputSRAM (
        .CLK(clk), .CEN(input_sram_en), .WEN(~input_sram_wr_en), 
        .A(final_input_addr), .D(input_sram_data), .Q(img_data_out),
        .CENY(), .WENY(), .AY(), .DY(), .TQ(), 
        .EMA(3'b0), .EMAW(2'b0), .EMAS(1'b0), .TEN(1'b1), .BEN(1'b1), 
        .TCEN(1'b1), .TWEN(1'b1), .TA(12'd0), .TD(16'd0), .RET1N(1'b1), .STOV(1'b0)
    );

    // Line Buffer
    LineBuffer U_LineBuf (
        .clk(clk), .rst(reset),
        .data_in(img_data_out), .enable(~input_sram_en), .window_out(lb_window)
    );

    // Kernel 控制
    kernel_sram_control U_KernelCtrl (
        .clk(clk),
        .kernel_sram_en(kernel_sram_en), .kernel_sram_wr_en(kernel_sram_wr_en), .kernel_sram_wr_addr(kernel_sram_wr_addr),
        .kernel1_sram_rd_addr(kernel1_sram_rd_addr), .kernel2_sram_rd_addr(kernel2_sram_rd_addr),
        .kernel3_sram_rd_addr(kernel3_sram_rd_addr), .kernel4_sram_rd_addr(kernel4_sram_rd_addr),
        .kernel1_sram_wr_data(kernel1_sram_wr_data), .kernel2_sram_wr_data(kernel2_sram_wr_data),
        .kernel3_sram_wr_data(kernel3_sram_wr_data), .kernel4_sram_wr_data(kernel4_sram_wr_data),
        .kernel1_sram_rd_data(w[0]), .kernel2_sram_rd_data(w[1]), .kernel3_sram_rd_data(w[2]), .kernel4_sram_rd_data(w[3])
    );

    bias_sram_control U_BiasCtrl (
        .clk(clk),
        .bias_sram_en(bias_sram_en), .bias_sram_wr_en(bias_sram_wr_en), .bias_sram_wr_addr(bias_sram_wr_addr), .bias_sram_rd_addr(bias_sram_rd_addr),
        .bias_sram1_wr_data(bias_sram1_wr_data), .bias_sram2_wr_data(bias_sram2_wr_data),
        .bias_sram3_wr_data(bias_sram3_wr_data), .bias_sram4_wr_data(bias_sram4_wr_data),
        .bias_sram1_rd_data(b[0]), .bias_sram2_rd_data(b[1]), .bias_sram3_rd_data(b[2]), .bias_sram4_rd_data(b[3])
    );

    // PE 陣列
    PE PE1 (.window_data(lb_window), .weight_data(weight_packed[0]), .product_out(prod[0]));
    PE PE2 (.window_data(lb_window), .weight_data(weight_packed[1]), .product_out(prod[1]));
    PE PE3 (.window_data(lb_window), .weight_data(weight_packed[2]), .product_out(prod[2]));
    PE PE4 (.window_data(lb_window), .weight_data(weight_packed[3]), .product_out(prod[3]));

    // AdderTree (組合邏輯)
    AdderTree AT1 (.products(prod[0]), .sum_out(at_sum[0]));
    AdderTree AT2 (.products(prod[1]), .sum_out(at_sum[1]));
    AdderTree AT3 (.products(prod[2]), .sum_out(at_sum[2]));
    AdderTree AT4 (.products(prod[3]), .sum_out(at_sum[3]));

    // Partial Sum SRAM
    sram_4096x64m16 PSSRAM1 (
        .CLK(clk), .CEN(ps_sram_en), .WEN(~ps_sram_wr_en), .A(ps_sram_addr), .D(ps_data_in[0]), .Q(q[0]),
        .CENY(), .WENY(), .AY(), .DY(), .TQ(), 
        .EMA(3'b0), .EMAW(2'b0), .EMAS(1'b0), .TEN(1'b1), .BEN(1'b1), .TCEN(1'b1), .TWEN(1'b1), .TA(12'd0), .TD(64'd0), .RET1N(1'b1), .STOV(1'b0)
    );
    sram_4096x64m16 PSSRAM2 (
        .CLK(clk), .CEN(ps_sram_en), .WEN(~ps_sram_wr_en), .A(ps_sram_addr), .D(ps_data_in[1]), .Q(q[1]),
        .CENY(), .WENY(), .AY(), .DY(), .TQ(), 
        .EMA(3'b0), .EMAW(2'b0), .EMAS(1'b0), .TEN(1'b1), .BEN(1'b1), .TCEN(1'b1), .TWEN(1'b1), .TA(12'd0), .TD(64'd0), .RET1N(1'b1), .STOV(1'b0)
    );
    sram_4096x64m16 PSSRAM3 (
        .CLK(clk), .CEN(ps_sram_en), .WEN(~ps_sram_wr_en), .A(ps_sram_addr), .D(ps_data_in[2]), .Q(q[2]),
        .CENY(), .WENY(), .AY(), .DY(), .TQ(), 
        .EMA(3'b0), .EMAW(2'b0), .EMAS(1'b0), .TEN(1'b1), .BEN(1'b1), .TCEN(1'b1), .TWEN(1'b1), .TA(12'd0), .TD(64'd0), .RET1N(1'b1), .STOV(1'b0)
    );
    sram_4096x64m16 PSSRAM4 (
        .CLK(clk), .CEN(ps_sram_en), .WEN(~ps_sram_wr_en), .A(ps_sram_addr), .D(ps_data_in[3]), .Q(q[3]),
        .CENY(), .WENY(), .AY(), .DY(), .TQ(), 
        .EMA(3'b0), .EMAW(2'b0), .EMAS(1'b0), .TEN(1'b1), .BEN(1'b1), .TCEN(1'b1), .TWEN(1'b1), .TA(12'd0), .TD(64'd0), .RET1N(1'b1), .STOV(1'b0)
    );

    // 解包讀取資料
    assign ps_rd[0] = q[0][35:0];
    assign ps_rd[1] = q[1][35:0];
    assign ps_rd[2] = q[2][35:0];
    assign ps_rd[3] = q[3][35:0];

    // ReLU
    ReLU ReLU1 (.data_in(pre_relu[0][31:0]), .data_out(relu_out[0]));
    ReLU ReLU2 (.data_in(pre_relu[1][31:0]), .data_out(relu_out[1]));
    ReLU ReLU3 (.data_in(pre_relu[2][31:0]), .data_out(relu_out[2]));
    ReLU ReLU4 (.data_in(pre_relu[3][31:0]), .data_out(relu_out[3]));

    // 最終輸出 (零擴展)
    assign out1 = {20'd0, relu_out[0]};
    assign out2 = {20'd0, relu_out[1]};
    assign out3 = {20'd0, relu_out[2]};
    assign out4 = {20'd0, relu_out[3]};

endmodule