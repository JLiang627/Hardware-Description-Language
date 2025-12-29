/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Thu Oct 30 15:15:38 2025
/////////////////////////////////////////////////////////////


module hw2_pipe_stage1_DW01_addsub_0 ( ADD_SUB, SUM, \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  output [8:0] SUM;
  input ADD_SUB, \A[7] , \A[6] , \A[5] , \A[4] , \A[3] , \A[2] , \A[1] ,
         \A[0] , \B[7] , \B[6] , \B[5] , \B[4] , \B[3] , \B[2] , \B[1] ,
         \B[0] ;
  wire   carry_8_, carry_7_, carry_6_, carry_5_, carry_4_, carry_3_, carry_2_,
         carry_1_;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [7:0] B_AS;
  assign A[7] = \A[7] ;
  assign A[6] = \A[6] ;
  assign A[5] = \A[5] ;
  assign A[4] = \A[4] ;
  assign A[3] = \A[3] ;
  assign A[2] = \A[2] ;
  assign A[1] = \A[1] ;
  assign A[0] = \A[0] ;
  assign B[7] = \B[7] ;
  assign B[6] = \B[6] ;
  assign B[5] = \B[5] ;
  assign B[4] = \B[4] ;
  assign B[3] = \B[3] ;
  assign B[2] = \B[2] ;
  assign B[1] = \B[1] ;
  assign B[0] = \B[0] ;

  FA1D1BWP16P90LVT U1_7 ( .A(A[7]), .B(B_AS[7]), .CI(carry_7_), .CO(carry_8_), 
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
  XOR2D1BWP16P90LVT U1 ( .A1(ADD_SUB), .A2(carry_8_), .Z(SUM[8]) );
  XOR2D1BWP16P90 U2 ( .A1(B[7]), .A2(ADD_SUB), .Z(B_AS[7]) );
  XOR2D1BWP16P90 U3 ( .A1(B[6]), .A2(ADD_SUB), .Z(B_AS[6]) );
  XOR2D1BWP16P90 U4 ( .A1(B[5]), .A2(ADD_SUB), .Z(B_AS[5]) );
  XOR2D1BWP16P90 U5 ( .A1(B[4]), .A2(ADD_SUB), .Z(B_AS[4]) );
  XOR2D1BWP16P90 U6 ( .A1(B[3]), .A2(ADD_SUB), .Z(B_AS[3]) );
  XOR2D1BWP16P90 U7 ( .A1(B[2]), .A2(ADD_SUB), .Z(B_AS[2]) );
  XOR2D1BWP16P90 U8 ( .A1(B[1]), .A2(ADD_SUB), .Z(B_AS[1]) );
  XOR2D1BWP16P90 U9 ( .A1(B[0]), .A2(ADD_SUB), .Z(B_AS[0]) );
endmodule


module hw2_pipe_stage1 ( clk, reset, a, b, c, s, sum_pipe_out, c_pipe_out );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [8:0] sum_pipe_out;
  output [7:0] c_pipe_out;
  input clk, reset, s;
  wire   n1, n2, n3;
  wire   [8:0] temp_sum;

  DFCNQD2BWP16P90LVT sum_pipe_out_reg_8_ ( .D(temp_sum[8]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[8]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_7_ ( .D(temp_sum[7]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[7]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_6_ ( .D(temp_sum[6]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[6]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_5_ ( .D(temp_sum[5]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[5]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_4_ ( .D(temp_sum[4]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[4]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_3_ ( .D(temp_sum[3]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[3]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_2_ ( .D(temp_sum[2]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[2]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_1_ ( .D(temp_sum[1]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[1]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_0_ ( .D(temp_sum[0]), .CP(clk), .CDN(n3), 
        .Q(sum_pipe_out[0]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_7_ ( .D(c[7]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[7]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_6_ ( .D(c[6]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[6]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_5_ ( .D(c[5]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[5]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_4_ ( .D(c[4]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[4]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_3_ ( .D(c[3]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[3]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_2_ ( .D(c[2]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[2]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_0_ ( .D(c[0]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[0]) );
  hw2_pipe_stage1_DW01_addsub_0 r368 ( .ADD_SUB(n2), .SUM(temp_sum), .\A[7] (
        a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (a[3]), 
        .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (b[7]), .\B[6] (
        b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (b[2]), 
        .\B[1] (b[1]), .\B[0] (b[0]) );
  DFCNQD1BWP16P90LVT c_pipe_out_reg_1_ ( .D(c[1]), .CP(clk), .CDN(n3), .Q(
        c_pipe_out[1]) );
  TIELBWP20P90LVT U3 ( .ZN(n1) );
  CKND1BWP16P90LVT U4 ( .I(s), .ZN(n2) );
  CKND1BWP16P90LVT U5 ( .I(reset), .ZN(n3) );
endmodule


module hw2_pipe_stage2_DW_mult_uns_0 ( a, b, \product[15] , \product[14] , 
        \product[13] , \product[12] , \product[11] , \product[10] , 
        \product[9] , \product[8] , \product[7] , \product[6] , \product[5] , 
        \product[4] , \product[3] , \product[2] , \product[1] , \product[0] 
 );
  input [8:0] a;
  input [7:0] b;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263;
  wire   [15:0] product;
  assign \product[15]  = product[15];
  assign \product[14]  = product[14];
  assign \product[13]  = product[13];
  assign \product[12]  = product[12];
  assign \product[11]  = product[11];
  assign \product[10]  = product[10];
  assign \product[9]  = product[9];
  assign \product[8]  = product[8];
  assign \product[7]  = product[7];
  assign \product[6]  = product[6];
  assign \product[5]  = product[5];
  assign \product[4]  = product[4];
  assign \product[3]  = product[3];
  assign \product[2]  = product[2];
  assign \product[1]  = product[1];
  assign \product[0]  = product[0];

  FA1D1BWP16P90LVT U6 ( .A(n36), .B(n29), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D1BWP16P90LVT U7 ( .A(n46), .B(n37), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D1BWP16P90LVT U8 ( .A(n58), .B(n47), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D1BWP16P90LVT U15 ( .A(n165), .B(n15), .CI(n111), .CO(n14), .S(product[2]) );
  HA1D2BWP16P90LVT U16 ( .A(n174), .B(n182), .CO(n15), .S(product[1]) );
  FA1D1BWP16P90LVT U17 ( .A(n121), .B(n113), .CI(n20), .CO(n16), .S(n17) );
  FA1D1BWP16P90LVT U18 ( .A(n26), .B(n21), .CI(n24), .CO(n18), .S(n19) );
  FA1D1BWP16P90LVT U19 ( .A(n130), .B(n114), .CI(n122), .CO(n20), .S(n21) );
  FA1D1BWP16P90LVT U20 ( .A(n32), .B(n25), .CI(n30), .CO(n22), .S(n23) );
  FA1D1BWP16P90LVT U21 ( .A(n131), .B(n34), .CI(n27), .CO(n24), .S(n25) );
  FA1D1BWP16P90LVT U22 ( .A(n139), .B(n115), .CI(n123), .CO(n26), .S(n27) );
  FA1D1BWP16P90LVT U23 ( .A(n33), .B(n38), .CI(n31), .CO(n28), .S(n29) );
  FA1D1BWP16P90LVT U24 ( .A(n42), .B(n35), .CI(n40), .CO(n30), .S(n31) );
  FA1D1BWP16P90LVT U25 ( .A(n140), .B(n132), .CI(n44), .CO(n32), .S(n33) );
  FA1D1BWP16P90LVT U26 ( .A(n148), .B(n116), .CI(n124), .CO(n34), .S(n35) );
  FA1D1BWP16P90LVT U27 ( .A(n41), .B(n48), .CI(n39), .CO(n36), .S(n37) );
  FA1D1BWP16P90LVT U28 ( .A(n45), .B(n52), .CI(n50), .CO(n38), .S(n39) );
  FA1D1BWP16P90LVT U29 ( .A(n56), .B(n54), .CI(n43), .CO(n40), .S(n41) );
  FA1D1BWP16P90LVT U30 ( .A(n133), .B(n141), .CI(n149), .CO(n42), .S(n43) );
  FA1D1BWP16P90LVT U31 ( .A(n157), .B(n117), .CI(n125), .CO(n44), .S(n45) );
  FA1D1BWP16P90LVT U32 ( .A(n51), .B(n60), .CI(n49), .CO(n46), .S(n47) );
  FA1D1BWP16P90LVT U33 ( .A(n64), .B(n53), .CI(n62), .CO(n48), .S(n49) );
  FA1D1BWP16P90LVT U34 ( .A(n68), .B(n66), .CI(n55), .CO(n50), .S(n51) );
  FA1D1BWP16P90LVT U35 ( .A(n142), .B(n134), .CI(n57), .CO(n52), .S(n53) );
  FA1D1BWP16P90LVT U36 ( .A(n150), .B(n166), .CI(n158), .CO(n54), .S(n55) );
  HA1D2BWP16P90LVT U37 ( .A(n126), .B(n118), .CO(n56), .S(n57) );
  FA1D1BWP16P90LVT U38 ( .A(n72), .B(n63), .CI(n61), .CO(n58), .S(n59) );
  FA1D1BWP16P90LVT U39 ( .A(n69), .B(n74), .CI(n65), .CO(n60), .S(n61) );
  FA1D1BWP16P90LVT U40 ( .A(n78), .B(n76), .CI(n67), .CO(n62), .S(n63) );
  FA1D1BWP16P90LVT U41 ( .A(n167), .B(n159), .CI(n80), .CO(n64), .S(n65) );
  FA1D1BWP16P90LVT U42 ( .A(n175), .B(n143), .CI(n151), .CO(n66), .S(n67) );
  FA1D1BWP16P90LVT U43 ( .A(n127), .B(n119), .CI(n135), .CO(n68), .S(n69) );
  FA1D1BWP16P90LVT U44 ( .A(n84), .B(n75), .CI(n73), .CO(n70), .S(n71) );
  FA1D1BWP16P90LVT U45 ( .A(n77), .B(n79), .CI(n86), .CO(n72), .S(n73) );
  FA1D1BWP16P90LVT U46 ( .A(n90), .B(n81), .CI(n88), .CO(n74), .S(n75) );
  FA1D1BWP16P90LVT U47 ( .A(n160), .B(n144), .CI(n152), .CO(n76), .S(n77) );
  FA1D1BWP16P90LVT U48 ( .A(n176), .B(n136), .CI(n168), .CO(n78), .S(n79) );
  HA1D2BWP16P90LVT U49 ( .A(n128), .B(n120), .CO(n80), .S(n81) );
  FA1D1BWP16P90LVT U50 ( .A(n94), .B(n87), .CI(n85), .CO(n82), .S(n83) );
  FA1D1BWP16P90LVT U51 ( .A(n91), .B(n96), .CI(n89), .CO(n84), .S(n85) );
  FA1D1BWP16P90LVT U52 ( .A(n161), .B(n153), .CI(n98), .CO(n86), .S(n87) );
  FA1D1BWP16P90LVT U53 ( .A(n177), .B(n145), .CI(n169), .CO(n88), .S(n89) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n129), .CO(n90), .S(n91) );
  FA1D1BWP16P90LVT U56 ( .A(n170), .B(n104), .CI(n99), .CO(n94), .S(n95) );
  FA1D1BWP16P90LVT U57 ( .A(n178), .B(n154), .CI(n162), .CO(n96), .S(n97) );
  HA1D2BWP16P90LVT U61 ( .A(n155), .B(n147), .CO(n104), .S(n105) );
  FA1D1BWP16P90LVT U62 ( .A(n180), .B(n172), .CI(n110), .CO(n106), .S(n107) );
  HA1D2BWP16P90LVT U63 ( .A(n164), .B(n156), .CO(n108), .S(n109) );
  CKND1BWP16P90LVT U156 ( .I(b[2]), .ZN(n260) );
  FA1D1BWP16P90LVT U157 ( .A(n28), .B(n23), .CI(n5), .CO(n4), .S(product[12])
         );
  CKND1BWP16P90LVT U158 ( .I(b[3]), .ZN(n259) );
  FA1D2BWP16P90LVT U159 ( .A(n70), .B(n59), .CI(n9), .CO(n8), .S(product[8])
         );
  FA1D1BWP16P90LVT U160 ( .A(n82), .B(n71), .CI(n10), .CO(n9), .S(product[7])
         );
  CKND1BWP16P90LVT U161 ( .I(b[1]), .ZN(n261) );
  FA1D1BWP16P90LVT U162 ( .A(n100), .B(n93), .CI(n12), .CO(n11), .S(product[5]) );
  FA1D1BWP16P90LVT U163 ( .A(n19), .B(n22), .CI(n4), .CO(n3), .S(product[13])
         );
  ND2D1BWP16P90 U164 ( .A1(n103), .A2(n105), .ZN(n239) );
  ND2D1BWP16P90 U165 ( .A1(n105), .A2(n108), .ZN(n241) );
  XOR2D1BWP16P90LVT U166 ( .A1(n108), .A2(n105), .Z(n238) );
  XOR2D1BWP16P90LVT U167 ( .A1(n238), .A2(n103), .Z(n101) );
  ND2D1BWP16P90LVT U168 ( .A1(n103), .A2(n108), .ZN(n240) );
  ND3D1BWP16P90LVT U169 ( .A1(n239), .A2(n240), .A3(n241), .ZN(n100) );
  NR2D1BWP16P90LVT U170 ( .A1(n251), .A2(n261), .ZN(n171) );
  FA1D1BWP16P90LVT U171 ( .A(n92), .B(n83), .CI(n11), .CO(n10), .S(product[6])
         );
  FA1D1BWP16P90LVT U172 ( .A(n179), .B(n163), .CI(n171), .CO(n102), .S(n103)
         );
  XOR2D1BWP16P90LVT U173 ( .A1(n102), .A2(n97), .Z(n242) );
  XOR2D1BWP16P90LVT U174 ( .A1(n242), .A2(n95), .Z(n93) );
  ND2D1BWP16P90LVT U175 ( .A1(n95), .A2(n97), .ZN(n243) );
  ND2D1BWP16P90LVT U176 ( .A1(n95), .A2(n102), .ZN(n244) );
  ND2D1BWP16P90LVT U177 ( .A1(n97), .A2(n102), .ZN(n245) );
  ND3D1BWP16P90LVT U178 ( .A1(n243), .A2(n244), .A3(n245), .ZN(n92) );
  HA1D1BWP16P90LVT U179 ( .A(n146), .B(n138), .CO(n98), .S(n99) );
  NR2D1BWP16P90LVT U180 ( .A1(n253), .A2(n258), .ZN(n146) );
  NR2D1BWP16P90LVT U181 ( .A1(n262), .A2(n250), .ZN(n179) );
  INVD1BWP16P90LVT U182 ( .I(a[4]), .ZN(n250) );
  INVD1BWP16P90LVT U183 ( .I(b[4]), .ZN(n258) );
  INVD1BWP16P90LVT U184 ( .I(a[3]), .ZN(n251) );
  NR2D1BWP16P90LVT U185 ( .A1(n253), .A2(n261), .ZN(n173) );
  CKND2BWP16P90LVT U186 ( .I(b[0]), .ZN(n262) );
  CKND2BWP16P90LVT U187 ( .I(a[2]), .ZN(n252) );
  INVD1BWP16P90LVT U188 ( .I(a[1]), .ZN(n253) );
  INVD1BWP16P90LVT U189 ( .I(b[5]), .ZN(n257) );
  HA1D1BWP16P90LVT U190 ( .A(n181), .B(n173), .CO(n110), .S(n111) );
  FA1D1BWP16P90LVT U191 ( .A(n17), .B(n18), .CI(n3), .CO(n2), .S(product[14])
         );
  FA1D1BWP16P90LVT U192 ( .A(n106), .B(n101), .CI(n13), .CO(n12), .S(
        product[4]) );
  FA1D1BWP16P90LVT U193 ( .A(n109), .B(n14), .CI(n107), .CO(n13), .S(
        product[3]) );
  CKND1BWP16P90LVT U194 ( .I(a[6]), .ZN(n248) );
  CKND1BWP16P90LVT U195 ( .I(a[0]), .ZN(n254) );
  CKND1BWP16P90LVT U196 ( .I(a[5]), .ZN(n249) );
  CKND1BWP16P90LVT U197 ( .I(a[7]), .ZN(n247) );
  CKND1BWP16P90LVT U198 ( .I(b[6]), .ZN(n256) );
  CKND1BWP16P90LVT U199 ( .I(b[7]), .ZN(n255) );
  CKND1BWP16P90LVT U200 ( .I(a[8]), .ZN(n246) );
  XOR3D1BWP16P90LVT U201 ( .A1(n2), .A2(n16), .A3(n263), .Z(product[15]) );
  NR2D1BWP16P90 U202 ( .A1(n246), .A2(n255), .ZN(n263) );
  NR2D1BWP16P90 U203 ( .A1(n254), .A2(n262), .ZN(product[0]) );
  NR2D1BWP16P90 U204 ( .A1(n262), .A2(n253), .ZN(n182) );
  NR2D1BWP16P90 U205 ( .A1(n262), .A2(n252), .ZN(n181) );
  NR2D1BWP16P90 U206 ( .A1(n262), .A2(n251), .ZN(n180) );
  NR2D1BWP16P90 U207 ( .A1(n262), .A2(n249), .ZN(n178) );
  NR2D1BWP16P90 U208 ( .A1(n262), .A2(n248), .ZN(n177) );
  NR2D1BWP16P90 U209 ( .A1(n262), .A2(n247), .ZN(n176) );
  NR2D1BWP16P90 U210 ( .A1(n246), .A2(n262), .ZN(n175) );
  NR2D1BWP16P90 U211 ( .A1(n254), .A2(n261), .ZN(n174) );
  NR2D1BWP16P90 U212 ( .A1(n252), .A2(n261), .ZN(n172) );
  NR2D1BWP16P90 U213 ( .A1(n250), .A2(n261), .ZN(n170) );
  NR2D1BWP16P90 U214 ( .A1(n249), .A2(n261), .ZN(n169) );
  NR2D1BWP16P90 U215 ( .A1(n248), .A2(n261), .ZN(n168) );
  NR2D1BWP16P90 U216 ( .A1(n247), .A2(n261), .ZN(n167) );
  NR2D1BWP16P90 U217 ( .A1(n246), .A2(n261), .ZN(n166) );
  NR2D1BWP16P90 U218 ( .A1(n254), .A2(n260), .ZN(n165) );
  NR2D1BWP16P90 U219 ( .A1(n253), .A2(n260), .ZN(n164) );
  NR2D1BWP16P90 U220 ( .A1(n252), .A2(n260), .ZN(n163) );
  NR2D1BWP16P90 U221 ( .A1(n251), .A2(n260), .ZN(n162) );
  NR2D1BWP16P90 U222 ( .A1(n250), .A2(n260), .ZN(n161) );
  NR2D1BWP16P90 U223 ( .A1(n249), .A2(n260), .ZN(n160) );
  NR2D1BWP16P90 U224 ( .A1(n248), .A2(n260), .ZN(n159) );
  NR2D1BWP16P90 U225 ( .A1(n247), .A2(n260), .ZN(n158) );
  NR2D1BWP16P90 U226 ( .A1(n246), .A2(n260), .ZN(n157) );
  NR2D1BWP16P90 U227 ( .A1(n254), .A2(n259), .ZN(n156) );
  NR2D1BWP16P90 U228 ( .A1(n253), .A2(n259), .ZN(n155) );
  NR2D1BWP16P90 U229 ( .A1(n252), .A2(n259), .ZN(n154) );
  NR2D1BWP16P90 U230 ( .A1(n251), .A2(n259), .ZN(n153) );
  NR2D1BWP16P90 U231 ( .A1(n250), .A2(n259), .ZN(n152) );
  NR2D1BWP16P90 U232 ( .A1(n249), .A2(n259), .ZN(n151) );
  NR2D1BWP16P90 U233 ( .A1(n248), .A2(n259), .ZN(n150) );
  NR2D1BWP16P90 U234 ( .A1(n247), .A2(n259), .ZN(n149) );
  NR2D1BWP16P90 U235 ( .A1(n246), .A2(n259), .ZN(n148) );
  NR2D1BWP16P90 U236 ( .A1(n254), .A2(n258), .ZN(n147) );
  NR2D1BWP16P90 U237 ( .A1(n252), .A2(n258), .ZN(n145) );
  NR2D1BWP16P90 U238 ( .A1(n251), .A2(n258), .ZN(n144) );
  NR2D1BWP16P90 U239 ( .A1(n250), .A2(n258), .ZN(n143) );
  NR2D1BWP16P90 U240 ( .A1(n249), .A2(n258), .ZN(n142) );
  NR2D1BWP16P90 U241 ( .A1(n248), .A2(n258), .ZN(n141) );
  NR2D1BWP16P90 U242 ( .A1(n247), .A2(n258), .ZN(n140) );
  NR2D1BWP16P90 U243 ( .A1(n246), .A2(n258), .ZN(n139) );
  NR2D1BWP16P90 U244 ( .A1(n254), .A2(n257), .ZN(n138) );
  NR2D1BWP16P90 U245 ( .A1(n253), .A2(n257), .ZN(n137) );
  NR2D1BWP16P90 U246 ( .A1(n252), .A2(n257), .ZN(n136) );
  NR2D1BWP16P90 U247 ( .A1(n251), .A2(n257), .ZN(n135) );
  NR2D1BWP16P90 U248 ( .A1(n250), .A2(n257), .ZN(n134) );
  NR2D1BWP16P90 U249 ( .A1(n249), .A2(n257), .ZN(n133) );
  NR2D1BWP16P90 U250 ( .A1(n248), .A2(n257), .ZN(n132) );
  NR2D1BWP16P90 U251 ( .A1(n247), .A2(n257), .ZN(n131) );
  NR2D1BWP16P90 U252 ( .A1(n246), .A2(n257), .ZN(n130) );
  NR2D1BWP16P90 U253 ( .A1(n254), .A2(n256), .ZN(n129) );
  NR2D1BWP16P90 U254 ( .A1(n253), .A2(n256), .ZN(n128) );
  NR2D1BWP16P90 U255 ( .A1(n252), .A2(n256), .ZN(n127) );
  NR2D1BWP16P90 U256 ( .A1(n251), .A2(n256), .ZN(n126) );
  NR2D1BWP16P90 U257 ( .A1(n250), .A2(n256), .ZN(n125) );
  NR2D1BWP16P90 U258 ( .A1(n249), .A2(n256), .ZN(n124) );
  NR2D1BWP16P90 U259 ( .A1(n248), .A2(n256), .ZN(n123) );
  NR2D1BWP16P90 U260 ( .A1(n247), .A2(n256), .ZN(n122) );
  NR2D1BWP16P90 U261 ( .A1(n246), .A2(n256), .ZN(n121) );
  NR2D1BWP16P90 U262 ( .A1(n255), .A2(n254), .ZN(n120) );
  NR2D1BWP16P90 U263 ( .A1(n255), .A2(n253), .ZN(n119) );
  NR2D1BWP16P90 U264 ( .A1(n255), .A2(n252), .ZN(n118) );
  NR2D1BWP16P90 U265 ( .A1(n255), .A2(n251), .ZN(n117) );
  NR2D1BWP16P90 U266 ( .A1(n255), .A2(n250), .ZN(n116) );
  NR2D1BWP16P90 U267 ( .A1(n255), .A2(n249), .ZN(n115) );
  NR2D1BWP16P90 U268 ( .A1(n255), .A2(n248), .ZN(n114) );
  NR2D1BWP16P90 U269 ( .A1(n255), .A2(n247), .ZN(n113) );
endmodule


module hw2_pipe_stage2 ( clk, reset, c, sum, result );
  input [7:0] c;
  input [8:0] sum;
  output [15:0] result;
  input clk, reset;
  wire   n1, SYNOPSYS_UNCONNECTED_1;
  wire   [15:0] temp_result;

  DFCNQD2BWP16P90LVT result_reg_15_ ( .D(temp_result[15]), .CP(clk), .CDN(n1), 
        .Q(result[15]) );
  DFCNQD2BWP16P90LVT result_reg_14_ ( .D(temp_result[14]), .CP(clk), .CDN(n1), 
        .Q(result[14]) );
  DFCNQD2BWP16P90LVT result_reg_13_ ( .D(temp_result[13]), .CP(clk), .CDN(n1), 
        .Q(result[13]) );
  DFCNQD2BWP16P90LVT result_reg_12_ ( .D(temp_result[12]), .CP(clk), .CDN(n1), 
        .Q(result[12]) );
  DFCNQD2BWP16P90LVT result_reg_11_ ( .D(temp_result[11]), .CP(clk), .CDN(n1), 
        .Q(result[11]) );
  DFCNQD2BWP16P90LVT result_reg_10_ ( .D(temp_result[10]), .CP(clk), .CDN(n1), 
        .Q(result[10]) );
  DFCNQD2BWP16P90LVT result_reg_9_ ( .D(temp_result[9]), .CP(clk), .CDN(n1), 
        .Q(result[9]) );
  DFCNQD2BWP16P90LVT result_reg_8_ ( .D(temp_result[8]), .CP(clk), .CDN(n1), 
        .Q(result[8]) );
  DFCNQD2BWP16P90LVT result_reg_7_ ( .D(temp_result[7]), .CP(clk), .CDN(n1), 
        .Q(result[7]) );
  DFCNQD2BWP16P90LVT result_reg_6_ ( .D(temp_result[6]), .CP(clk), .CDN(n1), 
        .Q(result[6]) );
  DFCNQD2BWP16P90LVT result_reg_5_ ( .D(temp_result[5]), .CP(clk), .CDN(n1), 
        .Q(result[5]) );
  DFCNQD2BWP16P90LVT result_reg_4_ ( .D(temp_result[4]), .CP(clk), .CDN(n1), 
        .Q(result[4]) );
  DFCNQD2BWP16P90LVT result_reg_3_ ( .D(temp_result[3]), .CP(clk), .CDN(n1), 
        .Q(result[3]) );
  DFCNQD2BWP16P90LVT result_reg_2_ ( .D(temp_result[2]), .CP(clk), .CDN(n1), 
        .Q(result[2]) );
  DFCNQD2BWP16P90LVT result_reg_1_ ( .D(temp_result[1]), .CP(clk), .CDN(n1), 
        .Q(result[1]) );
  DFCNQD2BWP16P90LVT result_reg_0_ ( .D(temp_result[0]), .CP(clk), .CDN(n1), 
        .Q(result[0]) );
  hw2_pipe_stage2_DW_mult_uns_0 mult_11 ( .a(sum), .b(c), .\product[15] (
        temp_result[15]), .\product[14] (temp_result[14]), .\product[13] (
        temp_result[13]), .\product[12] (temp_result[12]), .\product[11] (
        temp_result[11]), .\product[10] (temp_result[10]), .\product[9] (
        temp_result[9]), .\product[8] (temp_result[8]), .\product[7] (
        temp_result[7]), .\product[6] (temp_result[6]), .\product[5] (
        temp_result[5]), .\product[4] (temp_result[4]), .\product[3] (
        temp_result[3]), .\product[2] (temp_result[2]), .\product[1] (
        temp_result[1]), .\product[0] (temp_result[0]) );
  CKND1BWP16P90LVT U3 ( .I(reset), .ZN(n1) );
endmodule


module hw2_pipe ( a, b, c, s, clk, reset, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s, clk, reset;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  wire   [8:0] sum_to_stage2;
  wire   [7:0] c_to_stage2;

  hw2_pipe_stage1 u_stage1 ( .clk(clk), .reset(reset), .a(a), .b(b), .c({n8, 
        n7, n6, n5, n4, n3, n1, n2}), .s(s), .sum_pipe_out(sum_to_stage2), 
        .c_pipe_out(c_to_stage2) );
  hw2_pipe_stage2 u_stage2 ( .clk(clk), .reset(reset), .c(c_to_stage2), .sum(
        sum_to_stage2), .result(d) );
  CKBD1BWP20P90 U1 ( .I(c[1]), .Z(n1) );
  CKBD1BWP20P90 U2 ( .I(c[0]), .Z(n2) );
  CKBD1BWP20P90 U3 ( .I(c[2]), .Z(n3) );
  CKBD1BWP20P90 U4 ( .I(c[3]), .Z(n4) );
  CKBD1BWP20P90 U5 ( .I(c[4]), .Z(n5) );
  CKBD1BWP20P90 U6 ( .I(c[5]), .Z(n6) );
  CKBD1BWP20P90 U7 ( .I(c[6]), .Z(n7) );
  CKBD1BWP20P90 U8 ( .I(c[7]), .Z(n8) );
endmodule

