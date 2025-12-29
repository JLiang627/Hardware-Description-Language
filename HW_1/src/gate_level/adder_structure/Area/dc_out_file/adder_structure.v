/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 19:14:31 2025
/////////////////////////////////////////////////////////////


module FA_structure_0 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n1;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n1), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n1), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n1) );
endmodule


module FA_structure_1 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  XOR2D1BWP16P90LVT U2 ( .A1(a), .A2(b), .Z(n2) );
  AO22D1BWP16P90LVT U3 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
endmodule


module FA_structure_2 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_3 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_4 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_5 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_6 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_7 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_8 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_9 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_10 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_11 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_12 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_13 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_14 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_15 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_16 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_17 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_18 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_19 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_20 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_21 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22D1BWP16P90LVT U1 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(a), .A2(b), .Z(n2) );
  XOR2D1BWP20P90LVT U3 ( .A1(cin), .A2(n2), .Z(s) );
endmodule


module FA_structure_22 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2, n3, n4;

  ND2D1BWP16P90LVT U1 ( .A1(b), .A2(a), .ZN(n2) );
  ND2D1BWP16P90LVT U2 ( .A1(n4), .A2(cin), .ZN(n3) );
  ND2D1BWP16P90LVT U3 ( .A1(n2), .A2(n3), .ZN(cout) );
  XOR2D1BWP16P90LVT U4 ( .A1(cin), .A2(n4), .Z(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(a), .A2(b), .Z(n4) );
endmodule


module FA_structure_23 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90LVT U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_24 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_25 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22D1BWP16P90LVT U1 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(a), .A2(b), .Z(n2) );
  XOR2D1BWP20P90LVT U3 ( .A1(cin), .A2(n2), .Z(s) );
endmodule


module FA_structure_26 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_27 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  AO22D1BWP16P90LVT U1 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U2 ( .A1(a), .A2(b), .Z(n2) );
  XOR2D1BWP20P90LVT U3 ( .A1(cin), .A2(n2), .Z(s) );
endmodule


module FA_structure_28 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2, n3, n4;

  ND2D1BWP16P90LVT U1 ( .A1(n4), .A2(cin), .ZN(n3) );
  ND2D1BWP16P90LVT U2 ( .A1(n2), .A2(n3), .ZN(cout) );
  ND2D1BWP16P90LVT U3 ( .A1(b), .A2(a), .ZN(n2) );
  XOR2D1BWP16P90LVT U4 ( .A1(a), .A2(b), .Z(n4) );
  XOR2D1BWP20P90LVT U5 ( .A1(cin), .A2(n4), .Z(s) );
endmodule


module FA_structure_29 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_30 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module FA_structure_31 ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  XOR2D1BWP16P90 U1 ( .A1(cin), .A2(n2), .Z(s) );
  AO22D1BWP16P90LVT U2 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  XOR2D1BWP16P90LVT U3 ( .A1(a), .A2(b), .Z(n2) );
endmodule


module adder_structure ( s, co, a, b, ci );
  output [31:0] s;
  input [31:0] a;
  input [31:0] b;
  input ci;
  output co;

  wire   [32:1] carry;

  FA_structure_0 FA_loop_0__FA ( .a(a[0]), .b(b[0]), .cin(ci), .s(s[0]), 
        .cout(carry[1]) );
  FA_structure_31 FA_loop_1__FA ( .a(a[1]), .b(b[1]), .cin(carry[1]), .s(s[1]), 
        .cout(carry[2]) );
  FA_structure_30 FA_loop_2__FA ( .a(a[2]), .b(b[2]), .cin(carry[2]), .s(s[2]), 
        .cout(carry[3]) );
  FA_structure_29 FA_loop_3__FA ( .a(a[3]), .b(b[3]), .cin(carry[3]), .s(s[3]), 
        .cout(carry[4]) );
  FA_structure_28 FA_loop_4__FA ( .a(a[4]), .b(b[4]), .cin(carry[4]), .s(s[4]), 
        .cout(carry[5]) );
  FA_structure_27 FA_loop_5__FA ( .a(a[5]), .b(b[5]), .cin(carry[5]), .s(s[5]), 
        .cout(carry[6]) );
  FA_structure_26 FA_loop_6__FA ( .a(a[6]), .b(b[6]), .cin(carry[6]), .s(s[6]), 
        .cout(carry[7]) );
  FA_structure_25 FA_loop_7__FA ( .a(a[7]), .b(b[7]), .cin(carry[7]), .s(s[7]), 
        .cout(carry[8]) );
  FA_structure_24 FA_loop_8__FA ( .a(a[8]), .b(b[8]), .cin(carry[8]), .s(s[8]), 
        .cout(carry[9]) );
  FA_structure_23 FA_loop_9__FA ( .a(a[9]), .b(b[9]), .cin(carry[9]), .s(s[9]), 
        .cout(carry[10]) );
  FA_structure_22 FA_loop_10__FA ( .a(a[10]), .b(b[10]), .cin(carry[10]), .s(
        s[10]), .cout(carry[11]) );
  FA_structure_21 FA_loop_11__FA ( .a(a[11]), .b(b[11]), .cin(carry[11]), .s(
        s[11]), .cout(carry[12]) );
  FA_structure_20 FA_loop_12__FA ( .a(a[12]), .b(b[12]), .cin(carry[12]), .s(
        s[12]), .cout(carry[13]) );
  FA_structure_19 FA_loop_13__FA ( .a(a[13]), .b(b[13]), .cin(carry[13]), .s(
        s[13]), .cout(carry[14]) );
  FA_structure_18 FA_loop_14__FA ( .a(a[14]), .b(b[14]), .cin(carry[14]), .s(
        s[14]), .cout(carry[15]) );
  FA_structure_17 FA_loop_15__FA ( .a(a[15]), .b(b[15]), .cin(carry[15]), .s(
        s[15]), .cout(carry[16]) );
  FA_structure_16 FA_loop_16__FA ( .a(a[16]), .b(b[16]), .cin(carry[16]), .s(
        s[16]), .cout(carry[17]) );
  FA_structure_15 FA_loop_17__FA ( .a(a[17]), .b(b[17]), .cin(carry[17]), .s(
        s[17]), .cout(carry[18]) );
  FA_structure_14 FA_loop_18__FA ( .a(a[18]), .b(b[18]), .cin(carry[18]), .s(
        s[18]), .cout(carry[19]) );
  FA_structure_13 FA_loop_19__FA ( .a(a[19]), .b(b[19]), .cin(carry[19]), .s(
        s[19]), .cout(carry[20]) );
  FA_structure_12 FA_loop_20__FA ( .a(a[20]), .b(b[20]), .cin(carry[20]), .s(
        s[20]), .cout(carry[21]) );
  FA_structure_11 FA_loop_21__FA ( .a(a[21]), .b(b[21]), .cin(carry[21]), .s(
        s[21]), .cout(carry[22]) );
  FA_structure_10 FA_loop_22__FA ( .a(a[22]), .b(b[22]), .cin(carry[22]), .s(
        s[22]), .cout(carry[23]) );
  FA_structure_9 FA_loop_23__FA ( .a(a[23]), .b(b[23]), .cin(carry[23]), .s(
        s[23]), .cout(carry[24]) );
  FA_structure_8 FA_loop_24__FA ( .a(a[24]), .b(b[24]), .cin(carry[24]), .s(
        s[24]), .cout(carry[25]) );
  FA_structure_7 FA_loop_25__FA ( .a(a[25]), .b(b[25]), .cin(carry[25]), .s(
        s[25]), .cout(carry[26]) );
  FA_structure_6 FA_loop_26__FA ( .a(a[26]), .b(b[26]), .cin(carry[26]), .s(
        s[26]), .cout(carry[27]) );
  FA_structure_5 FA_loop_27__FA ( .a(a[27]), .b(b[27]), .cin(carry[27]), .s(
        s[27]), .cout(carry[28]) );
  FA_structure_4 FA_loop_28__FA ( .a(a[28]), .b(b[28]), .cin(carry[28]), .s(
        s[28]), .cout(carry[29]) );
  FA_structure_3 FA_loop_29__FA ( .a(a[29]), .b(b[29]), .cin(carry[29]), .s(
        s[29]), .cout(carry[30]) );
  FA_structure_2 FA_loop_30__FA ( .a(a[30]), .b(b[30]), .cin(carry[30]), .s(
        s[30]), .cout(carry[31]) );
  FA_structure_1 FA_loop_31__FA ( .a(a[31]), .b(b[31]), .cin(carry[31]), .s(
        s[31]), .cout(carry[32]) );
  XOR3D1BWP16P90LVT U2 ( .A1(carry[32]), .A2(b[31]), .A3(a[31]), .Z(co) );
endmodule

