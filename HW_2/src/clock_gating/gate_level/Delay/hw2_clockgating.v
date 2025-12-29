/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri Oct 24 21:58:32 2025
/////////////////////////////////////////////////////////////


module hw2_clockgating_stage1_DW01_addsub_0 ( ADD_SUB, SUM, \A[7] , \A[6] , 
        \A[5] , \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
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


module hw2_clockgating_stage1 ( clk, reset, a, b, c, s, sum_pipe_out, 
        c_pipe_out );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [8:0] sum_pipe_out;
  output [7:0] c_pipe_out;
  input clk, reset, s;
  wire   n1, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n21,
         n23, n24, n25, n26, n27, n28, n2, n3, n4, n5, n6, n20, n22, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42;
  wire   [8:0] temp_sum;

  DFCNQD2BWP16P90LVT c_pipe_out_reg_7_ ( .D(n21), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[7]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_6_ ( .D(n19), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[6]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_5_ ( .D(n20), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[5]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_4_ ( .D(n6), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[4]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_3_ ( .D(n5), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[3]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_2_ ( .D(n4), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[2]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_1_ ( .D(n3), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[1]) );
  DFCNQD2BWP16P90LVT c_pipe_out_reg_0_ ( .D(n2), .CP(clk), .CDN(n41), .Q(
        c_pipe_out[0]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_8_ ( .D(n18), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[8]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_7_ ( .D(n17), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[7]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_6_ ( .D(n16), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[6]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_5_ ( .D(n15), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[5]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_4_ ( .D(n14), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[4]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_3_ ( .D(n13), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[3]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_2_ ( .D(n12), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[2]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_1_ ( .D(n11), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[1]) );
  DFCNQD2BWP16P90LVT sum_pipe_out_reg_0_ ( .D(n10), .CP(clk), .CDN(n41), .Q(
        sum_pipe_out[0]) );
  AO22D1BWP16P90LVT U8 ( .A1(sum_pipe_out[5]), .A2(n40), .B1(temp_sum[5]), 
        .B2(n7), .Z(n15) );
  AO22D1BWP16P90LVT U9 ( .A1(sum_pipe_out[6]), .A2(n40), .B1(temp_sum[6]), 
        .B2(n7), .Z(n16) );
  AO22D1BWP16P90LVT U10 ( .A1(sum_pipe_out[7]), .A2(n40), .B1(temp_sum[7]), 
        .B2(n7), .Z(n17) );
  AO22D1BWP16P90LVT U11 ( .A1(sum_pipe_out[8]), .A2(n40), .B1(temp_sum[8]), 
        .B2(n7), .Z(n18) );
  AO21D1BWP16P90LVT U12 ( .A1(c_pipe_out[6]), .A2(n40), .B(c[6]), .Z(n19) );
  AO21D1BWP16P90LVT U14 ( .A1(c_pipe_out[7]), .A2(n40), .B(c[7]), .Z(n21) );
  hw2_clockgating_stage1_DW01_addsub_0 r368 ( .ADD_SUB(n42), .SUM(temp_sum), 
        .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (
        a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[7] (b[7]), 
        .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (
        b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
  TIELBWP20P90LVT U2 ( .ZN(n1) );
  CKBD1BWP16P90LVT U3 ( .I(n23), .Z(n2) );
  CKBD1BWP16P90LVT U4 ( .I(n24), .Z(n3) );
  CKBD1BWP16P90LVT U5 ( .I(n25), .Z(n4) );
  CKBD1BWP16P90LVT U6 ( .I(n26), .Z(n5) );
  CKBD1BWP16P90LVT U7 ( .I(n27), .Z(n6) );
  CKBD1BWP16P90LVT U13 ( .I(n28), .Z(n20) );
  CKND1BWP16P90LVT U15 ( .I(n7), .ZN(n40) );
  ND2D1BWP16P90LVT U16 ( .A1(n8), .A2(n9), .ZN(n7) );
  NR4D1BWP16P90LVT U17 ( .A1(c[3]), .A2(c[2]), .A3(c[1]), .A4(c[0]), .ZN(n8)
         );
  NR4D1BWP16P90LVT U18 ( .A1(c[7]), .A2(c[6]), .A3(c[5]), .A4(c[4]), .ZN(n9)
         );
  INVD1BWP16P90LVT U19 ( .I(s), .ZN(n42) );
  INVD1BWP16P90LVT U20 ( .I(reset), .ZN(n41) );
  INVD1BWP16P90LVT U21 ( .I(c_pipe_out[0]), .ZN(n29) );
  INVD1BWP16P90LVT U22 ( .I(c[0]), .ZN(n22) );
  OAI21D1BWP16P90LVT U23 ( .A1(n7), .A2(n29), .B(n22), .ZN(n23) );
  INVD1BWP16P90LVT U24 ( .I(c_pipe_out[1]), .ZN(n31) );
  INVD1BWP16P90LVT U25 ( .I(c[1]), .ZN(n30) );
  OAI21D1BWP16P90LVT U26 ( .A1(n7), .A2(n31), .B(n30), .ZN(n24) );
  INVD1BWP16P90LVT U27 ( .I(c_pipe_out[2]), .ZN(n33) );
  INVD1BWP16P90LVT U28 ( .I(c[2]), .ZN(n32) );
  OAI21D1BWP16P90LVT U29 ( .A1(n7), .A2(n33), .B(n32), .ZN(n25) );
  INVD1BWP16P90LVT U30 ( .I(c_pipe_out[3]), .ZN(n35) );
  INVD1BWP16P90LVT U31 ( .I(c[3]), .ZN(n34) );
  OAI21D1BWP16P90LVT U32 ( .A1(n7), .A2(n35), .B(n34), .ZN(n26) );
  INVD1BWP16P90LVT U33 ( .I(c_pipe_out[4]), .ZN(n37) );
  INVD1BWP16P90LVT U34 ( .I(c[4]), .ZN(n36) );
  OAI21D1BWP16P90LVT U35 ( .A1(n7), .A2(n37), .B(n36), .ZN(n27) );
  INVD1BWP16P90LVT U36 ( .I(c_pipe_out[5]), .ZN(n39) );
  INVD1BWP16P90LVT U37 ( .I(c[5]), .ZN(n38) );
  OAI21D1BWP16P90LVT U38 ( .A1(n7), .A2(n39), .B(n38), .ZN(n28) );
  MUX2D1BWP16P90LVT U39 ( .I0(temp_sum[0]), .I1(sum_pipe_out[0]), .S(n40), .Z(
        n10) );
  MUX2D1BWP16P90LVT U40 ( .I0(temp_sum[1]), .I1(sum_pipe_out[1]), .S(n40), .Z(
        n11) );
  MUX2D1BWP16P90LVT U41 ( .I0(temp_sum[2]), .I1(sum_pipe_out[2]), .S(n40), .Z(
        n12) );
  MUX2D1BWP16P90LVT U42 ( .I0(temp_sum[3]), .I1(sum_pipe_out[3]), .S(n40), .Z(
        n13) );
  MUX2D1BWP16P90LVT U43 ( .I0(temp_sum[4]), .I1(sum_pipe_out[4]), .S(n40), .Z(
        n14) );
endmodule


module hw2_clockgating_stage2_DW_mult_uns_1 ( a, b, \product[15] , 
        \product[14] , \product[13] , \product[12] , \product[11] , 
        \product[10] , \product[9] , \product[8] , \product[7] , \product[6] , 
        \product[5] , \product[4] , \product[3] , \product[2] , \product[1] , 
        \product[0]  );
  input [8:0] a;
  input [7:0] b;
  output \product[15] , \product[14] , \product[13] , \product[12] ,
         \product[11] , \product[10] , \product[9] , \product[8] ,
         \product[7] , \product[6] , \product[5] , \product[4] , \product[3] ,
         \product[2] , \product[1] , \product[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, n13, n14, n15, n20,
         n21, n22, n23, n24, n26, n28, n34, n35, n36, n37, n40, n41, n44, n45,
         n47, n50, n53, n54, n55, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n229, n230, n231, n232, n233, n234, n235, n236, n237,
         n238, n239, n240, n279, n280, n281, n282, n283, n284, n285, n286;
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

  FA1D1BWP16P90LVT U3 ( .A(n58), .B(n59), .CI(n11), .CO(n10), .S(product[14])
         );
  FA1D1BWP16P90LVT U4 ( .A(n60), .B(n63), .CI(n12), .CO(n11), .S(product[13])
         );
  FA1D1BWP16P90LVT U5 ( .A(n69), .B(n64), .CI(n13), .CO(n12), .S(product[12])
         );
  FA1D1BWP16P90LVT U6 ( .A(n77), .B(n70), .CI(n14), .CO(n13), .S(product[11])
         );
  FA1D1BWP16P90LVT U7 ( .A(n87), .B(n78), .CI(n15), .CO(n14), .S(product[10])
         );
  FA1D1BWP16P90LVT U8 ( .A(n99), .B(n88), .CI(n280), .CO(n15), .S(product[9])
         );
  ND2D1BWP16P90LVT U14 ( .A1(n282), .A2(n20), .ZN(n2) );
  ND2D1BWP16P90LVT U17 ( .A1(n100), .A2(n111), .ZN(n20) );
  OAI21D1BWP16P90LVT U19 ( .A1(n24), .A2(n22), .B(n23), .ZN(n21) );
  ND2D1BWP16P90LVT U20 ( .A1(n50), .A2(n23), .ZN(n3) );
  ND2D1BWP16P90LVT U23 ( .A1(n112), .A2(n123), .ZN(n23) );
  ND2D1BWP16P90LVT U28 ( .A1(n284), .A2(n28), .ZN(n4) );
  ND2D1BWP16P90LVT U31 ( .A1(n124), .A2(n133), .ZN(n28) );
  ND2D1BWP16P90LVT U37 ( .A1(n283), .A2(n34), .ZN(n5) );
  ND2D1BWP16P90LVT U40 ( .A1(n134), .A2(n141), .ZN(n34) );
  OAI21D1BWP16P90LVT U42 ( .A1(n36), .A2(n285), .B(n37), .ZN(n35) );
  ND2D1BWP16P90LVT U43 ( .A1(n53), .A2(n37), .ZN(n6) );
  ND2D1BWP16P90LVT U46 ( .A1(n142), .A2(n147), .ZN(n37) );
  ND2D1BWP16P90LVT U50 ( .A1(n54), .A2(n41), .ZN(n7) );
  ND2D1BWP16P90LVT U53 ( .A1(n148), .A2(n150), .ZN(n41) );
  ND2D1BWP16P90LVT U57 ( .A1(n55), .A2(n45), .ZN(n8) );
  ND2D1BWP16P90LVT U60 ( .A1(n152), .A2(n206), .ZN(n45) );
  ND2D1BWP16P90LVT U65 ( .A1(n223), .A2(n215), .ZN(n47) );
  FA1D1BWP16P90LVT U66 ( .A(n162), .B(n154), .CI(n61), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U67 ( .A(n67), .B(n62), .CI(n65), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U68 ( .A(n171), .B(n155), .CI(n163), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U69 ( .A(n73), .B(n66), .CI(n71), .CO(n63), .S(n64) );
  FA1D1BWP16P90LVT U70 ( .A(n172), .B(n75), .CI(n68), .CO(n65), .S(n66) );
  FA1D1BWP16P90LVT U71 ( .A(n180), .B(n156), .CI(n164), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U72 ( .A(n74), .B(n79), .CI(n72), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U73 ( .A(n83), .B(n76), .CI(n81), .CO(n71), .S(n72) );
  FA1D1BWP16P90LVT U74 ( .A(n181), .B(n173), .CI(n85), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U75 ( .A(n189), .B(n157), .CI(n165), .CO(n75), .S(n76) );
  FA1D1BWP16P90LVT U76 ( .A(n82), .B(n89), .CI(n80), .CO(n77), .S(n78) );
  FA1D1BWP16P90LVT U77 ( .A(n86), .B(n93), .CI(n91), .CO(n79), .S(n80) );
  FA1D1BWP16P90LVT U78 ( .A(n97), .B(n95), .CI(n84), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U79 ( .A(n174), .B(n182), .CI(n190), .CO(n83), .S(n84) );
  FA1D1BWP16P90LVT U80 ( .A(n198), .B(n158), .CI(n166), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U81 ( .A(n92), .B(n101), .CI(n90), .CO(n87), .S(n88) );
  FA1D1BWP16P90LVT U82 ( .A(n105), .B(n94), .CI(n103), .CO(n89), .S(n90) );
  FA1D1BWP16P90LVT U83 ( .A(n109), .B(n107), .CI(n96), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U84 ( .A(n183), .B(n175), .CI(n98), .CO(n93), .S(n94) );
  FA1D1BWP16P90LVT U85 ( .A(n191), .B(n207), .CI(n199), .CO(n95), .S(n96) );
  HA1D2BWP16P90LVT U86 ( .A(n167), .B(n159), .CO(n97), .S(n98) );
  FA1D1BWP16P90LVT U87 ( .A(n113), .B(n104), .CI(n102), .CO(n99), .S(n100) );
  FA1D1BWP16P90LVT U88 ( .A(n110), .B(n115), .CI(n106), .CO(n101), .S(n102) );
  FA1D1BWP16P90LVT U89 ( .A(n119), .B(n117), .CI(n108), .CO(n103), .S(n104) );
  FA1D1BWP16P90LVT U90 ( .A(n208), .B(n200), .CI(n121), .CO(n105), .S(n106) );
  FA1D1BWP16P90LVT U91 ( .A(n216), .B(n184), .CI(n192), .CO(n107), .S(n108) );
  FA1D1BWP16P90LVT U92 ( .A(n168), .B(n160), .CI(n176), .CO(n109), .S(n110) );
  FA1D1BWP16P90LVT U93 ( .A(n125), .B(n116), .CI(n114), .CO(n111), .S(n112) );
  FA1D1BWP16P90LVT U94 ( .A(n118), .B(n120), .CI(n127), .CO(n113), .S(n114) );
  FA1D1BWP16P90LVT U95 ( .A(n131), .B(n122), .CI(n129), .CO(n115), .S(n116) );
  FA1D1BWP16P90LVT U96 ( .A(n201), .B(n185), .CI(n193), .CO(n117), .S(n118) );
  FA1D1BWP16P90LVT U97 ( .A(n217), .B(n177), .CI(n209), .CO(n119), .S(n120) );
  HA1D2BWP16P90LVT U98 ( .A(n169), .B(n161), .CO(n121), .S(n122) );
  FA1D1BWP16P90LVT U99 ( .A(n135), .B(n128), .CI(n126), .CO(n123), .S(n124) );
  FA1D1BWP16P90LVT U100 ( .A(n132), .B(n137), .CI(n130), .CO(n125), .S(n126)
         );
  FA1D1BWP16P90LVT U101 ( .A(n202), .B(n194), .CI(n139), .CO(n127), .S(n128)
         );
  FA1D1BWP16P90LVT U102 ( .A(n218), .B(n186), .CI(n210), .CO(n129), .S(n130)
         );
  HA1D2BWP16P90LVT U103 ( .A(n178), .B(n170), .CO(n131), .S(n132) );
  FA1D1BWP16P90LVT U104 ( .A(n143), .B(n138), .CI(n136), .CO(n133), .S(n134)
         );
  FA1D1BWP16P90LVT U105 ( .A(n211), .B(n145), .CI(n140), .CO(n135), .S(n136)
         );
  FA1D1BWP16P90LVT U106 ( .A(n219), .B(n195), .CI(n203), .CO(n137), .S(n138)
         );
  HA1D2BWP16P90LVT U107 ( .A(n187), .B(n179), .CO(n139), .S(n140) );
  FA1D1BWP16P90LVT U108 ( .A(n149), .B(n146), .CI(n144), .CO(n141), .S(n142)
         );
  FA1D1BWP16P90LVT U109 ( .A(n220), .B(n204), .CI(n212), .CO(n143), .S(n144)
         );
  HA1D2BWP16P90LVT U110 ( .A(n196), .B(n188), .CO(n145), .S(n146) );
  FA1D1BWP16P90LVT U111 ( .A(n221), .B(n213), .CI(n151), .CO(n147), .S(n148)
         );
  HA1D2BWP16P90LVT U112 ( .A(n205), .B(n197), .CO(n149), .S(n150) );
  HA1D2BWP16P90LVT U113 ( .A(n222), .B(n214), .CO(n151), .S(n152) );
  OR2D1BWP16P90LVT U205 ( .A1(n223), .A2(n215), .Z(n279) );
  AOI21D1BWP16P90LVT U206 ( .A1(n284), .A2(n281), .B(n26), .ZN(n24) );
  CKND1BWP16P90LVT U207 ( .I(n28), .ZN(n26) );
  IOA21D1BWP16P90LVT U208 ( .A1(n21), .A2(n282), .B(n20), .ZN(n280) );
  IOA21D1BWP16P90LVT U209 ( .A1(n283), .A2(n35), .B(n34), .ZN(n281) );
  OR2D1BWP16P90LVT U210 ( .A1(n100), .A2(n111), .Z(n282) );
  OR2D1BWP16P90LVT U211 ( .A1(n134), .A2(n141), .Z(n283) );
  OR2D1BWP16P90LVT U212 ( .A1(n124), .A2(n133), .Z(n284) );
  OA21D1BWP16P90LVT U213 ( .A1(n40), .A2(n286), .B(n41), .Z(n285) );
  OA21D1BWP16P90LVT U214 ( .A1(n44), .A2(n47), .B(n45), .Z(n286) );
  NR2D1BWP16P90LVT U215 ( .A1(n112), .A2(n123), .ZN(n22) );
  NR2D1BWP16P90LVT U216 ( .A1(n142), .A2(n147), .ZN(n36) );
  NR2D1BWP16P90LVT U217 ( .A1(n148), .A2(n150), .ZN(n40) );
  NR2D1BWP16P90LVT U218 ( .A1(n152), .A2(n206), .ZN(n44) );
  NR2D1BWP16P90LVT U219 ( .A1(n239), .A2(n228), .ZN(n211) );
  NR2D1BWP16P90LVT U220 ( .A1(n235), .A2(n232), .ZN(n179) );
  NR2D1BWP16P90LVT U221 ( .A1(n236), .A2(n231), .ZN(n187) );
  XOR2D1BWP16P90LVT U222 ( .A1(n10), .A2(n1), .Z(product[15]) );
  XOR2D1BWP16P90LVT U223 ( .A1(n57), .A2(n153), .Z(n1) );
  NR2D1BWP16P90LVT U224 ( .A1(n233), .A2(n224), .ZN(n153) );
  NR2D1BWP16P90LVT U225 ( .A1(n239), .A2(n229), .ZN(n212) );
  NR2D1BWP16P90LVT U226 ( .A1(n240), .A2(n228), .ZN(n220) );
  NR2D1BWP16P90LVT U227 ( .A1(n238), .A2(n230), .ZN(n204) );
  NR2D1BWP16P90LVT U228 ( .A1(n239), .A2(n227), .ZN(n210) );
  NR2D1BWP16P90LVT U229 ( .A1(n236), .A2(n230), .ZN(n186) );
  NR2D1BWP16P90LVT U230 ( .A1(n240), .A2(n226), .ZN(n218) );
  NR2D1BWP16P90LVT U231 ( .A1(n239), .A2(n230), .ZN(n213) );
  NR2D1BWP16P90LVT U232 ( .A1(n240), .A2(n229), .ZN(n221) );
  NR2D1BWP16P90LVT U233 ( .A1(n239), .A2(n231), .ZN(n214) );
  NR2D1BWP16P90LVT U234 ( .A1(n240), .A2(n230), .ZN(n222) );
  NR2D1BWP16P90LVT U235 ( .A1(n236), .A2(n232), .ZN(n188) );
  NR2D1BWP16P90LVT U236 ( .A1(n237), .A2(n231), .ZN(n196) );
  NR2D1BWP16P90LVT U237 ( .A1(n238), .A2(n229), .ZN(n203) );
  NR2D1BWP16P90LVT U238 ( .A1(n240), .A2(n227), .ZN(n219) );
  NR2D1BWP16P90LVT U239 ( .A1(n237), .A2(n230), .ZN(n195) );
  NR2D1BWP16P90LVT U240 ( .A1(n238), .A2(n228), .ZN(n202) );
  NR2D1BWP16P90LVT U241 ( .A1(n237), .A2(n229), .ZN(n194) );
  NR2D1BWP16P90LVT U242 ( .A1(n234), .A2(n232), .ZN(n170) );
  NR2D1BWP16P90LVT U243 ( .A1(n235), .A2(n231), .ZN(n178) );
  NR2D1BWP16P90LVT U244 ( .A1(n237), .A2(n228), .ZN(n193) );
  NR2D1BWP16P90LVT U245 ( .A1(n236), .A2(n229), .ZN(n185) );
  NR2D1BWP16P90LVT U246 ( .A1(n238), .A2(n227), .ZN(n201) );
  NR2D1BWP16P90LVT U247 ( .A1(n239), .A2(n226), .ZN(n209) );
  NR2D1BWP16P90LVT U248 ( .A1(n235), .A2(n230), .ZN(n177) );
  NR2D1BWP16P90LVT U249 ( .A1(n240), .A2(n225), .ZN(n217) );
  NR2D1BWP16P90LVT U250 ( .A1(n238), .A2(n226), .ZN(n200) );
  NR2D1BWP16P90LVT U251 ( .A1(n239), .A2(n225), .ZN(n208) );
  NR2D1BWP16P90LVT U252 ( .A1(n233), .A2(n232), .ZN(n161) );
  NR2D1BWP16P90LVT U253 ( .A1(n234), .A2(n231), .ZN(n169) );
  NR2D1BWP16P90LVT U254 ( .A1(n237), .A2(n232), .ZN(n197) );
  NR2D1BWP16P90LVT U255 ( .A1(n238), .A2(n231), .ZN(n205) );
  NR2D1BWP16P90LVT U256 ( .A1(n239), .A2(n232), .ZN(n215) );
  NR2D1BWP16P90LVT U257 ( .A1(n240), .A2(n231), .ZN(n223) );
  NR2D1BWP16P90LVT U258 ( .A1(n238), .A2(n232), .ZN(n206) );
  NR2D1BWP16P90LVT U259 ( .A1(n235), .A2(n228), .ZN(n175) );
  NR2D1BWP16P90LVT U260 ( .A1(n236), .A2(n227), .ZN(n183) );
  NR2D1BWP16P90LVT U261 ( .A1(n233), .A2(n230), .ZN(n159) );
  NR2D1BWP16P90LVT U262 ( .A1(n234), .A2(n229), .ZN(n167) );
  NR2D1BWP16P90LVT U263 ( .A1(n235), .A2(n229), .ZN(n176) );
  NR2D1BWP16P90LVT U264 ( .A1(n233), .A2(n231), .ZN(n160) );
  NR2D1BWP16P90LVT U265 ( .A1(n234), .A2(n230), .ZN(n168) );
  NR2D1BWP16P90LVT U266 ( .A1(n237), .A2(n227), .ZN(n192) );
  NR2D1BWP16P90LVT U267 ( .A1(n236), .A2(n228), .ZN(n184) );
  NR2D1BWP16P90LVT U268 ( .A1(n240), .A2(n224), .ZN(n216) );
  NR2D1BWP16P90LVT U269 ( .A1(n238), .A2(n225), .ZN(n199) );
  NR2D1BWP16P90LVT U270 ( .A1(n239), .A2(n224), .ZN(n207) );
  NR2D1BWP16P90LVT U271 ( .A1(n237), .A2(n226), .ZN(n191) );
  NR2D1BWP16P90LVT U272 ( .A1(n237), .A2(n225), .ZN(n190) );
  NR2D1BWP16P90LVT U273 ( .A1(n236), .A2(n226), .ZN(n182) );
  NR2D1BWP16P90LVT U274 ( .A1(n235), .A2(n227), .ZN(n174) );
  NR2D1BWP16P90LVT U275 ( .A1(n234), .A2(n228), .ZN(n166) );
  NR2D1BWP16P90LVT U276 ( .A1(n233), .A2(n229), .ZN(n158) );
  NR2D1BWP16P90LVT U277 ( .A1(n238), .A2(n224), .ZN(n198) );
  NR2D1BWP16P90LVT U278 ( .A1(n234), .A2(n227), .ZN(n165) );
  NR2D1BWP16P90LVT U279 ( .A1(n233), .A2(n228), .ZN(n157) );
  NR2D1BWP16P90LVT U280 ( .A1(n237), .A2(n224), .ZN(n189) );
  NR2D1BWP16P90LVT U281 ( .A1(n236), .A2(n225), .ZN(n181) );
  NR2D1BWP16P90LVT U282 ( .A1(n235), .A2(n226), .ZN(n173) );
  NR2D1BWP16P90LVT U283 ( .A1(n235), .A2(n225), .ZN(n172) );
  NR2D1BWP16P90LVT U284 ( .A1(n234), .A2(n226), .ZN(n164) );
  NR2D1BWP16P90LVT U285 ( .A1(n233), .A2(n227), .ZN(n156) );
  NR2D1BWP16P90LVT U286 ( .A1(n236), .A2(n224), .ZN(n180) );
  XNR2D1BWP16P90LVT U287 ( .A1(n2), .A2(n21), .ZN(product[8]) );
  XOR2D1BWP16P90LVT U288 ( .A1(n3), .A2(n24), .Z(product[7]) );
  CKND1BWP16P90LVT U289 ( .I(n22), .ZN(n50) );
  XNR2D1BWP16P90LVT U290 ( .A1(n4), .A2(n281), .ZN(product[6]) );
  NR2D1BWP16P90LVT U291 ( .A1(n234), .A2(n225), .ZN(n163) );
  NR2D1BWP16P90LVT U292 ( .A1(n235), .A2(n224), .ZN(n171) );
  NR2D1BWP16P90LVT U293 ( .A1(n233), .A2(n226), .ZN(n155) );
  XNR2D1BWP16P90LVT U294 ( .A1(n5), .A2(n35), .ZN(product[5]) );
  XOR2D1BWP16P90LVT U295 ( .A1(n6), .A2(n285), .Z(product[4]) );
  CKND1BWP16P90LVT U296 ( .I(n36), .ZN(n53) );
  NR2D1BWP16P90LVT U297 ( .A1(n233), .A2(n225), .ZN(n154) );
  NR2D1BWP16P90LVT U298 ( .A1(n234), .A2(n224), .ZN(n162) );
  XOR2D1BWP16P90LVT U299 ( .A1(n7), .A2(n286), .Z(product[3]) );
  CKND1BWP16P90LVT U300 ( .I(n40), .ZN(n54) );
  XOR2D1BWP16P90LVT U301 ( .A1(n8), .A2(n47), .Z(product[2]) );
  CKND1BWP16P90LVT U302 ( .I(n44), .ZN(n55) );
  AN2D1BWP16P90LVT U303 ( .A1(n279), .A2(n47), .Z(product[1]) );
  NR2D1BWP16P90LVT U304 ( .A1(n240), .A2(n232), .ZN(product[0]) );
  CKND1BWP16P90LVT U305 ( .I(a[1]), .ZN(n231) );
  CKND1BWP16P90LVT U306 ( .I(a[2]), .ZN(n230) );
  CKND1BWP16P90LVT U307 ( .I(a[4]), .ZN(n228) );
  CKND1BWP16P90LVT U308 ( .I(a[3]), .ZN(n229) );
  CKND1BWP16P90LVT U309 ( .I(a[6]), .ZN(n226) );
  CKND1BWP16P90LVT U310 ( .I(a[0]), .ZN(n232) );
  CKND1BWP16P90LVT U311 ( .I(b[2]), .ZN(n238) );
  CKND1BWP16P90LVT U312 ( .I(b[0]), .ZN(n240) );
  CKND1BWP16P90LVT U313 ( .I(b[4]), .ZN(n236) );
  CKND1BWP16P90LVT U314 ( .I(b[1]), .ZN(n239) );
  CKND1BWP16P90LVT U315 ( .I(a[5]), .ZN(n227) );
  CKND1BWP16P90LVT U316 ( .I(b[5]), .ZN(n235) );
  CKND1BWP16P90LVT U317 ( .I(b[3]), .ZN(n237) );
  CKND1BWP16P90LVT U318 ( .I(a[7]), .ZN(n225) );
  CKND1BWP16P90LVT U319 ( .I(b[6]), .ZN(n234) );
  CKND1BWP16P90LVT U320 ( .I(b[7]), .ZN(n233) );
  CKND1BWP16P90LVT U321 ( .I(a[8]), .ZN(n224) );
endmodule


module hw2_clockgating_stage2 ( clk, reset, c, sum, result );
  input [7:0] c;
  input [8:0] sum;
  output [15:0] result;
  input clk, reset;
  wire   N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16,
         N17, n1, n20, n30, n40, SYNOPSYS_UNCONNECTED_1;
  wire   [15:0] temp_result;

  DFCNQD2BWP16P90LVT result_reg_15_ ( .D(N17), .CP(clk), .CDN(n40), .Q(
        result[15]) );
  DFCNQD2BWP16P90LVT result_reg_14_ ( .D(N16), .CP(clk), .CDN(n40), .Q(
        result[14]) );
  DFCNQD2BWP16P90LVT result_reg_13_ ( .D(N15), .CP(clk), .CDN(n40), .Q(
        result[13]) );
  DFCNQD2BWP16P90LVT result_reg_12_ ( .D(N14), .CP(clk), .CDN(n40), .Q(
        result[12]) );
  DFCNQD2BWP16P90LVT result_reg_11_ ( .D(N13), .CP(clk), .CDN(n40), .Q(
        result[11]) );
  DFCNQD2BWP16P90LVT result_reg_10_ ( .D(N12), .CP(clk), .CDN(n40), .Q(
        result[10]) );
  DFCNQD2BWP16P90LVT result_reg_9_ ( .D(N11), .CP(clk), .CDN(n40), .Q(
        result[9]) );
  DFCNQD2BWP16P90LVT result_reg_8_ ( .D(N10), .CP(clk), .CDN(n40), .Q(
        result[8]) );
  DFCNQD2BWP16P90LVT result_reg_7_ ( .D(N9), .CP(clk), .CDN(n40), .Q(result[7]) );
  DFCNQD2BWP16P90LVT result_reg_6_ ( .D(N8), .CP(clk), .CDN(n40), .Q(result[6]) );
  DFCNQD2BWP16P90LVT result_reg_5_ ( .D(N7), .CP(clk), .CDN(n40), .Q(result[5]) );
  DFCNQD2BWP16P90LVT result_reg_4_ ( .D(N6), .CP(clk), .CDN(n40), .Q(result[4]) );
  DFCNQD2BWP16P90LVT result_reg_3_ ( .D(N5), .CP(clk), .CDN(n40), .Q(result[3]) );
  DFCNQD2BWP16P90LVT result_reg_2_ ( .D(N4), .CP(clk), .CDN(n40), .Q(result[2]) );
  DFCNQD2BWP16P90LVT result_reg_1_ ( .D(N3), .CP(clk), .CDN(n40), .Q(result[1]) );
  DFCNQD2BWP16P90LVT result_reg_0_ ( .D(N2), .CP(clk), .CDN(n40), .Q(result[0]) );
  hw2_clockgating_stage2_DW_mult_uns_1 mult_11 ( .a(sum), .b(c), 
        .\product[15] (temp_result[15]), .\product[14] (temp_result[14]), 
        .\product[13] (temp_result[13]), .\product[12] (temp_result[12]), 
        .\product[11] (temp_result[11]), .\product[10] (temp_result[10]), 
        .\product[9] (temp_result[9]), .\product[8] (temp_result[8]), 
        .\product[7] (temp_result[7]), .\product[6] (temp_result[6]), 
        .\product[5] (temp_result[5]), .\product[4] (temp_result[4]), 
        .\product[3] (temp_result[3]), .\product[2] (temp_result[2]), 
        .\product[1] (temp_result[1]), .\product[0] (temp_result[0]) );
  ND2D1BWP16P90LVT U3 ( .A1(n20), .A2(n1), .ZN(n30) );
  CKND1BWP16P90LVT U4 ( .I(reset), .ZN(n40) );
  NR4D1BWP16P90LVT U5 ( .A1(c[3]), .A2(c[2]), .A3(c[1]), .A4(c[0]), .ZN(n20)
         );
  NR4D1BWP16P90LVT U6 ( .A1(c[7]), .A2(c[6]), .A3(c[5]), .A4(c[4]), .ZN(n1) );
  AN2D1BWP16P90LVT U7 ( .A1(temp_result[0]), .A2(n30), .Z(N2) );
  AN2D1BWP16P90LVT U8 ( .A1(temp_result[1]), .A2(n30), .Z(N3) );
  AN2D1BWP16P90LVT U9 ( .A1(temp_result[2]), .A2(n30), .Z(N4) );
  AN2D1BWP16P90LVT U10 ( .A1(temp_result[3]), .A2(n30), .Z(N5) );
  AN2D1BWP16P90LVT U11 ( .A1(temp_result[4]), .A2(n30), .Z(N6) );
  AN2D1BWP16P90LVT U12 ( .A1(temp_result[5]), .A2(n30), .Z(N7) );
  AN2D1BWP16P90LVT U13 ( .A1(temp_result[6]), .A2(n30), .Z(N8) );
  AN2D1BWP16P90LVT U14 ( .A1(temp_result[7]), .A2(n30), .Z(N9) );
  AN2D1BWP16P90LVT U15 ( .A1(temp_result[8]), .A2(n30), .Z(N10) );
  AN2D1BWP16P90LVT U16 ( .A1(temp_result[9]), .A2(n30), .Z(N11) );
  AN2D1BWP16P90LVT U17 ( .A1(temp_result[10]), .A2(n30), .Z(N12) );
  AN2D1BWP16P90LVT U18 ( .A1(temp_result[11]), .A2(n30), .Z(N13) );
  AN2D1BWP16P90LVT U19 ( .A1(temp_result[12]), .A2(n30), .Z(N14) );
  AN2D1BWP16P90LVT U20 ( .A1(temp_result[13]), .A2(n30), .Z(N15) );
  AN2D1BWP16P90LVT U21 ( .A1(temp_result[14]), .A2(n30), .Z(N16) );
  AN2D1BWP16P90LVT U22 ( .A1(temp_result[15]), .A2(n30), .Z(N17) );
endmodule


module hw2_clockgating ( a, b, c, s, clk, reset, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s, clk, reset;

  wire   [8:0] sum_to_stage2;
  wire   [7:0] c_to_stage2;

  hw2_clockgating_stage1 u_stage1 ( .clk(clk), .reset(reset), .a(a), .b(b), 
        .c(c), .s(s), .sum_pipe_out(sum_to_stage2), .c_pipe_out(c_to_stage2)
         );
  hw2_clockgating_stage2 u_stage2 ( .clk(clk), .reset(reset), .c(c_to_stage2), 
        .sum(sum_to_stage2), .result(d) );
endmodule

