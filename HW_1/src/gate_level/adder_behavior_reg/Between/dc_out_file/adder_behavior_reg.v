/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 18:56:38 2025
/////////////////////////////////////////////////////////////


module adder_behavior_reg_DW01_add_2 ( CI, SUM, \A[32] , \A[30] , \A[29] , 
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
         n31, n32, n33, n34, n35, n36, n38, n40, n41, n42, n43, n44, n46, n48,
         n49, n50, n51, n52, n54, n56, n57, n58, n59, n60, n62, n64, n65, n66,
         n67, n68, n70, n72, n73, n74, n75, n76, n78, n80, n81, n82, n83, n84,
         n86, n88, n89, n90, n91, n92, n94, n96, n97, n98, n99, n100, n102,
         n104, n105, n106, n107, n108, n110, n112, n113, n114, n115, n116,
         n118, n120, n121, n122, n123, n124, n126, n128, n129, n130, n131,
         n132, n134, n136, n137, n138, n139, n140, n141, n143, n145, n147,
         n149, n151, n153, n155, n157, n159, n161, n163, n165, n167, n168,
         n169, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297;

  FA1D1BWP16P90LVT U2 ( .A(n168), .B(n169), .CI(n29), .CO(n28), .S(SUM[31]) );
  FA1D1BWP16P90LVT U5 ( .A(\B[28] ), .B(\A[28] ), .CI(n32), .CO(n31), .S(
        SUM[28]) );
  ND2D1BWP16P90LVT U9 ( .A1(n141), .A2(n35), .ZN(n1) );
  ND2D1BWP16P90LVT U12 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n35) );
  ND2D1BWP16P90LVT U17 ( .A1(n297), .A2(n40), .ZN(n2) );
  ND2D1BWP16P90LVT U20 ( .A1(\A[25] ), .A2(\B[25] ), .ZN(n40) );
  ND2D1BWP16P90LVT U23 ( .A1(n143), .A2(n43), .ZN(n3) );
  ND2D1BWP16P90LVT U26 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n43) );
  ND2D1BWP16P90LVT U31 ( .A1(n296), .A2(n48), .ZN(n4) );
  ND2D1BWP16P90LVT U34 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n48) );
  ND2D1BWP16P90LVT U37 ( .A1(n145), .A2(n51), .ZN(n5) );
  ND2D1BWP16P90LVT U40 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n51) );
  ND2D1BWP16P90LVT U45 ( .A1(n295), .A2(n56), .ZN(n6) );
  ND2D1BWP16P90LVT U48 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n56) );
  ND2D1BWP16P90LVT U51 ( .A1(n147), .A2(n59), .ZN(n7) );
  ND2D1BWP16P90LVT U54 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n59) );
  ND2D1BWP16P90LVT U59 ( .A1(n294), .A2(n64), .ZN(n8) );
  ND2D1BWP16P90LVT U62 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n64) );
  ND2D1BWP16P90LVT U65 ( .A1(n149), .A2(n67), .ZN(n9) );
  ND2D1BWP16P90LVT U68 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n67) );
  ND2D1BWP16P90LVT U73 ( .A1(n293), .A2(n72), .ZN(n10) );
  ND2D1BWP16P90LVT U76 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n72) );
  ND2D1BWP16P90LVT U79 ( .A1(n151), .A2(n75), .ZN(n11) );
  ND2D1BWP16P90LVT U82 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n75) );
  ND2D1BWP16P90LVT U87 ( .A1(n292), .A2(n80), .ZN(n12) );
  ND2D1BWP16P90LVT U90 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n80) );
  ND2D1BWP16P90LVT U93 ( .A1(n153), .A2(n83), .ZN(n13) );
  ND2D1BWP16P90LVT U96 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n83) );
  ND2D1BWP16P90LVT U101 ( .A1(n291), .A2(n88), .ZN(n14) );
  ND2D1BWP16P90LVT U104 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n88) );
  ND2D1BWP16P90LVT U107 ( .A1(n155), .A2(n91), .ZN(n15) );
  ND2D1BWP16P90LVT U110 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n91) );
  ND2D1BWP16P90LVT U115 ( .A1(n290), .A2(n96), .ZN(n16) );
  ND2D1BWP16P90LVT U118 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n96) );
  ND2D1BWP16P90LVT U121 ( .A1(n157), .A2(n99), .ZN(n17) );
  ND2D1BWP16P90LVT U124 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n99) );
  ND2D1BWP16P90LVT U129 ( .A1(n289), .A2(n104), .ZN(n18) );
  ND2D1BWP16P90LVT U132 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n104) );
  ND2D1BWP16P90LVT U135 ( .A1(n159), .A2(n107), .ZN(n19) );
  ND2D1BWP16P90LVT U138 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n107) );
  ND2D1BWP16P90LVT U143 ( .A1(n288), .A2(n112), .ZN(n20) );
  ND2D1BWP16P90LVT U146 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n112) );
  ND2D1BWP16P90LVT U149 ( .A1(n161), .A2(n115), .ZN(n21) );
  ND2D1BWP16P90LVT U152 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n115) );
  ND2D1BWP16P90LVT U157 ( .A1(n287), .A2(n120), .ZN(n22) );
  ND2D1BWP16P90LVT U160 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n120) );
  ND2D1BWP16P90LVT U163 ( .A1(n163), .A2(n123), .ZN(n23) );
  ND2D1BWP16P90LVT U166 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n123) );
  ND2D1BWP16P90LVT U171 ( .A1(n286), .A2(n128), .ZN(n24) );
  ND2D1BWP16P90LVT U174 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n128) );
  ND2D1BWP16P90LVT U177 ( .A1(n165), .A2(n131), .ZN(n25) );
  ND2D1BWP16P90LVT U180 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n131) );
  ND2D1BWP16P90LVT U185 ( .A1(n285), .A2(n136), .ZN(n26) );
  ND2D1BWP16P90LVT U188 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n136) );
  ND2D1BWP16P90LVT U191 ( .A1(n167), .A2(n139), .ZN(n27) );
  ND2D1BWP16P90LVT U194 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n139) );
  OAI21D2BWP16P90LVT U200 ( .A1(n52), .A2(n50), .B(n51), .ZN(n49) );
  FA1D2BWP16P90LVT U201 ( .A(\B[27] ), .B(\A[27] ), .CI(n33), .CO(n32), .S(
        SUM[27]) );
  OAI21D2BWP16P90LVT U202 ( .A1(n278), .A2(n34), .B(n35), .ZN(n33) );
  AOI21D1BWP16P90LVT U203 ( .A1(n97), .A2(n290), .B(n94), .ZN(n92) );
  OAI21D1BWP16P90LVT U204 ( .A1(n92), .A2(n90), .B(n91), .ZN(n89) );
  CKND1BWP16P90LVT U205 ( .I(n136), .ZN(n134) );
  AOI21D1BWP16P90LVT U206 ( .A1(n65), .A2(n294), .B(n62), .ZN(n60) );
  OAI21D1BWP16P90LVT U207 ( .A1(n132), .A2(n130), .B(n131), .ZN(n129) );
  AOI21D1BWP16P90LVT U208 ( .A1(n89), .A2(n291), .B(n86), .ZN(n84) );
  AOI21D1BWP16P90LVT U209 ( .A1(n73), .A2(n293), .B(n70), .ZN(n68) );
  AOI21D1BWP16P90LVT U210 ( .A1(n129), .A2(n286), .B(n126), .ZN(n274) );
  AOI21D1BWP16P90LVT U211 ( .A1(n81), .A2(n292), .B(n78), .ZN(n76) );
  OAI21D1BWP16P90LVT U212 ( .A1(n76), .A2(n74), .B(n75), .ZN(n73) );
  CKND1BWP16P90LVT U213 ( .I(CI), .ZN(n140) );
  AOI21D1BWP16P90LVT U214 ( .A1(n49), .A2(n296), .B(n46), .ZN(n273) );
  OAI21D1BWP16P90LVT U215 ( .A1(n84), .A2(n82), .B(n83), .ZN(n81) );
  AOI21D1BWP16P90LVT U216 ( .A1(n41), .A2(n297), .B(n38), .ZN(n278) );
  OAI21D1BWP16P90LVT U217 ( .A1(n138), .A2(n140), .B(n139), .ZN(n137) );
  AOI21D1BWP16P90LVT U218 ( .A1(n49), .A2(n296), .B(n46), .ZN(n44) );
  OAI21D1BWP16P90LVT U219 ( .A1(n44), .A2(n42), .B(n43), .ZN(n41) );
  NR2D1BWP16P90LVT U220 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n138) );
  AOI21D1BWP16P90 U221 ( .A1(n129), .A2(n286), .B(n126), .ZN(n124) );
  AOI21D1BWP16P90 U222 ( .A1(n73), .A2(n293), .B(n70), .ZN(n275) );
  OAI21D1BWP16P90 U223 ( .A1(n273), .A2(n42), .B(n43), .ZN(n276) );
  AOI21D1BWP16P90 U224 ( .A1(n89), .A2(n291), .B(n86), .ZN(n277) );
  BUFFD1BWP16P90LVT U225 ( .I(n60), .Z(n283) );
  BUFFD1BWP16P90LVT U226 ( .I(n76), .Z(n284) );
  AOI21D1BWP16P90LVT U227 ( .A1(n137), .A2(n285), .B(n134), .ZN(n132) );
  OAI21D1BWP16P90LVT U228 ( .A1(n68), .A2(n66), .B(n67), .ZN(n65) );
  AOI21D1BWP16P90 U229 ( .A1(n276), .A2(n297), .B(n38), .ZN(n36) );
  OAI21D1BWP16P90 U230 ( .A1(n138), .A2(n140), .B(n139), .ZN(n279) );
  OAI21D1BWP16P90 U231 ( .A1(n275), .A2(n66), .B(n67), .ZN(n280) );
  OAI21D1BWP16P90 U232 ( .A1(n277), .A2(n82), .B(n83), .ZN(n281) );
  OAI21D1BWP16P90LVT U233 ( .A1(n60), .A2(n58), .B(n59), .ZN(n57) );
  INVD1BWP16P90LVT U234 ( .I(n28), .ZN(SUM[32]) );
  XOR2D1BWP16P90 U235 ( .A1(n36), .A2(n1), .Z(SUM[26]) );
  XNR2D1BWP16P90 U236 ( .A1(n276), .A2(n2), .ZN(SUM[25]) );
  XOR2D1BWP16P90 U237 ( .A1(n273), .A2(n3), .Z(SUM[24]) );
  XNR2D1BWP16P90 U238 ( .A1(n49), .A2(n4), .ZN(SUM[23]) );
  XOR2D1BWP16P90 U239 ( .A1(n52), .A2(n5), .Z(SUM[22]) );
  XNR2D1BWP16P90 U240 ( .A1(n57), .A2(n6), .ZN(SUM[21]) );
  XOR2D1BWP16P90 U241 ( .A1(n275), .A2(n9), .Z(SUM[18]) );
  XNR2D1BWP16P90 U242 ( .A1(n73), .A2(n10), .ZN(SUM[17]) );
  XOR2D1BWP16P90 U243 ( .A1(n277), .A2(n13), .Z(SUM[14]) );
  XNR2D1BWP16P90 U244 ( .A1(n89), .A2(n14), .ZN(SUM[13]) );
  XOR2D1BWP16P90 U245 ( .A1(n92), .A2(n15), .Z(SUM[12]) );
  XNR2D1BWP16P90 U246 ( .A1(n97), .A2(n16), .ZN(SUM[11]) );
  XOR2D1BWP16P90 U247 ( .A1(n100), .A2(n17), .Z(SUM[10]) );
  XNR2D1BWP16P90 U248 ( .A1(n105), .A2(n18), .ZN(SUM[9]) );
  XOR2D1BWP16P90 U249 ( .A1(n108), .A2(n19), .Z(SUM[8]) );
  XNR2D1BWP16P90 U250 ( .A1(n113), .A2(n20), .ZN(SUM[7]) );
  XOR2D1BWP16P90 U251 ( .A1(n116), .A2(n21), .Z(SUM[6]) );
  XNR2D1BWP16P90 U252 ( .A1(n121), .A2(n22), .ZN(SUM[5]) );
  INVD1BWP16P90 U253 ( .I(n122), .ZN(n163) );
  XOR2D1BWP16P90 U254 ( .A1(n124), .A2(n23), .Z(SUM[4]) );
  XNR2D1BWP16P90 U255 ( .A1(n129), .A2(n24), .ZN(SUM[3]) );
  INVD1BWP16P90 U256 ( .I(n130), .ZN(n165) );
  AOI21D1BWP16P90 U257 ( .A1(n279), .A2(n285), .B(n134), .ZN(n282) );
  CKND1BWP16P90LVT U258 ( .I(n128), .ZN(n126) );
  OAI21D1BWP16P90LVT U259 ( .A1(n274), .A2(n122), .B(n123), .ZN(n121) );
  CKND1BWP16P90LVT U260 ( .I(n80), .ZN(n78) );
  CKND1BWP16P90LVT U261 ( .I(n72), .ZN(n70) );
  CKND1BWP16P90LVT U262 ( .I(n64), .ZN(n62) );
  AOI21D1BWP16P90LVT U263 ( .A1(n57), .A2(n295), .B(n54), .ZN(n52) );
  CKND1BWP16P90LVT U264 ( .I(n56), .ZN(n54) );
  CKND1BWP16P90LVT U265 ( .I(n48), .ZN(n46) );
  CKND1BWP16P90LVT U266 ( .I(n88), .ZN(n86) );
  CKND1BWP16P90LVT U267 ( .I(n96), .ZN(n94) );
  AOI21D1BWP16P90LVT U268 ( .A1(n121), .A2(n287), .B(n118), .ZN(n116) );
  CKND1BWP16P90LVT U269 ( .I(n120), .ZN(n118) );
  AOI21D1BWP16P90LVT U270 ( .A1(n113), .A2(n288), .B(n110), .ZN(n108) );
  CKND1BWP16P90LVT U271 ( .I(n112), .ZN(n110) );
  AOI21D1BWP16P90LVT U272 ( .A1(n105), .A2(n289), .B(n102), .ZN(n100) );
  CKND1BWP16P90LVT U273 ( .I(n104), .ZN(n102) );
  OAI21D1BWP16P90LVT U274 ( .A1(n116), .A2(n114), .B(n115), .ZN(n113) );
  OAI21D1BWP16P90LVT U275 ( .A1(n108), .A2(n106), .B(n107), .ZN(n105) );
  OAI21D1BWP16P90LVT U276 ( .A1(n100), .A2(n98), .B(n99), .ZN(n97) );
  CKND1BWP16P90LVT U277 ( .I(n40), .ZN(n38) );
  CKND1BWP16P90LVT U278 ( .I(n34), .ZN(n141) );
  CKND1BWP16P90LVT U279 ( .I(n42), .ZN(n143) );
  CKND1BWP16P90LVT U280 ( .I(n50), .ZN(n145) );
  XOR2D1BWP16P90LVT U281 ( .A1(n283), .A2(n7), .Z(SUM[20]) );
  CKND1BWP16P90LVT U282 ( .I(n58), .ZN(n147) );
  XNR2D1BWP16P90LVT U283 ( .A1(n280), .A2(n8), .ZN(SUM[19]) );
  CKND1BWP16P90LVT U284 ( .I(n66), .ZN(n149) );
  XOR2D1BWP16P90LVT U285 ( .A1(n284), .A2(n11), .Z(SUM[16]) );
  CKND1BWP16P90LVT U286 ( .I(n74), .ZN(n151) );
  XNR2D1BWP16P90LVT U287 ( .A1(n281), .A2(n12), .ZN(SUM[15]) );
  CKND1BWP16P90LVT U288 ( .I(n82), .ZN(n153) );
  CKND1BWP16P90LVT U289 ( .I(n90), .ZN(n155) );
  CKND1BWP16P90LVT U290 ( .I(n98), .ZN(n157) );
  CKND1BWP16P90LVT U291 ( .I(n106), .ZN(n159) );
  CKND1BWP16P90LVT U292 ( .I(n114), .ZN(n161) );
  XOR2D1BWP16P90LVT U293 ( .A1(n282), .A2(n25), .Z(SUM[2]) );
  XNR2D1BWP16P90LVT U294 ( .A1(n279), .A2(n26), .ZN(SUM[1]) );
  CKND1BWP16P90LVT U295 ( .I(\B[32] ), .ZN(n168) );
  CKND1BWP16P90LVT U296 ( .I(\A[32] ), .ZN(n169) );
  FA1D1BWP16P90LVT U297 ( .A(\B[29] ), .B(\A[29] ), .CI(n31), .CO(n30), .S(
        SUM[29]) );
  FA1D1BWP16P90LVT U298 ( .A(\B[30] ), .B(\A[30] ), .CI(n30), .CO(n29), .S(
        SUM[30]) );
  OR2D1BWP16P90LVT U299 ( .A1(\A[1] ), .A2(\B[1] ), .Z(n285) );
  NR2D1BWP16P90LVT U300 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n130) );
  OR2D1BWP16P90LVT U301 ( .A1(\A[3] ), .A2(\B[3] ), .Z(n286) );
  NR2D1BWP16P90LVT U302 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n122) );
  OR2D1BWP16P90LVT U303 ( .A1(\A[5] ), .A2(\B[5] ), .Z(n287) );
  NR2D1BWP16P90LVT U304 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n114) );
  OR2D1BWP16P90LVT U305 ( .A1(\A[7] ), .A2(\B[7] ), .Z(n288) );
  NR2D1BWP16P90LVT U306 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n106) );
  OR2D1BWP16P90LVT U307 ( .A1(\A[9] ), .A2(\B[9] ), .Z(n289) );
  NR2D1BWP16P90LVT U308 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n98) );
  OR2D1BWP16P90LVT U309 ( .A1(\A[11] ), .A2(\B[11] ), .Z(n290) );
  NR2D1BWP16P90LVT U310 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n90) );
  OR2D1BWP16P90LVT U311 ( .A1(\A[13] ), .A2(\B[13] ), .Z(n291) );
  NR2D1BWP16P90LVT U312 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n82) );
  OR2D1BWP16P90LVT U313 ( .A1(\A[15] ), .A2(\B[15] ), .Z(n292) );
  NR2D1BWP16P90LVT U314 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n74) );
  OR2D1BWP16P90LVT U315 ( .A1(\A[17] ), .A2(\B[17] ), .Z(n293) );
  NR2D1BWP16P90LVT U316 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n66) );
  OR2D1BWP16P90LVT U317 ( .A1(\A[19] ), .A2(\B[19] ), .Z(n294) );
  NR2D1BWP16P90LVT U318 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n58) );
  OR2D1BWP16P90LVT U319 ( .A1(\A[21] ), .A2(\B[21] ), .Z(n295) );
  NR2D1BWP16P90LVT U320 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n50) );
  OR2D1BWP16P90LVT U321 ( .A1(\A[23] ), .A2(\B[23] ), .Z(n296) );
  NR2D1BWP16P90LVT U322 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n42) );
  OR2D1BWP16P90LVT U323 ( .A1(\A[25] ), .A2(\B[25] ), .Z(n297) );
  NR2D1BWP16P90LVT U324 ( .A1(\A[26] ), .A2(\B[26] ), .ZN(n34) );
  XNR2D1BWP16P90LVT U325 ( .A1(n27), .A2(CI), .ZN(SUM[0]) );
  CKND1BWP16P90LVT U326 ( .I(n138), .ZN(n167) );
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
  adder_behavior_reg_DW01_add_2 add_1_root_add_12_2 ( .CI(ci), .SUM({N65, N64, 
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

