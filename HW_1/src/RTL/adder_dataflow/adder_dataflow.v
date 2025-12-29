
module adder_dataflow #(
    parameter WIDTH = 32                    
)(
    output [WIDTH-1:0] s,                  
    output             co,  
    input signed [WIDTH-1:0] a, b,               
    input              ci
); 
    assign {co, s} = {a[WIDTH-1], a} + {b[WIDTH-1], b} + ci;
endmodule