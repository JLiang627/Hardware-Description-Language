`timescale 1ns / 1ns
`define period           10
`define img_max_size     480*360*3+54
`define padding_img_size 482*362
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "../pics/cat.bmp"
`define path_img_out_x    "./cat_after_sobel_x.bmp"
`define path_img_out_y    "./cat_after_sobel_y.bmp"

module HDL_HW4_TB;
    integer img_in;
    integer img_out_x;
    integer img_out_y;
    integer offset;
    integer img_h;
    integer img_w;
    integer idx, h, w;
    integer header;

    reg         clk;
    reg         rst;
    reg  [7:0]  img_data [0:`img_max_size-1];
    reg  [7:0]  padding_img [2:0][0:`padding_img_size-1];
    reg  [7:0]  R;
    reg  [7:0]  G;
    reg  [7:0]  B;
    wire [19:0] Y;

    wire [7:0] edge_x;
    wire [7:0] edge_y;
    //---------------------------------------------------------------
    Edge u_Edge (
        .clk    (clk),
        .rst    (rst),      
        .R      (R),
        .G      (G),
        .B      (B),
        .edge_x (edge_x),   // 接上輸出 x
        .edge_y (edge_y)    // 接上輸出 y
    );
    //---------------------------------------------------------------
    integer r, c;
//---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    // initial begin
    //     clk = 1'b1;

    //     rst = 1'b1;              // 先讓電路重置
    //     #(`period/2) rst = 1'b0;
        
    //     #(`period)
    //     //loading after padding file to your module
    //     for(idx = 0; idx < `padding_img_size; idx = idx+1) begin
    //         R <= padding_img[2][idx];
    //         G <= padding_img[1][idx];
    //         B <= padding_img[0][idx];
    //         #(`period);
    //         //---------------------------------------------------------------
    //         r = idx / 482; // 目前在第幾列 (0 ~ 361)
    //         c = idx % 482; // 目前在第幾行 (0 ~ 481)
    //         if (r >= 1 && r <= 360 && c >= 1 && c <= 480) begin
    //             $fwrite(img_out_x, "%c", edge_x);
    //             $fwrite(img_out_y, "%c", edge_y);
    //         end            
    //         //---------------------------------------------------------------
    //     end
    //     #(`period)
    //     $fclose(img_in);
    //     $fclose(img_out_x);
    //     $fclose(img_out_y);
    //     $finish;
    // end
    // 宣告輸出索引 (用來校正延遲)
        integer out_idx; 
    //---------------------------------------------------------------
    // This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk = 1'b1;
        
        // 1. 初始化與 Reset
        rst = 1'b1;
        #(`period/2) rst = 1'b0;
        #(`period);

        

        // =========================================================
        // 階段一：餵入資料 (Main Loop)
        // =========================================================
        for(idx = 0; idx < `padding_img_size; idx = idx+1) begin
            // 1. 餵資料給硬體
            R <= padding_img[2][idx];
            G <= padding_img[1][idx];
            B <= padding_img[0][idx];
            
            #(`period); // 等待硬體運算

            // 2. 計算輸出的對應座標 (關鍵修正！)
            // 硬體延遲了 482 個 cycle，所以輸出要減回去
            out_idx = idx - 482; 

            // 3. 只有當 out_idx >= 0 時，才代表有有效資料出來
            if (out_idx >= 0) begin
                r = out_idx / 482; // 用延遲後的 index 算列
                c = out_idx % 482; // 用延遲後的 index 算行

                // 邊界過濾 (只寫入有效範圍 480x360)
                if (r >= 1 && r <= 360 && c >= 1 && c <= 480) begin
                    $fwrite(img_out_x, "%c%c%c", edge_x, edge_x, edge_x);
                    $fwrite(img_out_y, "%c%c%c", edge_y, edge_y, edge_y);
                end
            end
        end

        // =========================================================
        // 階段二：清空管線 (Flush Loop)
        // 因為輸入結束時，最後一行資料還卡在 Line Buffer 裡，要把它推出來
        // =========================================================
        for(idx = 0; idx < 482; idx = idx+1) begin
            // 繼續給 Clock，輸入什麼不重要 (補0)
            R <= 0; G <= 0; B <= 0;
            #(`period);

            // 繼續計算輸出座標 (接續上面的計數)
            out_idx = `padding_img_size + idx - 482;

            r = out_idx / 482;
            c = out_idx % 482;

            if (r >= 1 && r <= 360 && c >= 1 && c <= 480) begin
                $fwrite(img_out_x, "%c%c%c", edge_x, edge_x, edge_x);
                $fwrite(img_out_y, "%c%c%c", edge_y, edge_y, edge_y);
            end
        end
        
        #(`period)
        $fclose(img_in);
        $fclose(img_out_x);
        $fclose(img_out_y);
        $finish;
    end

    //---------------------------------------------------------------
    //This initial block read the pixel 
    //---------------------------------------------------------------
    initial begin
        //Open file
        img_in  = $fopen(`path_img_in, "rb");
        img_out_x = $fopen(`path_img_out_x, "wb");
        img_out_y = $fopen(`path_img_out_y, "wb");

        //Read input file
        $fread(img_data, img_in);

        //Read header information of input file
        img_w   = {img_data[21],img_data[20],img_data[19],img_data[18]};
        img_h   = {img_data[25],img_data[24],img_data[23],img_data[22]};
        offset  = {img_data[13],img_data[12],img_data[11],img_data[10]};

        //Write header of output bmp file 
        for(header = 0; header < 54; header = header + 1) begin
			$fwrite(img_out_x, "%c", img_data[header]);
			$fwrite(img_out_y, "%c", img_data[header]);
        end

        //zero padding 
        // for(idx=0; idx<`padding_img_size; idx=idx+1)
        //     padding_img[idx] = 0;
        //zero padding 
        for(idx=0; idx<`padding_img_size; idx=idx+1) begin
            padding_img[0][idx] = 0; // B 通道歸零
            padding_img[1][idx] = 0; // G 通道歸零
            padding_img[2][idx] = 0; // R 通道歸零
        end


        for(h = 0; h < img_h; h = h+1) begin
            for(w = 0; w < img_w; w = w+1) begin
                padding_img[2][h*482+w+483] = img_data[(h*480+w)*3 + offset + 2];
                padding_img[1][h*482+w+483] = img_data[(h*480+w)*3 + offset + 1];
                padding_img[0][h*482+w+483] = img_data[(h*480+w)*3 + offset + 0];
            end
        end

    end
//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    always begin
		#(`period/2.0) clk <= ~clk;
	end

    /*
    initial begin
		$sdf_annotate (`path_sdf, <your instance name>);
	end
    */
endmodule