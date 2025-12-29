module ReLU(in, out);
    input signed [35:0] in;
    output signed [35:0] out;

    assign out = (in > 0) ?
    in : 0;
endmodule