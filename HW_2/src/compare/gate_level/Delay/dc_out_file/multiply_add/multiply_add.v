/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sat Oct 18 17:53:56 2025
/////////////////////////////////////////////////////////////


module multiply_add_DW01_add_0 ( A, B, SUM );
  input [15:0] A;
  input [15:0] B;
  output [15:0] SUM;
  wire   n1;
  wire   [15:2] carry;

  FA1D1BWP16P90LVT U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(SUM[14]) );
  FA1D1BWP16P90LVT U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(SUM[13]) );
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
  FA1D1BWP16P90LVT U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), 
        .S(SUM[3]) );
  FA1D1BWP16P90LVT U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), 
        .S(SUM[2]) );
  FA1D1BWP16P90LVT U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(
        SUM[1]) );
  XOR3D2BWP16P90LVT U1_15 ( .A1(A[15]), .A2(B[15]), .A3(carry[15]), .Z(SUM[15]) );
  AN2D1BWP16P90LVT U1 ( .A1(B[0]), .A2(A[0]), .Z(n1) );
  XOR2D1BWP16P90LVT U2 ( .A1(B[0]), .A2(A[0]), .Z(SUM[0]) );
endmodule


module multiply_add_DW_mult_uns_2 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177;

  FA1D1BWP16P90LVT U2 ( .A(n99), .B(n15), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  FA1D1BWP16P90LVT U3 ( .A(n16), .B(n17), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D1BWP16P90LVT U4 ( .A(n18), .B(n21), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D1BWP16P90LVT U5 ( .A(n27), .B(n22), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D1BWP16P90LVT U6 ( .A(n35), .B(n28), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D1BWP16P90LVT U7 ( .A(n45), .B(n36), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D1BWP16P90LVT U8 ( .A(n57), .B(n46), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D1BWP16P90LVT U9 ( .A(n69), .B(n58), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D1BWP16P90LVT U10 ( .A(n79), .B(n70), .CI(n10), .CO(n9), .S(product[6])
         );
  FA1D1BWP16P90LVT U11 ( .A(n87), .B(n80), .CI(n11), .CO(n10), .S(product[5])
         );
  FA1D1BWP16P90LVT U12 ( .A(n93), .B(n88), .CI(n12), .CO(n11), .S(product[4])
         );
  FA1D1BWP16P90LVT U13 ( .A(n96), .B(n13), .CI(n94), .CO(n12), .S(product[3])
         );
  FA1D1BWP16P90LVT U14 ( .A(n146), .B(n14), .CI(n98), .CO(n13), .S(product[2])
         );
  HA1D2BWP16P90LVT U15 ( .A(n154), .B(n161), .CO(n14), .S(product[1]) );
  FA1D1BWP16P90LVT U16 ( .A(n107), .B(n100), .CI(n19), .CO(n15), .S(n16) );
  FA1D1BWP16P90LVT U17 ( .A(n25), .B(n20), .CI(n23), .CO(n17), .S(n18) );
  FA1D1BWP16P90LVT U18 ( .A(n115), .B(n101), .CI(n108), .CO(n19), .S(n20) );
  FA1D1BWP16P90LVT U19 ( .A(n31), .B(n24), .CI(n29), .CO(n21), .S(n22) );
  FA1D1BWP16P90LVT U20 ( .A(n116), .B(n33), .CI(n26), .CO(n23), .S(n24) );
  FA1D1BWP16P90LVT U21 ( .A(n123), .B(n102), .CI(n109), .CO(n25), .S(n26) );
  FA1D1BWP16P90LVT U22 ( .A(n32), .B(n37), .CI(n30), .CO(n27), .S(n28) );
  FA1D1BWP16P90LVT U23 ( .A(n41), .B(n34), .CI(n39), .CO(n29), .S(n30) );
  FA1D1BWP16P90LVT U24 ( .A(n124), .B(n117), .CI(n43), .CO(n31), .S(n32) );
  FA1D1BWP16P90LVT U25 ( .A(n131), .B(n103), .CI(n110), .CO(n33), .S(n34) );
  FA1D1BWP16P90LVT U26 ( .A(n40), .B(n47), .CI(n38), .CO(n35), .S(n36) );
  FA1D1BWP16P90LVT U27 ( .A(n44), .B(n51), .CI(n49), .CO(n37), .S(n38) );
  FA1D1BWP16P90LVT U28 ( .A(n55), .B(n53), .CI(n42), .CO(n39), .S(n40) );
  FA1D1BWP16P90LVT U29 ( .A(n118), .B(n125), .CI(n132), .CO(n41), .S(n42) );
  FA1D1BWP16P90LVT U30 ( .A(n139), .B(n104), .CI(n111), .CO(n43), .S(n44) );
  FA1D1BWP16P90LVT U31 ( .A(n50), .B(n59), .CI(n48), .CO(n45), .S(n46) );
  FA1D1BWP16P90LVT U32 ( .A(n54), .B(n61), .CI(n52), .CO(n47), .S(n48) );
  FA1D1BWP16P90LVT U33 ( .A(n56), .B(n65), .CI(n63), .CO(n49), .S(n50) );
  FA1D1BWP16P90LVT U34 ( .A(n140), .B(n133), .CI(n67), .CO(n51), .S(n52) );
  FA1D1BWP16P90LVT U35 ( .A(n126), .B(n119), .CI(n147), .CO(n53), .S(n54) );
  HA1D2BWP16P90LVT U36 ( .A(n112), .B(n105), .CO(n55), .S(n56) );
  FA1D1BWP16P90LVT U37 ( .A(n71), .B(n62), .CI(n60), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U38 ( .A(n64), .B(n66), .CI(n73), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U39 ( .A(n77), .B(n68), .CI(n75), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U40 ( .A(n141), .B(n127), .CI(n134), .CO(n63), .S(n64) );
  FA1D1BWP16P90LVT U41 ( .A(n155), .B(n120), .CI(n148), .CO(n65), .S(n66) );
  HA1D2BWP16P90LVT U42 ( .A(n113), .B(n106), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U43 ( .A(n81), .B(n74), .CI(n72), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U44 ( .A(n78), .B(n83), .CI(n76), .CO(n71), .S(n72) );
  FA1D1BWP16P90LVT U45 ( .A(n142), .B(n135), .CI(n85), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U46 ( .A(n156), .B(n128), .CI(n149), .CO(n75), .S(n76) );
  HA1D2BWP16P90LVT U47 ( .A(n121), .B(n114), .CO(n77), .S(n78) );
  FA1D1BWP16P90LVT U48 ( .A(n89), .B(n84), .CI(n82), .CO(n79), .S(n80) );
  FA1D1BWP16P90LVT U49 ( .A(n150), .B(n91), .CI(n86), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U50 ( .A(n157), .B(n136), .CI(n143), .CO(n83), .S(n84) );
  HA1D2BWP16P90LVT U51 ( .A(n129), .B(n122), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U52 ( .A(n95), .B(n92), .CI(n90), .CO(n87), .S(n88) );
  FA1D1BWP16P90LVT U53 ( .A(n158), .B(n144), .CI(n151), .CO(n89), .S(n90) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n130), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U55 ( .A(n159), .B(n152), .CI(n97), .CO(n93), .S(n94) );
  HA1D2BWP16P90LVT U56 ( .A(n145), .B(n138), .CO(n95), .S(n96) );
  HA1D2BWP16P90LVT U57 ( .A(n160), .B(n153), .CO(n97), .S(n98) );
  NR2D1BWP16P90LVT U58 ( .A1(n162), .A2(n170), .ZN(n99) );
  NR2D1BWP16P90LVT U59 ( .A1(n163), .A2(n170), .ZN(n100) );
  NR2D1BWP16P90LVT U60 ( .A1(n164), .A2(n170), .ZN(n101) );
  NR2D1BWP16P90LVT U61 ( .A1(n165), .A2(n170), .ZN(n102) );
  NR2D1BWP16P90LVT U62 ( .A1(n166), .A2(n170), .ZN(n103) );
  NR2D1BWP16P90LVT U63 ( .A1(n167), .A2(n170), .ZN(n104) );
  NR2D1BWP16P90LVT U64 ( .A1(n168), .A2(n170), .ZN(n105) );
  NR2D1BWP16P90LVT U65 ( .A1(n169), .A2(n170), .ZN(n106) );
  NR2D1BWP16P90LVT U66 ( .A1(n162), .A2(n171), .ZN(n107) );
  NR2D1BWP16P90LVT U67 ( .A1(n163), .A2(n171), .ZN(n108) );
  NR2D1BWP16P90LVT U68 ( .A1(n164), .A2(n171), .ZN(n109) );
  NR2D1BWP16P90LVT U69 ( .A1(n165), .A2(n171), .ZN(n110) );
  NR2D1BWP16P90LVT U70 ( .A1(n166), .A2(n171), .ZN(n111) );
  NR2D1BWP16P90LVT U71 ( .A1(n167), .A2(n171), .ZN(n112) );
  NR2D1BWP16P90LVT U72 ( .A1(n168), .A2(n171), .ZN(n113) );
  NR2D1BWP16P90LVT U73 ( .A1(n169), .A2(n171), .ZN(n114) );
  NR2D1BWP16P90LVT U74 ( .A1(n162), .A2(n172), .ZN(n115) );
  NR2D1BWP16P90LVT U75 ( .A1(n163), .A2(n172), .ZN(n116) );
  NR2D1BWP16P90LVT U76 ( .A1(n164), .A2(n172), .ZN(n117) );
  NR2D1BWP16P90LVT U77 ( .A1(n165), .A2(n172), .ZN(n118) );
  NR2D1BWP16P90LVT U78 ( .A1(n166), .A2(n172), .ZN(n119) );
  NR2D1BWP16P90LVT U79 ( .A1(n167), .A2(n172), .ZN(n120) );
  NR2D1BWP16P90LVT U80 ( .A1(n168), .A2(n172), .ZN(n121) );
  NR2D1BWP16P90LVT U81 ( .A1(n169), .A2(n172), .ZN(n122) );
  NR2D1BWP16P90LVT U82 ( .A1(n162), .A2(n173), .ZN(n123) );
  NR2D1BWP16P90LVT U83 ( .A1(n163), .A2(n173), .ZN(n124) );
  NR2D1BWP16P90LVT U84 ( .A1(n164), .A2(n173), .ZN(n125) );
  NR2D1BWP16P90LVT U85 ( .A1(n165), .A2(n173), .ZN(n126) );
  NR2D1BWP16P90LVT U86 ( .A1(n166), .A2(n173), .ZN(n127) );
  NR2D1BWP16P90LVT U87 ( .A1(n167), .A2(n173), .ZN(n128) );
  NR2D1BWP16P90LVT U88 ( .A1(n168), .A2(n173), .ZN(n129) );
  NR2D1BWP16P90LVT U89 ( .A1(n169), .A2(n173), .ZN(n130) );
  NR2D1BWP16P90LVT U90 ( .A1(n162), .A2(n174), .ZN(n131) );
  NR2D1BWP16P90LVT U91 ( .A1(n163), .A2(n174), .ZN(n132) );
  NR2D1BWP16P90LVT U92 ( .A1(n164), .A2(n174), .ZN(n133) );
  NR2D1BWP16P90LVT U93 ( .A1(n165), .A2(n174), .ZN(n134) );
  NR2D1BWP16P90LVT U94 ( .A1(n166), .A2(n174), .ZN(n135) );
  NR2D1BWP16P90LVT U95 ( .A1(n167), .A2(n174), .ZN(n136) );
  NR2D1BWP16P90LVT U96 ( .A1(n168), .A2(n174), .ZN(n137) );
  NR2D1BWP16P90LVT U97 ( .A1(n169), .A2(n174), .ZN(n138) );
  NR2D1BWP16P90LVT U98 ( .A1(n162), .A2(n175), .ZN(n139) );
  NR2D1BWP16P90LVT U99 ( .A1(n163), .A2(n175), .ZN(n140) );
  NR2D1BWP16P90LVT U100 ( .A1(n164), .A2(n175), .ZN(n141) );
  NR2D1BWP16P90LVT U101 ( .A1(n165), .A2(n175), .ZN(n142) );
  NR2D1BWP16P90LVT U102 ( .A1(n166), .A2(n175), .ZN(n143) );
  NR2D1BWP16P90LVT U103 ( .A1(n167), .A2(n175), .ZN(n144) );
  NR2D1BWP16P90LVT U104 ( .A1(n168), .A2(n175), .ZN(n145) );
  NR2D1BWP16P90LVT U105 ( .A1(n169), .A2(n175), .ZN(n146) );
  NR2D1BWP16P90LVT U106 ( .A1(n162), .A2(n176), .ZN(n147) );
  NR2D1BWP16P90LVT U107 ( .A1(n163), .A2(n176), .ZN(n148) );
  NR2D1BWP16P90LVT U108 ( .A1(n164), .A2(n176), .ZN(n149) );
  NR2D1BWP16P90LVT U109 ( .A1(n165), .A2(n176), .ZN(n150) );
  NR2D1BWP16P90LVT U110 ( .A1(n166), .A2(n176), .ZN(n151) );
  NR2D1BWP16P90LVT U111 ( .A1(n167), .A2(n176), .ZN(n152) );
  NR2D1BWP16P90LVT U112 ( .A1(n168), .A2(n176), .ZN(n153) );
  NR2D1BWP16P90LVT U113 ( .A1(n169), .A2(n176), .ZN(n154) );
  NR2D1BWP16P90LVT U114 ( .A1(n162), .A2(n177), .ZN(n155) );
  NR2D1BWP16P90LVT U115 ( .A1(n163), .A2(n177), .ZN(n156) );
  NR2D1BWP16P90LVT U116 ( .A1(n164), .A2(n177), .ZN(n157) );
  NR2D1BWP16P90LVT U117 ( .A1(n165), .A2(n177), .ZN(n158) );
  NR2D1BWP16P90LVT U118 ( .A1(n166), .A2(n177), .ZN(n159) );
  NR2D1BWP16P90LVT U119 ( .A1(n167), .A2(n177), .ZN(n160) );
  NR2D1BWP16P90LVT U120 ( .A1(n168), .A2(n177), .ZN(n161) );
  NR2D1BWP16P90LVT U121 ( .A1(n169), .A2(n177), .ZN(product[0]) );
  CKND1BWP16P90LVT U140 ( .I(b[0]), .ZN(n169) );
  CKND1BWP16P90LVT U141 ( .I(b[1]), .ZN(n168) );
  CKND1BWP16P90LVT U142 ( .I(b[2]), .ZN(n167) );
  CKND1BWP16P90LVT U143 ( .I(b[3]), .ZN(n166) );
  CKND1BWP16P90LVT U144 ( .I(b[4]), .ZN(n165) );
  CKND1BWP16P90LVT U145 ( .I(b[5]), .ZN(n164) );
  CKND1BWP16P90LVT U146 ( .I(b[6]), .ZN(n163) );
  CKND1BWP16P90LVT U147 ( .I(b[7]), .ZN(n162) );
  CKND1BWP16P90LVT U148 ( .I(a[0]), .ZN(n177) );
  CKND1BWP16P90LVT U149 ( .I(a[1]), .ZN(n176) );
  CKND1BWP16P90LVT U150 ( .I(a[2]), .ZN(n175) );
  CKND1BWP16P90LVT U151 ( .I(a[3]), .ZN(n174) );
  CKND1BWP16P90LVT U152 ( .I(a[4]), .ZN(n173) );
  CKND1BWP16P90LVT U153 ( .I(a[5]), .ZN(n172) );
  CKND1BWP16P90LVT U154 ( .I(a[6]), .ZN(n171) );
  CKND1BWP16P90LVT U155 ( .I(a[7]), .ZN(n170) );
endmodule


module multiply_add_DW_mult_uns_3 ( a, b, product );
  input [7:0] a;
  input [7:0] b;
  output [15:0] product;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177;

  FA1D1BWP16P90LVT U2 ( .A(n99), .B(n15), .CI(n2), .CO(product[15]), .S(
        product[14]) );
  FA1D1BWP16P90LVT U3 ( .A(n16), .B(n17), .CI(n3), .CO(n2), .S(product[13]) );
  FA1D1BWP16P90LVT U4 ( .A(n18), .B(n21), .CI(n4), .CO(n3), .S(product[12]) );
  FA1D1BWP16P90LVT U5 ( .A(n27), .B(n22), .CI(n5), .CO(n4), .S(product[11]) );
  FA1D1BWP16P90LVT U6 ( .A(n35), .B(n28), .CI(n6), .CO(n5), .S(product[10]) );
  FA1D1BWP16P90LVT U7 ( .A(n45), .B(n36), .CI(n7), .CO(n6), .S(product[9]) );
  FA1D1BWP16P90LVT U8 ( .A(n57), .B(n46), .CI(n8), .CO(n7), .S(product[8]) );
  FA1D1BWP16P90LVT U9 ( .A(n69), .B(n58), .CI(n9), .CO(n8), .S(product[7]) );
  FA1D1BWP16P90LVT U10 ( .A(n79), .B(n70), .CI(n10), .CO(n9), .S(product[6])
         );
  FA1D1BWP16P90LVT U11 ( .A(n87), .B(n80), .CI(n11), .CO(n10), .S(product[5])
         );
  FA1D1BWP16P90LVT U12 ( .A(n93), .B(n88), .CI(n12), .CO(n11), .S(product[4])
         );
  FA1D1BWP16P90LVT U13 ( .A(n96), .B(n13), .CI(n94), .CO(n12), .S(product[3])
         );
  FA1D1BWP16P90LVT U14 ( .A(n146), .B(n14), .CI(n98), .CO(n13), .S(product[2])
         );
  HA1D2BWP16P90LVT U15 ( .A(n154), .B(n161), .CO(n14), .S(product[1]) );
  FA1D1BWP16P90LVT U16 ( .A(n107), .B(n100), .CI(n19), .CO(n15), .S(n16) );
  FA1D1BWP16P90LVT U17 ( .A(n25), .B(n20), .CI(n23), .CO(n17), .S(n18) );
  FA1D1BWP16P90LVT U18 ( .A(n115), .B(n101), .CI(n108), .CO(n19), .S(n20) );
  FA1D1BWP16P90LVT U19 ( .A(n31), .B(n24), .CI(n29), .CO(n21), .S(n22) );
  FA1D1BWP16P90LVT U20 ( .A(n116), .B(n33), .CI(n26), .CO(n23), .S(n24) );
  FA1D1BWP16P90LVT U21 ( .A(n123), .B(n102), .CI(n109), .CO(n25), .S(n26) );
  FA1D1BWP16P90LVT U22 ( .A(n32), .B(n37), .CI(n30), .CO(n27), .S(n28) );
  FA1D1BWP16P90LVT U23 ( .A(n41), .B(n34), .CI(n39), .CO(n29), .S(n30) );
  FA1D1BWP16P90LVT U24 ( .A(n124), .B(n117), .CI(n43), .CO(n31), .S(n32) );
  FA1D1BWP16P90LVT U25 ( .A(n131), .B(n103), .CI(n110), .CO(n33), .S(n34) );
  FA1D1BWP16P90LVT U26 ( .A(n40), .B(n47), .CI(n38), .CO(n35), .S(n36) );
  FA1D1BWP16P90LVT U27 ( .A(n44), .B(n51), .CI(n49), .CO(n37), .S(n38) );
  FA1D1BWP16P90LVT U28 ( .A(n55), .B(n53), .CI(n42), .CO(n39), .S(n40) );
  FA1D1BWP16P90LVT U29 ( .A(n118), .B(n125), .CI(n132), .CO(n41), .S(n42) );
  FA1D1BWP16P90LVT U30 ( .A(n139), .B(n104), .CI(n111), .CO(n43), .S(n44) );
  FA1D1BWP16P90LVT U31 ( .A(n50), .B(n59), .CI(n48), .CO(n45), .S(n46) );
  FA1D1BWP16P90LVT U32 ( .A(n54), .B(n61), .CI(n52), .CO(n47), .S(n48) );
  FA1D1BWP16P90LVT U33 ( .A(n56), .B(n65), .CI(n63), .CO(n49), .S(n50) );
  FA1D1BWP16P90LVT U34 ( .A(n140), .B(n133), .CI(n67), .CO(n51), .S(n52) );
  FA1D1BWP16P90LVT U35 ( .A(n126), .B(n119), .CI(n147), .CO(n53), .S(n54) );
  HA1D2BWP16P90LVT U36 ( .A(n112), .B(n105), .CO(n55), .S(n56) );
  FA1D1BWP16P90LVT U37 ( .A(n71), .B(n62), .CI(n60), .CO(n57), .S(n58) );
  FA1D1BWP16P90LVT U38 ( .A(n64), .B(n66), .CI(n73), .CO(n59), .S(n60) );
  FA1D1BWP16P90LVT U39 ( .A(n77), .B(n68), .CI(n75), .CO(n61), .S(n62) );
  FA1D1BWP16P90LVT U40 ( .A(n141), .B(n127), .CI(n134), .CO(n63), .S(n64) );
  FA1D1BWP16P90LVT U41 ( .A(n155), .B(n120), .CI(n148), .CO(n65), .S(n66) );
  HA1D2BWP16P90LVT U42 ( .A(n113), .B(n106), .CO(n67), .S(n68) );
  FA1D1BWP16P90LVT U43 ( .A(n81), .B(n74), .CI(n72), .CO(n69), .S(n70) );
  FA1D1BWP16P90LVT U44 ( .A(n78), .B(n83), .CI(n76), .CO(n71), .S(n72) );
  FA1D1BWP16P90LVT U45 ( .A(n142), .B(n135), .CI(n85), .CO(n73), .S(n74) );
  FA1D1BWP16P90LVT U46 ( .A(n156), .B(n128), .CI(n149), .CO(n75), .S(n76) );
  HA1D2BWP16P90LVT U47 ( .A(n121), .B(n114), .CO(n77), .S(n78) );
  FA1D1BWP16P90LVT U48 ( .A(n89), .B(n84), .CI(n82), .CO(n79), .S(n80) );
  FA1D1BWP16P90LVT U49 ( .A(n150), .B(n91), .CI(n86), .CO(n81), .S(n82) );
  FA1D1BWP16P90LVT U50 ( .A(n157), .B(n136), .CI(n143), .CO(n83), .S(n84) );
  HA1D2BWP16P90LVT U51 ( .A(n129), .B(n122), .CO(n85), .S(n86) );
  FA1D1BWP16P90LVT U52 ( .A(n95), .B(n92), .CI(n90), .CO(n87), .S(n88) );
  FA1D1BWP16P90LVT U53 ( .A(n158), .B(n144), .CI(n151), .CO(n89), .S(n90) );
  HA1D2BWP16P90LVT U54 ( .A(n137), .B(n130), .CO(n91), .S(n92) );
  FA1D1BWP16P90LVT U55 ( .A(n159), .B(n152), .CI(n97), .CO(n93), .S(n94) );
  HA1D2BWP16P90LVT U56 ( .A(n145), .B(n138), .CO(n95), .S(n96) );
  HA1D2BWP16P90LVT U57 ( .A(n160), .B(n153), .CO(n97), .S(n98) );
  NR2D1BWP16P90LVT U58 ( .A1(n162), .A2(n170), .ZN(n99) );
  NR2D1BWP16P90LVT U59 ( .A1(n163), .A2(n170), .ZN(n100) );
  NR2D1BWP16P90LVT U60 ( .A1(n164), .A2(n170), .ZN(n101) );
  NR2D1BWP16P90LVT U61 ( .A1(n165), .A2(n170), .ZN(n102) );
  NR2D1BWP16P90LVT U62 ( .A1(n166), .A2(n170), .ZN(n103) );
  NR2D1BWP16P90LVT U63 ( .A1(n167), .A2(n170), .ZN(n104) );
  NR2D1BWP16P90LVT U64 ( .A1(n168), .A2(n170), .ZN(n105) );
  NR2D1BWP16P90LVT U65 ( .A1(n169), .A2(n170), .ZN(n106) );
  NR2D1BWP16P90LVT U66 ( .A1(n162), .A2(n171), .ZN(n107) );
  NR2D1BWP16P90LVT U67 ( .A1(n163), .A2(n171), .ZN(n108) );
  NR2D1BWP16P90LVT U68 ( .A1(n164), .A2(n171), .ZN(n109) );
  NR2D1BWP16P90LVT U69 ( .A1(n165), .A2(n171), .ZN(n110) );
  NR2D1BWP16P90LVT U70 ( .A1(n166), .A2(n171), .ZN(n111) );
  NR2D1BWP16P90LVT U71 ( .A1(n167), .A2(n171), .ZN(n112) );
  NR2D1BWP16P90LVT U72 ( .A1(n168), .A2(n171), .ZN(n113) );
  NR2D1BWP16P90LVT U73 ( .A1(n169), .A2(n171), .ZN(n114) );
  NR2D1BWP16P90LVT U74 ( .A1(n162), .A2(n172), .ZN(n115) );
  NR2D1BWP16P90LVT U75 ( .A1(n163), .A2(n172), .ZN(n116) );
  NR2D1BWP16P90LVT U76 ( .A1(n164), .A2(n172), .ZN(n117) );
  NR2D1BWP16P90LVT U77 ( .A1(n165), .A2(n172), .ZN(n118) );
  NR2D1BWP16P90LVT U78 ( .A1(n166), .A2(n172), .ZN(n119) );
  NR2D1BWP16P90LVT U79 ( .A1(n167), .A2(n172), .ZN(n120) );
  NR2D1BWP16P90LVT U80 ( .A1(n168), .A2(n172), .ZN(n121) );
  NR2D1BWP16P90LVT U81 ( .A1(n169), .A2(n172), .ZN(n122) );
  NR2D1BWP16P90LVT U82 ( .A1(n162), .A2(n173), .ZN(n123) );
  NR2D1BWP16P90LVT U83 ( .A1(n163), .A2(n173), .ZN(n124) );
  NR2D1BWP16P90LVT U84 ( .A1(n164), .A2(n173), .ZN(n125) );
  NR2D1BWP16P90LVT U85 ( .A1(n165), .A2(n173), .ZN(n126) );
  NR2D1BWP16P90LVT U86 ( .A1(n166), .A2(n173), .ZN(n127) );
  NR2D1BWP16P90LVT U87 ( .A1(n167), .A2(n173), .ZN(n128) );
  NR2D1BWP16P90LVT U88 ( .A1(n168), .A2(n173), .ZN(n129) );
  NR2D1BWP16P90LVT U89 ( .A1(n169), .A2(n173), .ZN(n130) );
  NR2D1BWP16P90LVT U90 ( .A1(n162), .A2(n174), .ZN(n131) );
  NR2D1BWP16P90LVT U91 ( .A1(n163), .A2(n174), .ZN(n132) );
  NR2D1BWP16P90LVT U92 ( .A1(n164), .A2(n174), .ZN(n133) );
  NR2D1BWP16P90LVT U93 ( .A1(n165), .A2(n174), .ZN(n134) );
  NR2D1BWP16P90LVT U94 ( .A1(n166), .A2(n174), .ZN(n135) );
  NR2D1BWP16P90LVT U95 ( .A1(n167), .A2(n174), .ZN(n136) );
  NR2D1BWP16P90LVT U96 ( .A1(n168), .A2(n174), .ZN(n137) );
  NR2D1BWP16P90LVT U97 ( .A1(n169), .A2(n174), .ZN(n138) );
  NR2D1BWP16P90LVT U98 ( .A1(n162), .A2(n175), .ZN(n139) );
  NR2D1BWP16P90LVT U99 ( .A1(n163), .A2(n175), .ZN(n140) );
  NR2D1BWP16P90LVT U100 ( .A1(n164), .A2(n175), .ZN(n141) );
  NR2D1BWP16P90LVT U101 ( .A1(n165), .A2(n175), .ZN(n142) );
  NR2D1BWP16P90LVT U102 ( .A1(n166), .A2(n175), .ZN(n143) );
  NR2D1BWP16P90LVT U103 ( .A1(n167), .A2(n175), .ZN(n144) );
  NR2D1BWP16P90LVT U104 ( .A1(n168), .A2(n175), .ZN(n145) );
  NR2D1BWP16P90LVT U105 ( .A1(n169), .A2(n175), .ZN(n146) );
  NR2D1BWP16P90LVT U106 ( .A1(n162), .A2(n176), .ZN(n147) );
  NR2D1BWP16P90LVT U107 ( .A1(n163), .A2(n176), .ZN(n148) );
  NR2D1BWP16P90LVT U108 ( .A1(n164), .A2(n176), .ZN(n149) );
  NR2D1BWP16P90LVT U109 ( .A1(n165), .A2(n176), .ZN(n150) );
  NR2D1BWP16P90LVT U110 ( .A1(n166), .A2(n176), .ZN(n151) );
  NR2D1BWP16P90LVT U111 ( .A1(n167), .A2(n176), .ZN(n152) );
  NR2D1BWP16P90LVT U112 ( .A1(n168), .A2(n176), .ZN(n153) );
  NR2D1BWP16P90LVT U113 ( .A1(n169), .A2(n176), .ZN(n154) );
  NR2D1BWP16P90LVT U114 ( .A1(n162), .A2(n177), .ZN(n155) );
  NR2D1BWP16P90LVT U115 ( .A1(n163), .A2(n177), .ZN(n156) );
  NR2D1BWP16P90LVT U116 ( .A1(n164), .A2(n177), .ZN(n157) );
  NR2D1BWP16P90LVT U117 ( .A1(n165), .A2(n177), .ZN(n158) );
  NR2D1BWP16P90LVT U118 ( .A1(n166), .A2(n177), .ZN(n159) );
  NR2D1BWP16P90LVT U119 ( .A1(n167), .A2(n177), .ZN(n160) );
  NR2D1BWP16P90LVT U120 ( .A1(n168), .A2(n177), .ZN(n161) );
  NR2D1BWP16P90LVT U121 ( .A1(n169), .A2(n177), .ZN(product[0]) );
  CKND1BWP16P90LVT U140 ( .I(b[0]), .ZN(n169) );
  CKND1BWP16P90LVT U141 ( .I(b[1]), .ZN(n168) );
  CKND1BWP16P90LVT U142 ( .I(b[2]), .ZN(n167) );
  CKND1BWP16P90LVT U143 ( .I(b[3]), .ZN(n166) );
  CKND1BWP16P90LVT U144 ( .I(b[4]), .ZN(n165) );
  CKND1BWP16P90LVT U145 ( .I(b[5]), .ZN(n164) );
  CKND1BWP16P90LVT U146 ( .I(b[6]), .ZN(n163) );
  CKND1BWP16P90LVT U147 ( .I(b[7]), .ZN(n162) );
  CKND1BWP16P90LVT U148 ( .I(a[0]), .ZN(n177) );
  CKND1BWP16P90LVT U149 ( .I(a[1]), .ZN(n176) );
  CKND1BWP16P90LVT U150 ( .I(a[2]), .ZN(n175) );
  CKND1BWP16P90LVT U151 ( .I(a[3]), .ZN(n174) );
  CKND1BWP16P90LVT U152 ( .I(a[4]), .ZN(n173) );
  CKND1BWP16P90LVT U153 ( .I(a[5]), .ZN(n172) );
  CKND1BWP16P90LVT U154 ( .I(a[6]), .ZN(n171) );
  CKND1BWP16P90LVT U155 ( .I(a[7]), .ZN(n170) );
endmodule


module multiply_add ( a, b, c, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  wire   temp2_9_, temp2_8_, temp2_7_, temp2_6_, temp2_5_, temp2_4_, temp2_3_,
         temp2_2_, temp2_1_, temp2_15_, temp2_14_, temp2_13_, temp2_12_,
         temp2_11_, temp2_10_, temp2_0_, temp1_9_, temp1_8_, temp1_7_,
         temp1_6_, temp1_5_, temp1_4_, temp1_3_, temp1_2_, temp1_1_, temp1_15_,
         temp1_14_, temp1_13_, temp1_12_, temp1_11_, temp1_10_, temp1_0_, n3;

  multiply_add_DW01_add_0 add_8 ( .A({temp1_15_, temp1_14_, temp1_13_, 
        temp1_12_, temp1_11_, temp1_10_, temp1_9_, temp1_8_, temp1_7_, 
        temp1_6_, temp1_5_, temp1_4_, temp1_3_, temp1_2_, temp1_1_, temp1_0_}), 
        .B({temp2_15_, temp2_14_, temp2_13_, temp2_12_, temp2_11_, temp2_10_, 
        temp2_9_, temp2_8_, temp2_7_, temp2_6_, temp2_5_, temp2_4_, temp2_3_, 
        temp2_2_, temp2_1_, temp2_0_}), .SUM(d) );
  multiply_add_DW_mult_uns_2 mult_4 ( .a(a), .b(c), .product({temp1_15_, 
        temp1_14_, temp1_13_, temp1_12_, temp1_11_, temp1_10_, temp1_9_, 
        temp1_8_, temp1_7_, temp1_6_, temp1_5_, temp1_4_, temp1_3_, temp1_2_, 
        temp1_1_, temp1_0_}) );
  multiply_add_DW_mult_uns_3 mult_5 ( .a(b), .b(c), .product({temp2_15_, 
        temp2_14_, temp2_13_, temp2_12_, temp2_11_, temp2_10_, temp2_9_, 
        temp2_8_, temp2_7_, temp2_6_, temp2_5_, temp2_4_, temp2_3_, temp2_2_, 
        temp2_1_, temp2_0_}) );
  TIELBWP20P90LVT U3 ( .ZN(n3) );
endmodule

