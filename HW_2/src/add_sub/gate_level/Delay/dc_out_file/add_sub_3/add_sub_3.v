/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sat Oct 18 15:39:52 2025
/////////////////////////////////////////////////////////////


module add_sub_3_DW01_addsub_0 ( A, ADD_SUB, SUM, \B[8] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
  input [8:0] A;
  output [8:0] SUM;
  input ADD_SUB, \B[8] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ,
         \B[0] ;
  wire   carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_, carry_2_,
         carry_1_;
  wire   [8:0] B_AS;

  FA1D1BWP16P90LVT U1_8 ( .A(A[8]), .B(B_AS[8]), .CI(carry_8_), .S(SUM[8]) );
  FA1D1BWP16P90LVT U1_7 ( .A(A[7]), .B(B_AS[8]), .CI(carry_7_), .CO(carry_8_), 
        .S(SUM[7]) );
  FA1D1BWP16P90LVT U1_6 ( .A(A[6]), .B(B_AS[6]), .CI(carry_6_), .CO(carry_7_), 
        .S(SUM[6]) );
  FA1D1BWP16P90LVT U1_5 ( .A(A[5]), .B(B_AS[5]), .CI(carry_5_), .CO(carry_6_), 
        .S(SUM[5]) );
  FA1D1BWP16P90LVT U1_4 ( .A(A[4]), .B(B_AS[4]), .CI(carry_4_), .CO(carry_5_), 
        .S(SUM[4]) );
  FA1D1BWP16P90LVT U1_3 ( .A(A[3]), .B(B_AS[3]), .CI(carry_3_), .CO(carry_4_), 
        .S(SUM[3]) );
  FA1D1BWP16P90LVT U1_2 ( .A(A[2]), .B(B_AS[2]), .CI(carry_2_), .CO(carry_3_), 
        .S(SUM[2]) );
  FA1D1BWP16P90LVT U1_1 ( .A(A[1]), .B(B_AS[1]), .CI(carry_1_), .CO(carry_2_), 
        .S(SUM[1]) );
  FA1D1BWP16P90LVT U1_0 ( .A(A[0]), .B(B_AS[0]), .CI(ADD_SUB), .CO(carry_1_), 
        .S(SUM[0]) );
  XOR2D1BWP16P90 U1 ( .A1(ADD_SUB), .A2(\B[8] ), .Z(B_AS[8]) );
  XOR2D1BWP16P90 U2 ( .A1(\B[6] ), .A2(ADD_SUB), .Z(B_AS[6]) );
  XOR2D1BWP16P90 U3 ( .A1(\B[5] ), .A2(ADD_SUB), .Z(B_AS[5]) );
  XOR2D1BWP16P90 U4 ( .A1(\B[4] ), .A2(ADD_SUB), .Z(B_AS[4]) );
  XOR2D1BWP16P90 U5 ( .A1(\B[3] ), .A2(ADD_SUB), .Z(B_AS[3]) );
  XOR2D1BWP16P90 U6 ( .A1(\B[2] ), .A2(ADD_SUB), .Z(B_AS[2]) );
  XOR2D1BWP16P90 U7 ( .A1(\B[1] ), .A2(ADD_SUB), .Z(B_AS[1]) );
  XOR2D1BWP16P90 U8 ( .A1(\B[0] ), .A2(ADD_SUB), .Z(B_AS[0]) );
endmodule


module add_sub_3 ( a, b, s, d );
  input [7:0] a;
  input [7:0] b;
  output [15:0] d;
  input s;
  wire   n8, n9;
  assign d[14] = d[15];
  assign d[12] = d[15];
  assign d[10] = d[15];
  assign d[8] = d[15];
  assign d[9] = d[15];
  assign d[11] = d[15];
  assign d[13] = d[15];

  add_sub_3_DW01_addsub_0 r368 ( .A({a[7], a}), .ADD_SUB(n9), .SUM({d[15], 
        d[7:0]}), .\B[8] (b[7]), .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), 
        .\B[3] (b[3]), .\B[2] (b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  TIELBWP20P90LVT U4 ( .ZN(n8) );
  CKND1BWP16P90 U5 ( .I(s), .ZN(n9) );
endmodule

