`timescale 1ns/10ps
`define cycle 10

`define img_max_size 224*224*3+54
`define padding_img_size 226*226

// Input Path
`define conv1_kernel_path "/MasterClass/M143010068_HDL/HW5/image/conv1_kernel_hex.txt"
`define conv1_bias_path "/MasterClass/M143010068_HDL/HW5/image/conv1_bias_hex.txt"
`define conv2_kernel_path "/MasterClass/M143010068_HDL/HW5/image/conv2_kernel_hex.txt"
`define conv2_bias_path "/MasterClass/M143010068_HDL/HW5/image/conv2_bias_hex.txt"
`define input_image_path "/MasterClass/M143010068_HDL/HW5/image/cat224.bmp"


`define img_out_conv1_folder "./layer1_post"
`define img_out_conv2_folder "./layer2_post"

// === SDF 檔案路徑 ===
`define path_sdf "/MasterClass/M143010068_HDL/HW5/gate_level/Top.sdf"

module testbench();
    integer img_in;
    integer img_in_lyr2;
    integer img_out_conv1[0:63];
    integer img_out_conv2[0:63];
    integer idx, h, w;
    integer offset, img_h, img_w, header;
    integer kernel, channel, pixel;
    integer ii, jj, kk;

    reg [7:0] img_data [0:`img_max_size-1];
    reg [7:0] img_data_lyr2 [0:`img_max_size-1];
    reg [7:0] padding_img [3:0][0:`padding_img_size-1];
    reg [7:0] padding_img_lyr2 [63:0][0:`padding_img_size-1];

    reg signed [15:0] conv1_kernel [0:64*3*9 - 1];
    reg signed [15:0] conv1_bias [0:63];
    reg signed [15:0] conv2_kernel [0:64*64*9 - 1];
    reg signed [15:0] conv2_bias [0:63];

    reg signed [35:0] partial_sum_memory [0:3][0:226*226-1]; 
    reg is_last_channel;

    reg clk, rst;
    
    // Inputs/Outputs for Top module
    wire signed [4 * 9 - 1:0] in;
    reg signed [8:0] in_ [0:3];
    reg signed [4 * 4 * 9 * 16 - 1:0] W;
    reg signed [4 * 16 - 1:0] b;
    reg signed [4 * 36 - 1:0] ps_prev;
    
    wire signed [4 * 36 - 1:0] ps_out;
    wire signed [4 * 36 - 1:0] out;
    wire is_boundary;

    // Instantiate the Gate-Level Top module
    Top vgg_inst(
        .clk(clk),
        .rst(rst),
        .in(in),
        .W(W),
        .b(b), 
        .ps_prev(ps_prev),
        .ps_out(ps_out),
        .out(out),
        .is_boundary(is_boundary)
    );

    // Convert helper
    genvar i;
    generate
        for (i=0;i<4;i=i+1) begin: CONVERT
            assign in[9 * (3-i) + 8 -: 9] = in_[i];
        end
    endgenerate

    // SDF Back-Annotation
    initial begin
        $sdf_annotate(`path_sdf, vgg_inst);
    end

    // Main Testing Logic
    initial begin
        read_img_lyr1();
        #(`cycle*5);
        clk = 1'b1;
        rst = 1'b0;
        #(`cycle)
        rst = 1'b1;
        #(`cycle)
        rst = 1'b0;
        
        // ================== 1st layer ==================
        for(kernel=0; kernel<64; kernel=kernel+4) begin
            is_last_channel = 0;
            ps_prev = {4{36'b0}};
            
            for(pixel=0; pixel<226*226; pixel=pixel+1) begin
                partial_sum_memory[0][pixel] = 0;
                partial_sum_memory[1][pixel] = 0;
                partial_sum_memory[2][pixel] = 0;
                partial_sum_memory[3][pixel] = 0;
            end
            
            for(channel=0; channel<4; channel=channel+4) begin
                $display("Post-Sim Layer1, kernel: %d, channel: %d", kernel, channel);
                if (channel >= 0) is_last_channel = 1;

                W <= 0;
                in_[0] <= 0; in_[1] <= 0; in_[2] <= 0; in_[3] <= 0;
                
                // Load Weights
                for (jj=0;jj<4;jj=jj+1) begin 
                    for (ii=0;ii<3;ii=ii+1) begin 
                        for (kk=0;kk<9;kk=kk+1) begin
                           W[16*(8-kk) + 16*9*(3-ii) + 16*9*4*(3-jj) +15 -: 16] <= conv1_kernel[9*3*(kernel+jj)+9*(channel+ii) + kk];
                        end
                    end
                end

                // Load Bias
                b <= {conv1_bias[kernel], conv1_bias[kernel+1], conv1_bias[kernel+2], conv1_bias[kernel+3]};
                #(`cycle);

                // Pipeline Loop (First 450 pixels)
                for(pixel = 0; pixel < 450; pixel = pixel+1) begin
                    in_[0] <= padding_img[0][pixel];
                    in_[1] <= padding_img[1][pixel];
                    in_[2] <= padding_img[2][pixel];
                    in_[3] <= padding_img[3][pixel];
                    #(`cycle);
                end

                // Main Pipeline Loop
                for(pixel=450; pixel<226*226; pixel=pixel+1) begin
                    in_[0] <= padding_img[0][pixel];
                    in_[1] <= padding_img[1][pixel];
                    in_[2] <= padding_img[2][pixel];
                    in_[3] <= padding_img[3][pixel];

                    ps_prev <= {
                        partial_sum_memory[0][pixel-450],
                        partial_sum_memory[1][pixel-450],
                        partial_sum_memory[2][pixel-450],
                        partial_sum_memory[3][pixel-450]
                    };
                    
                    partial_sum_memory[0][pixel-450] <= ps_out[36-1:0];
                    partial_sum_memory[1][pixel-450] <= ps_out[2*36-1:36];
                    partial_sum_memory[2][pixel-450] <= ps_out[3*36-1:2*36];
                    partial_sum_memory[3][pixel-450] <= ps_out[4*36-1:3*36];

                    #(`cycle);
                    
                    if (~is_boundary && is_last_channel) begin
                        $fwrite(img_out_conv1[kernel],   "%c%c%c", out[12 : 5],   out[12 : 5],   out[12 : 5]);
                        $fwrite(img_out_conv1[kernel+1], "%c%c%c", out[47 : 40],  out[47 : 40],  out[47 : 40]); 
                        $fwrite(img_out_conv1[kernel+2], "%c%c%c", out[83 : 76],  out[83 : 76],  out[83 : 76]); 
                        $fwrite(img_out_conv1[kernel+3], "%c%c%c", out[119 : 112], out[119 : 112], out[119 : 112]); 
                    end
                end
            end
        end

        // 關閉 Layer 1 檔案以釋放資源
        for (ii=0;ii<64;ii=ii+1) begin
            $fclose(img_out_conv1[ii]);
        end

        read_img_lyr2();
        #(`cycle*5);
        rst = 1'b0;
        #(`cycle)
        rst = 1'b1;
        #(`cycle)
        rst = 1'b0;
        
        // ================== 2nd layer ==================
        for(kernel=0; kernel<64; kernel=kernel+4) begin
            is_last_channel = 0;
            ps_prev = {4{36'b0}};
            
            for(pixel=0; pixel<226*226; pixel=pixel+1) begin
                partial_sum_memory[0][pixel] = 0;
                partial_sum_memory[1][pixel] = 0;
                partial_sum_memory[2][pixel] = 0;
                partial_sum_memory[3][pixel] = 0;
            end
            
            for(channel=0; channel<64; channel=channel+4) begin
                $display("Post-Sim Layer2, kernel: %d, channel: %d", kernel, channel);
                if (channel >= 60) is_last_channel = 1;

                W <= 0;
                in_[0] <= 0; in_[1] <= 0; in_[2] <= 0; in_[3] <= 0;
                
                for (jj=0;jj<4;jj=jj+1) begin 
                    for (ii=0;ii<4;ii=ii+1) begin 
                        for (kk=0;kk<9;kk=kk+1) begin
                            W[16*(8-kk) + 16*9*(3-ii) + 16*9*4*(3-jj) +15 -: 16] <= conv2_kernel[9*3*(kernel+jj)+9*(channel+ii) + kk];
                        end
                    end
                end

                b <= {conv2_bias[kernel], conv2_bias[kernel+1], conv2_bias[kernel+2], conv2_bias[kernel+3]};
                
                for(pixel = 0; pixel < 450; pixel = pixel+1) begin
                    in_[0] <= padding_img_lyr2[channel][pixel];
                    in_[1] <= padding_img_lyr2[channel + 1][pixel];
                    in_[2] <= padding_img_lyr2[channel + 2][pixel];
                    in_[3] <= padding_img_lyr2[channel + 3][pixel];
                    #(`cycle);
                    #(`cycle); // LineBuffer Latency
                end

                for(pixel=450; pixel<226*226; pixel=pixel+1) begin
                    in_[0] <= padding_img_lyr2[channel][pixel];
                    in_[1] <= padding_img_lyr2[channel + 1][pixel];
                    in_[2] <= padding_img_lyr2[channel + 2][pixel];
                    in_[3] <= padding_img_lyr2[channel + 3][pixel];

                    #(`cycle);
                    
                    ps_prev <= {
                        partial_sum_memory[3][pixel-450],
                        partial_sum_memory[2][pixel-450],
                        partial_sum_memory[1][pixel-450],
                        partial_sum_memory[0][pixel-450]
                    };
                    
                    partial_sum_memory[3][pixel-450] <= ps_out[4*36-1:3*36];
                    partial_sum_memory[2][pixel-450] <= ps_out[3*36-1:2*36];
                    partial_sum_memory[1][pixel-450] <= ps_out[2*36-1:36];
                    partial_sum_memory[0][pixel-450] <= ps_out[36-1:0];

                    #(`cycle);
                    
                    if (~is_boundary && is_last_channel) begin
                        $fwrite(img_out_conv2[kernel],   "%c%c%c", out[12 : 5],   out[12 : 5],   out[12 : 5]);
                        $fwrite(img_out_conv2[kernel+1], "%c%c%c", out[50 : 43],  out[50 : 43],  out[50 : 43]); 
                        $fwrite(img_out_conv2[kernel+2], "%c%c%c", out[86 : 79],  out[86 : 79],  out[86 : 79]); 
                        $fwrite(img_out_conv2[kernel+3], "%c%c%c", out[122 : 115], out[122 : 115], out[122 : 115]); 
                    end
                end
            end
        end
        
        // 關閉 Layer 2 檔案
        for (ii=0;ii<64;ii=ii+1) begin
            $fclose(img_out_conv2[ii]);
        end
        $finish;
    end

    // Read Image Layer 1 Task
    task read_img_lyr1();
    begin
        img_in  = $fopen(`input_image_path, "rb");
        $fread(img_data, img_in);
        $fclose(img_in); // 讀完關閉

        for (ii=0;ii<64;ii=ii+1) begin
            img_out_conv1[ii] = $fopen($sformatf("%s/%d.bmp",`img_out_conv1_folder,ii), "wb");
        end
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};
        
        for(header = 0; header < 54; header = header + 1) begin
            for (ii=0;ii<64;ii=ii+1) begin
                $fwrite(img_out_conv1[ii], "%c", img_data[header]);
            end
        end
        
        for(idx=0; idx<`padding_img_size; idx=idx+1) begin
            padding_img[3][idx] = 0;
            padding_img[2][idx] = 0;
            padding_img[1][idx] = 0; padding_img[0][idx] = 0;
        end
        for(h = 0; h < img_h; h = h+1) begin
            for(w = 0; w < img_w; w = w+1) begin
                padding_img[2][h*226+w+227] = img_data[(h*224+w)*3 + offset + 2];
                padding_img[1][h*226+w+227] = img_data[(h*224+w)*3 + offset + 1];
                padding_img[0][h*226+w+227] = img_data[(h*224+w)*3 + offset + 0];
            end
        end
    end
    endtask

    // === 修正後的 Layer 2 讀檔 (避免同時開啟太多檔案) ===
    task read_img_lyr2 ();
    begin
        // 1. 先讀 Header (只開一次檔)
        img_in_lyr2 = $fopen(`input_image_path, "rb");
        $fread(img_data_lyr2, img_in_lyr2);
        img_w   = {img_data_lyr2[21],img_data_lyr2[20],img_data_lyr2[19],img_data_lyr2[18]};
        img_h   = {img_data_lyr2[25],img_data_lyr2[24],img_data_lyr2[23],img_data_lyr2[22]};
        offset  = {img_data_lyr2[13],img_data_lyr2[12],img_data_lyr2[11],img_data_lyr2[10]};
        $fclose(img_in_lyr2); // 關閉

        // 2. 逐一讀取 Layer 1 輸出並做 Padding (讀完一個關一個)
        for (ii=0;ii<64;ii=ii+1) begin
            img_in_lyr2 = $fopen($sformatf("%s/%d.bmp",`img_out_conv1_folder,ii), "rb");
            if (img_in_lyr2 != 0) begin
                $fread(img_data_lyr2, img_in_lyr2);
                $fclose(img_in_lyr2); // <--- 重要！馬上關閉
            end else begin
                $display("Error: Cannot open layer1 output %d.bmp", ii);
                $finish;
            end

            for(idx=0; idx<`padding_img_size; idx=idx+1) begin
                padding_img_lyr2[ii][idx] = 0;
            end
            for(h = 0; h < img_h; h = h+1) begin
                for(w = 0; w < img_w; w = w+1) begin
                    padding_img_lyr2[ii][h*226+w+227] = img_data_lyr2[(h*224+w)*3 + offset + 2];
                end
            end
        end
        
        // 3. 開啟 Layer 2 寫入檔案
        for (ii=0;ii<64;ii=ii+1) begin
            img_out_conv2[ii] = $fopen($sformatf("%s/%d.bmp",`img_out_conv2_folder,ii), "wb");
        end
        for(header = 0; header < 54; header = header + 1) begin
            for (ii=0;ii<64;ii=ii+1) begin
                $fwrite(img_out_conv2[ii], "%c", img_data_lyr2[header]);
            end
        end
    end
    endtask

    initial begin
        $readmemh(`conv1_kernel_path, conv1_kernel);
        $readmemh(`conv1_bias_path, conv1_bias);
        $readmemh(`conv2_kernel_path, conv2_kernel);
        $readmemh(`conv2_bias_path, conv2_bias);
    end

    always begin
        #(`cycle/2) clk = ~clk;
    end
endmodule