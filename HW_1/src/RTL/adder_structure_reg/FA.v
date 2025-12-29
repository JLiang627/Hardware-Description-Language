module FA_structure_reg(
	input a, b, ci, 
    output  s, 
    output  co
);
    assign s = a ^ b ^ ci;
    assign co = (a & b) | (ci & (a ^ b));
    
endmodule 