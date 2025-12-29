/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 17:58:41 2025
/////////////////////////////////////////////////////////////


module adder_dataflow_reg_DW01_add_2 ( CI, SUM, \A[32] , \A[30] , \A[29] , 
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
         n132, n133, n135, n137, n139, n141, n143, n145, n147, n149, n151,
         n153, n155, n157, n158, n159, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284;

  FA1D1BWP16P90LVT U2 ( .A(n158), .B(n159), .CI(n27), .CO(n26), .S(SUM[31]) );
  ND2D1BWP16P90LVT U11 ( .A1(n133), .A2(n35), .ZN(n1) );
  ND2D1BWP16P90LVT U14 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n35) );
  ND2D1BWP16P90LVT U19 ( .A1(n284), .A2(n40), .ZN(n2) );
  ND2D1BWP16P90LVT U22 ( .A1(\A[23] ), .A2(\B[23] ), .ZN(n40) );
  ND2D1BWP16P90LVT U25 ( .A1(n135), .A2(n43), .ZN(n3) );
  ND2D1BWP16P90LVT U28 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n43) );
  ND2D1BWP16P90LVT U33 ( .A1(n283), .A2(n48), .ZN(n4) );
  ND2D1BWP16P90LVT U36 ( .A1(\A[21] ), .A2(\B[21] ), .ZN(n48) );
  ND2D1BWP16P90LVT U39 ( .A1(n137), .A2(n51), .ZN(n5) );
  ND2D1BWP16P90LVT U42 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n51) );
  ND2D1BWP16P90LVT U47 ( .A1(n282), .A2(n56), .ZN(n6) );
  ND2D1BWP16P90LVT U50 ( .A1(\A[19] ), .A2(\B[19] ), .ZN(n56) );
  ND2D1BWP16P90LVT U53 ( .A1(n139), .A2(n59), .ZN(n7) );
  ND2D1BWP16P90LVT U56 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n59) );
  ND2D1BWP16P90LVT U61 ( .A1(n281), .A2(n64), .ZN(n8) );
  ND2D1BWP16P90LVT U64 ( .A1(\A[17] ), .A2(\B[17] ), .ZN(n64) );
  ND2D1BWP16P90LVT U67 ( .A1(n141), .A2(n67), .ZN(n9) );
  ND2D1BWP16P90LVT U70 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n67) );
  ND2D1BWP16P90LVT U75 ( .A1(n280), .A2(n72), .ZN(n10) );
  ND2D1BWP16P90LVT U78 ( .A1(\A[15] ), .A2(\B[15] ), .ZN(n72) );
  ND2D1BWP16P90LVT U81 ( .A1(n143), .A2(n75), .ZN(n11) );
  ND2D1BWP16P90LVT U84 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n75) );
  ND2D1BWP16P90LVT U89 ( .A1(n279), .A2(n80), .ZN(n12) );
  ND2D1BWP16P90LVT U92 ( .A1(\A[13] ), .A2(\B[13] ), .ZN(n80) );
  ND2D1BWP16P90LVT U95 ( .A1(n145), .A2(n83), .ZN(n13) );
  ND2D1BWP16P90LVT U98 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n83) );
  ND2D1BWP16P90LVT U103 ( .A1(n278), .A2(n88), .ZN(n14) );
  ND2D1BWP16P90LVT U106 ( .A1(\A[11] ), .A2(\B[11] ), .ZN(n88) );
  ND2D1BWP16P90LVT U109 ( .A1(n147), .A2(n91), .ZN(n15) );
  ND2D1BWP16P90LVT U112 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n91) );
  ND2D1BWP16P90LVT U117 ( .A1(n277), .A2(n96), .ZN(n16) );
  ND2D1BWP16P90LVT U120 ( .A1(\A[9] ), .A2(\B[9] ), .ZN(n96) );
  ND2D1BWP16P90LVT U123 ( .A1(n149), .A2(n99), .ZN(n17) );
  ND2D1BWP16P90LVT U126 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n99) );
  ND2D1BWP16P90LVT U131 ( .A1(n276), .A2(n104), .ZN(n18) );
  ND2D1BWP16P90LVT U134 ( .A1(\A[7] ), .A2(\B[7] ), .ZN(n104) );
  ND2D1BWP16P90LVT U137 ( .A1(n151), .A2(n107), .ZN(n19) );
  ND2D1BWP16P90LVT U140 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n107) );
  ND2D1BWP16P90LVT U145 ( .A1(n275), .A2(n112), .ZN(n20) );
  ND2D1BWP16P90LVT U148 ( .A1(\A[5] ), .A2(\B[5] ), .ZN(n112) );
  ND2D1BWP16P90LVT U151 ( .A1(n153), .A2(n115), .ZN(n21) );
  ND2D1BWP16P90LVT U154 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n115) );
  ND2D1BWP16P90LVT U159 ( .A1(n274), .A2(n120), .ZN(n22) );
  ND2D1BWP16P90LVT U162 ( .A1(\A[3] ), .A2(\B[3] ), .ZN(n120) );
  ND2D1BWP16P90LVT U165 ( .A1(n155), .A2(n123), .ZN(n23) );
  ND2D1BWP16P90LVT U168 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n123) );
  ND2D1BWP16P90LVT U173 ( .A1(n273), .A2(n128), .ZN(n24) );
  ND2D1BWP16P90LVT U176 ( .A1(\A[1] ), .A2(\B[1] ), .ZN(n128) );
  ND2D1BWP16P90LVT U179 ( .A1(n157), .A2(n131), .ZN(n25) );
  ND2D1BWP16P90LVT U182 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n131) );
  OAI21D2BWP16P90LVT U188 ( .A1(n60), .A2(n58), .B(n59), .ZN(n57) );
  AOI21D2BWP16P90LVT U189 ( .A1(n41), .A2(n284), .B(n38), .ZN(n36) );
  AOI21D1BWP16P90LVT U190 ( .A1(n57), .A2(n282), .B(n54), .ZN(n52) );
  OAI21D1BWP16P90LVT U191 ( .A1(n52), .A2(n50), .B(n51), .ZN(n49) );
  XOR2D1BWP16P90LVT U192 ( .A1(n52), .A2(n5), .Z(SUM[20]) );
  FA1D4BWP16P90LVT U193 ( .A(\B[25] ), .B(\A[25] ), .CI(n33), .CO(n32), .S(
        SUM[25]) );
  OAI21D2BWP16P90LVT U194 ( .A1(n36), .A2(n34), .B(n35), .ZN(n33) );
  FA1D1BWP16P90LVT U195 ( .A(\B[26] ), .B(\A[26] ), .CI(n32), .CO(n31), .S(
        SUM[26]) );
  FA1D1BWP16P90LVT U196 ( .A(\B[28] ), .B(\A[28] ), .CI(n30), .CO(n29), .S(
        SUM[28]) );
  OAI21D1BWP16P90LVT U197 ( .A1(n130), .A2(n132), .B(n131), .ZN(n129) );
  AOI21D1BWP16P90LVT U198 ( .A1(n49), .A2(n283), .B(n46), .ZN(n44) );
  AOI21D1BWP16P90LVT U199 ( .A1(n129), .A2(n273), .B(n126), .ZN(n124) );
  AOI21D1BWP16P90LVT U200 ( .A1(n113), .A2(n275), .B(n110), .ZN(n266) );
  AOI21D1BWP16P90LVT U201 ( .A1(n121), .A2(n274), .B(n118), .ZN(n116) );
  OAI21D1BWP16P90LVT U202 ( .A1(n116), .A2(n114), .B(n115), .ZN(n113) );
  NR2D1BWP16P90LVT U203 ( .A1(\A[0] ), .A2(\B[0] ), .ZN(n130) );
  OAI21D1BWP16P90 U204 ( .A1(n130), .A2(n132), .B(n131), .ZN(n263) );
  OAI21D1BWP16P90 U205 ( .A1(n116), .A2(n114), .B(n115), .ZN(n264) );
  AOI21D1BWP16P90 U206 ( .A1(n49), .A2(n283), .B(n46), .ZN(n265) );
  OAI21D1BWP16P90LVT U207 ( .A1(n44), .A2(n42), .B(n43), .ZN(n41) );
  AOI21D1BWP16P90 U208 ( .A1(n264), .A2(n275), .B(n110), .ZN(n108) );
  OAI21D1BWP16P90 U209 ( .A1(n52), .A2(n50), .B(n51), .ZN(n267) );
  AOI21D1BWP16P90 U210 ( .A1(n263), .A2(n273), .B(n126), .ZN(n268) );
  OAI21D1BWP16P90LVT U211 ( .A1(n124), .A2(n122), .B(n123), .ZN(n121) );
  INVD1BWP16P90LVT U212 ( .I(CI), .ZN(n132) );
  OAI21D1BWP16P90 U213 ( .A1(n268), .A2(n122), .B(n123), .ZN(n269) );
  OAI21D1BWP16P90 U214 ( .A1(n265), .A2(n42), .B(n43), .ZN(n270) );
  INVD1BWP16P90LVT U215 ( .I(n26), .ZN(SUM[32]) );
  XNR2D1BWP16P90 U216 ( .A1(n267), .A2(n4), .ZN(SUM[21]) );
  XNR2D1BWP16P90 U217 ( .A1(n57), .A2(n6), .ZN(SUM[19]) );
  XOR2D1BWP16P90 U218 ( .A1(n60), .A2(n7), .Z(SUM[18]) );
  XNR2D1BWP16P90 U219 ( .A1(n65), .A2(n8), .ZN(SUM[17]) );
  XOR2D1BWP16P90 U220 ( .A1(n68), .A2(n9), .Z(SUM[16]) );
  XNR2D1BWP16P90 U221 ( .A1(n73), .A2(n10), .ZN(SUM[15]) );
  XOR2D1BWP16P90 U222 ( .A1(n76), .A2(n11), .Z(SUM[14]) );
  XNR2D1BWP16P90 U223 ( .A1(n81), .A2(n12), .ZN(SUM[13]) );
  XOR2D1BWP16P90 U224 ( .A1(n84), .A2(n13), .Z(SUM[12]) );
  XNR2D1BWP16P90 U225 ( .A1(n89), .A2(n14), .ZN(SUM[11]) );
  XOR2D1BWP16P90 U226 ( .A1(n92), .A2(n15), .Z(SUM[10]) );
  XNR2D1BWP16P90 U227 ( .A1(n97), .A2(n16), .ZN(SUM[9]) );
  XOR2D1BWP16P90 U228 ( .A1(n100), .A2(n17), .Z(SUM[8]) );
  XNR2D1BWP16P90 U229 ( .A1(n105), .A2(n18), .ZN(SUM[7]) );
  XOR2D1BWP16P90 U230 ( .A1(n108), .A2(n19), .Z(SUM[6]) );
  XNR2D1BWP16P90 U231 ( .A1(n264), .A2(n20), .ZN(SUM[5]) );
  INVD1BWP16P90 U232 ( .I(n114), .ZN(n153) );
  XNR2D1BWP16P90 U233 ( .A1(n263), .A2(n24), .ZN(SUM[1]) );
  INVD1BWP16P90 U234 ( .I(n130), .ZN(n157) );
  AOI21D1BWP16P90 U235 ( .A1(n270), .A2(n284), .B(n38), .ZN(n271) );
  AOI21D1BWP16P90 U236 ( .A1(n269), .A2(n274), .B(n118), .ZN(n272) );
  AOI21D1BWP16P90LVT U237 ( .A1(n81), .A2(n279), .B(n78), .ZN(n76) );
  CKND1BWP16P90LVT U238 ( .I(n80), .ZN(n78) );
  CKND1BWP16P90LVT U239 ( .I(n112), .ZN(n110) );
  CKND1BWP16P90LVT U240 ( .I(n128), .ZN(n126) );
  OAI21D1BWP16P90LVT U241 ( .A1(n84), .A2(n82), .B(n83), .ZN(n81) );
  AOI21D1BWP16P90LVT U242 ( .A1(n89), .A2(n278), .B(n86), .ZN(n84) );
  CKND1BWP16P90LVT U243 ( .I(n88), .ZN(n86) );
  CKND1BWP16P90LVT U244 ( .I(n120), .ZN(n118) );
  OAI21D1BWP16P90LVT U245 ( .A1(n76), .A2(n74), .B(n75), .ZN(n73) );
  OAI21D1BWP16P90LVT U246 ( .A1(n266), .A2(n106), .B(n107), .ZN(n105) );
  AOI21D1BWP16P90LVT U247 ( .A1(n73), .A2(n280), .B(n70), .ZN(n68) );
  CKND1BWP16P90LVT U248 ( .I(n72), .ZN(n70) );
  AOI21D1BWP16P90LVT U249 ( .A1(n65), .A2(n281), .B(n62), .ZN(n60) );
  CKND1BWP16P90LVT U250 ( .I(n64), .ZN(n62) );
  CKND1BWP16P90LVT U251 ( .I(n56), .ZN(n54) );
  CKND1BWP16P90LVT U252 ( .I(n48), .ZN(n46) );
  AOI21D1BWP16P90LVT U253 ( .A1(n97), .A2(n277), .B(n94), .ZN(n92) );
  CKND1BWP16P90LVT U254 ( .I(n96), .ZN(n94) );
  AOI21D1BWP16P90LVT U255 ( .A1(n105), .A2(n276), .B(n102), .ZN(n100) );
  CKND1BWP16P90LVT U256 ( .I(n104), .ZN(n102) );
  OAI21D1BWP16P90LVT U257 ( .A1(n68), .A2(n66), .B(n67), .ZN(n65) );
  OAI21D1BWP16P90LVT U258 ( .A1(n100), .A2(n98), .B(n99), .ZN(n97) );
  OAI21D1BWP16P90LVT U259 ( .A1(n92), .A2(n90), .B(n91), .ZN(n89) );
  CKND1BWP16P90LVT U260 ( .I(n40), .ZN(n38) );
  XOR2D1BWP16P90LVT U261 ( .A1(n271), .A2(n1), .Z(SUM[24]) );
  CKND1BWP16P90LVT U262 ( .I(n34), .ZN(n133) );
  XNR2D1BWP16P90LVT U263 ( .A1(n270), .A2(n2), .ZN(SUM[23]) );
  XOR2D1BWP16P90LVT U264 ( .A1(n265), .A2(n3), .Z(SUM[22]) );
  CKND1BWP16P90LVT U265 ( .I(n42), .ZN(n135) );
  CKND1BWP16P90LVT U266 ( .I(n50), .ZN(n137) );
  CKND1BWP16P90LVT U267 ( .I(n58), .ZN(n139) );
  CKND1BWP16P90LVT U268 ( .I(n66), .ZN(n141) );
  CKND1BWP16P90LVT U269 ( .I(n74), .ZN(n143) );
  CKND1BWP16P90LVT U270 ( .I(n82), .ZN(n145) );
  CKND1BWP16P90LVT U271 ( .I(n90), .ZN(n147) );
  CKND1BWP16P90LVT U272 ( .I(n98), .ZN(n149) );
  CKND1BWP16P90LVT U273 ( .I(n106), .ZN(n151) );
  XOR2D1BWP16P90LVT U274 ( .A1(n272), .A2(n21), .Z(SUM[4]) );
  XNR2D1BWP16P90LVT U275 ( .A1(n269), .A2(n22), .ZN(SUM[3]) );
  XOR2D1BWP16P90LVT U276 ( .A1(n268), .A2(n23), .Z(SUM[2]) );
  CKND1BWP16P90LVT U277 ( .I(n122), .ZN(n155) );
  CKND1BWP16P90LVT U278 ( .I(\B[32] ), .ZN(n158) );
  CKND1BWP16P90LVT U279 ( .I(\A[32] ), .ZN(n159) );
  FA1D1BWP16P90LVT U280 ( .A(\B[27] ), .B(\A[27] ), .CI(n31), .CO(n30), .S(
        SUM[27]) );
  FA1D1BWP16P90LVT U281 ( .A(\B[29] ), .B(\A[29] ), .CI(n29), .CO(n28), .S(
        SUM[29]) );
  FA1D1BWP16P90LVT U282 ( .A(\B[30] ), .B(\A[30] ), .CI(n28), .CO(n27), .S(
        SUM[30]) );
  OR2D1BWP16P90LVT U283 ( .A1(\A[1] ), .A2(\B[1] ), .Z(n273) );
  NR2D1BWP16P90LVT U284 ( .A1(\A[2] ), .A2(\B[2] ), .ZN(n122) );
  OR2D1BWP16P90LVT U285 ( .A1(\A[3] ), .A2(\B[3] ), .Z(n274) );
  NR2D1BWP16P90LVT U286 ( .A1(\A[4] ), .A2(\B[4] ), .ZN(n114) );
  OR2D1BWP16P90LVT U287 ( .A1(\A[5] ), .A2(\B[5] ), .Z(n275) );
  NR2D1BWP16P90LVT U288 ( .A1(\A[6] ), .A2(\B[6] ), .ZN(n106) );
  OR2D1BWP16P90LVT U289 ( .A1(\A[7] ), .A2(\B[7] ), .Z(n276) );
  NR2D1BWP16P90LVT U290 ( .A1(\A[8] ), .A2(\B[8] ), .ZN(n98) );
  OR2D1BWP16P90LVT U291 ( .A1(\A[9] ), .A2(\B[9] ), .Z(n277) );
  NR2D1BWP16P90LVT U292 ( .A1(\A[10] ), .A2(\B[10] ), .ZN(n90) );
  OR2D1BWP16P90LVT U293 ( .A1(\A[11] ), .A2(\B[11] ), .Z(n278) );
  NR2D1BWP16P90LVT U294 ( .A1(\A[12] ), .A2(\B[12] ), .ZN(n82) );
  OR2D1BWP16P90LVT U295 ( .A1(\A[13] ), .A2(\B[13] ), .Z(n279) );
  NR2D1BWP16P90LVT U296 ( .A1(\A[14] ), .A2(\B[14] ), .ZN(n74) );
  OR2D1BWP16P90LVT U297 ( .A1(\A[15] ), .A2(\B[15] ), .Z(n280) );
  NR2D1BWP16P90LVT U298 ( .A1(\A[16] ), .A2(\B[16] ), .ZN(n66) );
  OR2D1BWP16P90LVT U299 ( .A1(\A[17] ), .A2(\B[17] ), .Z(n281) );
  NR2D1BWP16P90LVT U300 ( .A1(\A[18] ), .A2(\B[18] ), .ZN(n58) );
  OR2D1BWP16P90LVT U301 ( .A1(\A[19] ), .A2(\B[19] ), .Z(n282) );
  NR2D1BWP16P90LVT U302 ( .A1(\A[20] ), .A2(\B[20] ), .ZN(n50) );
  OR2D1BWP16P90LVT U303 ( .A1(\A[21] ), .A2(\B[21] ), .Z(n283) );
  NR2D1BWP16P90LVT U304 ( .A1(\A[22] ), .A2(\B[22] ), .ZN(n42) );
  OR2D1BWP16P90LVT U305 ( .A1(\A[23] ), .A2(\B[23] ), .Z(n284) );
  NR2D1BWP16P90LVT U306 ( .A1(\A[24] ), .A2(\B[24] ), .ZN(n34) );
  XNR2D1BWP16P90LVT U307 ( .A1(n25), .A2(CI), .ZN(SUM[0]) );
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
  adder_dataflow_reg_DW01_add_2 add_1_root_add_12_2 ( .CI(ci), .SUM({N65, N64, 
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

