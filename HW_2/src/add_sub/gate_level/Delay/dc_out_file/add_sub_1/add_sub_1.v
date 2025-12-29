/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03
// Date      : Sat Oct 18 15:26:09 2025
/////////////////////////////////////////////////////////////


module add_sub_1 ( a, b, s, d );
  input [7:0] a;
  input [7:0] b;
  output [15:0] d;
  input s;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55;
  assign d[15] = d[8];
  assign d[13] = d[8];
  assign d[11] = d[8];
  assign d[9] = d[8];
  assign d[10] = d[8];
  assign d[12] = d[8];
  assign d[14] = d[8];

  XNR3D1BWP16P90 U17 ( .A1(n9), .A2(n10), .A3(n11), .ZN(d[7]) );
  AOI22D1BWP16P90 U18 ( .A1(n12), .A2(n13), .B1(n14), .B2(a[6]), .ZN(n10) );
  ND2D1BWP16P90 U19 ( .A1(n15), .A2(n16), .ZN(n14) );
  XNR3D1BWP16P90 U20 ( .A1(a[6]), .A2(n12), .A3(n15), .ZN(d[6]) );
  CKND1BWP16P90 U21 ( .I(n13), .ZN(n15) );
  XOR3D1BWP16P90 U22 ( .A1(a[5]), .A2(n17), .A3(n18), .Z(d[5]) );
  XNR3D1BWP16P90 U23 ( .A1(n19), .A2(n20), .A3(n21), .ZN(d[4]) );
  XOR3D1BWP16P90 U24 ( .A1(a[3]), .A2(n22), .A3(n23), .Z(d[3]) );
  XNR3D1BWP16P90 U25 ( .A1(a[2]), .A2(n24), .A3(n25), .ZN(d[2]) );
  XOR3D1BWP16P90 U26 ( .A1(a[1]), .A2(n26), .A3(n27), .Z(d[1]) );
  XOR2D1BWP16P90 U27 ( .A1(n28), .A2(b[1]), .Z(n27) );
  ND2D1BWP16P90 U28 ( .A1(b[0]), .A2(n29), .ZN(n28) );
  ND2D1BWP16P90 U29 ( .A1(a[0]), .A2(b[0]), .ZN(n26) );
  XOR2D1BWP16P90 U30 ( .A1(n30), .A2(n31), .Z(d[8]) );
  XNR2D1BWP16P90 U31 ( .A1(n32), .A2(a[7]), .ZN(n31) );
  MAOI222D1BWP16P90 U32 ( .A(n11), .B(n33), .C(n9), .ZN(n30) );
  CKND1BWP16P90 U33 ( .I(a[7]), .ZN(n9) );
  AOI21D1BWP16P90 U34 ( .A1(n13), .A2(n12), .B(n34), .ZN(n33) );
  OA21D1BWP16P90 U35 ( .A1(n12), .A2(n13), .B(a[6]), .Z(n34) );
  CKND1BWP16P90 U36 ( .I(n16), .ZN(n12) );
  AOI22D1BWP16P90 U37 ( .A1(n17), .A2(n18), .B1(n35), .B2(a[5]), .ZN(n16) );
  OR2D1BWP16P90 U38 ( .A1(n18), .A2(n17), .Z(n35) );
  XNR2D1BWP16P90 U39 ( .A1(n36), .A2(b[5]), .ZN(n18) );
  ND2D1BWP16P90 U40 ( .A1(n29), .A2(n37), .ZN(n36) );
  OAI22D1BWP16P90 U41 ( .A1(n20), .A2(n21), .B1(n38), .B2(n19), .ZN(n17) );
  CKND1BWP16P90 U42 ( .I(a[4]), .ZN(n19) );
  AN2D1BWP16P90 U43 ( .A1(n21), .A2(n20), .Z(n38) );
  XNR2D1BWP16P90 U44 ( .A1(b[4]), .A2(n39), .ZN(n21) );
  NR2D1BWP16P90 U45 ( .A1(n40), .A2(s), .ZN(n39) );
  AOI22D1BWP16P90 U46 ( .A1(n22), .A2(n23), .B1(n41), .B2(a[3]), .ZN(n20) );
  OR2D1BWP16P90 U47 ( .A1(n23), .A2(n22), .Z(n41) );
  XNR2D1BWP16P90 U48 ( .A1(n42), .A2(b[3]), .ZN(n23) );
  ND2D1BWP16P90 U49 ( .A1(n29), .A2(n43), .ZN(n42) );
  IOA21D1BWP16P90 U50 ( .A1(n44), .A2(n24), .B(n45), .ZN(n22) );
  OAI21D1BWP16P90 U51 ( .A1(n24), .A2(n44), .B(a[2]), .ZN(n45) );
  XOR2D1BWP16P90 U52 ( .A1(b[2]), .A2(n46), .Z(n24) );
  NR2D1BWP16P90 U53 ( .A1(n47), .A2(s), .ZN(n46) );
  CKND1BWP16P90 U54 ( .I(n25), .ZN(n44) );
  MAOI222D1BWP16P90 U55 ( .A(n48), .B(n49), .C(a[1]), .ZN(n25) );
  XOR2D1BWP16P90 U56 ( .A1(b[1]), .A2(n50), .Z(n49) );
  AN2D1BWP16P90 U57 ( .A1(b[0]), .A2(n29), .Z(n50) );
  AN2D1BWP16P90 U58 ( .A1(b[0]), .A2(a[0]), .Z(n48) );
  XOR2D1BWP16P90 U59 ( .A1(b[6]), .A2(n51), .Z(n13) );
  NR2D1BWP16P90 U60 ( .A1(n52), .A2(s), .ZN(n51) );
  OA21D1BWP16P90 U61 ( .A1(n53), .A2(n54), .B(n32), .Z(n11) );
  CKMUX2D1BWP16P90 U62 ( .I0(n54), .I1(n55), .S(n29), .Z(n32) );
  CKND1BWP16P90 U63 ( .I(s), .ZN(n29) );
  ND2D1BWP16P90 U64 ( .A1(n53), .A2(n54), .ZN(n55) );
  CKND1BWP16P90 U65 ( .I(b[7]), .ZN(n54) );
  IND2D1BWP16P90 U66 ( .A1(b[6]), .B1(n52), .ZN(n53) );
  NR2D1BWP16P90 U67 ( .A1(n37), .A2(b[5]), .ZN(n52) );
  IND2D1BWP16P90 U68 ( .A1(b[4]), .B1(n40), .ZN(n37) );
  NR2D1BWP16P90 U69 ( .A1(n43), .A2(b[3]), .ZN(n40) );
  IND2D1BWP16P90 U70 ( .A1(b[2]), .B1(n47), .ZN(n43) );
  NR2D1BWP16P90 U71 ( .A1(b[1]), .A2(b[0]), .ZN(n47) );
  XOR2D1BWP16P90 U72 ( .A1(a[0]), .A2(b[0]), .Z(d[0]) );
endmodule

