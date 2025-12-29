/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 17:28:51 2025
/////////////////////////////////////////////////////////////


module adder_dataflow_DW01_add_1 ( CI, SUM, \A[32] , \A[30] , \A[29] , \A[28] , 
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
         n31, n32, n33, n34, n35, n36, n38, n40, n41, n42, n43, n44, n46, n48,
         n49, n50, n51, n52, n54, n56, n57, n58, n59, n60, n62, n64, n65, n66,
         n67, n68, n70, n72, n73, n74, n75, n76, n78, n80, n81, n82, n83, n84,
         n86, n88, n89, n90, n91, n92, n94, n96, n97, n98, n99, n100, n102,
         n104, n105, n106, n107, n108, n110, n112, n113, n114, n115, n116,
         n118, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134, n135, n136, n137, n139, n141, n143,
         n145, n147, n149, n151, n153, n155, n157, n159, n160, n161, n162,
         n163, n164, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290;

  FA1D1BWP16P90LVT U2 ( .A(n163), .B(n164), .CI(n28), .CO(n27), .S(SUM[31]) );
  FA1D1BWP16P90LVT U3 ( .A(\B[30] ), .B(\A[30] ), .CI(n29), .CO(n28), .S(
        SUM[30]) );
  FA1D1BWP16P90LVT U5 ( .A(\B[28] ), .B(\A[28] ), .CI(n31), .CO(n30), .S(
        SUM[28]) );
  FA1D1BWP16P90LVT U6 ( .A(\B[27] ), .B(\A[27] ), .CI(n32), .CO(n31), .S(
        SUM[27]) );
  FA1D1BWP16P90LVT U7 ( .A(\B[26] ), .B(\A[26] ), .CI(n33), .CO(n32), .S(
        SUM[26]) );
  ND2D1BWP16P90LVT U10 ( .A1(n137), .A2(n35), .ZN(n1) );
  ND2D1BWP16P90LVT U13 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n35) );
  ND2D1BWP16P90LVT U18 ( .A1(n290), .A2(n40), .ZN(n2) );
  ND2D1BWP16P90LVT U21 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n40) );
  ND2D1BWP16P90LVT U24 ( .A1(n139), .A2(n43), .ZN(n3) );
  ND2D1BWP16P90LVT U27 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n43) );
  ND2D1BWP16P90LVT U32 ( .A1(n289), .A2(n48), .ZN(n4) );
  ND2D1BWP16P90LVT U35 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n48) );
  ND2D1BWP16P90LVT U38 ( .A1(n141), .A2(n51), .ZN(n5) );
  ND2D1BWP16P90LVT U41 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n51) );
  ND2D1BWP16P90LVT U46 ( .A1(n288), .A2(n56), .ZN(n6) );
  ND2D1BWP16P90LVT U49 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n56) );
  ND2D1BWP16P90LVT U52 ( .A1(n143), .A2(n59), .ZN(n7) );
  ND2D1BWP16P90LVT U55 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n59) );
  ND2D1BWP16P90LVT U60 ( .A1(n287), .A2(n64), .ZN(n8) );
  ND2D1BWP16P90LVT U63 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n64) );
  ND2D1BWP16P90LVT U66 ( .A1(n145), .A2(n67), .ZN(n9) );
  ND2D1BWP16P90LVT U69 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n67) );
  ND2D1BWP16P90LVT U74 ( .A1(n286), .A2(n72), .ZN(n10) );
  ND2D1BWP16P90LVT U77 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n72) );
  ND2D1BWP16P90LVT U80 ( .A1(n147), .A2(n75), .ZN(n11) );
  ND2D1BWP16P90LVT U83 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n75) );
  ND2D1BWP16P90LVT U88 ( .A1(n285), .A2(n80), .ZN(n12) );
  ND2D1BWP16P90LVT U91 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n80) );
  ND2D1BWP16P90LVT U94 ( .A1(n149), .A2(n83), .ZN(n13) );
  ND2D1BWP16P90LVT U97 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n83) );
  ND2D1BWP16P90LVT U102 ( .A1(n284), .A2(n88), .ZN(n14) );
  ND2D1BWP16P90LVT U105 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n88) );
  ND2D1BWP16P90LVT U108 ( .A1(n151), .A2(n91), .ZN(n15) );
  ND2D1BWP16P90LVT U111 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n91) );
  ND2D1BWP16P90LVT U116 ( .A1(n283), .A2(n96), .ZN(n16) );
  ND2D1BWP16P90LVT U119 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n96) );
  ND2D1BWP16P90LVT U122 ( .A1(n153), .A2(n99), .ZN(n17) );
  ND2D1BWP16P90LVT U125 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n99) );
  ND2D1BWP16P90LVT U130 ( .A1(n282), .A2(n104), .ZN(n18) );
  ND2D1BWP16P90LVT U133 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n104) );
  ND2D1BWP16P90LVT U136 ( .A1(n155), .A2(n107), .ZN(n19) );
  ND2D1BWP16P90LVT U139 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n107) );
  ND2D1BWP16P90LVT U144 ( .A1(n281), .A2(n112), .ZN(n20) );
  ND2D1BWP16P90LVT U147 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n112) );
  ND2D1BWP16P90LVT U150 ( .A1(n157), .A2(n115), .ZN(n21) );
  ND2D1BWP16P90LVT U153 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n115) );
  ND2D1BWP16P90LVT U158 ( .A1(n280), .A2(n120), .ZN(n22) );
  ND2D1BWP16P90LVT U161 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n120) );
  ND2D1BWP16P90LVT U164 ( .A1(n159), .A2(n123), .ZN(n23) );
  ND2D1BWP16P90LVT U167 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n123) );
  OAI21D1BWP16P90LVT U171 ( .A1(n127), .A2(n131), .B(n128), .ZN(n126) );
  ND2D1BWP16P90LVT U172 ( .A1(n160), .A2(n128), .ZN(n24) );
  ND2D1BWP16P90LVT U175 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n128) );
  OAI21D1BWP16P90LVT U177 ( .A1(n132), .A2(n130), .B(n131), .ZN(n129) );
  ND2D1BWP16P90LVT U178 ( .A1(n161), .A2(n131), .ZN(n25) );
  ND2D1BWP16P90LVT U181 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n131) );
  ND2D1BWP16P90LVT U185 ( .A1(n162), .A2(n135), .ZN(n26) );
  ND2D1BWP16P90LVT U188 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n135) );
  NR2D1BWP16P90LVT U194 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n127) );
  OAI21D1BWP16P90LVT U195 ( .A1(n134), .A2(n136), .B(n135), .ZN(n133) );
  AOI21D1BWP16P90LVT U196 ( .A1(n97), .A2(n283), .B(n94), .ZN(n92) );
  AOI21D1BWP16P90LVT U197 ( .A1(n121), .A2(n280), .B(n118), .ZN(n268) );
  OAI21D1BWP16P90LVT U198 ( .A1(n92), .A2(n90), .B(n91), .ZN(n89) );
  OAI21D1BWP16P90LVT U199 ( .A1(n124), .A2(n122), .B(n123), .ZN(n121) );
  AOI21D1BWP16P90LVT U200 ( .A1(n49), .A2(n289), .B(n46), .ZN(n44) );
  AOI21D1BWP16P90LVT U201 ( .A1(n65), .A2(n287), .B(n62), .ZN(n60) );
  AOI21D1BWP16P90LVT U202 ( .A1(n41), .A2(n290), .B(n38), .ZN(n274) );
  OAI21D1BWP16P90LVT U203 ( .A1(n68), .A2(n66), .B(n67), .ZN(n65) );
  AOI21D1BWP16P90LVT U204 ( .A1(n73), .A2(n286), .B(n70), .ZN(n68) );
  OAI21D1BWP16P90LVT U205 ( .A1(n44), .A2(n42), .B(n43), .ZN(n41) );
  OAI21D1BWP16P90LVT U206 ( .A1(n52), .A2(n50), .B(n51), .ZN(n49) );
  AOI21D1BWP16P90LVT U207 ( .A1(n81), .A2(n285), .B(n78), .ZN(n76) );
  OAI21D1BWP16P90LVT U208 ( .A1(n76), .A2(n74), .B(n75), .ZN(n73) );
  AOI21D1BWP16P90 U209 ( .A1(n121), .A2(n280), .B(n118), .ZN(n116) );
  OAI21D1BWP16P90 U210 ( .A1(n76), .A2(n74), .B(n75), .ZN(n269) );
  AOI21D1BWP16P90 U211 ( .A1(n89), .A2(n284), .B(n86), .ZN(n270) );
  AOI21D1BWP16P90LVT U212 ( .A1(n89), .A2(n284), .B(n86), .ZN(n84) );
  OAI21D1BWP16P90LVT U213 ( .A1(n84), .A2(n82), .B(n83), .ZN(n81) );
  OAI21D1BWP16P90 U214 ( .A1(n92), .A2(n90), .B(n91), .ZN(n271) );
  AOI21D1BWP16P90 U215 ( .A1(n269), .A2(n286), .B(n70), .ZN(n272) );
  OAI21D1BWP16P90 U216 ( .A1(n44), .A2(n42), .B(n43), .ZN(n273) );
  AOI21D1BWP16P90LVT U217 ( .A1(n125), .A2(n133), .B(n126), .ZN(n124) );
  AOI21D1BWP16P90 U218 ( .A1(n273), .A2(n290), .B(n38), .ZN(n36) );
  AOI21D1BWP16P90 U219 ( .A1(n65), .A2(n287), .B(n62), .ZN(n275) );
  OAI21D1BWP16P90 U220 ( .A1(n270), .A2(n82), .B(n83), .ZN(n276) );
  AOI21D1BWP16P90LVT U221 ( .A1(n57), .A2(n288), .B(n54), .ZN(n52) );
  INVD1BWP16P90LVT U222 ( .I(n27), .ZN(SUM[32]) );
  XOR2D1BWP16P90 U223 ( .A1(n36), .A2(n1), .Z(SUM[25]) );
  XNR2D1BWP16P90 U224 ( .A1(n273), .A2(n2), .ZN(SUM[24]) );
  XOR2D1BWP16P90 U225 ( .A1(n3), .A2(n44), .Z(SUM[23]) );
  XNR2D1BWP16P90 U226 ( .A1(n49), .A2(n4), .ZN(SUM[22]) );
  XOR2D1BWP16P90 U227 ( .A1(n52), .A2(n5), .Z(SUM[21]) );
  XOR2D1BWP16P90 U228 ( .A1(n272), .A2(n9), .Z(SUM[17]) );
  XNR2D1BWP16P90 U229 ( .A1(n269), .A2(n10), .ZN(SUM[16]) );
  XNR2D1BWP16P90 U230 ( .A1(n271), .A2(n14), .ZN(SUM[12]) );
  XOR2D1BWP16P90 U231 ( .A1(n92), .A2(n15), .Z(SUM[11]) );
  XNR2D1BWP16P90 U232 ( .A1(n97), .A2(n16), .ZN(SUM[10]) );
  XOR2D1BWP16P90 U233 ( .A1(n100), .A2(n17), .Z(SUM[9]) );
  XNR2D1BWP16P90 U234 ( .A1(n105), .A2(n18), .ZN(SUM[8]) );
  XOR2D1BWP16P90 U235 ( .A1(n108), .A2(n19), .Z(SUM[7]) );
  XNR2D1BWP16P90 U236 ( .A1(n113), .A2(n20), .ZN(SUM[6]) );
  INVD1BWP16P90 U237 ( .I(n114), .ZN(n157) );
  XOR2D1BWP16P90 U238 ( .A1(n116), .A2(n21), .Z(SUM[5]) );
  XNR2D1BWP16P90 U239 ( .A1(n121), .A2(n22), .ZN(SUM[4]) );
  INVD1BWP16P90 U240 ( .I(n127), .ZN(n160) );
  INVD1BWP16P90 U241 ( .I(n122), .ZN(n159) );
  INVD1BWP16P90 U242 ( .I(n130), .ZN(n161) );
  OAI21D1BWP16P90LVT U243 ( .A1(n60), .A2(n58), .B(n59), .ZN(n57) );
  AOI21D1BWP16P90 U244 ( .A1(n125), .A2(n133), .B(n126), .ZN(n277) );
  OAI21D1BWP16P90 U245 ( .A1(n275), .A2(n58), .B(n59), .ZN(n278) );
  AOI21D1BWP16P90 U246 ( .A1(n276), .A2(n285), .B(n78), .ZN(n279) );
  NR2D1BWP16P90LVT U247 ( .A1(n130), .A2(n127), .ZN(n125) );
  CKND1BWP16P90LVT U248 ( .I(n72), .ZN(n70) );
  CKND1BWP16P90LVT U249 ( .I(n64), .ZN(n62) );
  CKND1BWP16P90LVT U250 ( .I(n48), .ZN(n46) );
  CKND1BWP16P90LVT U251 ( .I(n80), .ZN(n78) );
  CKND1BWP16P90LVT U252 ( .I(n88), .ZN(n86) );
  AOI21D1BWP16P90LVT U253 ( .A1(n113), .A2(n281), .B(n110), .ZN(n108) );
  CKND1BWP16P90LVT U254 ( .I(n112), .ZN(n110) );
  AOI21D1BWP16P90LVT U255 ( .A1(n105), .A2(n282), .B(n102), .ZN(n100) );
  CKND1BWP16P90LVT U256 ( .I(n104), .ZN(n102) );
  CKND1BWP16P90LVT U257 ( .I(n96), .ZN(n94) );
  OAI21D1BWP16P90LVT U258 ( .A1(n268), .A2(n114), .B(n115), .ZN(n113) );
  OAI21D1BWP16P90LVT U259 ( .A1(n108), .A2(n106), .B(n107), .ZN(n105) );
  OAI21D1BWP16P90LVT U260 ( .A1(n100), .A2(n98), .B(n99), .ZN(n97) );
  CKND1BWP16P90LVT U261 ( .I(n56), .ZN(n54) );
  CKND1BWP16P90LVT U262 ( .I(n120), .ZN(n118) );
  CKND1BWP16P90LVT U263 ( .I(n40), .ZN(n38) );
  CKND1BWP16P90LVT U264 ( .I(n34), .ZN(n137) );
  CKND1BWP16P90LVT U265 ( .I(n42), .ZN(n139) );
  CKND1BWP16P90LVT U266 ( .I(n50), .ZN(n141) );
  XNR2D1BWP16P90LVT U267 ( .A1(n278), .A2(n6), .ZN(SUM[20]) );
  XOR2D1BWP16P90LVT U268 ( .A1(n275), .A2(n7), .Z(SUM[19]) );
  CKND1BWP16P90LVT U269 ( .I(n58), .ZN(n143) );
  XNR2D1BWP16P90LVT U270 ( .A1(n8), .A2(n65), .ZN(SUM[18]) );
  CKND1BWP16P90LVT U271 ( .I(n66), .ZN(n145) );
  XOR2D1BWP16P90LVT U272 ( .A1(n279), .A2(n11), .Z(SUM[15]) );
  CKND1BWP16P90LVT U273 ( .I(n74), .ZN(n147) );
  XNR2D1BWP16P90LVT U274 ( .A1(n276), .A2(n12), .ZN(SUM[14]) );
  XOR2D1BWP16P90LVT U275 ( .A1(n270), .A2(n13), .Z(SUM[13]) );
  CKND1BWP16P90LVT U276 ( .I(n82), .ZN(n149) );
  CKND1BWP16P90LVT U277 ( .I(n90), .ZN(n151) );
  CKND1BWP16P90LVT U278 ( .I(n98), .ZN(n153) );
  CKND1BWP16P90LVT U279 ( .I(n106), .ZN(n155) );
  CKND1BWP16P90LVT U280 ( .I(n133), .ZN(n132) );
  XNR2D1BWP16P90LVT U281 ( .A1(n129), .A2(n24), .ZN(SUM[2]) );
  XOR2D1BWP16P90LVT U282 ( .A1(n277), .A2(n23), .Z(SUM[3]) );
  XOR2D1BWP16P90LVT U283 ( .A1(n132), .A2(n25), .Z(SUM[1]) );
  OAI21D1BWP16P90LVT U284 ( .A1(n274), .A2(n34), .B(n35), .ZN(n33) );
  FA1D1BWP16P90LVT U285 ( .A(\B[29] ), .B(\A[29] ), .CI(n30), .CO(n29), .S(
        SUM[29]) );
  CKND1BWP16P90LVT U286 ( .I(\B[32] ), .ZN(n163) );
  CKND1BWP16P90LVT U287 ( .I(\A[32] ), .ZN(n164) );
  CKND1BWP16P90LVT U288 ( .I(CI), .ZN(n136) );
  NR2D1BWP16P90LVT U289 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n134) );
  NR2D1BWP16P90LVT U290 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n130) );
  NR2D1BWP16P90LVT U291 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n122) );
  OR2D1BWP16P90LVT U292 ( .A1(\A[4] ), .A2(\B[4] ), .Z(n280) );
  NR2D1BWP16P90LVT U293 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n114) );
  OR2D1BWP16P90LVT U294 ( .A1(\A[6] ), .A2(\B[6] ), .Z(n281) );
  NR2D1BWP16P90LVT U295 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n106) );
  OR2D1BWP16P90LVT U296 ( .A1(\A[8] ), .A2(\B[8] ), .Z(n282) );
  NR2D1BWP16P90LVT U297 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n98) );
  OR2D1BWP16P90LVT U298 ( .A1(\A[10] ), .A2(\B[10] ), .Z(n283) );
  NR2D1BWP16P90LVT U299 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n90) );
  OR2D1BWP16P90LVT U300 ( .A1(\A[12] ), .A2(\B[12] ), .Z(n284) );
  NR2D1BWP16P90LVT U301 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n82) );
  OR2D1BWP16P90LVT U302 ( .A1(\A[14] ), .A2(\B[14] ), .Z(n285) );
  NR2D1BWP16P90LVT U303 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n74) );
  OR2D1BWP16P90LVT U304 ( .A1(\A[16] ), .A2(\B[16] ), .Z(n286) );
  NR2D1BWP16P90LVT U305 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n66) );
  OR2D1BWP16P90LVT U306 ( .A1(\A[18] ), .A2(\B[18] ), .Z(n287) );
  NR2D1BWP16P90LVT U307 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n58) );
  OR2D1BWP16P90LVT U308 ( .A1(\A[20] ), .A2(\B[20] ), .Z(n288) );
  NR2D1BWP16P90LVT U309 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n50) );
  OR2D1BWP16P90LVT U310 ( .A1(\A[22] ), .A2(\B[22] ), .Z(n289) );
  NR2D1BWP16P90LVT U311 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n42) );
  OR2D1BWP16P90LVT U312 ( .A1(\A[24] ), .A2(\B[24] ), .Z(n290) );
  NR2D1BWP16P90LVT U313 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n34) );
  XNR2D1BWP16P90LVT U314 ( .A1(n26), .A2(CI), .ZN(SUM[0]) );
  CKND1BWP16P90LVT U315 ( .I(n134), .ZN(n162) );
endmodule


module adder_dataflow ( s, co, a, b, ci );
  output [31:0] s;
  input [31:0] a;
  input [31:0] b;
  input ci;
  output co;


  adder_dataflow_DW01_add_1 add_1_root_add_10_2 ( .CI(ci), .SUM({co, s}), 
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

