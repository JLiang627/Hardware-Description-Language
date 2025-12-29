/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 19:19:09 2025
/////////////////////////////////////////////////////////////


module adder_behavior_DW01_add_1 ( CI, SUM, \A[32] , \A[30] , \A[29] , \A[28] , 
        \A[27] , \A[26] , \A[25] , \A[24] , \A[23] , \A[22] , \A[21] , \A[20] , 
        \A[19] , \A[18] , \A[17] , \A[16] , \A[15] , \A[14] , \A[13] , \A[12] , 
        \A[11] , \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , 
        \A[3] , \A[2] , \A[1] , \A[0] , \B[32] , \B[30] , \B[29] , \B[28] , 
        \B[27] , \B[26] , \B[25] , \B[24] , \B[23] , \B[22] , \B[21] , \B[20] , 
        \B[19] , \B[18] , \B[17] , \B[16] , \B[15] , \B[14] , \B[13] , \B[12] , 
        \B[11] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , \B[4] , 
        \B[3] , \B[2] , \B[1] , \B[0]  );
  output [32:0] SUM;
  input CI, \A[32] , \A[30] , \A[29] , \A[28] , \A[27] , \A[26] , \A[25] ,
         \A[24] , \A[23] , \A[22] , \A[21] , \A[20] , \A[19] , \A[18] ,
         \A[17] , \A[16] , \A[15] , \A[14] , \A[13] , \A[12] , \A[11] ,
         \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , \A[4] , \A[3] ,
         \A[2] , \A[1] , \A[0] , \B[32] , \B[30] , \B[29] , \B[28] , \B[27] ,
         \B[26] , \B[25] , \B[24] , \B[23] , \B[22] , \B[21] , \B[20] ,
         \B[19] , \B[18] , \B[17] , \B[16] , \B[15] , \B[14] , \B[13] ,
         \B[12] , \B[11] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] ,
         \B[4] , \B[3] , \B[2] , \B[1] , \B[0] ;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n41, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n198, n199, n200, n201, n202, n203, n204,
         n205, n206, n207, n208, n209, n210, n211, n212, n213, n214, n215,
         n216, n217, n218, n219, n220, n221, n222, n223, n224, n225, n226,
         n227, n228, n332;

  FA1D1BWP16P90LVT U2 ( .A(n227), .B(n228), .CI(n32), .CO(n31), .S(SUM[31]) );
  FA1D1BWP16P90LVT U3 ( .A(\B[30] ), .B(\A[30] ), .CI(n33), .CO(n32), .S(
        SUM[30]) );
  OAI21D1BWP16P90LVT U5 ( .A1(n119), .A2(n34), .B(n35), .ZN(n33) );
  ND2D1BWP16P90LVT U6 ( .A1(n78), .A2(n36), .ZN(n34) );
  OAI21D1BWP16P90LVT U9 ( .A1(n58), .A2(n38), .B(n39), .ZN(n37) );
  ND2D1BWP16P90LVT U10 ( .A1(n47), .A2(n332), .ZN(n38) );
  ND2D1BWP16P90LVT U14 ( .A1(n332), .A2(n43), .ZN(n1) );
  ND2D1BWP16P90LVT U17 ( .A1(\A[29] ), .A2(\B[29] ), .ZN(n43) );
  OAI21D1BWP16P90LVT U19 ( .A1(n54), .A2(n45), .B(n46), .ZN(n44) );
  OAI21D1BWP16P90LVT U23 ( .A1(n49), .A2(n53), .B(n50), .ZN(n48) );
  ND2D1BWP16P90LVT U24 ( .A1(n198), .A2(n50), .ZN(n2) );
  ND2D1BWP16P90LVT U27 ( .A1(\A[28] ), .A2(\B[28] ), .ZN(n50) );
  OAI21D1BWP16P90LVT U29 ( .A1(n54), .A2(n52), .B(n53), .ZN(n51) );
  ND2D1BWP16P90LVT U30 ( .A1(n199), .A2(n53), .ZN(n3) );
  ND2D1BWP16P90LVT U33 ( .A1(\A[27] ), .A2(\B[27] ), .ZN(n53) );
  ND2D1BWP16P90LVT U38 ( .A1(n67), .A2(n59), .ZN(n57) );
  OAI21D1BWP16P90LVT U41 ( .A1(n61), .A2(n65), .B(n62), .ZN(n60) );
  ND2D1BWP16P90LVT U42 ( .A1(n200), .A2(n62), .ZN(n4) );
  ND2D1BWP16P90LVT U45 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n62) );
  OAI21D1BWP16P90LVT U47 ( .A1(n66), .A2(n64), .B(n65), .ZN(n63) );
  ND2D1BWP16P90LVT U48 ( .A1(n201), .A2(n65), .ZN(n5) );
  ND2D1BWP16P90LVT U51 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n65) );
  OAI21D1BWP16P90LVT U55 ( .A1(n69), .A2(n73), .B(n70), .ZN(n68) );
  ND2D1BWP16P90LVT U56 ( .A1(n202), .A2(n70), .ZN(n6) );
  ND2D1BWP16P90LVT U59 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n70) );
  OAI21D1BWP16P90LVT U61 ( .A1(n74), .A2(n72), .B(n73), .ZN(n71) );
  ND2D1BWP16P90LVT U62 ( .A1(n203), .A2(n73), .ZN(n7) );
  ND2D1BWP16P90LVT U65 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n73) );
  OAI21D1BWP16P90LVT U72 ( .A1(n80), .A2(n100), .B(n81), .ZN(n79) );
  ND2D1BWP16P90LVT U73 ( .A1(n90), .A2(n82), .ZN(n80) );
  OAI21D1BWP16P90LVT U76 ( .A1(n84), .A2(n88), .B(n85), .ZN(n83) );
  ND2D1BWP16P90LVT U77 ( .A1(n204), .A2(n85), .ZN(n8) );
  ND2D1BWP16P90LVT U80 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n85) );
  ND2D1BWP16P90LVT U83 ( .A1(n205), .A2(n88), .ZN(n9) );
  ND2D1BWP16P90LVT U86 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n88) );
  OAI21D1BWP16P90LVT U90 ( .A1(n92), .A2(n96), .B(n93), .ZN(n91) );
  ND2D1BWP16P90LVT U91 ( .A1(n206), .A2(n93), .ZN(n10) );
  ND2D1BWP16P90LVT U94 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n93) );
  OAI21D1BWP16P90LVT U96 ( .A1(n97), .A2(n95), .B(n96), .ZN(n94) );
  ND2D1BWP16P90LVT U97 ( .A1(n207), .A2(n96), .ZN(n11) );
  ND2D1BWP16P90LVT U100 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n96) );
  OAI21D1BWP16P90LVT U103 ( .A1(n119), .A2(n99), .B(n100), .ZN(n98) );
  ND2D1BWP16P90LVT U104 ( .A1(n109), .A2(n101), .ZN(n99) );
  OAI21D1BWP16P90LVT U107 ( .A1(n103), .A2(n107), .B(n104), .ZN(n102) );
  ND2D1BWP16P90LVT U108 ( .A1(n208), .A2(n104), .ZN(n12) );
  ND2D1BWP16P90LVT U111 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n104) );
  OAI21D1BWP16P90LVT U113 ( .A1(n108), .A2(n106), .B(n107), .ZN(n105) );
  ND2D1BWP16P90LVT U114 ( .A1(n209), .A2(n107), .ZN(n13) );
  ND2D1BWP16P90LVT U117 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n107) );
  OAI21D1BWP16P90LVT U121 ( .A1(n111), .A2(n117), .B(n112), .ZN(n110) );
  ND2D1BWP16P90LVT U122 ( .A1(n210), .A2(n112), .ZN(n14) );
  ND2D1BWP16P90LVT U125 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n112) );
  ND2D1BWP16P90LVT U130 ( .A1(n211), .A2(n117), .ZN(n15) );
  ND2D1BWP16P90LVT U133 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n117) );
  OAI21D1BWP16P90LVT U138 ( .A1(n122), .A2(n142), .B(n123), .ZN(n121) );
  ND2D1BWP16P90LVT U139 ( .A1(n132), .A2(n124), .ZN(n122) );
  OAI21D1BWP16P90LVT U142 ( .A1(n126), .A2(n130), .B(n127), .ZN(n125) );
  ND2D1BWP16P90LVT U143 ( .A1(n212), .A2(n127), .ZN(n16) );
  ND2D1BWP16P90LVT U146 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n127) );
  OAI21D1BWP16P90LVT U148 ( .A1(n131), .A2(n129), .B(n130), .ZN(n128) );
  ND2D1BWP16P90LVT U149 ( .A1(n213), .A2(n130), .ZN(n17) );
  ND2D1BWP16P90LVT U152 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n130) );
  OAI21D1BWP16P90LVT U156 ( .A1(n134), .A2(n138), .B(n135), .ZN(n133) );
  ND2D1BWP16P90LVT U157 ( .A1(n214), .A2(n135), .ZN(n18) );
  ND2D1BWP16P90LVT U160 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n135) );
  OAI21D1BWP16P90LVT U162 ( .A1(n139), .A2(n137), .B(n138), .ZN(n136) );
  ND2D1BWP16P90LVT U163 ( .A1(n215), .A2(n138), .ZN(n19) );
  ND2D1BWP16P90LVT U166 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n138) );
  OAI21D1BWP16P90LVT U169 ( .A1(n162), .A2(n141), .B(n142), .ZN(n140) );
  ND2D1BWP16P90LVT U170 ( .A1(n155), .A2(n143), .ZN(n141) );
  OAI21D1BWP16P90LVT U173 ( .A1(n145), .A2(n151), .B(n146), .ZN(n144) );
  ND2D1BWP16P90LVT U174 ( .A1(n216), .A2(n146), .ZN(n20) );
  ND2D1BWP16P90LVT U177 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n146) );
  ND2D1BWP16P90LVT U182 ( .A1(n217), .A2(n151), .ZN(n21) );
  ND2D1BWP16P90LVT U185 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n151) );
  OAI21D1BWP16P90LVT U187 ( .A1(n162), .A2(n153), .B(n154), .ZN(n152) );
  OAI21D1BWP16P90LVT U191 ( .A1(n157), .A2(n161), .B(n158), .ZN(n156) );
  ND2D1BWP16P90LVT U192 ( .A1(n218), .A2(n158), .ZN(n22) );
  ND2D1BWP16P90LVT U195 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n158) );
  OAI21D1BWP16P90LVT U197 ( .A1(n162), .A2(n160), .B(n161), .ZN(n159) );
  ND2D1BWP16P90LVT U198 ( .A1(n219), .A2(n161), .ZN(n23) );
  ND2D1BWP16P90LVT U201 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n161) );
  ND2D1BWP16P90LVT U205 ( .A1(n174), .A2(n166), .ZN(n164) );
  OAI21D1BWP16P90LVT U208 ( .A1(n168), .A2(n172), .B(n169), .ZN(n167) );
  ND2D1BWP16P90LVT U209 ( .A1(n220), .A2(n169), .ZN(n24) );
  ND2D1BWP16P90LVT U212 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n169) );
  OAI21D1BWP16P90LVT U214 ( .A1(n173), .A2(n171), .B(n172), .ZN(n170) );
  ND2D1BWP16P90LVT U215 ( .A1(n221), .A2(n172), .ZN(n25) );
  ND2D1BWP16P90LVT U218 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n172) );
  OAI21D1BWP16P90LVT U222 ( .A1(n176), .A2(n182), .B(n177), .ZN(n175) );
  ND2D1BWP16P90LVT U223 ( .A1(n222), .A2(n177), .ZN(n26) );
  ND2D1BWP16P90LVT U226 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n177) );
  ND2D1BWP16P90LVT U231 ( .A1(n223), .A2(n182), .ZN(n27) );
  ND2D1BWP16P90LVT U234 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n182) );
  OAI21D1BWP16P90LVT U239 ( .A1(n187), .A2(n191), .B(n188), .ZN(n186) );
  ND2D1BWP16P90LVT U240 ( .A1(n224), .A2(n188), .ZN(n28) );
  ND2D1BWP16P90LVT U243 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n188) );
  OAI21D1BWP16P90LVT U245 ( .A1(n192), .A2(n190), .B(n191), .ZN(n189) );
  ND2D1BWP16P90LVT U246 ( .A1(n225), .A2(n191), .ZN(n29) );
  ND2D1BWP16P90LVT U249 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n191) );
  OAI21D1BWP16P90LVT U252 ( .A1(n194), .A2(n196), .B(n195), .ZN(n193) );
  ND2D1BWP16P90LVT U253 ( .A1(n226), .A2(n195), .ZN(n30) );
  ND2D1BWP16P90LVT U256 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n195) );
  CKND1BWP16P90LVT U262 ( .I(n119), .ZN(n118) );
  CKND1BWP16P90LVT U263 ( .I(n98), .ZN(n97) );
  CKND1BWP16P90LVT U264 ( .I(n140), .ZN(n139) );
  CKND1BWP16P90LVT U265 ( .I(n75), .ZN(n74) );
  NR2D1BWP16P90LVT U266 ( .A1(n99), .A2(n80), .ZN(n78) );
  CKND1BWP16P90LVT U267 ( .I(n155), .ZN(n153) );
  CKND1BWP16P90LVT U268 ( .I(n156), .ZN(n154) );
  AOI21D1BWP16P90LVT U269 ( .A1(n118), .A2(n109), .B(n110), .ZN(n108) );
  AOI21D1BWP16P90LVT U270 ( .A1(n120), .A2(n163), .B(n121), .ZN(n119) );
  NR2D1BWP16P90LVT U271 ( .A1(n141), .A2(n122), .ZN(n120) );
  AOI21D1BWP16P90LVT U272 ( .A1(n140), .A2(n132), .B(n133), .ZN(n131) );
  AOI21D1BWP16P90LVT U273 ( .A1(n75), .A2(n67), .B(n68), .ZN(n66) );
  OAI21D1BWP16P90LVT U274 ( .A1(n119), .A2(n76), .B(n77), .ZN(n75) );
  CKND1BWP16P90LVT U275 ( .I(n78), .ZN(n76) );
  CKND1BWP16P90LVT U276 ( .I(n79), .ZN(n77) );
  AOI21D1BWP16P90LVT U277 ( .A1(n75), .A2(n55), .B(n56), .ZN(n54) );
  CKND1BWP16P90LVT U278 ( .I(n57), .ZN(n55) );
  CKND1BWP16P90LVT U279 ( .I(n58), .ZN(n56) );
  AOI21D1BWP16P90LVT U280 ( .A1(n98), .A2(n90), .B(n91), .ZN(n89) );
  NR2D1BWP16P90LVT U281 ( .A1(n57), .A2(n38), .ZN(n36) );
  AOI21D1BWP16P90LVT U282 ( .A1(n183), .A2(n174), .B(n175), .ZN(n173) );
  CKND1BWP16P90LVT U283 ( .I(n184), .ZN(n183) );
  CKND1BWP16P90LVT U284 ( .I(n48), .ZN(n46) );
  OAI21D1BWP16P90LVT U285 ( .A1(n164), .A2(n184), .B(n165), .ZN(n163) );
  AOI21D1BWP16P90LVT U286 ( .A1(n166), .A2(n175), .B(n167), .ZN(n165) );
  NR2D1BWP16P90LVT U287 ( .A1(n171), .A2(n168), .ZN(n166) );
  XOR2D1BWP16P90LVT U288 ( .A1(n147), .A2(n20), .Z(SUM[10]) );
  AOI21D1BWP16P90LVT U289 ( .A1(n152), .A2(n217), .B(n149), .ZN(n147) );
  CKND1BWP16P90LVT U290 ( .I(n145), .ZN(n216) );
  AOI21D1BWP16P90LVT U291 ( .A1(n185), .A2(n193), .B(n186), .ZN(n184) );
  NR2D1BWP16P90LVT U292 ( .A1(n190), .A2(n187), .ZN(n185) );
  AOI21D1BWP16P90LVT U293 ( .A1(n143), .A2(n156), .B(n144), .ZN(n142) );
  XNR2D1BWP16P90LVT U294 ( .A1(n105), .A2(n12), .ZN(SUM[18]) );
  CKND1BWP16P90LVT U295 ( .I(n103), .ZN(n208) );
  CKND1BWP16P90LVT U296 ( .I(n126), .ZN(n212) );
  XNR2D1BWP16P90LVT U297 ( .A1(n63), .A2(n4), .ZN(SUM[26]) );
  CKND1BWP16P90LVT U298 ( .I(n61), .ZN(n200) );
  AOI21D1BWP16P90LVT U299 ( .A1(n82), .A2(n91), .B(n83), .ZN(n81) );
  AOI21D1BWP16P90LVT U300 ( .A1(n101), .A2(n110), .B(n102), .ZN(n100) );
  AOI21D1BWP16P90LVT U301 ( .A1(n124), .A2(n133), .B(n125), .ZN(n123) );
  XNR2D1BWP16P90LVT U302 ( .A1(n94), .A2(n10), .ZN(SUM[20]) );
  CKND1BWP16P90LVT U303 ( .I(n92), .ZN(n206) );
  CKND1BWP16P90LVT U304 ( .I(n31), .ZN(SUM[32]) );
  XNR2D1BWP16P90LVT U305 ( .A1(n51), .A2(n2), .ZN(SUM[28]) );
  CKND1BWP16P90LVT U306 ( .I(n49), .ZN(n198) );
  XNR2D1BWP16P90LVT U307 ( .A1(n44), .A2(n1), .ZN(SUM[29]) );
  CKND1BWP16P90LVT U308 ( .I(n47), .ZN(n45) );
  NR2D1BWP16P90LVT U309 ( .A1(n181), .A2(n176), .ZN(n174) );
  XOR2D1BWP16P90LVT U310 ( .A1(n131), .A2(n17), .Z(SUM[13]) );
  CKND1BWP16P90LVT U311 ( .I(n129), .ZN(n213) );
  CKND1BWP16P90LVT U312 ( .I(n134), .ZN(n214) );
  OAI21D1BWP16P90LVT U313 ( .A1(n89), .A2(n87), .B(n88), .ZN(n86) );
  CKND1BWP16P90LVT U314 ( .I(n84), .ZN(n204) );
  NR2D1BWP16P90LVT U315 ( .A1(n150), .A2(n145), .ZN(n143) );
  NR2D1BWP16P90LVT U316 ( .A1(n129), .A2(n126), .ZN(n124) );
  XNR2D1BWP16P90LVT U317 ( .A1(n71), .A2(n6), .ZN(SUM[24]) );
  CKND1BWP16P90LVT U318 ( .I(n69), .ZN(n202) );
  NR2D1BWP16P90LVT U319 ( .A1(n137), .A2(n134), .ZN(n132) );
  AOI21D1BWP16P90LVT U320 ( .A1(n48), .A2(n332), .B(n41), .ZN(n39) );
  CKND1BWP16P90LVT U321 ( .I(n43), .ZN(n41) );
  AOI21D1BWP16P90LVT U322 ( .A1(n59), .A2(n68), .B(n60), .ZN(n58) );
  NR2D1BWP16P90LVT U323 ( .A1(n106), .A2(n103), .ZN(n101) );
  NR2D1BWP16P90LVT U324 ( .A1(n87), .A2(n84), .ZN(n82) );
  NR2D1BWP16P90LVT U325 ( .A1(n160), .A2(n157), .ZN(n155) );
  NR2D1BWP16P90LVT U326 ( .A1(n95), .A2(n92), .ZN(n90) );
  XNR2D1BWP16P90LVT U327 ( .A1(n152), .A2(n21), .ZN(SUM[9]) );
  XOR2D1BWP16P90LVT U328 ( .A1(n89), .A2(n9), .Z(SUM[21]) );
  CKND1BWP16P90LVT U329 ( .I(n87), .ZN(n205) );
  XOR2D1BWP16P90LVT U330 ( .A1(n139), .A2(n19), .Z(SUM[11]) );
  CKND1BWP16P90LVT U331 ( .I(n137), .ZN(n215) );
  NR2D1BWP16P90LVT U332 ( .A1(n52), .A2(n49), .ZN(n47) );
  NR2D1BWP16P90LVT U333 ( .A1(n116), .A2(n111), .ZN(n109) );
  NR2D1BWP16P90LVT U334 ( .A1(n64), .A2(n61), .ZN(n59) );
  XNR2D1BWP16P90LVT U335 ( .A1(n159), .A2(n22), .ZN(SUM[8]) );
  CKND1BWP16P90LVT U336 ( .I(n157), .ZN(n218) );
  NR2D1BWP16P90LVT U337 ( .A1(n72), .A2(n69), .ZN(n67) );
  XOR2D1BWP16P90LVT U338 ( .A1(n108), .A2(n13), .Z(SUM[17]) );
  CKND1BWP16P90LVT U339 ( .I(n106), .ZN(n209) );
  XOR2D1BWP16P90LVT U340 ( .A1(n66), .A2(n5), .Z(SUM[25]) );
  CKND1BWP16P90LVT U341 ( .I(n64), .ZN(n201) );
  XOR2D1BWP16P90LVT U342 ( .A1(n113), .A2(n14), .Z(SUM[16]) );
  AOI21D1BWP16P90LVT U343 ( .A1(n118), .A2(n211), .B(n115), .ZN(n113) );
  CKND1BWP16P90LVT U344 ( .I(n111), .ZN(n210) );
  XNR2D1BWP16P90LVT U345 ( .A1(n170), .A2(n24), .ZN(SUM[6]) );
  CKND1BWP16P90LVT U346 ( .I(n168), .ZN(n220) );
  XOR2D1BWP16P90LVT U347 ( .A1(n97), .A2(n11), .Z(SUM[19]) );
  CKND1BWP16P90LVT U348 ( .I(n95), .ZN(n207) );
  XOR2D1BWP16P90LVT U349 ( .A1(n54), .A2(n3), .Z(SUM[27]) );
  CKND1BWP16P90LVT U350 ( .I(n52), .ZN(n199) );
  XOR2D1BWP16P90LVT U351 ( .A1(n74), .A2(n7), .Z(SUM[23]) );
  CKND1BWP16P90LVT U352 ( .I(n72), .ZN(n203) );
  XNR2D1BWP16P90LVT U353 ( .A1(n118), .A2(n15), .ZN(SUM[15]) );
  XOR2D1BWP16P90LVT U354 ( .A1(n162), .A2(n23), .Z(SUM[7]) );
  CKND1BWP16P90LVT U355 ( .I(n160), .ZN(n219) );
  XOR2D1BWP16P90LVT U356 ( .A1(n173), .A2(n25), .Z(SUM[5]) );
  CKND1BWP16P90LVT U357 ( .I(n171), .ZN(n221) );
  XOR2D1BWP16P90LVT U358 ( .A1(n178), .A2(n26), .Z(SUM[4]) );
  AOI21D1BWP16P90LVT U359 ( .A1(n183), .A2(n223), .B(n180), .ZN(n178) );
  CKND1BWP16P90LVT U360 ( .I(n176), .ZN(n222) );
  CKND1BWP16P90LVT U361 ( .I(n193), .ZN(n192) );
  XNR2D1BWP16P90LVT U362 ( .A1(n189), .A2(n28), .ZN(SUM[2]) );
  CKND1BWP16P90LVT U363 ( .I(n187), .ZN(n224) );
  XNR2D1BWP16P90LVT U364 ( .A1(n183), .A2(n27), .ZN(SUM[3]) );
  XOR2D1BWP16P90LVT U365 ( .A1(n192), .A2(n29), .Z(SUM[1]) );
  CKND1BWP16P90LVT U366 ( .I(n190), .ZN(n225) );
  CKND1BWP16P90LVT U367 ( .I(n150), .ZN(n217) );
  CKND1BWP16P90LVT U368 ( .I(n151), .ZN(n149) );
  CKND1BWP16P90LVT U369 ( .I(n116), .ZN(n211) );
  CKND1BWP16P90LVT U370 ( .I(n181), .ZN(n223) );
  CKND1BWP16P90LVT U371 ( .I(n182), .ZN(n180) );
  CKND1BWP16P90LVT U372 ( .I(n117), .ZN(n115) );
  CKND1BWP16P90LVT U373 ( .I(CI), .ZN(n196) );
  NR2D1BWP16P90LVT U374 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n194) );
  NR2D1BWP16P90LVT U375 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n157) );
  AOI21D1BWP16P90LVT U376 ( .A1(n36), .A2(n79), .B(n37), .ZN(n35) );
  CKND1BWP16P90LVT U377 ( .I(\B[32] ), .ZN(n227) );
  CKND1BWP16P90LVT U378 ( .I(\A[32] ), .ZN(n228) );
  NR2D1BWP16P90LVT U379 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n134) );
  NR2D1BWP16P90LVT U380 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n176) );
  NR2D1BWP16P90LVT U381 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n187) );
  NR2D1BWP16P90LVT U382 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n111) );
  NR2D1BWP16P90LVT U383 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n190) );
  NR2D1BWP16P90LVT U384 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n145) );
  NR2D1BWP16P90LVT U385 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n168) );
  NR2D1BWP16P90LVT U386 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n92) );
  NR2D1BWP16P90LVT U387 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n171) );
  NR2D1BWP16P90LVT U388 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n126) );
  NR2D1BWP16P90LVT U389 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n181) );
  NR2D1BWP16P90LVT U390 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n129) );
  NR2D1BWP16P90LVT U391 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n137) );
  NR2D1BWP16P90LVT U392 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n150) );
  NR2D1BWP16P90LVT U393 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n103) );
  NR2D1BWP16P90LVT U394 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n69) );
  NR2D1BWP16P90LVT U395 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n87) );
  NR2D1BWP16P90LVT U396 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n84) );
  NR2D1BWP16P90LVT U397 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n106) );
  NR2D1BWP16P90LVT U398 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n95) );
  NR2D1BWP16P90LVT U399 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n160) );
  NR2D1BWP16P90LVT U400 ( .A1(\A[28] ), .A2(\B[28] ), .ZN(n49) );
  NR2D1BWP16P90LVT U401 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n61) );
  NR2D1BWP16P90LVT U402 ( .A1(\A[27] ), .A2(\B[27] ), .ZN(n52) );
  NR2D1BWP16P90LVT U403 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n64) );
  NR2D1BWP16P90LVT U404 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n116) );
  NR2D1BWP16P90LVT U405 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n72) );
  OR2D1BWP16P90LVT U406 ( .A1(\A[29] ), .A2(\B[29] ), .Z(n332) );
  XNR2D1BWP16P90LVT U407 ( .A1(n30), .A2(CI), .ZN(SUM[0]) );
  CKND1BWP16P90LVT U408 ( .I(n194), .ZN(n226) );
  XNR2D1BWP16P90LVT U409 ( .A1(n136), .A2(n18), .ZN(SUM[12]) );
  CKND1BWP16P90LVT U410 ( .I(n163), .ZN(n162) );
  XNR2D1BWP16P90LVT U411 ( .A1(n86), .A2(n8), .ZN(SUM[22]) );
  XNR2D1BWP16P90LVT U412 ( .A1(n128), .A2(n16), .ZN(SUM[14]) );
endmodule


module adder_behavior ( s, co, a, b, ci );
  output [31:0] s;
  input [31:0] a;
  input [31:0] b;
  input ci;
  output co;


  adder_behavior_DW01_add_1 add_1_root_add_11_2 ( .CI(ci), .SUM({co, s}), 
        .\A[32] (a[31]), .\A[30] (a[30]), .\A[29] (a[29]), .\A[28] (a[28]), 
        .\A[27] (a[27]), .\A[26] (a[26]), .\A[25] (a[25]), .\A[24] (a[24]), 
        .\A[23] (a[23]), .\A[22] (a[22]), .\A[21] (a[21]), .\A[20] (a[20]), 
        .\A[19] (a[19]), .\A[18] (a[18]), .\A[17] (a[17]), .\A[16] (a[16]), 
        .\A[15] (a[15]), .\A[14] (a[14]), .\A[13] (a[13]), .\A[12] (a[12]), 
        .\A[11] (a[11]), .\A[10] (a[10]), .\A[9] (a[9]), .\A[8] (a[8]), 
        .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (a[4]), .\A[3] (
        a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), .\B[32] (b[31]), 
        .\B[30] (b[30]), .\B[29] (b[29]), .\B[28] (b[28]), .\B[27] (b[27]), 
        .\B[26] (b[26]), .\B[25] (b[25]), .\B[24] (b[24]), .\B[23] (b[23]), 
        .\B[22] (b[22]), .\B[21] (b[21]), .\B[20] (b[20]), .\B[19] (b[19]), 
        .\B[18] (b[18]), .\B[17] (b[17]), .\B[16] (b[16]), .\B[15] (b[15]), 
        .\B[14] (b[14]), .\B[13] (b[13]), .\B[12] (b[12]), .\B[11] (b[11]), 
        .\B[10] (b[10]), .\B[9] (b[9]), .\B[8] (b[8]), .\B[7] (b[7]), .\B[6] (
        b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (b[3]), .\B[2] (b[2]), 
        .\B[1] (b[1]), .\B[0] (b[0]) );
endmodule

