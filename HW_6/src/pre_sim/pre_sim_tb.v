`timescale 1ns / 1ns
`define period          10
`define img_max_size    480*360*3+54
`define cat56_size      56*56

// 檔案路徑設定
`define path_img_in     "/MasterClass/M143010068_HDL/HW6_4PE/sim_files/cat224.bmp"
`define path_img_out    "./cat56.bmp"
`define path_res_img    "./layer1" 
`define path_bias       "/MasterClass/M143010068_HDL/HW6_4PE/sim_files/conv1_bias_hex.txt"
`define path_kernel     "/MasterClass/M143010068_HDL/HW6_4PE/sim_files/conv1_kernel_hex.txt"

module HDL_HW6_TB;
    integer img_in, bias_in, img_out;
    integer offset, img_h, img_w, img_ch;
    integer idx, jdx, kdx, header, i, j;
    reg         clk, reset;
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [7:0]  img_data_56 [0:55][0:55][2:0];
    reg  [7:0]  img_data_56_padding [0:57][0:57][2:0];
    
    reg  [11:0] R_resize, G_resize, B_resize;
    reg  [7:0]  R_56x56, G_56x56, B_56x56;
    
    reg [15:0] bias_data [0:63];
    reg [15:0] kernel_data [0:1728];

    // SRAM Signals
    reg input_sram_en, input_sram_wr_en;
    reg [11:0] input_sram_wr_addr; 
    reg [11:0] input_sram_rd_addr; 
    reg [15:0] input_sram_data;    

    integer rf_i;
    reg bias_sram_en, bias_sram_wr_en;
    reg [3:0] bias_sram_rd_addr, bias_sram_wr_addr;
    reg signed [15:0] bias_sram_wr_data[0:3]; // 簡化為陣列
    
    integer kernel_i, kernel_j, kernel_k;
    reg kernel_sram_en, kernel_sram_wr_en;
    reg [8:0] kernel_sram_wr_addr;
    reg [8:0] kernel_sram_rd_addr[0:3]; // 簡化為陣列
    reg signed [15:0] kernel_sram_wr_data[0:3]; // 簡化為陣列
    
    reg ps_sram_en, ps_sram_wr_en, ps_sram_rst_en;
    reg [11:0] ps_sram_addr;
    wire signed [35:0] result1, result2, result3, result4;

    integer ch_offset, current_img_idx, pix_idx, round_counter, kernel_counter, kernel_pix, ps_sram_rst;
    reg signed [35:0] current_result;
    reg [255:0] file_name1;
    integer pixel_val; // 簡化後使用

    TOP U1( 
        .clk(clk), .reset(reset),
        .input_sram_en(input_sram_en), .input_sram_wr_en(input_sram_wr_en),
        .input_sram_wr_addr(input_sram_wr_addr), .input_sram_rd_addr(input_sram_rd_addr),
        .input_sram_data(input_sram_data),
        .bias_sram_en(bias_sram_en), .bias_sram_wr_en(bias_sram_wr_en),
        .bias_sram_wr_addr(bias_sram_wr_addr), .bias_sram_rd_addr(bias_sram_rd_addr),
        .bias_sram1_wr_data(bias_sram_wr_data[0]), .bias_sram2_wr_data(bias_sram_wr_data[1]),
        .bias_sram3_wr_data(bias_sram_wr_data[2]), .bias_sram4_wr_data(bias_sram_wr_data[3]),
        .kernel_sram_en(kernel_sram_en), .kernel_sram_wr_en(kernel_sram_wr_en),
        .kernel_sram_wr_addr(kernel_sram_wr_addr),
        .kernel1_sram_rd_addr(kernel_sram_rd_addr[0]), .kernel2_sram_rd_addr(kernel_sram_rd_addr[1]),
        .kernel3_sram_rd_addr(kernel_sram_rd_addr[2]), .kernel4_sram_rd_addr(kernel_sram_rd_addr[3]),
        .kernel1_sram_wr_data(kernel_sram_wr_data[0]), .kernel2_sram_wr_data(kernel_sram_wr_data[1]),
        .kernel3_sram_wr_data(kernel_sram_wr_data[2]), .kernel4_sram_wr_data(kernel_sram_wr_data[3]),
        .ps_sram_en(ps_sram_en), .ps_sram_wr_en(ps_sram_wr_en), .ps_sram_rst_en(ps_sram_rst_en),
        .ps_sram_addr(ps_sram_addr),
        .out1(result1), .out2(result2), .out3(result3), .out4(result4)
    );

    always #(`period/2.0) clk = ~clk;

    // Task: 載入權重
    task load_weights;
        begin
            kernel_sram_en = 1; kernel_sram_wr_en = 1;
            for(i=0; i<432; i=i+1) begin
                kernel_sram_wr_addr = i;
                {kernel_sram_wr_data[0], kernel_sram_wr_data[1], kernel_sram_wr_data[2], kernel_sram_wr_data[3]} = 
                {kernel_data[i], kernel_data[i+432], kernel_data[i+864], kernel_data[i+1296]};
                #(`period);
            end
            kernel_sram_wr_en = 0;

            bias_sram_en = 1; bias_sram_wr_en = 1;
            for(i=0; i<16; i=i+1) begin
                bias_sram_wr_addr = i;
                {bias_sram_wr_data[0], bias_sram_wr_data[1], bias_sram_wr_data[2], bias_sram_wr_data[3]} = 
                {bias_data[i], bias_data[i+16], bias_data[i+32], bias_data[i+48]};
                #(`period);
            end
            bias_sram_wr_en = 0;
        end
    endtask

    // Task: 清除PS SRAM
    task clear_ps_sram;
        begin
            ps_sram_en = 0; ps_sram_wr_en = 1; ps_sram_rst_en = 1;
            for(ps_sram_rst=0; ps_sram_rst<4096; ps_sram_rst=ps_sram_rst+1) begin
                ps_sram_addr = ps_sram_rst;
                #(`period);
            end
            ps_sram_rst_en = 0; ps_sram_wr_en = 0;
        end
    endtask

    // Task: 設定kernel地址
    task set_kernel_addr;
        input integer round, counter, pix;
        integer addr;
        begin
            addr = (round*27) + (9*counter) + pix;
            kernel_sram_rd_addr[0] = addr;
            kernel_sram_rd_addr[1] = addr;
            kernel_sram_rd_addr[2] = addr;
            kernel_sram_rd_addr[3] = addr;
        end
    endtask

    // Task: 寫入BMP header
    task write_bmp_header;
        input integer file_handle;
        begin
            $fwrite(file_handle, "BM");
            $fwrite(file_handle, "%c%c%c%c", 8'h16, 8'h28, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h36, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h28, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h3A, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h3A, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c",     8'h01, 8'h00);
            $fwrite(file_handle, "%c%c",     8'h18, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'hE0, 8'h27, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
            $fwrite(file_handle, "%c%c%c%c", 8'h00, 8'h00, 8'h00, 8'h00);
        end
    endtask

    // Function: Tone Mapping
    function [7:0] tone_mapping;
        input signed [35:0] value;
        real val_real;
        integer mapped_val;
        begin
            if (value < 0) val_real = 0;
            else val_real = value;
            val_real = $log10(val_real + 1.0) * 57.0;
            mapped_val = $rtoi(val_real);
            if (mapped_val > 255) mapped_val = 255;
            tone_mapping = mapped_val[7:0];
        end
    endfunction

    initial begin
        clk = 1; reset = 1;
        ps_sram_wr_en = 0; 
        input_sram_en = 1; input_sram_wr_en = 0; input_sram_rd_addr = 0;

        #10 reset = 0;
        
        load_weights(); // 使用task

        // 讀取圖片並縮放 (224 -> 56)
        img_in = $fopen(`path_img_in, "rb");
        if (img_in == 0) begin
            $display("Error: Cannot open file %s", `path_img_in);
            $finish;
        end
        $fread(img_data, img_in);
        $fclose(img_in);

        // Nearest Neighbor 縮放 (stride=4)
        for(img_h = 0; img_h < 56; img_h = img_h + 1) begin
            for(img_w = 0; img_w < 56; img_w = img_w + 1) begin
                // 計算原圖索引 (BMP header=54, BGR格式)
                idx = 54 + ((223 - img_h*4) * 224 + (img_w*4)) * 3; 

                img_data_56_padding[img_h][img_w][0] = img_data[idx+2]; // R
                img_data_56_padding[img_h][img_w][1] = img_data[idx+1]; // G
                img_data_56_padding[img_h][img_w][2] = img_data[idx];   // B
            end
        end
        
        // 邊界補零
        for(i=0; i<58; i=i+1) begin
            img_data_56_padding[56][i][0] = 0; img_data_56_padding[57][i][0] = 0;
            img_data_56_padding[i][56][0] = 0; img_data_56_padding[i][57][0] = 0;
        end

        // 寫入 Input SRAM
        input_sram_en = 0; input_sram_wr_en = 1;
        for(img_ch=0; img_ch<1; img_ch=img_ch+1) begin 
            for(img_h=0; img_h<58; img_h=img_h+1) begin
                for(img_w=0; img_w<58; img_w=img_w+1) begin
                    input_sram_wr_addr = (img_ch*58*58) + (img_h*58) + img_w;
                    input_sram_data = {8'd0, img_data_56_padding[img_h][img_w][img_ch]}; 
                    #(`period);
                end
            end
        end
        input_sram_wr_en = 0;
        input_sram_en = 1;
        
        // 主模擬迴圈
        $display("Start Simulation...");
        for(round_counter=0; round_counter<16; round_counter=round_counter+1) begin
            $display("=== Round %0d/16 | output: out_%0d, %0d, %0d, %0d ===", 
                     round_counter, round_counter, round_counter+16, round_counter+32, round_counter+48);
            
            clear_ps_sram(); // 使用task

            // 設定 Bias
            bias_sram_en = 1;
            bias_sram_rd_addr = round_counter;
            
            // 卷積運算迴圈
            for(kernel_counter=0; kernel_counter<1; kernel_counter=kernel_counter+1) begin 
                for(kernel_pix=0; kernel_pix<9; kernel_pix=kernel_pix+1) begin
                    kernel_sram_en = 1;
                    set_kernel_addr(round_counter, kernel_counter, kernel_pix); // 使用task
                    
                    #(`period);
                    
                    ps_sram_wr_en = 0;
                    for(pix_idx=0; pix_idx<3364+60; pix_idx=pix_idx+1) begin
                        // 階段1: 讀取
                        input_sram_en = 0;
                        input_sram_rd_addr = (pix_idx<3364) ? pix_idx : 3363;
                        ps_sram_addr = (pix_idx>=58) ? pix_idx-58 : 0;
                        ps_sram_wr_en = 0;
                        #(`period);
                        
                        // 階段2: 寫入
                        input_sram_en = 1;
                        if (pix_idx >= 58) ps_sram_wr_en = 1;
                        #(`period);
                    end
                    // 重置控制訊號
                    ps_sram_wr_en = 0;
                    input_sram_en = 1;
                end
            end
            
            // 輸出結果
            kernel_sram_en = 0;
            bias_sram_en = 1;     
            bias_sram_rd_addr = round_counter;
            input_sram_en = 1; 
            #(`period);

            for (ch_offset = 0; ch_offset < 4; ch_offset = ch_offset + 1) begin
                current_img_idx = round_counter + (ch_offset * 16);
                $sformat(file_name1, "%s/out_%0d.bmp", `path_res_img, current_img_idx);
                img_out = $fopen(file_name1, "wb");
                
                write_bmp_header(img_out); // 使用task

                for(i=57; i>=0; i=i-1) begin
                    for(j=0; j<58; j=j+1) begin
                        ps_sram_addr = (i * 58) + j;
                        #(`period);

                        // 選擇PE輸出 (使用case簡化)
                        case(ch_offset)
                            0: current_result = result1;
                            1: current_result = result2;
                            2: current_result = result3;
                            3: current_result = result4;
                        endcase

                        pixel_val = tone_mapping(current_result); // 使用function
                        $fwrite(img_out, "%c%c%c", pixel_val, pixel_val, pixel_val);
                    end
                    $fwrite(img_out, "%c%c", 8'h00, 8'h00); // BMP行對齊
                end
                
                $fclose(img_out);
            end
            
        end

        $display("Simulation Finished. Total 64 images generated.");
        $finish;
    end
    
    // 載入權重檔案
    initial begin
        $readmemh(`path_bias, bias_data);
        $readmemh(`path_kernel, kernel_data);
    end

endmodule