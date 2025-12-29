/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Oct  9 19:02:25 2025
/////////////////////////////////////////////////////////////


module FA_structure_reg_0 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  ND2D1BWP16P90LVT U1 ( .A1(ci), .A2(n12), .ZN(n2) );
  CKND1BWP16P90LVT U2 ( .I(a), .ZN(n4) );
  CKND12BWP16P90LVT U3 ( .I(b), .ZN(n12) );
  ND2D1BWP16P90LVT U4 ( .A1(ci), .A2(n4), .ZN(n3) );
  ND2D1BWP16P90LVT U5 ( .A1(ci), .A2(n12), .ZN(n10) );
  OR2D1BWP16P90LVT U6 ( .A1(n4), .A2(n12), .Z(n1) );
  ND2D1BWP16P90LVT U7 ( .A1(n7), .A2(n8), .ZN(n11) );
  ND2D2BWP16P90LVT U8 ( .A1(n11), .A2(n1), .ZN(co) );
  CKND2BWP16P90LVT U9 ( .I(n2), .ZN(n6) );
  NR2D1BWP16P90LVT U10 ( .A1(n5), .A2(a), .ZN(n9) );
  INVD1BWP16P90LVT U11 ( .I(ci), .ZN(n5) );
  ND2D1BWP16P90LVT U12 ( .A1(n6), .A2(n9), .ZN(n8) );
  ND2D1BWP16P90LVT U13 ( .A1(n10), .A2(n3), .ZN(n7) );
  XOR3D1BWP16P90LVT U14 ( .A1(b), .A2(a), .A3(ci), .Z(s) );
endmodule


module FA_structure_reg_1 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n5), .A2(n1), .ZN(s) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  INVD1BWP16P90LVT U4 ( .I(ci), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_2 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  INVD1BWP16P90LVT U2 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U3 ( .A1(n1), .A2(n5), .ZN(s) );
  OAI22D1BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_3 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  OAI22D4BWP16P90LVT U1 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(co) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n5), .ZN(s) );
  INVD1BWP16P90 U3 ( .I(n4), .ZN(n1) );
  INVD4BWP16P90LVT U4 ( .I(ci), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_4 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_5 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  OAI22D2BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_6 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_7 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  XNR2D1BWP16P90LVT U1 ( .A1(n1), .A2(n5), .ZN(s) );
  BUFFD1BWP16P90LVT U2 ( .I(ci), .Z(n1) );
  INVD4BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  OAI22D4BWP16P90LVT U4 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_8 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_9 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  OAI22D4BWP16P90LVT U1 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n4) );
  INVD1BWP16P90 U3 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_10 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  OAI22D1BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_11 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_12 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_13 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_14 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_15 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  CKND1BWP16P90LVT U1 ( .I(n4), .ZN(n2) );
  DEL025D1BWP16P90 U2 ( .I(ci), .Z(n1) );
  AO22D1BWP16P90LVT U3 ( .A1(n2), .A2(ci), .B1(a), .B2(b), .Z(co) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
endmodule


module FA_structure_reg_16 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(ci), .Z(n1) );
  XNR2D1BWP16P90LVT U2 ( .A1(n1), .A2(n5), .ZN(s) );
  OAI22D1BWP16P90LVT U3 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND1BWP16P90LVT U4 ( .I(ci), .ZN(n4) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_17 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D1BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(co) );
  INVD2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(n4), .A2(ci), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_18 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_19 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  BUFFD1BWP16P90LVT U1 ( .I(ci), .Z(n1) );
  OAI22D1BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_20 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(co) );
  INVD2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90LVT U3 ( .A1(n4), .A2(ci), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_21 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n5), .A2(n4), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_22 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  DEL025D1BWP16P90 U1 ( .I(ci), .Z(n1) );
  OAI22D1BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_23 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_24 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  INVD1BWP16P90 U1 ( .I(n4), .ZN(n1) );
  OAI22D4BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90LVT U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_25 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_26 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(n4), .A2(ci), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_27 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D2BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_28 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  OAI22D4BWP16P90LVT U1 ( .A1(n3), .A2(n4), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U2 ( .I(ci), .ZN(n3) );
  XNR2D1BWP16P90 U3 ( .A1(ci), .A2(n4), .ZN(s) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module FA_structure_reg_29 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  CKND1BWP16P90LVT U1 ( .I(ci), .ZN(n4) );
  OAI22D2BWP16P90LVT U2 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  INVD1BWP16P90 U3 ( .I(n4), .ZN(n1) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_30 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4, n5;

  OAI22D1BWP16P90LVT U1 ( .A1(n4), .A2(n5), .B1(n3), .B2(n2), .ZN(co) );
  INVD1BWP16P90 U2 ( .I(n4), .ZN(n1) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n4) );
  XNR2D1BWP16P90 U4 ( .A1(n1), .A2(n5), .ZN(s) );
  XOR2D1BWP16P90LVT U5 ( .A1(n3), .A2(b), .Z(n5) );
  INVD1BWP16P90LVT U6 ( .I(a), .ZN(n3) );
  INVD1BWP16P90LVT U7 ( .I(b), .ZN(n2) );
endmodule


module FA_structure_reg_31 ( a, b, ci, s, co );
  input a, b, ci;
  output s, co;
  wire   n1, n2, n3, n4;

  XNR2D1BWP16P90LVT U1 ( .A1(ci), .A2(n4), .ZN(s) );
  OAI22D2BWP16P90LVT U2 ( .A1(n4), .A2(n3), .B1(n2), .B2(n1), .ZN(co) );
  CKND2BWP16P90LVT U3 ( .I(ci), .ZN(n3) );
  XOR2D1BWP16P90LVT U4 ( .A1(n2), .A2(b), .Z(n4) );
  INVD1BWP16P90LVT U5 ( .I(a), .ZN(n2) );
  INVD1BWP16P90LVT U6 ( .I(b), .ZN(n1) );
endmodule


module adder_structure_reg ( s_co, a, b, ci, clk );
  output [32:0] s_co;
  input [31:0] a;
  input [31:0] b;
  input ci, clk;

  wire   [32:1] carry;
  wire   [32:0] sum_comb;

  FA_structure_reg_0 FA_loop_0__fa ( .a(a[0]), .b(b[0]), .ci(ci), .s(
        sum_comb[0]), .co(carry[1]) );
  FA_structure_reg_31 FA_loop_1__fa ( .a(a[1]), .b(b[1]), .ci(carry[1]), .s(
        sum_comb[1]), .co(carry[2]) );
  FA_structure_reg_30 FA_loop_2__fa ( .a(a[2]), .b(b[2]), .ci(carry[2]), .s(
        sum_comb[2]), .co(carry[3]) );
  FA_structure_reg_29 FA_loop_3__fa ( .a(a[3]), .b(b[3]), .ci(carry[3]), .s(
        sum_comb[3]), .co(carry[4]) );
  FA_structure_reg_28 FA_loop_4__fa ( .a(a[4]), .b(b[4]), .ci(carry[4]), .s(
        sum_comb[4]), .co(carry[5]) );
  FA_structure_reg_27 FA_loop_5__fa ( .a(a[5]), .b(b[5]), .ci(carry[5]), .s(
        sum_comb[5]), .co(carry[6]) );
  FA_structure_reg_26 FA_loop_6__fa ( .a(a[6]), .b(b[6]), .ci(carry[6]), .s(
        sum_comb[6]), .co(carry[7]) );
  FA_structure_reg_25 FA_loop_7__fa ( .a(a[7]), .b(b[7]), .ci(carry[7]), .s(
        sum_comb[7]), .co(carry[8]) );
  FA_structure_reg_24 FA_loop_8__fa ( .a(a[8]), .b(b[8]), .ci(carry[8]), .s(
        sum_comb[8]), .co(carry[9]) );
  FA_structure_reg_23 FA_loop_9__fa ( .a(a[9]), .b(b[9]), .ci(carry[9]), .s(
        sum_comb[9]), .co(carry[10]) );
  FA_structure_reg_22 FA_loop_10__fa ( .a(a[10]), .b(b[10]), .ci(carry[10]), 
        .s(sum_comb[10]), .co(carry[11]) );
  FA_structure_reg_21 FA_loop_11__fa ( .a(a[11]), .b(b[11]), .ci(carry[11]), 
        .s(sum_comb[11]), .co(carry[12]) );
  FA_structure_reg_20 FA_loop_12__fa ( .a(a[12]), .b(b[12]), .ci(carry[12]), 
        .s(sum_comb[12]), .co(carry[13]) );
  FA_structure_reg_19 FA_loop_13__fa ( .a(a[13]), .b(b[13]), .ci(carry[13]), 
        .s(sum_comb[13]), .co(carry[14]) );
  FA_structure_reg_18 FA_loop_14__fa ( .a(a[14]), .b(b[14]), .ci(carry[14]), 
        .s(sum_comb[14]), .co(carry[15]) );
  FA_structure_reg_17 FA_loop_15__fa ( .a(a[15]), .b(b[15]), .ci(carry[15]), 
        .s(sum_comb[15]), .co(carry[16]) );
  FA_structure_reg_16 FA_loop_16__fa ( .a(a[16]), .b(b[16]), .ci(carry[16]), 
        .s(sum_comb[16]), .co(carry[17]) );
  FA_structure_reg_15 FA_loop_17__fa ( .a(a[17]), .b(b[17]), .ci(carry[17]), 
        .s(sum_comb[17]), .co(carry[18]) );
  FA_structure_reg_14 FA_loop_18__fa ( .a(a[18]), .b(b[18]), .ci(carry[18]), 
        .s(sum_comb[18]), .co(carry[19]) );
  FA_structure_reg_13 FA_loop_19__fa ( .a(a[19]), .b(b[19]), .ci(carry[19]), 
        .s(sum_comb[19]), .co(carry[20]) );
  FA_structure_reg_12 FA_loop_20__fa ( .a(a[20]), .b(b[20]), .ci(carry[20]), 
        .s(sum_comb[20]), .co(carry[21]) );
  FA_structure_reg_11 FA_loop_21__fa ( .a(a[21]), .b(b[21]), .ci(carry[21]), 
        .s(sum_comb[21]), .co(carry[22]) );
  FA_structure_reg_10 FA_loop_22__fa ( .a(a[22]), .b(b[22]), .ci(carry[22]), 
        .s(sum_comb[22]), .co(carry[23]) );
  FA_structure_reg_9 FA_loop_23__fa ( .a(a[23]), .b(b[23]), .ci(carry[23]), 
        .s(sum_comb[23]), .co(carry[24]) );
  FA_structure_reg_8 FA_loop_24__fa ( .a(a[24]), .b(b[24]), .ci(carry[24]), 
        .s(sum_comb[24]), .co(carry[25]) );
  FA_structure_reg_7 FA_loop_25__fa ( .a(a[25]), .b(b[25]), .ci(carry[25]), 
        .s(sum_comb[25]), .co(carry[26]) );
  FA_structure_reg_6 FA_loop_26__fa ( .a(a[26]), .b(b[26]), .ci(carry[26]), 
        .s(sum_comb[26]), .co(carry[27]) );
  FA_structure_reg_5 FA_loop_27__fa ( .a(a[27]), .b(b[27]), .ci(carry[27]), 
        .s(sum_comb[27]), .co(carry[28]) );
  FA_structure_reg_4 FA_loop_28__fa ( .a(a[28]), .b(b[28]), .ci(carry[28]), 
        .s(sum_comb[28]), .co(carry[29]) );
  FA_structure_reg_3 FA_loop_29__fa ( .a(a[29]), .b(b[29]), .ci(carry[29]), 
        .s(sum_comb[29]), .co(carry[30]) );
  FA_structure_reg_2 FA_loop_30__fa ( .a(a[30]), .b(b[30]), .ci(carry[30]), 
        .s(sum_comb[30]), .co(carry[31]) );
  FA_structure_reg_1 FA_loop_31__fa ( .a(a[31]), .b(b[31]), .ci(carry[31]), 
        .s(sum_comb[31]), .co(carry[32]) );
  DFQD2BWP16P90LVT s_co_reg_32_ ( .D(sum_comb[32]), .CP(clk), .Q(s_co[32]) );
  DFQD2BWP16P90LVT s_co_reg_31_ ( .D(sum_comb[31]), .CP(clk), .Q(s_co[31]) );
  DFQD2BWP16P90LVT s_co_reg_30_ ( .D(sum_comb[30]), .CP(clk), .Q(s_co[30]) );
  DFQD2BWP16P90LVT s_co_reg_29_ ( .D(sum_comb[29]), .CP(clk), .Q(s_co[29]) );
  DFQD2BWP16P90LVT s_co_reg_28_ ( .D(sum_comb[28]), .CP(clk), .Q(s_co[28]) );
  DFQD2BWP16P90LVT s_co_reg_27_ ( .D(sum_comb[27]), .CP(clk), .Q(s_co[27]) );
  DFQD2BWP16P90LVT s_co_reg_26_ ( .D(sum_comb[26]), .CP(clk), .Q(s_co[26]) );
  DFQD2BWP16P90LVT s_co_reg_25_ ( .D(sum_comb[25]), .CP(clk), .Q(s_co[25]) );
  DFQD2BWP16P90LVT s_co_reg_24_ ( .D(sum_comb[24]), .CP(clk), .Q(s_co[24]) );
  DFQD2BWP16P90LVT s_co_reg_23_ ( .D(sum_comb[23]), .CP(clk), .Q(s_co[23]) );
  DFQD2BWP16P90LVT s_co_reg_22_ ( .D(sum_comb[22]), .CP(clk), .Q(s_co[22]) );
  DFQD2BWP16P90LVT s_co_reg_21_ ( .D(sum_comb[21]), .CP(clk), .Q(s_co[21]) );
  DFQD2BWP16P90LVT s_co_reg_20_ ( .D(sum_comb[20]), .CP(clk), .Q(s_co[20]) );
  DFQD2BWP16P90LVT s_co_reg_19_ ( .D(sum_comb[19]), .CP(clk), .Q(s_co[19]) );
  DFQD2BWP16P90LVT s_co_reg_18_ ( .D(sum_comb[18]), .CP(clk), .Q(s_co[18]) );
  DFQD2BWP16P90LVT s_co_reg_17_ ( .D(sum_comb[17]), .CP(clk), .Q(s_co[17]) );
  DFQD2BWP16P90LVT s_co_reg_16_ ( .D(sum_comb[16]), .CP(clk), .Q(s_co[16]) );
  DFQD2BWP16P90LVT s_co_reg_15_ ( .D(sum_comb[15]), .CP(clk), .Q(s_co[15]) );
  DFQD2BWP16P90LVT s_co_reg_14_ ( .D(sum_comb[14]), .CP(clk), .Q(s_co[14]) );
  DFQD2BWP16P90LVT s_co_reg_13_ ( .D(sum_comb[13]), .CP(clk), .Q(s_co[13]) );
  DFQD2BWP16P90LVT s_co_reg_12_ ( .D(sum_comb[12]), .CP(clk), .Q(s_co[12]) );
  DFQD2BWP16P90LVT s_co_reg_11_ ( .D(sum_comb[11]), .CP(clk), .Q(s_co[11]) );
  DFQD2BWP16P90LVT s_co_reg_10_ ( .D(sum_comb[10]), .CP(clk), .Q(s_co[10]) );
  DFQD2BWP16P90LVT s_co_reg_9_ ( .D(sum_comb[9]), .CP(clk), .Q(s_co[9]) );
  DFQD2BWP16P90LVT s_co_reg_8_ ( .D(sum_comb[8]), .CP(clk), .Q(s_co[8]) );
  DFQD2BWP16P90LVT s_co_reg_7_ ( .D(sum_comb[7]), .CP(clk), .Q(s_co[7]) );
  DFQD2BWP16P90LVT s_co_reg_6_ ( .D(sum_comb[6]), .CP(clk), .Q(s_co[6]) );
  DFQD2BWP16P90LVT s_co_reg_5_ ( .D(sum_comb[5]), .CP(clk), .Q(s_co[5]) );
  DFQD2BWP16P90LVT s_co_reg_4_ ( .D(sum_comb[4]), .CP(clk), .Q(s_co[4]) );
  DFQD2BWP16P90LVT s_co_reg_3_ ( .D(sum_comb[3]), .CP(clk), .Q(s_co[3]) );
  DFQD2BWP16P90LVT s_co_reg_2_ ( .D(sum_comb[2]), .CP(clk), .Q(s_co[2]) );
  DFQD2BWP16P90LVT s_co_reg_1_ ( .D(sum_comb[1]), .CP(clk), .Q(s_co[1]) );
  DFQD2BWP16P90LVT s_co_reg_0_ ( .D(sum_comb[0]), .CP(clk), .Q(s_co[0]) );
  XOR3D2BWP16P90LVT U4 ( .A1(b[31]), .A2(a[31]), .A3(carry[32]), .Z(
        sum_comb[32]) );
endmodule

