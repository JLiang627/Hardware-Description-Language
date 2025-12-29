module multiply_add(input [7:0] a, b, c, output[15:0] d);
    wire [15:0] temp1, temp2;

    assign temp1 = a*c;
    assign temp2 = b*c;

    wire [16:0] temp_sum;
    assign temp_sum = temp1 + temp2;

    assign d = temp_sum;
endmodule
