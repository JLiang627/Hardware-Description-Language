module multiply_add_common_factor(input[7:0] a,b,c ,output [15:0] d);
    wire [16:0]temp_mult;
    wire [8:0] temp_sum;
    
    assign temp_sum = a+b;
    assign temp_mult = temp_sum * c;

    assign d = temp_mult;
endmodule