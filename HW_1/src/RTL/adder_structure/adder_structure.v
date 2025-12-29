
module adder_structure #(
    parameter width = 32
)(
    output signed [width-1:0] s, 
    output signed co,
    input signed [width-1:0] a, b,
    input ci
);
    wire [width:0] carry;
    assign carry[0] = ci;

    genvar temp;
    generate
        for (temp = 0 ; temp < width ; temp = temp + 1)
        begin:FA_loop
            FA_structure FA (
                .a(a[temp]),
                .b(b[temp]),
                .cin(carry[temp]),
                .s(s[temp]),
                .cout(carry[temp+1])
            );
        end
    endgenerate
    assign co = a[31]^b[31]^carry[width];

endmodule