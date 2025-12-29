module PE (X, W, z);
    input signed [9*36-1:0] X;
    input signed [9*16-1:0] W;
    output signed [35:0] z;
    // convert X/W to [35/15:0] X_/W_ [0:8]
    wire signed [35:0] X_ [0:8];
    wire signed [15:0] W_ [0:8];
    genvar i;
    generate
        for (i = 0; i < 9; i = i + 1) begin: CONVERT
            assign X_[i] = X[36*i +: 36];
            assign W_[i] = W[16*i +: 16];
        end
    endgenerate

    // multiplier
    wire signed [35:0] wx [0:8];
    generate
        for (i = 0; i < 9; i = i + 1) begin: MULT
            assign wx[i] = X_[i] * W_[i];
        end
    endgenerate

    // adder tree
    wire signed [35:0] tmp0 [0:3];
    wire signed [35:0] tmp1 [0:1];
    wire signed [35:0] tmp2;

    assign tmp0[0] = wx[0] + wx[1];
    assign tmp0[1] = wx[2] + wx[3];
    assign tmp0[2] = wx[4] + wx[5];
    assign tmp0[3] = wx[6] + wx[7];
    assign tmp1[0] = tmp0[0] + tmp0[1];
    assign tmp1[1] = tmp0[2] + tmp0[3];
    assign tmp2 = tmp1[0] + tmp1[1];
    assign z = tmp2 + wx[8];
endmodule