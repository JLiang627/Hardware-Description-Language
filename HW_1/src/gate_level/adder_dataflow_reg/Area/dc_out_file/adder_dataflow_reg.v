/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 17:55:38 2025
/////////////////////////////////////////////////////////////


module adder_dataflow_reg_DW01_add_0 ( A, B, CI, SUM );
  input [32:0] A;
  input [32:0] B;
  output [32:0] SUM;
  input CI;

  wire   [32:1] carry;

  FA1D1BWP16P90LVT U1_31 ( .A(A[31]), .B(B[31]), .CI(carry[31]), .CO(carry[32]), .S(SUM[31]) );
  FA1D1BWP16P90LVT U1_30 ( .A(A[30]), .B(B[30]), .CI(carry[30]), .CO(carry[31]), .S(SUM[30]) );
  FA1D1BWP16P90LVT U1_29 ( .A(A[29]), .B(B[29]), .CI(carry[29]), .CO(carry[30]), .S(SUM[29]) );
  FA1D1BWP16P90LVT U1_28 ( .A(A[28]), .B(B[28]), .CI(carry[28]), .CO(carry[29]), .S(SUM[28]) );
  FA1D1BWP16P90LVT U1_27 ( .A(A[27]), .B(B[27]), .CI(carry[27]), .CO(carry[28]), .S(SUM[27]) );
  FA1D1BWP16P90LVT U1_26 ( .A(A[26]), .B(B[26]), .CI(carry[26]), .CO(carry[27]), .S(SUM[26]) );
  FA1D1BWP16P90LVT U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(SUM[22]) );
  FA1D1BWP16P90LVT U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(SUM[21]) );
  FA1D1BWP16P90LVT U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(SUM[20]) );
  FA1D1BWP16P90LVT U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(SUM[19]) );
  FA1D1BWP16P90LVT U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(SUM[18]) );
  FA1D1BWP16P90LVT U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(SUM[17]) );
  FA1D1BWP16P90LVT U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(SUM[16]) );
  FA1D1BWP16P90LVT U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(SUM[12]) );
  FA1D1BWP16P90LVT U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(SUM[11]) );
  FA1D1BWP16P90LVT U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(SUM[10]) );
  FA1D1BWP16P90LVT U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), 
        .S(SUM[9]) );
  FA1D1BWP16P90LVT U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), 
        .S(SUM[8]) );
  FA1D1BWP16P90LVT U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), 
        .S(SUM[7]) );
  FA1D1BWP16P90LVT U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), 
        .S(SUM[6]) );
  FA1D1BWP16P90LVT U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), 
        .S(SUM[5]) );
  FA1D1BWP16P90LVT U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), 
        .S(SUM[4]) );
  FA1D1BWP16P90LVT U1_0 ( .A(A[0]), .B(B[0]), .CI(CI), .CO(carry[1]), .S(
        SUM[0]) );
  FA1D1BWP16P90LVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  FA1D1BWP16P90LVT U1_24 ( .A(A[24]), .B(B[24]), .CI(carry[24]), .CO(carry[25]), .S(SUM[24]) );
  FA1D1BWP16P90LVT U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  XOR3D2BWP16P90LVT U1_32 ( .A1(A[32]), .A2(B[32]), .A3(carry[32]), .Z(SUM[32]) );
  FA1D1BWP16P90LVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  FA1D1BWP16P90LVT U1_25 ( .A(A[25]), .B(B[25]), .CI(carry[25]), .CO(carry[26]), .S(SUM[25]) );
  FA1D1BWP16P90LVT U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(SUM[15]) );
  FA1D1BWP16P90LVT U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), 
        .S(SUM[1]) );
  FA1D1BWP16P90LVT U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(carry[24]), .S(SUM[23]) );
  FA1D1BWP16P90LVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(SUM[13]) );
endmodule


module adder_dataflow_reg ( s, co, a, b, ci, clk );
  output [31:0] s;
  input [31:0] a;
  input [31:0] b;
  input ci, clk;
  output co;
  wire   N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46,
         N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60,
         N61, N62, N63, N64, N65;

  DFQD2BWP16P90LVT co_reg ( .D(N65), .CP(clk), .Q(co) );
  DFQD2BWP16P90LVT s_reg_31_ ( .D(N64), .CP(clk), .Q(s[31]) );
  DFQD2BWP16P90LVT s_reg_30_ ( .D(N63), .CP(clk), .Q(s[30]) );
  DFQD2BWP16P90LVT s_reg_29_ ( .D(N62), .CP(clk), .Q(s[29]) );
  DFQD2BWP16P90LVT s_reg_28_ ( .D(N61), .CP(clk), .Q(s[28]) );
  DFQD2BWP16P90LVT s_reg_27_ ( .D(N60), .CP(clk), .Q(s[27]) );
  DFQD2BWP16P90LVT s_reg_26_ ( .D(N59), .CP(clk), .Q(s[26]) );
  DFQD2BWP16P90LVT s_reg_25_ ( .D(N58), .CP(clk), .Q(s[25]) );
  DFQD2BWP16P90LVT s_reg_24_ ( .D(N57), .CP(clk), .Q(s[24]) );
  DFQD2BWP16P90LVT s_reg_23_ ( .D(N56), .CP(clk), .Q(s[23]) );
  DFQD2BWP16P90LVT s_reg_22_ ( .D(N55), .CP(clk), .Q(s[22]) );
  DFQD2BWP16P90LVT s_reg_21_ ( .D(N54), .CP(clk), .Q(s[21]) );
  DFQD2BWP16P90LVT s_reg_20_ ( .D(N53), .CP(clk), .Q(s[20]) );
  DFQD2BWP16P90LVT s_reg_19_ ( .D(N52), .CP(clk), .Q(s[19]) );
  DFQD2BWP16P90LVT s_reg_18_ ( .D(N51), .CP(clk), .Q(s[18]) );
  DFQD2BWP16P90LVT s_reg_17_ ( .D(N50), .CP(clk), .Q(s[17]) );
  DFQD2BWP16P90LVT s_reg_16_ ( .D(N49), .CP(clk), .Q(s[16]) );
  DFQD2BWP16P90LVT s_reg_15_ ( .D(N48), .CP(clk), .Q(s[15]) );
  DFQD2BWP16P90LVT s_reg_14_ ( .D(N47), .CP(clk), .Q(s[14]) );
  DFQD2BWP16P90LVT s_reg_13_ ( .D(N46), .CP(clk), .Q(s[13]) );
  DFQD2BWP16P90LVT s_reg_12_ ( .D(N45), .CP(clk), .Q(s[12]) );
  DFQD2BWP16P90LVT s_reg_11_ ( .D(N44), .CP(clk), .Q(s[11]) );
  DFQD2BWP16P90LVT s_reg_10_ ( .D(N43), .CP(clk), .Q(s[10]) );
  DFQD2BWP16P90LVT s_reg_9_ ( .D(N42), .CP(clk), .Q(s[9]) );
  DFQD2BWP16P90LVT s_reg_8_ ( .D(N41), .CP(clk), .Q(s[8]) );
  DFQD2BWP16P90LVT s_reg_7_ ( .D(N40), .CP(clk), .Q(s[7]) );
  DFQD2BWP16P90LVT s_reg_6_ ( .D(N39), .CP(clk), .Q(s[6]) );
  DFQD2BWP16P90LVT s_reg_5_ ( .D(N38), .CP(clk), .Q(s[5]) );
  DFQD2BWP16P90LVT s_reg_4_ ( .D(N37), .CP(clk), .Q(s[4]) );
  DFQD2BWP16P90LVT s_reg_3_ ( .D(N36), .CP(clk), .Q(s[3]) );
  DFQD2BWP16P90LVT s_reg_2_ ( .D(N35), .CP(clk), .Q(s[2]) );
  DFQD2BWP16P90LVT s_reg_1_ ( .D(N34), .CP(clk), .Q(s[1]) );
  DFQD2BWP16P90LVT s_reg_0_ ( .D(N33), .CP(clk), .Q(s[0]) );
  adder_dataflow_reg_DW01_add_0 add_1_root_add_12_2 ( .A({a[31], a}), .B({
        b[31], b}), .CI(ci), .SUM({N65, N64, N63, N62, N61, N60, N59, N58, N57, 
        N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, N45, N44, N43, 
        N42, N41, N40, N39, N38, N37, N36, N35, N34, N33}) );
endmodule

