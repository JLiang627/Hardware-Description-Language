/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 18:51:42 2025
/////////////////////////////////////////////////////////////


module adder_behavior_reg_DW01_add_1 ( CI, SUM, \A[32] , \A[30] , \A[29] , 
        \A[28] , \A[27] , \A[26] , \A[25] , \A[24] , \A[23] , \A[22] , \A[21] , 
        \A[20] , \A[19] , \A[18] , \A[17] , \A[16] , \A[15] , \A[14] , \A[13] , 
        \A[12] , \A[11] , \A[10] , \A[9] , \A[8] , \A[7] , \A[6] , \A[5] , 
        \A[4] , \A[3] , \A[2] , \A[1] , \A[0] , \B[32] , \B[30] , \B[29] , 
        \B[28] , \B[27] , \B[26] , \B[25] , \B[24] , \B[23] , \B[22] , \B[21] , 
        \B[20] , \B[19] , \B[18] , \B[17] , \B[16] , \B[15] , \B[14] , \B[13] , 
        \B[12] , \B[11] , \B[10] , \B[9] , \B[8] , \B[7] , \B[6] , \B[5] , 
        \B[4] , \B[3] , \B[2] , \B[1] , \B[0]  );
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
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n54, n55, n56, n57, n58, n59, n60,
         n61, n63, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n110, n111, n112, n113, n114, n115, n118, n119, n120, n121, n122,
         n123, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n138, n139, n140, n141, n142, n143, n144, n147, n148, n149, n150,
         n151, n152, n153, n156, n157, n160, n161, n162, n163, n166, n167,
         n168, n169, n170, n171, n172, n173, n176, n177, n178, n179, n181,
         n184, n185, n186, n188, n189, n190, n191, n192, n193, n194, n195,
         n196, n197, n198, n199, n200, n201, n203, n204, n205, n206, n207,
         n208, n209, n212, n213, n214, n215, n217, n218, n219, n220, n221,
         n222, n223, n224, n227, n228, n229, n230, n231, n233, n234, n235,
         n236, n237, n238, n239, n240, n242, n243, n244, n245, n246, n247,
         n248, n249, n250, n251, n252, n253, n254, n255, n256, n257, n258,
         n259, n260, n261, n262, n264, n265, n266, n267, n268, n269, n270,
         n271, n272, n273, n274, n275, n276, n277, n278, n279, n280, n281,
         n282, n283, n285, n287, n288, n289, n290, n291, n292, n293, n294,
         n295, n296, n297, n298, n299, n300, n301, n302, n303, n304, n305,
         n306, n307, n308, n309, n310, n311, n312, n313, n417, n418, n419,
         n420, n421, n422, n423, n424, n425, n426, n427, n428;

  ND2D1BWP16P90LVT U5 ( .A1(n120), .A2(n36), .ZN(n34) );
  OAI21D1BWP16P90LVT U8 ( .A1(n38), .A2(n81), .B(n39), .ZN(n37) );
  ND2D1BWP16P90LVT U9 ( .A1(n60), .A2(n40), .ZN(n38) );
  OAI21D1BWP16P90LVT U12 ( .A1(n42), .A2(n54), .B(n43), .ZN(n41) );
  ND2D1BWP16P90LVT U13 ( .A1(n281), .A2(n43), .ZN(n1) );
  ND2D1BWP16P90LVT U16 ( .A1(\A[30] ), .A2(\B[30] ), .ZN(n43) );
  OAI21D1BWP16P90LVT U20 ( .A1(n123), .A2(n47), .B(n48), .ZN(n46) );
  ND2D1BWP16P90LVT U21 ( .A1(n82), .A2(n49), .ZN(n47) );
  OAI21D1BWP16P90LVT U24 ( .A1(n63), .A2(n51), .B(n54), .ZN(n50) );
  ND2D1BWP16P90LVT U27 ( .A1(n282), .A2(n54), .ZN(n2) );
  ND2D1BWP16P90LVT U30 ( .A1(\A[29] ), .A2(\B[29] ), .ZN(n54) );
  OAI21D1BWP16P90LVT U34 ( .A1(n123), .A2(n58), .B(n59), .ZN(n57) );
  ND2D1BWP16P90LVT U35 ( .A1(n82), .A2(n60), .ZN(n58) );
  OAI21D1BWP16P90LVT U42 ( .A1(n66), .A2(n76), .B(n67), .ZN(n61) );
  ND2D1BWP16P90LVT U43 ( .A1(n283), .A2(n67), .ZN(n3) );
  ND2D1BWP16P90LVT U46 ( .A1(\A[28] ), .A2(\B[28] ), .ZN(n67) );
  OAI21D1BWP16P90LVT U50 ( .A1(n123), .A2(n71), .B(n72), .ZN(n70) );
  ND2D1BWP16P90LVT U51 ( .A1(n82), .A2(n73), .ZN(n71) );
  ND2D1BWP16P90LVT U55 ( .A1(n73), .A2(n76), .ZN(n4) );
  ND2D1BWP16P90LVT U58 ( .A1(\A[27] ), .A2(\B[27] ), .ZN(n76) );
  OAI21D1BWP16P90LVT U62 ( .A1(n123), .A2(n80), .B(n81), .ZN(n79) );
  ND2D1BWP16P90LVT U67 ( .A1(n104), .A2(n86), .ZN(n80) );
  OAI21D1BWP16P90LVT U70 ( .A1(n88), .A2(n98), .B(n89), .ZN(n87) );
  ND2D1BWP16P90LVT U71 ( .A1(n285), .A2(n89), .ZN(n5) );
  ND2D1BWP16P90LVT U74 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n89) );
  OAI21D1BWP16P90LVT U78 ( .A1(n123), .A2(n93), .B(n94), .ZN(n92) );
  ND2D1BWP16P90LVT U79 ( .A1(n104), .A2(n95), .ZN(n93) );
  ND2D1BWP16P90LVT U83 ( .A1(n95), .A2(n98), .ZN(n6) );
  ND2D1BWP16P90LVT U86 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n98) );
  OAI21D1BWP16P90LVT U90 ( .A1(n123), .A2(n102), .B(n103), .ZN(n101) );
  ND2D1BWP16P90LVT U99 ( .A1(n287), .A2(n111), .ZN(n7) );
  ND2D1BWP16P90LVT U102 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n111) );
  OAI21D1BWP16P90LVT U106 ( .A1(n123), .A2(n115), .B(n118), .ZN(n114) );
  ND2D1BWP16P90LVT U109 ( .A1(n288), .A2(n118), .ZN(n8) );
  ND2D1BWP16P90LVT U112 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n118) );
  ND2D1BWP16P90LVT U121 ( .A1(n144), .A2(n128), .ZN(n126) );
  OAI21D1BWP16P90LVT U124 ( .A1(n130), .A2(n138), .B(n131), .ZN(n129) );
  ND2D1BWP16P90LVT U125 ( .A1(n289), .A2(n131), .ZN(n9) );
  ND2D1BWP16P90LVT U128 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n131) );
  OAI21D1BWP16P90LVT U132 ( .A1(n143), .A2(n135), .B(n138), .ZN(n134) );
  ND2D1BWP16P90LVT U135 ( .A1(n290), .A2(n138), .ZN(n10) );
  ND2D1BWP16P90LVT U138 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n138) );
  ND2D1BWP16P90LVT U143 ( .A1(n162), .A2(n144), .ZN(n142) );
  OAI21D1BWP16P90LVT U148 ( .A1(n148), .A2(n156), .B(n149), .ZN(n147) );
  ND2D1BWP16P90LVT U149 ( .A1(n291), .A2(n149), .ZN(n11) );
  ND2D1BWP16P90LVT U152 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n149) );
  ND2D1BWP16P90LVT U159 ( .A1(n292), .A2(n156), .ZN(n12) );
  ND2D1BWP16P90LVT U162 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n156) );
  ND2D1BWP16P90LVT U171 ( .A1(n178), .A2(n166), .ZN(n160) );
  OAI21D1BWP16P90LVT U174 ( .A1(n168), .A2(n176), .B(n169), .ZN(n167) );
  ND2D1BWP16P90LVT U175 ( .A1(n293), .A2(n169), .ZN(n13) );
  ND2D1BWP16P90LVT U178 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n169) );
  OAI21D1BWP16P90LVT U182 ( .A1(n181), .A2(n173), .B(n176), .ZN(n172) );
  ND2D1BWP16P90LVT U185 ( .A1(n294), .A2(n176), .ZN(n14) );
  ND2D1BWP16P90LVT U188 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n176) );
  ND2D1BWP16P90LVT U197 ( .A1(n295), .A2(n185), .ZN(n15) );
  ND2D1BWP16P90LVT U200 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n185) );
  ND2D1BWP16P90LVT U205 ( .A1(n296), .A2(n190), .ZN(n16) );
  ND2D1BWP16P90LVT U208 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n190) );
  ND2D1BWP16P90LVT U214 ( .A1(n209), .A2(n197), .ZN(n195) );
  OAI21D1BWP16P90LVT U217 ( .A1(n199), .A2(n205), .B(n200), .ZN(n198) );
  ND2D1BWP16P90LVT U218 ( .A1(n297), .A2(n200), .ZN(n17) );
  ND2D1BWP16P90LVT U221 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n200) );
  ND2D1BWP16P90LVT U226 ( .A1(n298), .A2(n205), .ZN(n18) );
  ND2D1BWP16P90LVT U229 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n205) );
  ND2D1BWP16P90LVT U232 ( .A1(n223), .A2(n209), .ZN(n207) );
  OAI21D1BWP16P90LVT U237 ( .A1(n213), .A2(n219), .B(n214), .ZN(n212) );
  ND2D1BWP16P90LVT U238 ( .A1(n299), .A2(n214), .ZN(n19) );
  ND2D1BWP16P90LVT U241 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n214) );
  ND2D1BWP16P90LVT U246 ( .A1(n300), .A2(n219), .ZN(n20) );
  ND2D1BWP16P90LVT U249 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n219) );
  ND2D1BWP16P90LVT U256 ( .A1(n239), .A2(n227), .ZN(n221) );
  ND2D1BWP16P90LVT U260 ( .A1(n301), .A2(n230), .ZN(n21) );
  ND2D1BWP16P90LVT U263 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n230) );
  ND2D1BWP16P90LVT U268 ( .A1(n302), .A2(n235), .ZN(n22) );
  ND2D1BWP16P90LVT U271 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n235) );
  ND2D1BWP16P90LVT U278 ( .A1(n303), .A2(n242), .ZN(n23) );
  ND2D1BWP16P90LVT U291 ( .A1(n258), .A2(n250), .ZN(n248) );
  OAI21D1BWP16P90LVT U294 ( .A1(n252), .A2(n256), .B(n253), .ZN(n251) );
  ND2D1BWP16P90LVT U295 ( .A1(n305), .A2(n253), .ZN(n25) );
  ND2D1BWP16P90LVT U298 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n253) );
  OAI21D1BWP16P90LVT U300 ( .A1(n257), .A2(n255), .B(n256), .ZN(n254) );
  ND2D1BWP16P90LVT U301 ( .A1(n306), .A2(n256), .ZN(n26) );
  ND2D1BWP16P90LVT U304 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n256) );
  ND2D1BWP16P90LVT U309 ( .A1(n307), .A2(n261), .ZN(n27) );
  ND2D1BWP16P90LVT U312 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n261) );
  ND2D1BWP16P90LVT U317 ( .A1(n308), .A2(n266), .ZN(n28) );
  OAI21D1BWP16P90LVT U325 ( .A1(n271), .A2(n275), .B(n272), .ZN(n270) );
  ND2D1BWP16P90LVT U326 ( .A1(n309), .A2(n272), .ZN(n29) );
  ND2D1BWP16P90LVT U329 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n272) );
  OAI21D1BWP16P90LVT U331 ( .A1(n276), .A2(n274), .B(n275), .ZN(n273) );
  ND2D1BWP16P90LVT U332 ( .A1(n310), .A2(n275), .ZN(n30) );
  ND2D1BWP16P90LVT U335 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n275) );
  ND2D1BWP16P90LVT U339 ( .A1(n311), .A2(n279), .ZN(n31) );
  ND2D1BWP16P90LVT U342 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n279) );
  OAI21D2BWP16P90LVT U348 ( .A1(n248), .A2(n268), .B(n249), .ZN(n247) );
  ND2D1BWP16P90LVT U349 ( .A1(n418), .A2(n419), .ZN(n417) );
  AOI21D2BWP16P90LVT U350 ( .A1(n166), .A2(n179), .B(n167), .ZN(n161) );
  AOI21D1BWP16P90LVT U351 ( .A1(n269), .A2(n277), .B(n270), .ZN(n268) );
  OAI21D1BWP16P90LVT U352 ( .A1(n184), .A2(n190), .B(n185), .ZN(n179) );
  ND2D2BWP16P90LVT U353 ( .A1(n426), .A2(n242), .ZN(n240) );
  CKND2BWP16P90LVT U354 ( .I(n424), .ZN(n425) );
  INVD1BWP16P90 U355 ( .I(n224), .ZN(n421) );
  INVD1BWP16P90LVT U356 ( .I(\A[8] ), .ZN(n418) );
  INVD1BWP16P90LVT U357 ( .I(\B[8] ), .ZN(n419) );
  FA1D2BWP16P90LVT U358 ( .A(n312), .B(n313), .CI(n33), .CO(n32), .S(SUM[31])
         );
  OAI21D2BWP16P90LVT U359 ( .A1(n34), .A2(n192), .B(n35), .ZN(n33) );
  NR2D1BWP16P90LVT U360 ( .A1(n428), .A2(n228), .ZN(n222) );
  AN2D1BWP16P90LVT U361 ( .A1(\A[7] ), .A2(\B[7] ), .Z(n420) );
  ND2D1BWP16P90LVT U362 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n245) );
  AOI21D1BWP16P90LVT U363 ( .A1(n193), .A2(n247), .B(n194), .ZN(n192) );
  NR2D1BWP16P90LVT U364 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n422) );
  AOI21D1BWP16P90LVT U365 ( .A1(n193), .A2(n247), .B(n194), .ZN(n423) );
  AOI21D1BWP16P90LVT U366 ( .A1(n193), .A2(n247), .B(n194), .ZN(n424) );
  OAI21D2BWP16P90LVT U367 ( .A1(n195), .A2(n222), .B(n196), .ZN(n194) );
  NR2D1BWP16P90LVT U368 ( .A1(n234), .A2(n229), .ZN(n227) );
  ND2D1BWP16P90 U369 ( .A1(n304), .A2(n245), .ZN(n24) );
  INVD1BWP16P90LVT U370 ( .I(n423), .ZN(n427) );
  AOI21D1BWP16P90LVT U371 ( .A1(n224), .A2(n209), .B(n212), .ZN(n208) );
  INVD1BWP16P90 U372 ( .I(n222), .ZN(n224) );
  INVD1BWP16P90 U373 ( .I(n110), .ZN(n287) );
  AOI21D1BWP16P90LVT U374 ( .A1(n197), .A2(n212), .B(n198), .ZN(n196) );
  ND2D1BWP16P90LVT U375 ( .A1(n417), .A2(n420), .ZN(n426) );
  ND2D1BWP16P90LVT U376 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n242) );
  AN2D1BWP16P90LVT U377 ( .A1(n240), .A2(n227), .Z(n428) );
  INVD1BWP16P90LVT U378 ( .I(n423), .ZN(n191) );
  INVD1BWP16P90 U379 ( .I(n221), .ZN(n223) );
  INVD1BWP16P90LVT U380 ( .I(n121), .ZN(n123) );
  INVD1BWP16P90 U381 ( .I(n81), .ZN(n83) );
  AOI21D1BWP16P90 U382 ( .A1(n267), .A2(n258), .B(n259), .ZN(n257) );
  INVD1BWP16P90 U383 ( .I(n268), .ZN(n267) );
  INVD1BWP16P90 U384 ( .I(n184), .ZN(n295) );
  INVD1BWP16P90 U385 ( .I(n173), .ZN(n294) );
  AOI21D1BWP16P90 U386 ( .A1(n191), .A2(n178), .B(n179), .ZN(n177) );
  INVD1BWP16P90 U387 ( .I(n168), .ZN(n293) );
  AOI21D1BWP16P90 U388 ( .A1(n191), .A2(n120), .B(n121), .ZN(n119) );
  NR2D1BWP16P90 U389 ( .A1(n265), .A2(n260), .ZN(n258) );
  AOI21D1BWP16P90 U390 ( .A1(n105), .A2(n95), .B(n96), .ZN(n94) );
  INVD1BWP16P90 U391 ( .I(n213), .ZN(n299) );
  INVD1BWP16P90 U392 ( .I(n199), .ZN(n297) );
  NR2D1BWP16P90 U393 ( .A1(n115), .A2(n110), .ZN(n104) );
  NR2D1BWP16P90 U394 ( .A1(n189), .A2(n184), .ZN(n178) );
  INVD1BWP16P90 U395 ( .I(n252), .ZN(n305) );
  INVD1BWP16P90 U396 ( .I(n255), .ZN(n306) );
  INVD1BWP16P90 U397 ( .I(n260), .ZN(n307) );
  INR2D1BWP16P90 U398 ( .A1(n178), .B1(n173), .ZN(n171) );
  INVD1BWP16P90 U399 ( .I(n271), .ZN(n309) );
  INVD1BWP16P90 U400 ( .I(n274), .ZN(n310) );
  INVD1BWP16P90 U401 ( .I(n265), .ZN(n308) );
  INVD1BWP16P90 U402 ( .I(n218), .ZN(n300) );
  INVD1BWP16P90 U403 ( .I(n204), .ZN(n298) );
  INVD1BWP16P90 U404 ( .I(n190), .ZN(n188) );
  INVD1BWP16P90 U405 ( .I(n219), .ZN(n217) );
  INVD1BWP16P90 U406 ( .I(n205), .ZN(n203) );
  NR2D1BWP16P90LVT U407 ( .A1(n244), .A2(n422), .ZN(n239) );
  INVD1BWP16P90 U408 ( .I(n278), .ZN(n311) );
  OAI21D1BWP16P90 U409 ( .A1(n229), .A2(n235), .B(n230), .ZN(n228) );
  CKND1BWP16P90LVT U410 ( .I(n120), .ZN(n122) );
  NR2D1BWP16P90LVT U411 ( .A1(n160), .A2(n126), .ZN(n120) );
  NR2D1BWP16P90LVT U412 ( .A1(n80), .A2(n38), .ZN(n36) );
  NR2D1BWP16P90LVT U413 ( .A1(n122), .A2(n93), .ZN(n91) );
  NR2D1BWP16P90LVT U414 ( .A1(n122), .A2(n71), .ZN(n69) );
  NR2D1BWP16P90LVT U415 ( .A1(n122), .A2(n58), .ZN(n56) );
  NR2D1BWP16P90LVT U416 ( .A1(n122), .A2(n47), .ZN(n45) );
  CKND1BWP16P90LVT U417 ( .I(n80), .ZN(n82) );
  CKND1BWP16P90LVT U418 ( .I(n160), .ZN(n162) );
  CKND1BWP16P90LVT U419 ( .I(n143), .ZN(n141) );
  CKND1BWP16P90LVT U420 ( .I(n142), .ZN(n140) );
  CKND1BWP16P90LVT U421 ( .I(n239), .ZN(n237) );
  NR2D1BWP16P90LVT U422 ( .A1(n221), .A2(n195), .ZN(n193) );
  OAI21D1BWP16P90LVT U423 ( .A1(n246), .A2(n207), .B(n208), .ZN(n206) );
  AOI21D1BWP16P90LVT U424 ( .A1(n83), .A2(n60), .B(n61), .ZN(n59) );
  AOI21D1BWP16P90LVT U425 ( .A1(n163), .A2(n144), .B(n147), .ZN(n143) );
  CKND1BWP16P90LVT U426 ( .I(n104), .ZN(n102) );
  OAI21D1BWP16P90LVT U427 ( .A1(n110), .A2(n118), .B(n111), .ZN(n105) );
  AOI21D1BWP16P90LVT U428 ( .A1(n40), .A2(n61), .B(n41), .ZN(n39) );
  OAI21D1BWP16P90LVT U429 ( .A1(n126), .A2(n161), .B(n127), .ZN(n121) );
  AOI21D1BWP16P90LVT U430 ( .A1(n128), .A2(n147), .B(n129), .ZN(n127) );
  NR2D1BWP16P90LVT U431 ( .A1(n274), .A2(n271), .ZN(n269) );
  AOI21D1BWP16P90LVT U432 ( .A1(n250), .A2(n259), .B(n251), .ZN(n249) );
  NR2D1BWP16P90LVT U433 ( .A1(n255), .A2(n252), .ZN(n250) );
  CKND1BWP16P90LVT U434 ( .I(n229), .ZN(n301) );
  XNR2D1BWP16P90LVT U435 ( .A1(n254), .A2(n25), .ZN(SUM[6]) );
  OAI21D1BWP16P90LVT U436 ( .A1(n260), .A2(n266), .B(n261), .ZN(n259) );
  XOR2D1BWP16P90LVT U437 ( .A1(n201), .A2(n17), .Z(SUM[14]) );
  AOI21D1BWP16P90LVT U438 ( .A1(n206), .A2(n298), .B(n203), .ZN(n201) );
  NR2D1BWP16P90LVT U439 ( .A1(n153), .A2(n148), .ZN(n144) );
  NR2D1BWP16P90LVT U440 ( .A1(n173), .A2(n168), .ZN(n166) );
  NR2D1BWP16P90LVT U441 ( .A1(n135), .A2(n130), .ZN(n128) );
  AOI21D1BWP16P90LVT U442 ( .A1(n49), .A2(n83), .B(n50), .ZN(n48) );
  CKND1BWP16P90LVT U443 ( .I(n61), .ZN(n63) );
  AOI21D1BWP16P90LVT U444 ( .A1(n45), .A2(n425), .B(n46), .ZN(n44) );
  CKND1BWP16P90LVT U445 ( .I(n42), .ZN(n281) );
  NR2D1BWP16P90LVT U446 ( .A1(n122), .A2(n80), .ZN(n78) );
  CKND1BWP16P90LVT U447 ( .I(n98), .ZN(n96) );
  CKND1BWP16P90LVT U448 ( .I(n88), .ZN(n285) );
  CKND1BWP16P90LVT U449 ( .I(n51), .ZN(n282) );
  AOI21D1BWP16P90LVT U450 ( .A1(n83), .A2(n73), .B(n74), .ZN(n72) );
  CKND1BWP16P90LVT U451 ( .I(n76), .ZN(n74) );
  CKND1BWP16P90LVT U452 ( .I(n66), .ZN(n283) );
  NR2D1BWP16P90LVT U453 ( .A1(n122), .A2(n102), .ZN(n100) );
  NR2D1BWP16P90LVT U454 ( .A1(n97), .A2(n88), .ZN(n86) );
  CKND1BWP16P90LVT U455 ( .I(n153), .ZN(n292) );
  CKND1BWP16P90LVT U456 ( .I(n148), .ZN(n291) );
  CKND1BWP16P90LVT U457 ( .I(n135), .ZN(n290) );
  CKND1BWP16P90LVT U458 ( .I(n130), .ZN(n289) );
  CKND1BWP16P90LVT U459 ( .I(n115), .ZN(n288) );
  CKND1BWP16P90LVT U460 ( .I(n32), .ZN(SUM[32]) );
  NR2D1BWP16P90LVT U461 ( .A1(n218), .A2(n213), .ZN(n209) );
  NR2D1BWP16P90LVT U462 ( .A1(n204), .A2(n199), .ZN(n197) );
  NR2D1BWP16P90LVT U463 ( .A1(n122), .A2(n115), .ZN(n113) );
  CKND1BWP16P90LVT U464 ( .I(n422), .ZN(n303) );
  NR2D1BWP16P90LVT U465 ( .A1(n75), .A2(n66), .ZN(n60) );
  NR2D1BWP16P90LVT U466 ( .A1(n51), .A2(n42), .ZN(n40) );
  XNR2D1BWP16P90LVT U467 ( .A1(n425), .A2(n16), .ZN(SUM[15]) );
  XNR2D1BWP16P90LVT U468 ( .A1(n236), .A2(n22), .ZN(SUM[9]) );
  XNR2D1BWP16P90LVT U469 ( .A1(n220), .A2(n20), .ZN(SUM[11]) );
  XNR2D1BWP16P90LVT U470 ( .A1(n206), .A2(n18), .ZN(SUM[13]) );
  NR2D1BWP16P90LVT U471 ( .A1(n142), .A2(n135), .ZN(n133) );
  XOR2D1BWP16P90LVT U472 ( .A1(n246), .A2(n24), .Z(SUM[7]) );
  CKND1BWP16P90LVT U473 ( .I(n244), .ZN(n304) );
  XOR2D1BWP16P90LVT U474 ( .A1(n257), .A2(n26), .Z(SUM[5]) );
  XOR2D1BWP16P90LVT U475 ( .A1(n262), .A2(n27), .Z(SUM[4]) );
  AOI21D1BWP16P90LVT U476 ( .A1(n267), .A2(n308), .B(n264), .ZN(n262) );
  XNR2D1BWP16P90LVT U477 ( .A1(n273), .A2(n29), .ZN(SUM[2]) );
  INR2D1BWP16P90LVT U478 ( .A1(n60), .B1(n51), .ZN(n49) );
  NR2D1BWP16P90LVT U479 ( .A1(n160), .A2(n153), .ZN(n151) );
  XNR2D1BWP16P90LVT U480 ( .A1(n267), .A2(n28), .ZN(SUM[3]) );
  CKND1BWP16P90LVT U481 ( .I(n75), .ZN(n73) );
  CKND1BWP16P90LVT U482 ( .I(n97), .ZN(n95) );
  XOR2D1BWP16P90LVT U483 ( .A1(n276), .A2(n30), .Z(SUM[1]) );
  CKND1BWP16P90LVT U484 ( .I(n189), .ZN(n296) );
  CKND1BWP16P90LVT U485 ( .I(n234), .ZN(n302) );
  CKND1BWP16P90LVT U486 ( .I(n235), .ZN(n233) );
  NR2D1BWP16P90LVT U487 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n110) );
  CKND1BWP16P90LVT U488 ( .I(\B[32] ), .ZN(n312) );
  CKND1BWP16P90LVT U489 ( .I(\A[32] ), .ZN(n313) );
  NR2D1BWP16P90LVT U490 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n184) );
  OAI21D1BWP16P90LVT U491 ( .A1(n278), .A2(n280), .B(n279), .ZN(n277) );
  CKND1BWP16P90LVT U492 ( .I(CI), .ZN(n280) );
  NR2D1BWP16P90LVT U493 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n271) );
  NR2D1BWP16P90LVT U494 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n148) );
  NR2D1BWP16P90LVT U495 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n252) );
  NR2D1BWP16P90LVT U496 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n278) );
  NR2D1BWP16P90LVT U497 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n213) );
  NR2D1BWP16P90LVT U498 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n88) );
  NR2D1BWP16P90LVT U499 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n229) );
  NR2D1BWP16P90LVT U500 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n260) );
  NR2D1BWP16P90LVT U501 ( .A1(\A[28] ), .A2(\B[28] ), .ZN(n66) );
  NR2D1BWP16P90LVT U502 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n168) );
  ND2D1BWP16P90LVT U503 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n266) );
  NR2D1BWP16P90LVT U504 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n153) );
  NR2D1BWP16P90LVT U505 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n173) );
  NR2D1BWP16P90LVT U506 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n135) );
  NR2D1BWP16P90LVT U507 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n255) );
  NR2D1BWP16P90LVT U508 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n274) );
  NR2D1BWP16P90LVT U509 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n130) );
  NR2D1BWP16P90LVT U510 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n234) );
  NR2D1BWP16P90LVT U511 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n115) );
  NR2D1BWP16P90LVT U512 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n97) );
  NR2D1BWP16P90LVT U513 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n199) );
  NR2D1BWP16P90LVT U514 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n265) );
  NR2D1BWP16P90LVT U515 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n218) );
  NR2D1BWP16P90LVT U516 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n244) );
  NR2D1BWP16P90LVT U517 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n204) );
  NR2D1BWP16P90LVT U518 ( .A1(\A[29] ), .A2(\B[29] ), .ZN(n51) );
  NR2D1BWP16P90LVT U519 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n189) );
  NR2D1BWP16P90LVT U520 ( .A1(\A[27] ), .A2(\B[27] ), .ZN(n75) );
  NR2D1BWP16P90LVT U521 ( .A1(\A[30] ), .A2(\B[30] ), .ZN(n42) );
  XNR2D1BWP16P90LVT U522 ( .A1(n31), .A2(CI), .ZN(SUM[0]) );
  XOR2D1BWP16P90LVT U523 ( .A1(n44), .A2(n1), .Z(SUM[30]) );
  XOR2D1BWP16P90LVT U524 ( .A1(n68), .A2(n3), .Z(SUM[28]) );
  AOI21D1BWP16P90LVT U525 ( .A1(n69), .A2(n425), .B(n70), .ZN(n68) );
  XOR2D1BWP16P90LVT U526 ( .A1(n90), .A2(n5), .Z(SUM[26]) );
  AOI21D1BWP16P90LVT U527 ( .A1(n91), .A2(n427), .B(n92), .ZN(n90) );
  XOR2D1BWP16P90LVT U528 ( .A1(n112), .A2(n7), .Z(SUM[24]) );
  AOI21D1BWP16P90LVT U529 ( .A1(n113), .A2(n425), .B(n114), .ZN(n112) );
  XOR2D1BWP16P90LVT U530 ( .A1(n55), .A2(n2), .Z(SUM[29]) );
  AOI21D1BWP16P90LVT U531 ( .A1(n56), .A2(n427), .B(n57), .ZN(n55) );
  XOR2D1BWP16P90LVT U532 ( .A1(n99), .A2(n6), .Z(SUM[25]) );
  AOI21D1BWP16P90LVT U533 ( .A1(n100), .A2(n425), .B(n101), .ZN(n99) );
  AOI21D1BWP16P90LVT U534 ( .A1(n86), .A2(n105), .B(n87), .ZN(n81) );
  CKND1BWP16P90LVT U535 ( .I(n105), .ZN(n103) );
  OAI21D1BWP16P90LVT U536 ( .A1(n246), .A2(n221), .B(n421), .ZN(n220) );
  OAI21D1BWP16P90LVT U537 ( .A1(n246), .A2(n237), .B(n238), .ZN(n236) );
  INVD1BWP16P90LVT U538 ( .I(n247), .ZN(n246) );
  XNR2D1BWP16P90LVT U539 ( .A1(n243), .A2(n23), .ZN(SUM[8]) );
  XOR2D1BWP16P90LVT U540 ( .A1(n132), .A2(n9), .Z(SUM[22]) );
  AOI21D1BWP16P90LVT U541 ( .A1(n425), .A2(n133), .B(n134), .ZN(n132) );
  OAI21D1BWP16P90 U542 ( .A1(n246), .A2(n244), .B(n245), .ZN(n243) );
  AOI21D1BWP16P90LVT U543 ( .A1(n427), .A2(n151), .B(n152), .ZN(n150) );
  CKND1BWP16P90LVT U544 ( .I(n266), .ZN(n264) );
  INVD1BWP16P90 U545 ( .I(n277), .ZN(n276) );
  XOR2D1BWP16P90LVT U546 ( .A1(n150), .A2(n11), .Z(SUM[20]) );
  CKND1BWP16P90LVT U547 ( .I(n161), .ZN(n163) );
  OAI21D1BWP16P90 U548 ( .A1(n161), .A2(n153), .B(n156), .ZN(n152) );
  INVD1BWP16P90 U549 ( .I(n179), .ZN(n181) );
  XOR2D1BWP16P90LVT U550 ( .A1(n170), .A2(n13), .Z(SUM[18]) );
  AOI21D1BWP16P90LVT U551 ( .A1(n425), .A2(n171), .B(n172), .ZN(n170) );
  XOR2D1BWP16P90LVT U552 ( .A1(n186), .A2(n15), .Z(SUM[16]) );
  AOI21D1BWP16P90LVT U553 ( .A1(n425), .A2(n296), .B(n188), .ZN(n186) );
  INVD1BWP16P90 U554 ( .I(n240), .ZN(n238) );
  XOR2D1BWP16P90LVT U555 ( .A1(n119), .A2(n8), .Z(SUM[23]) );
  XOR2D1BWP16P90LVT U556 ( .A1(n139), .A2(n10), .Z(SUM[21]) );
  AOI21D1BWP16P90LVT U557 ( .A1(n425), .A2(n140), .B(n141), .ZN(n139) );
  XOR2D1BWP16P90LVT U558 ( .A1(n157), .A2(n12), .Z(SUM[19]) );
  AOI21D1BWP16P90LVT U559 ( .A1(n427), .A2(n162), .B(n163), .ZN(n157) );
  XOR2D1BWP16P90LVT U560 ( .A1(n177), .A2(n14), .Z(SUM[17]) );
  XOR2D1BWP16P90LVT U561 ( .A1(n77), .A2(n4), .Z(SUM[27]) );
  AOI21D1BWP16P90LVT U562 ( .A1(n78), .A2(n427), .B(n79), .ZN(n77) );
  AOI21D1BWP16P90LVT U563 ( .A1(n36), .A2(n121), .B(n37), .ZN(n35) );
  XOR2D1BWP16P90LVT U564 ( .A1(n215), .A2(n19), .Z(SUM[12]) );
  AOI21D1BWP16P90LVT U565 ( .A1(n220), .A2(n300), .B(n217), .ZN(n215) );
  XOR2D1BWP16P90LVT U566 ( .A1(n231), .A2(n21), .Z(SUM[10]) );
  AOI21D1BWP16P90LVT U567 ( .A1(n236), .A2(n302), .B(n233), .ZN(n231) );
endmodule


module adder_behavior_reg ( s, co, a, b, ci, clk );
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
  adder_behavior_reg_DW01_add_1 add_1_root_add_12_2 ( .CI(ci), .SUM({N65, N64, 
        N63, N62, N61, N60, N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, 
        N49, N48, N47, N46, N45, N44, N43, N42, N41, N40, N39, N38, N37, N36, 
        N35, N34, N33}), .\A[32] (a[31]), .\A[30] (a[30]), .\A[29] (a[29]), 
        .\A[28] (a[28]), .\A[27] (a[27]), .\A[26] (a[26]), .\A[25] (a[25]), 
        .\A[24] (a[24]), .\A[23] (a[23]), .\A[22] (a[22]), .\A[21] (a[21]), 
        .\A[20] (a[20]), .\A[19] (a[19]), .\A[18] (a[18]), .\A[17] (a[17]), 
        .\A[16] (a[16]), .\A[15] (a[15]), .\A[14] (a[14]), .\A[13] (a[13]), 
        .\A[12] (a[12]), .\A[11] (a[11]), .\A[10] (a[10]), .\A[9] (a[9]), 
        .\A[8] (a[8]), .\A[7] (a[7]), .\A[6] (a[6]), .\A[5] (a[5]), .\A[4] (
        a[4]), .\A[3] (a[3]), .\A[2] (a[2]), .\A[1] (a[1]), .\A[0] (a[0]), 
        .\B[32] (b[31]), .\B[30] (b[30]), .\B[29] (b[29]), .\B[28] (b[28]), 
        .\B[27] (b[27]), .\B[26] (b[26]), .\B[25] (b[25]), .\B[24] (b[24]), 
        .\B[23] (b[23]), .\B[22] (b[22]), .\B[21] (b[21]), .\B[20] (b[20]), 
        .\B[19] (b[19]), .\B[18] (b[18]), .\B[17] (b[17]), .\B[16] (b[16]), 
        .\B[15] (b[15]), .\B[14] (b[14]), .\B[13] (b[13]), .\B[12] (b[12]), 
        .\B[11] (b[11]), .\B[10] (b[10]), .\B[9] (b[9]), .\B[8] (b[8]), 
        .\B[7] (b[7]), .\B[6] (b[6]), .\B[5] (b[5]), .\B[4] (b[4]), .\B[3] (
        b[3]), .\B[2] (b[2]), .\B[1] (b[1]), .\B[0] (b[0]) );
endmodule

