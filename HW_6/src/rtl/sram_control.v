module kernel_sram_control (
    input wire clk,
    input wire kernel_sram_en,
    input wire kernel_sram_wr_en,
    input wire [8:0] kernel_sram_wr_addr,
    
    // 4 個 Channel 的獨立讀取地址
    input wire [8:0] kernel1_sram_rd_addr,
    input wire [8:0] kernel2_sram_rd_addr,
    input wire [8:0] kernel3_sram_rd_addr,
    input wire [8:0] kernel4_sram_rd_addr,
    
    // 4 個 Channel 的寫入資料
    input wire signed [15:0] kernel1_sram_wr_data,
    input wire signed [15:0] kernel2_sram_wr_data,
    input wire signed [15:0] kernel3_sram_wr_data,
    input wire signed [15:0] kernel4_sram_wr_data,
    
    // 4 個 Channel 的讀取輸出
    output wire signed [15:0] kernel1_sram_rd_data,
    output wire signed [15:0] kernel2_sram_rd_data,
    output wire signed [15:0] kernel3_sram_rd_data,
    output wire signed [15:0] kernel4_sram_rd_data
);

    // 定義 4 塊記憶體 
    reg signed [15:0] mem1 [0:511];
    reg signed [15:0] mem2 [0:511];
    reg signed [15:0] mem3 [0:511];
    reg signed [15:0] mem4 [0:511];

    // 寫入邏輯 (同步)
    always @(posedge clk) begin
        if (kernel_sram_en && kernel_sram_wr_en) begin
            mem1[kernel_sram_wr_addr] <= kernel1_sram_wr_data;
            mem2[kernel_sram_wr_addr] <= kernel2_sram_wr_data;
            mem3[kernel_sram_wr_addr] <= kernel3_sram_wr_data;
            mem4[kernel_sram_wr_addr] <= kernel4_sram_wr_data;
        end
    end

    // 讀取邏輯 
    assign kernel1_sram_rd_data = (kernel_sram_en) ? mem1[kernel1_sram_rd_addr] : 16'd0;
    assign kernel2_sram_rd_data = (kernel_sram_en) ? mem2[kernel2_sram_rd_addr] : 16'd0;
    assign kernel3_sram_rd_data = (kernel_sram_en) ? mem3[kernel3_sram_rd_addr] : 16'd0;
    assign kernel4_sram_rd_data = (kernel_sram_en) ? mem4[kernel4_sram_rd_addr] : 16'd0;

endmodule

module bias_sram_control (
    input wire clk,
    input wire bias_sram_en,
    input wire bias_sram_wr_en,
    input wire [3:0] bias_sram_wr_addr,
    input wire [3:0] bias_sram_rd_addr, // 共用讀取地址
    
    // 寫入資料
    input wire signed [15:0] bias_sram1_wr_data,
    input wire signed [15:0] bias_sram2_wr_data,
    input wire signed [15:0] bias_sram3_wr_data,
    input wire signed [15:0] bias_sram4_wr_data,
    
    // 讀取輸出
    output wire signed [15:0] bias_sram1_rd_data,
    output wire signed [15:0] bias_sram2_rd_data,
    output wire signed [15:0] bias_sram3_rd_data,
    output wire signed [15:0] bias_sram4_rd_data
);

    // 定義 4 塊記憶體 (地址 4-bit，深度 16)
    reg signed [15:0] mem1 [0:15];
    reg signed [15:0] mem2 [0:15];
    reg signed [15:0] mem3 [0:15];
    reg signed [15:0] mem4 [0:15];

    // 寫入邏輯
    always @(posedge clk) begin
        if (bias_sram_en && bias_sram_wr_en) begin
            mem1[bias_sram_wr_addr] <= bias_sram1_wr_data;
            mem2[bias_sram_wr_addr] <= bias_sram2_wr_data;
            mem3[bias_sram_wr_addr] <= bias_sram3_wr_data;
            mem4[bias_sram_wr_addr] <= bias_sram4_wr_data;
        end
    end

    // 讀取邏輯
    assign bias_sram1_rd_data = (bias_sram_en) ? mem1[bias_sram_rd_addr] : 16'd0;
    assign bias_sram2_rd_data = (bias_sram_en) ? mem2[bias_sram_rd_addr] : 16'd0;
    assign bias_sram3_rd_data = (bias_sram_en) ? mem3[bias_sram_rd_addr] : 16'd0;
    assign bias_sram4_rd_data = (bias_sram_en) ? mem4[bias_sram_rd_addr] : 16'd0;

endmodule