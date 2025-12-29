module FA_dataflow(input a, b, cin, output s, cout);
    assign {cout, s} = a + b + cin;   
endmodule
