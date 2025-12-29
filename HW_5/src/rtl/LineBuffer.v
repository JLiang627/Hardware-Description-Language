// Shift register
module LineBuffer(clk, rst, in, out);
    input clk, rst;
    input signed [35:0] in;
    output reg signed [9 * 36 - 1:0] out;

    reg signed [35:0] Reg [0:454];
    wire signed [9 * 36 - 1:0] out_;
    integer i;
    always @(*) begin
        out = out_;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            for (i = 0; i < 455; i = i + 1) begin
                Reg[i] <= 0;
            end
        end
        else begin
            Reg[0] <= in;
            for (i = 1; i < 455; i = i + 1) begin
                Reg[i] <= Reg[i - 1];
            end
        end
    end

    assign out_[0 +: 36] = Reg[454];
    assign out_[36 +: 36] = Reg[453];
    assign out_[72 +: 36] = Reg[452];
    assign out_[108 +: 36] = Reg[228];
    assign out_[144 +: 36] = Reg[227];
    assign out_[180 +: 36] = Reg[226];
    assign out_[216 +: 36] = Reg[2];
    assign out_[252 +: 36] = Reg[1];
    assign out_[288 +: 36] = Reg[0];

endmodule