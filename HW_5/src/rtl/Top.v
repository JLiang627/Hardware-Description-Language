`define ICP 4
`define OCP 4
`define KWP 9

module Top(
    clk, rst,
    in, W, b, 
    ps_prev, ps_out, out,
    is_boundary
);
    input clk, rst;
    input signed [4 * 9 - 1:0] in;
    // 4 channels, 9 bits
    input signed [4 * 4 * 9 * 16 - 1:0] W;
    // 4 kernels, 4 channels, 9 weights, 16 bits
    input signed [4 * 16 - 1:0] b;
    // 4 kernels, 1 biases, 16 bits
    input signed [4 * 36 - 1:0] ps_prev;
    // previous partial sum, read from testbench, 4 channels, 36 bits
    output signed [4 * 36 - 1:0] ps_out;
    // 4 channels, 36 bits
    output signed [4 * 36 - 1:0] out;
    // 4 channels, 36 bits
    output is_boundary;

    wire signed [35:0] in_ [0:3];
    wire signed [8:0] in_tmp [0:3];
    wire signed [4 * 9 * 16 - 1:0] W_ [0:3];
    wire signed [15:0] b_ [0:3];
    wire signed [35:0] ps_prev_ [0:3];
    wire signed [35:0] ps_out_ [0:3];
    wire signed [35:0] out_ [0:3];
    wire signed [9 * 36 - 1:0] window_out [0:3]; // 9 pixel, 36 bits
    wire signed [4 * 9 * 36 - 1:0] window_out_;
    // 4 channels, 9 pixel, 36 bits

    // convert
    genvar i;
    generate
        for (i=0;i<4;i=i+1) begin: CONVERT
            // extend to 36 bits
            assign in_tmp[i] = in[9 * i +: 9];
            assign in_[i] = {{(36-9){in_tmp[i][8]}}, in_tmp[i]};
            assign W_[i] = W[4 * 9 * 16 * i +: 4 * 9 * 16];
            assign b_[i] = b[16 * i +: 16];
            assign ps_prev_[i] = ps_prev[36 * i +: 36];
            assign ps_out[36 * i +: 36] = ps_out_[i];
            assign out[36 * i +: 36] = out_[i];
            assign window_out_[9 * 36 * i +: 9 * 36] = window_out[i];
        end
    endgenerate


    generate
        for (i=0;i<4;i=i+1) begin: LINE_BUFFER
            // line buffer and get window
            LineBuffer LineBuff_inst (
                .clk(clk), .rst(rst),
                .in(in_[i]), .out(window_out[i]) // in: [35:0], out: signed [9 * 36 - 1:0]
            );
        end
    endgenerate

    generate
        for (i=0;i<4;i=i+1) begin: PIPELINE
            Pipeline pipe (
                .in(window_out_), // in: signed [4 * 9 * 36 - 1:0]
                .W(W_[i]), .b(b_[i]), // W: signed [4 * 9 * 16 - 1:0], b: signed [15:0]
                .ps_prev(ps_prev_[i]), .ps_out(ps_out_[i]), .out(out_[i]) // out: signed [35:0]
            );
        end
    endgenerate

    // counter
    Counter Counter_inst (
        .clk(clk), .rst(rst), .is_boundary(is_boundary)
    );
endmodule

// control write_en and ps_write
module Counter(clk, rst, is_boundary);
    input clk, rst;
    output reg is_boundary;
    reg [31:0] counter;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            counter <= 0;
            is_boundary <= 0;
        end
        else begin
            if (counter == 225) begin
                counter <= 0;
                is_boundary <= 1;
            end
            else begin
                counter <= counter + 1;
            end
            is_boundary <= (counter == 225 || counter == 0) ?
            1 : 0;
        end
    end
endmodule