module adder_structure_reg #(
    parameter width = 32
)(
    output reg signed [width:0] s_co,
    input signed [width-1:0] a, b,
    input ci, 
    input clk
);
    wire [width:0] sum_comb;
    wire [width:0] carry;
    
    assign carry[0] = ci;
    generate
        genvar temp;
        for (temp = 0; temp < width; temp = temp+1) begin: FA_loop
            FA_structure_reg fa (
                .a(a[temp]),
                .b(b[temp]),
                .ci(carry[temp]),
                .s(sum_comb[temp]),
                .co(carry[temp+1])
            );
        end
    endgenerate
    assign sum_comb[width] = a[31]^b[31]^carry[width];

    always @(posedge clk) begin
        s_co <= sum_comb;
    end
endmodule
