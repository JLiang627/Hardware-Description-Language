`timescale 1ns / 1ns
`define period           10
`define img_max_size     480*360*3+54
`define padding_img_size 482*362
//---------------------------------------------------------------
//You need specify the path of image in/out
//---------------------------------------------------------------
`define path_img_in     "./cat.bmp"
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

    wire [7:0] edge_x;
    wire [7:0] edge_y;
    //---------------------------------------------------------------
    Edge u_Edge (
        .clk    (clk),
        .rst    (rst),      
        .R      (R),
        .G      (G),
        .B      (B),
        .edge_x (edge_x),   // ?¥ä¸Šè¼¸?‡º x
        .edge_y (edge_y)    // ?¥ä¸Šè¼¸?‡º y
    );
    //---------------------------------------------------------------
    integer r, c;
//---------------------------------------------------------------------------------------Take out the color image(cat) of RGB----------------------------------------------
    //---------------------------------------------------------------
    //This initial block write the pixel 
    //---------------------------------------------------------------
    // initial begin
    //     clk = 1'b1;

    //     rst = 1'b1;              // ??ˆè?“é›»è·¯é?ç½®
    //     #(`period/2) rst = 1'b0;
        
    //     #(`period)
    //     //loading after padding file to your module
    //     for(idx = 0; idx < `padding_img_size; idx = idx+1) begin
    //         R <= padding_img[2][idx];
    //         G <= padding_img[1][idx];
    //         B <= padding_img[0][idx];
    //         #(`period);
    //         //---------------------------------------------------------------
    //         r = idx / 482; // ?›®??åœ¨ç¬¬å¹¾??? (0 ~ 361)
    //         c = idx % 482; // ?›®??åœ¨ç¬¬å¹¾è¡? (0 ~ 481)
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
    // å®???Šè¼¸?‡ºç´¢å?? (?”¨ä¾†æ ¡æ­?å»¶é²)
        integer out_idx; 
    //---------------------------------------------------------------
    // This initial block write the pixel 
    //---------------------------------------------------------------
    initial begin
        clk = 1'b1;
        
        // 1. ??å?‹å?–è?? Reset
        rst = 1'b1;
        #100
        rst = 1'b0;
        #(`period);

        

        // =========================================================
        // ??æ®µä¸?ï¼šé¤µ?…¥è³‡æ?? (Main Loop)
        // =========================================================
        for(idx = 0; idx < `padding_img_size; idx = idx+1) begin
            // 1. é¤µè?‡æ?™çµ¦ç¡¬é??
            R <= padding_img[2][idx];
            G <= padding_img[1][idx];
            B <= padding_img[0][idx];
            
            #(`period); // ç­‰å?…ç¡¬é«”é?‹ç??

            // 2. è¨ˆç?—è¼¸?‡º??„å?æ?‰åº§æ¨? (??œéµä¿®æ­£ï¼?)
            // ç¡¬é?”å»¶?²äº? 482 ?? cycleï¼Œæ?ä»¥è¼¸?‡ºè¦æ?›å?å»
            out_idx = idx - 482; 

            // 3. ?ª??‰ç•¶ out_idx >= 0 ??‚ï?Œæ?ä»£è¡¨æ?‰æ?‰æ?ˆè?‡æ?™å‡ºä¾?
            if (out_idx >= 0) begin
                r = out_idx / 482; // ?”¨å»¶é²å¾Œç?? index ç®—å??
                c = out_idx % 482; // ?”¨å»¶é²å¾Œç?? index ç®—è??

                // ??Šç?Œé?æ¿¾ (?ªå¯«å…¥??‰æ?ˆç?„å?? 480x360)
                if (r >= 1 && r <= 360 && c >= 1 && c <= 480) begin
                    $fwrite(img_out_x, "%c%c%c", edge_x, edge_x, edge_x);
                    $fwrite(img_out_y, "%c%c%c", edge_y, edge_y, edge_y);
                end
            end
        end

        // =========================================================
        // ??æ®µäºŒï?šæ?…ç©ºç®¡ç?? (Flush Loop)
        // ?? ç‚ºè¼¸å…¥çµæ?Ÿæ?‚ï?Œæ?å¾Œä?è¡Œè?‡æ?™é?„å¡?œ¨ Line Buffer è£¡ï?Œè?æ?Šå?ƒæ¨?‡ºä¾?
        // =========================================================
        for(idx = 0; idx < 482; idx = idx+1) begin
            // ç¹¼ç?Œçµ¦ Clockï¼Œè¼¸?…¥ä»?éº¼ä?é?è?? (è£?0)
            R <= 0; G <= 0; B <= 0;
            #(`period);

            // ç¹¼ç?Œè?ˆç?—è¼¸?‡ºåº§æ?? (?¥çºŒä?Šé¢??„è?ˆæ•¸)
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
            padding_img[0][idx] = 0; // B ?šé?“æ­¸?›¶
            padding_img[1][idx] = 0; // G ?šé?“æ­¸?›¶
            padding_img[2][idx] = 0; // R ?šé?“æ­¸?›¶
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