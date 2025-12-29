/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Fri Oct 24 19:17:13 2025
/////////////////////////////////////////////////////////////


module hw2_nonpipe_DW01_addsub_0 ( ADD_SUB, SUM, \A[7] , \A[6] , \A[5] , 
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


module hw2_nonpipe_DW_mult_uns_1 ( a, b, \product[15] , \product[14] , 
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
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
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199;
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

  XOR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n2), .Z(product[15]) );
  XOR2D1BWP16P90LVT U2 ( .A1(n112), .A2(n16), .Z(n1) );
  FA1D1BWP16P90LVT U3 ( .A(n17), .B(n18), .CI(n3), .CO(n2), .S(product[14]) );
  FA1D1BWP16P90LVT U4 ( .A(n19), .B(n22), .CI(n4), .CO(n3), .S(product[13]) );
  FA1D1BWP16P90LVT U5 ( .A(n28), .B(n23), .CI(n5), .CO(n4), .S(product[12]) );
  FA1D1BWP16P90LVT U6 ( .A(n36), .B(n29), .CI(n6), .CO(n5), .S(product[11]) );
  FA1D1BWP16P90LVT U7 ( .A(n46), .B(n37), .CI(n7), .CO(n6), .S(product[10]) );
  FA1D1BWP16P90LVT U8 ( .A(n58), .B(n47), .CI(n8), .CO(n7), .S(product[9]) );
  FA1D1BWP16P90LVT U9 ( .A(n70), .B(n59), .CI(n9), .CO(n8), .S(product[8]) );
  FA1D1BWP16P90LVT U10 ( .A(n82), .B(n71), .CI(n10), .CO(n9), .S(product[7])
         );
  FA1D1BWP16P90LVT U11 ( .A(n92), .B(n83), .CI(n11), .CO(n10), .S(product[6])
         );
  FA1D1BWP16P90LVT U12 ( .A(n100), .B(n93), .CI(n12), .CO(n11), .S(product[5])
         );
  FA1D1BWP16P90LVT U13 ( .A(n106), .B(n101), .CI(n13), .CO(n12), .S(product[4]) );
  FA1D1BWP16P90LVT U14 ( .A(n109), .B(n14), .CI(n107), .CO(n13), .S(product[3]) );
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
  FA1D1BWP16P90LVT U55 ( .A(n102), .B(n97), .CI(n95), .CO(n92), .S(n93) );
  FA1D1BWP16P90LVT U56 ( .A(n170), .B(n104), .CI(n99), .CO(n94), .S(n95) );
  FA1D1BWP16P90LVT U57 ( .A(n178), .B(n154), .CI(n162), .CO(n96), .S(n97) );
  HA1D2BWP16P90LVT U58 ( .A(n146), .B(n138), .CO(n98), .S(n99) );
  FA1D1BWP16P90LVT U59 ( .A(n108), .B(n105), .CI(n103), .CO(n100), .S(n101) );
  FA1D1BWP16P90LVT U60 ( .A(n179), .B(n163), .CI(n171), .CO(n102), .S(n103) );
  HA1D2BWP16P90LVT U61 ( .A(n155), .B(n147), .CO(n104), .S(n105) );
  FA1D1BWP16P90LVT U62 ( .A(n180), .B(n172), .CI(n110), .CO(n106), .S(n107) );
  HA1D2BWP16P90LVT U63 ( .A(n164), .B(n156), .CO(n108), .S(n109) );
  HA1D2BWP16P90LVT U64 ( .A(n181), .B(n173), .CO(n110), .S(n111) );
  NR2D1BWP16P90LVT U65 ( .A1(n192), .A2(n183), .ZN(n112) );
  NR2D1BWP16P90LVT U66 ( .A1(n192), .A2(n184), .ZN(n113) );
  NR2D1BWP16P90LVT U67 ( .A1(n192), .A2(n185), .ZN(n114) );
  NR2D1BWP16P90LVT U68 ( .A1(n192), .A2(n186), .ZN(n115) );
  NR2D1BWP16P90LVT U69 ( .A1(n192), .A2(n187), .ZN(n116) );
  NR2D1BWP16P90LVT U70 ( .A1(n192), .A2(n188), .ZN(n117) );
  NR2D1BWP16P90LVT U71 ( .A1(n192), .A2(n189), .ZN(n118) );
  NR2D1BWP16P90LVT U72 ( .A1(n192), .A2(n190), .ZN(n119) );
  NR2D1BWP16P90LVT U73 ( .A1(n192), .A2(n191), .ZN(n120) );
  NR2D1BWP16P90LVT U74 ( .A1(n193), .A2(n183), .ZN(n121) );
  NR2D1BWP16P90LVT U75 ( .A1(n193), .A2(n184), .ZN(n122) );
  NR2D1BWP16P90LVT U76 ( .A1(n193), .A2(n185), .ZN(n123) );
  NR2D1BWP16P90LVT U77 ( .A1(n193), .A2(n186), .ZN(n124) );
  NR2D1BWP16P90LVT U78 ( .A1(n193), .A2(n187), .ZN(n125) );
  NR2D1BWP16P90LVT U79 ( .A1(n193), .A2(n188), .ZN(n126) );
  NR2D1BWP16P90LVT U80 ( .A1(n193), .A2(n189), .ZN(n127) );
  NR2D1BWP16P90LVT U81 ( .A1(n193), .A2(n190), .ZN(n128) );
  NR2D1BWP16P90LVT U82 ( .A1(n193), .A2(n191), .ZN(n129) );
  NR2D1BWP16P90LVT U83 ( .A1(n194), .A2(n183), .ZN(n130) );
  NR2D1BWP16P90LVT U84 ( .A1(n194), .A2(n184), .ZN(n131) );
  NR2D1BWP16P90LVT U85 ( .A1(n194), .A2(n185), .ZN(n132) );
  NR2D1BWP16P90LVT U86 ( .A1(n194), .A2(n186), .ZN(n133) );
  NR2D1BWP16P90LVT U87 ( .A1(n194), .A2(n187), .ZN(n134) );
  NR2D1BWP16P90LVT U88 ( .A1(n194), .A2(n188), .ZN(n135) );
  NR2D1BWP16P90LVT U89 ( .A1(n194), .A2(n189), .ZN(n136) );
  NR2D1BWP16P90LVT U90 ( .A1(n194), .A2(n190), .ZN(n137) );
  NR2D1BWP16P90LVT U91 ( .A1(n194), .A2(n191), .ZN(n138) );
  NR2D1BWP16P90LVT U92 ( .A1(n195), .A2(n183), .ZN(n139) );
  NR2D1BWP16P90LVT U93 ( .A1(n195), .A2(n184), .ZN(n140) );
  NR2D1BWP16P90LVT U94 ( .A1(n195), .A2(n185), .ZN(n141) );
  NR2D1BWP16P90LVT U95 ( .A1(n195), .A2(n186), .ZN(n142) );
  NR2D1BWP16P90LVT U96 ( .A1(n195), .A2(n187), .ZN(n143) );
  NR2D1BWP16P90LVT U97 ( .A1(n195), .A2(n188), .ZN(n144) );
  NR2D1BWP16P90LVT U98 ( .A1(n195), .A2(n189), .ZN(n145) );
  NR2D1BWP16P90LVT U99 ( .A1(n195), .A2(n190), .ZN(n146) );
  NR2D1BWP16P90LVT U100 ( .A1(n195), .A2(n191), .ZN(n147) );
  NR2D1BWP16P90LVT U101 ( .A1(n196), .A2(n183), .ZN(n148) );
  NR2D1BWP16P90LVT U102 ( .A1(n196), .A2(n184), .ZN(n149) );
  NR2D1BWP16P90LVT U103 ( .A1(n196), .A2(n185), .ZN(n150) );
  NR2D1BWP16P90LVT U104 ( .A1(n196), .A2(n186), .ZN(n151) );
  NR2D1BWP16P90LVT U105 ( .A1(n196), .A2(n187), .ZN(n152) );
  NR2D1BWP16P90LVT U106 ( .A1(n196), .A2(n188), .ZN(n153) );
  NR2D1BWP16P90LVT U107 ( .A1(n196), .A2(n189), .ZN(n154) );
  NR2D1BWP16P90LVT U108 ( .A1(n196), .A2(n190), .ZN(n155) );
  NR2D1BWP16P90LVT U109 ( .A1(n196), .A2(n191), .ZN(n156) );
  NR2D1BWP16P90LVT U110 ( .A1(n197), .A2(n183), .ZN(n157) );
  NR2D1BWP16P90LVT U111 ( .A1(n197), .A2(n184), .ZN(n158) );
  NR2D1BWP16P90LVT U112 ( .A1(n197), .A2(n185), .ZN(n159) );
  NR2D1BWP16P90LVT U113 ( .A1(n197), .A2(n186), .ZN(n160) );
  NR2D1BWP16P90LVT U114 ( .A1(n197), .A2(n187), .ZN(n161) );
  NR2D1BWP16P90LVT U115 ( .A1(n197), .A2(n188), .ZN(n162) );
  NR2D1BWP16P90LVT U116 ( .A1(n197), .A2(n189), .ZN(n163) );
  NR2D1BWP16P90LVT U117 ( .A1(n197), .A2(n190), .ZN(n164) );
  NR2D1BWP16P90LVT U118 ( .A1(n197), .A2(n191), .ZN(n165) );
  NR2D1BWP16P90LVT U119 ( .A1(n198), .A2(n183), .ZN(n166) );
  NR2D1BWP16P90LVT U120 ( .A1(n198), .A2(n184), .ZN(n167) );
  NR2D1BWP16P90LVT U121 ( .A1(n198), .A2(n185), .ZN(n168) );
  NR2D1BWP16P90LVT U122 ( .A1(n198), .A2(n186), .ZN(n169) );
  NR2D1BWP16P90LVT U123 ( .A1(n198), .A2(n187), .ZN(n170) );
  NR2D1BWP16P90LVT U124 ( .A1(n198), .A2(n188), .ZN(n171) );
  NR2D1BWP16P90LVT U125 ( .A1(n198), .A2(n189), .ZN(n172) );
  NR2D1BWP16P90LVT U126 ( .A1(n198), .A2(n190), .ZN(n173) );
  NR2D1BWP16P90LVT U127 ( .A1(n198), .A2(n191), .ZN(n174) );
  NR2D1BWP16P90LVT U128 ( .A1(n199), .A2(n183), .ZN(n175) );
  NR2D1BWP16P90LVT U129 ( .A1(n199), .A2(n184), .ZN(n176) );
  NR2D1BWP16P90LVT U130 ( .A1(n199), .A2(n185), .ZN(n177) );
  NR2D1BWP16P90LVT U131 ( .A1(n199), .A2(n186), .ZN(n178) );
  NR2D1BWP16P90LVT U132 ( .A1(n199), .A2(n187), .ZN(n179) );
  NR2D1BWP16P90LVT U133 ( .A1(n199), .A2(n188), .ZN(n180) );
  NR2D1BWP16P90LVT U134 ( .A1(n199), .A2(n189), .ZN(n181) );
  NR2D1BWP16P90LVT U135 ( .A1(n199), .A2(n190), .ZN(n182) );
  NR2D1BWP16P90LVT U136 ( .A1(n199), .A2(n191), .ZN(product[0]) );
  CKND1BWP16P90LVT U156 ( .I(a[0]), .ZN(n191) );
  CKND1BWP16P90LVT U157 ( .I(a[1]), .ZN(n190) );
  CKND1BWP16P90LVT U158 ( .I(a[5]), .ZN(n186) );
  CKND1BWP16P90LVT U159 ( .I(a[2]), .ZN(n189) );
  CKND1BWP16P90LVT U160 ( .I(a[3]), .ZN(n188) );
  CKND1BWP16P90LVT U161 ( .I(a[4]), .ZN(n187) );
  CKND1BWP16P90LVT U162 ( .I(a[6]), .ZN(n185) );
  CKND1BWP16P90LVT U163 ( .I(a[7]), .ZN(n184) );
  CKND1BWP16P90LVT U164 ( .I(a[8]), .ZN(n183) );
  CKND1BWP16P90LVT U165 ( .I(b[3]), .ZN(n196) );
  CKND1BWP16P90LVT U166 ( .I(b[0]), .ZN(n199) );
  CKND1BWP16P90LVT U167 ( .I(b[2]), .ZN(n197) );
  CKND1BWP16P90LVT U168 ( .I(b[1]), .ZN(n198) );
  CKND1BWP16P90LVT U169 ( .I(b[4]), .ZN(n195) );
  CKND1BWP16P90LVT U170 ( .I(b[5]), .ZN(n194) );
  CKND1BWP16P90LVT U171 ( .I(b[6]), .ZN(n193) );
  CKND1BWP16P90LVT U172 ( .I(b[7]), .ZN(n192) );
endmodule


module hw2_nonpipe ( a, b, c, s, d );
  input [7:0] a;
  input [7:0] b;
  input [7:0] c;
  output [15:0] d;
  input s;
  wire   temp_sum_8_, temp_sum_7_, temp_sum_6_, temp_sum_5_, temp_sum_4_,
         temp_sum_3_, temp_sum_2_, temp_sum_1_, temp_sum_0_, n6, n8,
         SYNOPSYS_UNCONNECTED_1;

  hw2_nonpipe_DW01_addsub_0 r373 ( .ADD_SUB(n8), .SUM({temp_sum_8_, 
        temp_sum_7_, temp_sum_6_, temp_sum_5_, temp_sum_4_, temp_sum_3_, 
        temp_sum_2_, temp_sum_1_, temp_sum_0_}), .\A[7] (a[7]), .\A[6] (a[6]), 
        .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (a[3]), .\A[2] (a[2]), .\A[1] (
        a[1]), .\A[0] (a[0]), .\B[7] (b[7]), .\B[6] (b[6]), .\B[5] (b[5]), 
        .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (b[2]), .\B[1] (b[1]), .\B[0] (
        b[0]) );
  hw2_nonpipe_DW_mult_uns_1 mult_6 ( .a({temp_sum_8_, temp_sum_7_, temp_sum_6_, 
        temp_sum_5_, temp_sum_4_, temp_sum_3_, temp_sum_2_, temp_sum_1_, 
        temp_sum_0_}), .b(c), .\product[15] (d[15]), .\product[14] (d[14]), 
        .\product[13] (d[13]), .\product[12] (d[12]), .\product[11] (d[11]), 
        .\product[10] (d[10]), .\product[9] (d[9]), .\product[8] (d[8]), 
        .\product[7] (d[7]), .\product[6] (d[6]), .\product[5] (d[5]), 
        .\product[4] (d[4]), .\product[3] (d[3]), .\product[2] (d[2]), 
        .\product[1] (d[1]), .\product[0] (d[0]) );
  TIELBWP20P90LVT U4 ( .ZN(n6) );
  CKND1BWP16P90 U5 ( .I(s), .ZN(n8) );
endmodule

