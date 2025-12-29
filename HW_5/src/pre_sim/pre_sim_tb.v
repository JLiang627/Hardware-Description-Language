`timescale 1ns/10ps
`define cycle 10

`define img_max_size 224*224*3+54
`define padding_img_size 226*226

`define conv1_kernel_path "/MasterClass/M143010068_HDL/HW5/image/conv1_kernel_hex.txt"
`define conv1_bias_path "/MasterClass/M143010068_HDL/HW5/image/conv1_bias_hex.txt"
`define conv2_kernel_path "/MasterClass/M143010068_HDL/HW5/image/conv2_kernel_hex.txt"
`define conv2_bias_path "/MasterClass/M143010068_HDL/HW5/image/conv2_bias_hex.txt"
`define input_image_path "/MasterClass/M143010068_HDL/HW5/image/cat224.bmp"
`define img_out_conv1_folder "./layer1/"
`define img_out_conv2_folder "./layer2/"
`define img_out_test_path "./test.bmp"

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
    // 4 channels
    reg [7:0] padding_img_lyr2 [63:0][0:`padding_img_size-1];
    // 64 channels

    reg signed [15:0] conv1_kernel [0:64*3*9 - 1];
    reg signed [15:0] conv1_bias [0:63];
    reg signed [15:0] conv2_kernel [0:64*64*9 - 1];
    reg signed [15:0] conv2_bias [0:63];
    reg signed [15:0] kernel_temp[0:3];
    reg signed [35:0] partial_sum_memory [0:3][0:226*226-1]; // 4 channels, 224*224 pixels
    reg is_last_channel;

    reg clk, rst;
    wire signed [4 * 9 - 1:0] in; // 4 channels, 9 bits
    reg signed [8:0] in_ [0:3];
    reg signed [4 * 4 * 9 * 16 - 1:0] W;
    // 4 kernels, 4 channels, 9 weights, 16 bits
    reg signed [4 * 16 - 1:0] b;
    // 4 kernels, 1 biases, 16 bits
    reg signed [4 * 36 - 1:0] ps_prev;
    // previous partial sum, read from testbench, 4 channels, 36 bits
    wire signed [4 * 36 - 1:0] ps_out;
    // 4 channels, 36 bits
    wire signed [4 * 36 - 1:0] out;
    // 4 channels, 36 bits
    wire is_boundary;
    Top vgg_inst(
        clk, rst,
        in, W, b, 
        ps_prev, ps_out, out,
        is_boundary
    );
    genvar i;
    generate
        for (i=0;i<4;i=i+1) begin: CONVERT
            assign in[9 * (3-i) + 8 -: 9] = in_[i];
        end
    endgenerate



    // for testing
    // initial begin
    //     W <= {4*4*9{16'b1}};
    //     b <= {4{16'b0}};
    //     ps_prev <= {4{36'b0}};
    // end


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
            // initialize partial sum
            ps_prev = {4{36'b0}};
            for(pixel=0; pixel<226*226; pixel=pixel+1) begin
                partial_sum_memory[0][pixel] = 0;
                partial_sum_memory[1][pixel] = 0;
                partial_sum_memory[2][pixel] = 0;
                partial_sum_memory[3][pixel] = 0;
            end
            for(channel=0; channel<4; channel=channel+4) begin
                $display("layer1, kernel: %d, channel: %d", kernel, channel);
                if (channel >= 0) begin
                    is_last_channel = 1;
                end

                W <= 0;
                in_[0] <= 0;
                in_[1] <= 0;
                in_[2] <= 0;
                in_[3] <= 0;
                for (jj=0;jj<4;jj=jj+1) begin // kernel
                    for (ii=0;ii<3;ii=ii+1) begin // channel
                        for (kk=0;kk<9;kk=kk+1) begin
                            W[16*(8-kk) + 16*9*(3-ii) + 16*9*4*(3-jj) +15 -: 16] <= conv1_kernel[9*3*(kernel+jj)+9*(channel+ii) + kk];
                        end
                    end
                end

                b <= {
                    conv1_bias[kernel],
                    conv1_bias[kernel+1],
      
                    conv1_bias[kernel+2],
                    conv1_bias[kernel+3]
                };
                #(`cycle);

                for(pixel = 0; pixel < 450; pixel = pixel+1) begin
                    in_[0] <= padding_img[0][pixel];
                    in_[1] <= padding_img[1][pixel];
                    in_[2] <= padding_img[2][pixel];
                    in_[3] <= padding_img[3][pixel];
                    #(`cycle);
                end

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
                    // if (~is_boundary) begin
                    //     if (is_last_channel) begin
                    //         $fwrite(img_out_conv1[kernel], "%c%c%c", out[11 : 4], out[11 : 4], out[11 : 4]);
                    //         $fwrite(img_out_conv1[kernel+1], "%c%c%c", out[46 : 39], out[46 : 39], out[46 : 39]);
                    //         $fwrite(img_out_conv1[kernel+2], "%c%c%c", out[81 : 74], out[81 : 74], out[81 : 74]);
                    //         $fwrite(img_out_conv1[kernel+3], "%c%c%c", out[117 : 110], out[117 : 110], out[117 : 110]);
                    //     end
                    // end
                    if (~is_boundary) begin
                        if (is_last_channel) begin
                            // Kernel 0 
                            $fwrite(img_out_conv1[kernel], "%c%c%c", out[12 : 5], out[12 : 5], out[12 : 5]);
                            
                            // Kernel 1 
                            $fwrite(img_out_conv1[kernel+1], "%c%c%c", out[47 : 40], out[47 : 40], out[47 : 40]);
                            
                            // Kernel 2 
                            $fwrite(img_out_conv1[kernel+2], "%c%c%c", out[83 : 76], out[83 : 76], out[83 : 76]);
                            
                            // Kernel 3 
                            $fwrite(img_out_conv1[kernel+3], "%c%c%c", out[119 : 112], out[119 : 112], out[119 : 112]);
                        end
                    end
                end
            end
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
            // initialize partial sum
            ps_prev = {4{36'b0}};
            for(pixel=0; pixel<226*226; pixel=pixel+1) begin
                partial_sum_memory[0][pixel] = 0;
                partial_sum_memory[1][pixel] = 0;
                partial_sum_memory[2][pixel] = 0;
                partial_sum_memory[3][pixel] = 0;
            end
            for(channel=0; channel<64; channel=channel+4) begin
                $display("layer2, kernel: %d, channel: %d", kernel, channel);
                if (channel >= 60) begin
                    is_last_channel = 1;
                end

                W <= 0;
                in_[0] <= 0;
                in_[1] <= 0;
                in_[2] <= 0;
                in_[3] <= 0;
                for (jj=0;jj<4;jj=jj+1) begin // kernel
                    for (ii=0;ii<4;ii=ii+1) begin // channel
                        for (kk=0;kk<9;kk=kk+1) begin
                            W[16*(8-kk) + 16*9*(3-ii) + 16*9*4*(3-jj) +15 -: 16] <= conv2_kernel[9*3*(kernel+jj)+9*(channel+ii) + kk];
                        end
                    end
                end

                b <= {
                    conv2_bias[kernel],
                    conv2_bias[kernel+1],
      
                    conv2_bias[kernel+2],
                    conv2_bias[kernel+3]
                };
                for(pixel = 0; pixel < 450; pixel = pixel+1) begin
                    in_[0] <= padding_img_lyr2[channel][pixel];
                    in_[1] <= padding_img_lyr2[channel + 1][pixel];
                    in_[2] <= padding_img_lyr2[channel + 2][pixel];
                    in_[3] <= padding_img_lyr2[channel + 3][pixel];
                    #(`cycle);
                    #(`cycle);
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
                    // $display("ps_out: %h", ps_out);
                    partial_sum_memory[3][pixel-450] <= ps_out[4*36-1:3*36];
                    partial_sum_memory[2][pixel-450] <= ps_out[3*36-1:2*36];
                    partial_sum_memory[1][pixel-450] <= ps_out[2*36-1:36];
                    partial_sum_memory[0][pixel-450] <= ps_out[36-1:0];

                    #(`cycle);
                    // if (~is_boundary) begin
                    //     if (is_last_channel) begin
                    //         $fwrite(img_out_conv2[kernel], "%c%c%c", out[14 : 7], out[14 : 7], out[14 : 7]);
                    //         $fwrite(img_out_conv2[kernel+1], "%c%c%c", out[49 : 42], out[49 : 42], out[49 : 42]);
                    //         $fwrite(img_out_conv2[kernel+2], "%c%c%c", out[84 : 77], out[84 : 77], out[84 : 77]);
                    //         $fwrite(img_out_conv2[kernel+3], "%c%c%c", out[120 : 113], out[120 : 113], out[120 : 113]);
                    //     end
                    // end
                    if (~is_boundary) begin
                        if (is_last_channel) begin
                            $fwrite(img_out_conv2[kernel], "%c%c%c", out[11 : 4], out[11 : 4], out[11 : 4]);
                            
                            $fwrite(img_out_conv2[kernel+1], "%c%c%c", out[50 : 43], out[50 : 43], out[50 : 43]);
                            
                            $fwrite(img_out_conv2[kernel+2], "%c%c%c", out[86 : 79], out[86 : 79], out[86 : 79]);
                            
                            $fwrite(img_out_conv2[kernel+3], "%c%c%c", out[122 : 115], out[122 : 115], out[122 : 115]);
                        end
                    end
                end
            end
        end
        for (ii=0;ii<64;ii=ii+1) begin
            $fclose(img_out_conv2[ii]);
        end
        // 建議也關閉 Layer 1 的輸出檔案 (如果還沒關的話)
        for (ii=0;ii<64;ii=ii+1) begin
            $fclose(img_out_conv1[ii]);
        end

        $finish;
        $finish;
    end

    // read the pixel (1st layer)
    task read_img_lyr1();
    begin

        img_in  = $fopen(`input_image_path, "rb");
        $fread(img_data, img_in);
        for (ii=0;ii<64;ii=ii+1) begin
            img_out_conv1[ii] = $fopen($sformatf("%s/%d.bmp",`img_out_conv1_folder,ii), "wb");
        end

        //Read header information of input file
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        // Write header of output bmp file 
        for(header = 0; header < 54; header = header + 1) begin
            for (ii=0;ii<64;ii=ii+1) begin
                $fwrite(img_out_conv1[ii], "%c", img_data[header]);
            end
        end

        //zero padding 
        for(idx=0; idx<`padding_img_size; idx=idx+1) begin
            padding_img[3][idx] = 0;
            padding_img[2][idx] = 0;
            padding_img[1][idx] = 0;
            padding_img[0][idx] = 0;
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

    // read the pixel (2nd layer)
    // read the pixel (2nd layer)
    task read_img_lyr2 ();
    begin
        // 修改策略：直接讀取原始圖片的 Header 資訊即可，不用打開 64 個 Layer 1 的圖
        // 這樣可以避免在此處耗盡檔案開啟額度
        
        // 1. 讀取 Header 資訊 (借用 img_in，記得該變數要是 integer)
        img_in_lyr2 = $fopen(`input_image_path, "rb"); 
        $fread(img_data_lyr2, img_in_lyr2);
        
        // 解析 Header
        img_w   = {img_data_lyr2[21],img_data_lyr2[20],img_data_lyr2[19],img_data_lyr2[18]};
        img_h   = {img_data_lyr2[25],img_data_lyr2[24],img_data_lyr2[23],img_data_lyr2[22]};
        offset  = {img_data_lyr2[13],img_data_lyr2[12],img_data_lyr2[11],img_data_lyr2[10]};
        $fclose(img_in_lyr2); // <--- 重要！讀完馬上關閉

        // 2. 準備 Zero Padding 資料
        // 這裡需要讀取 layer1 的輸出作為 layer2 的輸入
        // 這裡必須要開啟檔案，但讀完一個就關一個
        for (ii=0;ii<64;ii=ii+1) begin
            img_in_lyr2 = $fopen($sformatf("%s/%d.bmp",`img_out_conv1_folder,ii), "rb");
            if (img_in_lyr2 == 0) begin
                $display("Error: Cannot open layer1 output %d.bmp", ii);
                $finish;
            end
            $fread(img_data_lyr2, img_in_lyr2); // 讀入 buffer
            $fclose(img_in_lyr2); // <--- 重要！讀完馬上關閉，釋放資源
            
            // Padding 邏輯 (保持您原本的邏輯)
            //zero padding 
            for(idx=0; idx<`padding_img_size; idx=idx+1) begin
                padding_img_lyr2[ii][idx] = 0;
            end
            for(h = 0; h < img_h; h = h+1) begin
                for(w = 0; w < img_w; w = w+1) begin
                    padding_img_lyr2[ii][h*226+w+227] = img_data_lyr2[(h*224+w)*3 + offset + 2];
                end
            end
        end

        // 3. 開啟 Layer 2 輸出檔案並寫入 Header
        for (ii=0;ii<64;ii=ii+1) begin
            img_out_conv2[ii] = $fopen($sformatf("%s/%d.bmp",`img_out_conv2_folder,ii), "wb");
        end

        // Write header of output bmp file 
        for(header = 0; header < 54; header = header + 1) begin
            for (ii=0;ii<64;ii=ii+1) begin
                $fwrite(img_out_conv2[ii], "%c", img_data_lyr2[header]);
            end
        end
    end
    endtask
    // task read_img_lyr2 ();
    // begin
        
    //     for (ii=0;ii<64;ii=ii+1) begin
    //         img_in_lyr2 = $fopen($sformatf("%s/%d.bmp",`img_out_conv1_folder,ii), "rb");
    //         $fread(img_data_lyr2, img_in_lyr2);
    //         //Read header information of input file
    //         img_w   = {img_data_lyr2[21],img_data_lyr2[20],img_data_lyr2[19],img_data_lyr2[18]};
    //         img_h   = {img_data_lyr2[25],img_data_lyr2[24],img_data_lyr2[23],img_data_lyr2[22]};
    //         offset  = {img_data_lyr2[13],img_data_lyr2[12],img_data_lyr2[11],img_data_lyr2[10]};
            
    //         //zero padding 
    //         for(idx=0; idx<`padding_img_size; idx=idx+1) begin
    //             padding_img_lyr2[ii][idx] = 0;
    //         end
    //         for(h = 0; h < img_h; h = h+1) begin
    //             for(w = 0; w < img_w; w = w+1) begin
    //                 padding_img_lyr2[ii][h*226+w+227] = img_data_lyr2[(h*224+w)*3 + offset + 2];
    //             end
    //         end
    //     end

    //     for (ii=0;ii<64;ii=ii+1) begin
    //         img_out_conv2[ii] = $fopen($sformatf("%s/%d.bmp",`img_out_conv2_folder,ii), "wb");
    //     end

    //     // Write header of output bmp file 
    //     for(header = 0; header < 54; header = header + 1) begin
    //         for (ii=0;ii<64;ii=ii+1) begin
    //             $fwrite(img_out_conv2[ii], "%c", img_data_lyr2[header]);
    //         end
    //     end
    // end
    // endtask

    // read kernel and bias
    initial begin
        //Open file
        $readmemh(`conv1_kernel_path, conv1_kernel);
        $readmemh(`conv1_bias_path, conv1_bias);
        $readmemh(`conv2_kernel_path, conv2_kernel);
        $readmemh(`conv2_bias_path, conv2_bias);
    end

    // clock
    always begin
        #(`cycle/2) clk = ~clk;
    end

endmodule