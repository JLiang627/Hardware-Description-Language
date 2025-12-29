module Pipeline(
    in, W, b,
    ps_prev, ps_out, out
);
    input signed [4 * 9 * 36 - 1:0] in;
    input signed [4 * 9 * 16 - 1:0] W;
    input signed [15:0] b;
    input signed [35:0] ps_prev;
    output reg signed [35:0] ps_out;
    output reg signed [35:0] out;

    wire signed [35:0] out_;
    wire signed [9 * 36 - 1:0] in_ [0:3];
    wire signed [9 * 16 - 1:0] W_ [0:3];
    wire signed [35:0] z [0:3];
    wire signed [35:0] post_bias;
    wire signed [35:0] pre_ps_out; // AdderTree 的輸出

    // convert
    genvar i;
    generate
        for(i=0;i<4;i=i+1) begin: CONVERT
            assign in_[i] = in[9 * 36 * i +: 9 * 36];
            assign W_[i] = W[9 * 16 * i +: 9 * 16];
        end
    endgenerate

    // PE group
    generate
        for (i=0;i<4;i=i+1) begin: PE_GROUP
            PE PE_inst (
                .X(in_[i]), .W(W_[i]), .z(z[i])
            );
        end
    endgenerate

    // AdderTree
    AdderTree AT_inst (
        .z0(z[0]), .z1(z[1]), .z2(z[2]), .z3(z[3]),
        .ps_prev(ps_prev),
        .out(pre_ps_out)
    );

    
    assign post_bias = pre_ps_out + b;

    // activation
    ReLU ReLU_inst (
        .in(post_bias), .out(out_)
    );

    // tackle with output port
    always @(*) begin
        ps_out <= pre_ps_out;
        out <= out_;
    end
endmodule