/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Tue Apr 18 01:31:12 2023
/////////////////////////////////////////////////////////////


module In_tf_19 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XNR2M2RA U1 ( .A(g[5]), .B(n6), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n7), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n8), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n7), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n9), .B(g[2]), .Z(n7) );
  XNR2M2RA U8 ( .A(n9), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n5), .B(g[3]), .Z(n9) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n1), .B(n2), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n4), .B(n1), .Z(a13) );
  XOR2M2RA U15 ( .A(n2), .B(n5), .Z(a3) );
  XOR2M2RA U16 ( .A(n5), .B(n6), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n4), .Z(n6) );
  XOR2M2RA U18 ( .A(n3), .B(n1), .Z(a02) );
  XOR2M2RA U19 ( .A(n3), .B(n2), .Z(a0) );
  XOR2M2RA U20 ( .A(n8), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n8) );
  INVM2R U22 ( .A(b3), .Z(n2) );
  INVM2R U23 ( .A(g[7]), .Z(n1) );
  INVM2R U24 ( .A(g[1]), .Z(n5) );
  INVM2R U25 ( .A(g[2]), .Z(n4) );
  INVM2R U26 ( .A(g[4]), .Z(n3) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_19 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n10) );
  XOR4M1RA U2 ( .A(n11), .B(n12), .C(n2), .D(n10), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n12) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n11) );
  XOR4M1RA U5 ( .A(n5), .B(n6), .C(n2), .D(n7), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n6) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n7) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n5) );
  XOR4M1RA U9 ( .A(n1), .B(n2), .C(n3), .D(n4), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n4) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n1) );
  XOR4M1RA U12 ( .A(n8), .B(n9), .C(n3), .D(n10), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n8) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n9) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n2) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n3) );
endmodule


module Inv_4_19 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  XNR2M2RA U5 ( .A(n4), .B(d2), .Z(n5) );
  XNR2M2RA U10 ( .A(n2), .B(d0), .Z(n8) );
  OAI32M2R U1 ( .A1(n8), .A2(d2), .A3(n4), .B1(n9), .B2(n3), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n4), .Z(n9) );
  OAI32M2R U3 ( .A1(n2), .A2(d0), .A3(n5), .B1(n6), .B2(n1), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n2), .Z(n6) );
  OAI22M2R U6 ( .A1(d0), .A2(n3), .B1(n10), .B2(n4), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n8), .Z(n10) );
  OAI22M2R U8 ( .A1(d2), .A2(n1), .B1(n7), .B2(n2), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n5), .Z(n7) );
  INVM2R U11 ( .A(d1), .Z(n2) );
  INVM2R U12 ( .A(d3), .Z(n4) );
  INVM2R U13 ( .A(d2), .Z(n3) );
  INVM2R U14 ( .A(d0), .Z(n1) );
endmodule


module mul_out_19 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  XOR2M2RA U1 ( .A(n1), .B(n2), .Z(z5) );
  XOR2M2RA U4 ( .A(n5), .B(n6), .Z(z4) );
  XOR2M2RA U7 ( .A(n7), .B(n8), .Z(z3) );
  XOR2M2RA U10 ( .A(n9), .B(n10), .Z(z2) );
  XOR2M2RA U13 ( .A(n11), .B(n12), .Z(z1) );
  XOR2M2RA U16 ( .A(n13), .B(n14), .Z(z0) );
  XOR2M2RA U19 ( .A(n15), .B(n16), .Z(w5) );
  XOR2M2RA U22 ( .A(n17), .B(n18), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n3) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n4) );
  XOR2M2RA U27 ( .A(n19), .B(n20), .Z(w3) );
  XOR2M2RA U30 ( .A(n21), .B(n22), .Z(w2) );
  XOR2M2RA U33 ( .A(n23), .B(n24), .Z(w1) );
  XOR2M2RA U36 ( .A(n25), .B(n26), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n4), .Z(n5) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n11) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n12) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n14) );
  ND2M2R U8 ( .A(a13), .B(n3), .Z(n6) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n13) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n19) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n20) );
  ND2M2R U14 ( .A(a13), .B(n4), .Z(n1) );
  ND2M2R U15 ( .A(ap), .B(n3), .Z(n2) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n9) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n10) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n7) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n8) );
  ND2M2R U23 ( .A(b02), .B(n4), .Z(n17) );
  ND2M2R U25 ( .A(b13), .B(n3), .Z(n18) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n25) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n26) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n21) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n22) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n23) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n24) );
  ND2M2R U37 ( .A(b13), .B(n4), .Z(n15) );
  ND2M2R U38 ( .A(bp), .B(n3), .Z(n16) );
endmodule


module out_tf_19 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n1, n2, n3, n4, n5, n6;

  XNR2M2RA U1 ( .A(w5), .B(n2), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n4), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n2), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n6), .B(z1), .Z(n2) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n3) );
  XNR2M2RA U10 ( .A(n1), .B(w3), .Z(n6) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n5) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n4) );
  INVM2R U2 ( .A(z5), .Z(n1) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n5), .D(n6), .Z(s[1]) );
  XOR4M1RA U6 ( .A(n1), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XNR3M1R U9 ( .A(z4), .B(w4), .C(n3), .Z(s[5]) );
  XOR4M1RA U12 ( .A(n3), .B(z0), .C(n2), .D(n5), .Z(s[2]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n4), .Z(s[0]) );
endmodule


module Newlight_sbox_19 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_19 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_19 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_19 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_19 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_19 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module row_shift ( sb, rs );
  input [127:0] sb;
  output [127:0] rs;


  BUFM2R U1 ( .A(sb[35]), .Z(rs[3]) );
  BUFM2R U2 ( .A(sb[3]), .Z(rs[99]) );
  BUFM2R U3 ( .A(sb[99]), .Z(rs[67]) );
  BUFM2R U4 ( .A(sb[67]), .Z(rs[35]) );
  BUFM2R U5 ( .A(sb[59]), .Z(rs[59]) );
  BUFM2R U6 ( .A(sb[27]), .Z(rs[27]) );
  BUFM2R U7 ( .A(sb[123]), .Z(rs[123]) );
  BUFM2R U8 ( .A(sb[91]), .Z(rs[91]) );
  BUFM2R U9 ( .A(sb[75]), .Z(rs[11]) );
  BUFM2R U10 ( .A(sb[43]), .Z(rs[107]) );
  BUFM2R U11 ( .A(sb[11]), .Z(rs[75]) );
  BUFM2R U12 ( .A(sb[107]), .Z(rs[43]) );
  BUFM2R U13 ( .A(sb[116]), .Z(rs[20]) );
  BUFM2R U14 ( .A(sb[84]), .Z(rs[116]) );
  BUFM2R U15 ( .A(sb[52]), .Z(rs[84]) );
  BUFM2R U16 ( .A(sb[20]), .Z(rs[52]) );
  BUFM2R U17 ( .A(sb[36]), .Z(rs[4]) );
  BUFM2R U18 ( .A(sb[4]), .Z(rs[100]) );
  BUFM2R U19 ( .A(sb[100]), .Z(rs[68]) );
  BUFM2R U20 ( .A(sb[68]), .Z(rs[36]) );
  BUFM2R U21 ( .A(sb[76]), .Z(rs[12]) );
  BUFM2R U22 ( .A(sb[44]), .Z(rs[108]) );
  BUFM2R U23 ( .A(sb[12]), .Z(rs[76]) );
  BUFM2R U24 ( .A(sb[108]), .Z(rs[44]) );
  BUFM2R U25 ( .A(sb[28]), .Z(rs[28]) );
  BUFM2R U26 ( .A(sb[124]), .Z(rs[124]) );
  BUFM2R U27 ( .A(sb[92]), .Z(rs[92]) );
  BUFM2R U28 ( .A(sb[60]), .Z(rs[60]) );
  BUFM2R U29 ( .A(sb[115]), .Z(rs[19]) );
  BUFM2R U30 ( .A(sb[83]), .Z(rs[115]) );
  BUFM2R U31 ( .A(sb[51]), .Z(rs[83]) );
  BUFM2R U32 ( .A(sb[19]), .Z(rs[51]) );
  BUFM2R U33 ( .A(sb[66]), .Z(rs[34]) );
  BUFM2R U34 ( .A(sb[34]), .Z(rs[2]) );
  BUFM2R U35 ( .A(sb[2]), .Z(rs[98]) );
  BUFM2R U36 ( .A(sb[98]), .Z(rs[66]) );
  BUFM2R U37 ( .A(sb[25]), .Z(rs[25]) );
  BUFM2R U38 ( .A(sb[73]), .Z(rs[9]) );
  BUFM2R U39 ( .A(sb[121]), .Z(rs[121]) );
  BUFM2R U40 ( .A(sb[41]), .Z(rs[105]) );
  BUFM2R U41 ( .A(sb[89]), .Z(rs[89]) );
  BUFM2R U42 ( .A(sb[9]), .Z(rs[73]) );
  BUFM2R U43 ( .A(sb[57]), .Z(rs[57]) );
  BUFM2R U44 ( .A(sb[105]), .Z(rs[41]) );
  BUFM2R U45 ( .A(sb[63]), .Z(rs[63]) );
  BUFM2R U46 ( .A(sb[31]), .Z(rs[31]) );
  BUFM2R U47 ( .A(sb[95]), .Z(rs[95]) );
  BUFM2R U48 ( .A(sb[77]), .Z(rs[13]) );
  BUFM2R U49 ( .A(sb[117]), .Z(rs[21]) );
  BUFM2R U50 ( .A(sb[85]), .Z(rs[117]) );
  BUFM2R U51 ( .A(sb[45]), .Z(rs[109]) );
  BUFM2R U52 ( .A(sb[53]), .Z(rs[85]) );
  BUFM2R U53 ( .A(sb[13]), .Z(rs[77]) );
  BUFM2R U54 ( .A(sb[21]), .Z(rs[53]) );
  BUFM2R U55 ( .A(sb[109]), .Z(rs[45]) );
  BUFM2R U56 ( .A(sb[39]), .Z(rs[7]) );
  BUFM2R U57 ( .A(sb[7]), .Z(rs[103]) );
  BUFM2R U58 ( .A(sb[103]), .Z(rs[71]) );
  BUFM2R U59 ( .A(sb[71]), .Z(rs[39]) );
  BUFM2R U60 ( .A(sb[110]), .Z(rs[46]) );
  BUFM2R U61 ( .A(sb[78]), .Z(rs[14]) );
  BUFM2R U62 ( .A(sb[46]), .Z(rs[110]) );
  BUFM2R U63 ( .A(sb[14]), .Z(rs[78]) );
  BUFM2R U64 ( .A(sb[106]), .Z(rs[42]) );
  BUFM2R U65 ( .A(sb[74]), .Z(rs[10]) );
  BUFM2R U66 ( .A(sb[42]), .Z(rs[106]) );
  BUFM2R U67 ( .A(sb[10]), .Z(rs[74]) );
  BUFM2R U68 ( .A(sb[18]), .Z(rs[50]) );
  BUFM2R U69 ( .A(sb[114]), .Z(rs[18]) );
  BUFM2R U70 ( .A(sb[82]), .Z(rs[114]) );
  BUFM2R U71 ( .A(sb[50]), .Z(rs[82]) );
  BUFM2R U72 ( .A(sb[62]), .Z(rs[62]) );
  BUFM2R U73 ( .A(sb[30]), .Z(rs[30]) );
  BUFM2R U74 ( .A(sb[94]), .Z(rs[94]) );
  BUFM2R U75 ( .A(sb[33]), .Z(rs[1]) );
  BUFM2R U76 ( .A(sb[1]), .Z(rs[97]) );
  BUFM2R U77 ( .A(sb[97]), .Z(rs[65]) );
  BUFM2R U78 ( .A(sb[65]), .Z(rs[33]) );
  BUFM2R U79 ( .A(sb[113]), .Z(rs[17]) );
  BUFM2R U80 ( .A(sb[81]), .Z(rs[113]) );
  BUFM2R U81 ( .A(sb[49]), .Z(rs[81]) );
  BUFM2R U82 ( .A(sb[17]), .Z(rs[49]) );
  BUFM2R U83 ( .A(sb[70]), .Z(rs[38]) );
  BUFM2R U84 ( .A(sb[38]), .Z(rs[6]) );
  BUFM2R U85 ( .A(sb[6]), .Z(rs[102]) );
  BUFM2R U86 ( .A(sb[102]), .Z(rs[70]) );
  BUFM2R U87 ( .A(sb[22]), .Z(rs[54]) );
  BUFM2R U88 ( .A(sb[118]), .Z(rs[22]) );
  BUFM2R U89 ( .A(sb[86]), .Z(rs[118]) );
  BUFM2R U90 ( .A(sb[54]), .Z(rs[86]) );
  BUFM2R U91 ( .A(sb[111]), .Z(rs[47]) );
  BUFM2R U92 ( .A(sb[79]), .Z(rs[15]) );
  BUFM2R U93 ( .A(sb[47]), .Z(rs[111]) );
  BUFM2R U94 ( .A(sb[15]), .Z(rs[79]) );
  BUFM2R U95 ( .A(sb[58]), .Z(rs[58]) );
  BUFM2R U96 ( .A(sb[26]), .Z(rs[26]) );
  BUFM2R U97 ( .A(sb[122]), .Z(rs[122]) );
  BUFM2R U98 ( .A(sb[90]), .Z(rs[90]) );
  BUFM2R U99 ( .A(sb[23]), .Z(rs[55]) );
  BUFM2R U100 ( .A(sb[119]), .Z(rs[23]) );
  BUFM2R U101 ( .A(sb[87]), .Z(rs[119]) );
  BUFM2R U102 ( .A(sb[55]), .Z(rs[87]) );
  BUFM2R U103 ( .A(sb[32]), .Z(rs[0]) );
  BUFM2R U104 ( .A(sb[0]), .Z(rs[96]) );
  BUFM2R U105 ( .A(sb[96]), .Z(rs[64]) );
  BUFM2R U106 ( .A(sb[64]), .Z(rs[32]) );
  BUFM2R U107 ( .A(sb[37]), .Z(rs[5]) );
  BUFM2R U108 ( .A(sb[5]), .Z(rs[101]) );
  BUFM2R U109 ( .A(sb[101]), .Z(rs[69]) );
  BUFM2R U110 ( .A(sb[69]), .Z(rs[37]) );
  BUFM2R U111 ( .A(sb[29]), .Z(rs[29]) );
  BUFM2R U112 ( .A(sb[93]), .Z(rs[93]) );
  BUFM2R U113 ( .A(sb[61]), .Z(rs[61]) );
  BUFM2R U114 ( .A(sb[40]), .Z(rs[104]) );
  BUFM2R U115 ( .A(sb[8]), .Z(rs[72]) );
  BUFM2R U116 ( .A(sb[104]), .Z(rs[40]) );
  BUFM2R U117 ( .A(sb[72]), .Z(rs[8]) );
  BUFM2R U118 ( .A(sb[120]), .Z(rs[120]) );
  BUFM2R U119 ( .A(sb[88]), .Z(rs[88]) );
  BUFM2R U120 ( .A(sb[56]), .Z(rs[56]) );
  BUFM2R U121 ( .A(sb[24]), .Z(rs[24]) );
  BUFM2R U122 ( .A(sb[112]), .Z(rs[16]) );
  BUFM2R U123 ( .A(sb[80]), .Z(rs[112]) );
  BUFM2R U124 ( .A(sb[48]), .Z(rs[80]) );
  BUFM2R U125 ( .A(sb[16]), .Z(rs[48]) );
  BUFM2R U126 ( .A(sb[127]), .Z(rs[127]) );
  BUFM2R U127 ( .A(sb[126]), .Z(rs[126]) );
  BUFM2R U128 ( .A(sb[125]), .Z(rs[125]) );
endmodule


module mixcol_3 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n1, n2, n4, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17,
         n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33;

  XNR2M2RA U2 ( .A(n8), .B(n9), .Z(y[8]) );
  XNR2M2RA U7 ( .A(n16), .B(n17), .Z(y[3]) );
  XNR2M2RA U9 ( .A(n4), .B(x[23]), .Z(n10) );
  XNR2M2RA U14 ( .A(x[27]), .B(n1), .Z(n14) );
  XOR2M2RA U22 ( .A(x[13]), .B(x[21]), .Z(n13) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n23) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n25) );
  XNR2M2RA U31 ( .A(x[18]), .B(n2), .Z(n22) );
  XOR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n24) );
  XOR2M2RA U35 ( .A(n27), .B(n33), .Z(n26) );
  XNR2M2RA U36 ( .A(x[16]), .B(n2), .Z(n27) );
  XNR2M2RA U37 ( .A(x[8]), .B(n4), .Z(n6) );
  XNR2M2RA U39 ( .A(x[0]), .B(x[15]), .Z(n8) );
  XOR2M2RA U41 ( .A(x[31]), .B(x[7]), .Z(n29) );
  XOR2M2RA U42 ( .A(x[14]), .B(x[6]), .Z(n18) );
  XOR2M2RA U44 ( .A(x[22]), .B(x[30]), .Z(n11) );
  XOR2M2RA U46 ( .A(x[12]), .B(x[4]), .Z(n31) );
  XOR2M2RA U47 ( .A(x[29]), .B(x[5]), .Z(n12) );
  XOR2M2RA U50 ( .A(x[20]), .B(x[28]), .Z(n20) );
  XOR2M2RA U51 ( .A(x[11]), .B(x[15]), .Z(n30) );
  XOR2M2RA U56 ( .A(x[1]), .B(x[9]), .Z(n33) );
  XOR2M2RA U57 ( .A(x[18]), .B(x[26]), .Z(n19) );
  XOR2M2RA U58 ( .A(n9), .B(n28), .Z(y[0]) );
  XNR2M2RA U59 ( .A(x[8]), .B(n1), .Z(n28) );
  XOR4M1RA U1 ( .A(n1), .B(x[26]), .C(x[11]), .D(x[19]), .Z(n16) );
  XNR3M1R U3 ( .A(x[3]), .B(n4), .C(x[10]), .Z(n32) );
  XOR3M2RA U4 ( .A(x[7]), .B(x[2]), .C(x[27]), .Z(n17) );
  XNR3M1R U5 ( .A(x[23]), .B(x[19]), .C(n31), .Z(n21) );
  XNR3M1R U6 ( .A(x[7]), .B(x[3]), .C(n20), .Z(n15) );
  INVM2R U8 ( .A(x[31]), .Z(n1) );
  XOR3M2RA U10 ( .A(x[7]), .B(x[0]), .C(n23), .Z(n7) );
  INVM2R U11 ( .A(x[23]), .Z(n2) );
  XOR3M2RA U12 ( .A(x[7]), .B(x[24]), .C(x[16]), .Z(n9) );
  INVM2R U13 ( .A(x[15]), .Z(n4) );
  XOR4M1RA U15 ( .A(x[27]), .B(x[11]), .C(n22), .D(n32), .Z(y[19]) );
  XNR3M1R U16 ( .A(n22), .B(x[3]), .C(n16), .Z(y[27]) );
  XOR3M2RA U17 ( .A(x[19]), .B(n17), .C(n32), .Z(y[11]) );
  XOR4M1RA U18 ( .A(x[20]), .B(x[13]), .C(x[12]), .D(n12), .Z(y[21]) );
  XOR4M1RA U19 ( .A(x[9]), .B(x[26]), .C(x[17]), .D(n24), .Z(y[18]) );
  XOR4M1RA U20 ( .A(x[6]), .B(x[5]), .C(x[13]), .D(n11), .Z(y[14]) );
  XOR4M1RA U21 ( .A(x[4]), .B(x[29]), .C(x[28]), .D(n13), .Z(y[5]) );
  XOR4M1RA U23 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n19), .Z(y[2]) );
  XOR3M2RA U24 ( .A(x[7]), .B(n10), .C(n11), .Z(y[31]) );
  XOR4M1RA U25 ( .A(x[29]), .B(x[22]), .C(x[21]), .D(n18), .Z(y[30]) );
  XOR3M2RA U26 ( .A(x[5]), .B(n13), .C(n20), .Z(y[29]) );
  XNR3M1R U27 ( .A(x[20]), .B(n14), .C(n21), .Z(y[28]) );
  XOR3M2RA U30 ( .A(n25), .B(x[17]), .C(n26), .Z(y[25]) );
  XOR3M2RA U32 ( .A(x[0]), .B(n27), .C(n28), .Z(y[24]) );
  XOR4M1RA U34 ( .A(n29), .B(x[22]), .C(x[15]), .D(x[14]), .Z(y[23]) );
  XOR3M2RA U38 ( .A(x[30]), .B(n13), .C(n18), .Z(y[22]) );
  XNR3M1R U40 ( .A(n30), .B(x[28]), .C(n21), .Z(y[20]) );
  XOR3M2RA U43 ( .A(x[25]), .B(n6), .C(n26), .Z(y[17]) );
  XOR4M1RA U45 ( .A(x[8]), .B(x[24]), .C(n2), .D(n8), .Z(y[16]) );
  XNR3M1R U48 ( .A(n2), .B(n18), .C(n29), .Z(y[15]) );
  XOR3M2RA U49 ( .A(x[21]), .B(n12), .C(n31), .Z(y[13]) );
  XNR3M1R U52 ( .A(n30), .B(x[4]), .C(n15), .Z(y[12]) );
  XOR3M2RA U53 ( .A(x[2]), .B(n19), .C(n33), .Z(y[10]) );
  XOR3M2RA U54 ( .A(x[1]), .B(n6), .C(n7), .Z(y[9]) );
  XOR4M1RA U55 ( .A(n10), .B(x[6]), .C(x[31]), .D(x[30]), .Z(y[7]) );
  XOR3M2RA U60 ( .A(x[14]), .B(n11), .C(n12), .Z(y[6]) );
  XNR3M1R U61 ( .A(n14), .B(x[12]), .C(n15), .Z(y[4]) );
  XOR3M2RA U62 ( .A(n25), .B(x[9]), .C(n7), .Z(y[1]) );
  XOR3M2RA U63 ( .A(x[18]), .B(n23), .C(n24), .Z(y[26]) );
endmodule


module In_tf_4 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[4]), .Z(n17) );
  INVM2R U25 ( .A(g[1]), .Z(n15) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_4 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_4 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d0), .Z(n20) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_4 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_4 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U12 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
  XNR3M1R U14 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
endmodule


module Newlight_sbox_4 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_4 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_4 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_4 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_4 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_4 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_5 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_5 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_5 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_5 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_5 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XNR3M1R U6 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U12 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_5 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_5 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_5 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_5 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_5 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_5 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_6 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_6 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U3 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U4 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U5 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U6 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U7 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U8 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(b02), .B(a02), .Z(n23) );
  XOR4M1RA U13 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U14 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U15 ( .A(a13), .B(b13), .Z(n14) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_6 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_6 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U12 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U14 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U15 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U17 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U18 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U20 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U21 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U23 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U25 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U28 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U29 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U31 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U32 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U34 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U35 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_6 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  XNR3M1R U2 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  INVM2R U3 ( .A(z5), .Z(n12) );
  XOR4M1RA U6 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U9 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U12 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_6 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_6 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_6 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_6 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_6 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_6 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_7 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_7 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_7 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_7 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_7 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U6 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U9 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_7 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_7 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_7 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_7 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_7 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_7 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_8 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[4]), .Z(n17) );
  INVM2R U25 ( .A(g[1]), .Z(n15) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_8 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_8 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_8 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_8 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U12 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
  XNR3M1R U14 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
endmodule


module Newlight_sbox_8 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_8 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_8 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_8 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_8 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_8 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_9 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_9 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_9 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_9 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_9 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XNR3M1R U6 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U12 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_9 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_9 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_9 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_9 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_9 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_9 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_10 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_10 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U3 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U4 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U5 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U6 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U7 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U8 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(b02), .B(a02), .Z(n23) );
  XOR4M1RA U13 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U14 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U15 ( .A(a13), .B(b13), .Z(n14) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_10 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d0), .Z(n20) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_10 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U12 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U14 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U15 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U17 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U18 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U20 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U21 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U23 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U25 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U28 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U29 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U31 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U32 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U34 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U35 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_10 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  XNR3M1R U2 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  INVM2R U3 ( .A(z5), .Z(n12) );
  XOR4M1RA U6 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U9 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U12 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_10 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_10 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_10 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_10 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_10 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_10 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_11 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_11 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_11 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_11 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_11 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U6 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U9 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_11 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_11 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_11 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_11 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_11 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_11 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_12 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[4]), .Z(n17) );
  INVM2R U25 ( .A(g[1]), .Z(n15) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_12 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_12 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_12 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_12 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U12 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
  XNR3M1R U14 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
endmodule


module Newlight_sbox_12 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_12 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_12 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_12 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_12 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_12 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_13 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_13 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_13 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_13 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_13 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XNR3M1R U6 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U12 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_13 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_13 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_13 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_13 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_13 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_13 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_14 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_14 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U3 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U4 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U5 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U6 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U7 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U8 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(b02), .B(a02), .Z(n23) );
  XOR4M1RA U13 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U14 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U15 ( .A(a13), .B(b13), .Z(n14) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_14 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d0), .Z(n20) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_14 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U12 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U14 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U15 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U17 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U18 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U20 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U21 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U23 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U25 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U28 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U29 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U31 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U32 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U34 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U35 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_14 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  XNR3M1R U2 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  INVM2R U3 ( .A(z5), .Z(n12) );
  XOR4M1RA U6 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U9 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U12 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_14 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_14 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_14 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_14 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_14 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_14 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_15 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_15 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_15 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_15 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U3 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U5 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_15 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U6 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U9 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_15 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_15 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_15 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_15 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_15 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_15 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_16 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[4]), .Z(n17) );
  INVM2R U25 ( .A(g[1]), .Z(n15) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_16 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_16 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d0), .Z(n20) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_16 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_16 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U12 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
  XNR3M1R U14 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
endmodule


module Newlight_sbox_16 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_16 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_16 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_16 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_16 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_16 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_17 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[7]), .Z(n19) );
  INVM2R U24 ( .A(g[1]), .Z(n15) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_17 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(b02), .B(a02), .Z(n23) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_17 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_17 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U5 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U6 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U12 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U14 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U15 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_17 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XNR3M1R U6 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR4M1RA U12 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_17 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_17 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_17 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_17 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_17 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_17 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_18 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[2]), .Z(n16) );
  INVM2R U26 ( .A(g[4]), .Z(n17) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_18 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U3 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U4 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U5 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U6 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U7 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U8 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(b02), .B(a02), .Z(n23) );
  XOR4M1RA U13 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U14 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U15 ( .A(a13), .B(b13), .Z(n14) );
  ND2M2R U16 ( .A(bp), .B(ap), .Z(n22) );
endmodule


module Inv_4_18 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  OAI22M2R U8 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U9 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U11 ( .A(d1), .Z(n19) );
  INVM2R U12 ( .A(d3), .Z(n17) );
  INVM2R U13 ( .A(d2), .Z(n18) );
  INVM2R U14 ( .A(d0), .Z(n20) );
endmodule


module mul_out_18 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, 
        z2, z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U3 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U5 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U6 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U11 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U12 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U14 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U15 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U17 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U18 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U20 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U21 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U23 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U25 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U28 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U29 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U31 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U32 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U34 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U35 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U37 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U38 ( .A(bp), .B(n50), .Z(n37) );
endmodule


module out_tf_18 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  XNR3M1R U2 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  INVM2R U3 ( .A(z5), .Z(n12) );
  XOR4M1RA U6 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U9 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U12 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_18 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_18 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_18 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_18 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_18 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), 
        .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_18 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module mixcol_0 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n3, n5, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60;

  XNR2M2RA U2 ( .A(n55), .B(n54), .Z(y[8]) );
  XNR2M2RA U7 ( .A(n47), .B(n46), .Z(y[3]) );
  XNR2M2RA U9 ( .A(n58), .B(x[23]), .Z(n53) );
  XNR2M2RA U14 ( .A(x[27]), .B(n60), .Z(n49) );
  XOR2M2RA U22 ( .A(x[13]), .B(x[21]), .Z(n50) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n40) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n38) );
  XNR2M2RA U31 ( .A(x[18]), .B(n59), .Z(n41) );
  XOR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n39) );
  XOR2M2RA U35 ( .A(n36), .B(n3), .Z(n37) );
  XNR2M2RA U36 ( .A(x[16]), .B(n59), .Z(n36) );
  XNR2M2RA U37 ( .A(x[8]), .B(n58), .Z(n57) );
  XNR2M2RA U39 ( .A(x[0]), .B(x[15]), .Z(n55) );
  XOR2M2RA U41 ( .A(x[31]), .B(x[7]), .Z(n34) );
  XOR2M2RA U42 ( .A(x[14]), .B(x[6]), .Z(n45) );
  XOR2M2RA U44 ( .A(x[22]), .B(x[30]), .Z(n52) );
  XOR2M2RA U46 ( .A(x[12]), .B(x[4]), .Z(n32) );
  XOR2M2RA U47 ( .A(x[29]), .B(x[5]), .Z(n51) );
  XOR2M2RA U50 ( .A(x[20]), .B(x[28]), .Z(n43) );
  XOR2M2RA U51 ( .A(x[11]), .B(x[15]), .Z(n33) );
  XOR2M2RA U56 ( .A(x[1]), .B(x[9]), .Z(n3) );
  XOR2M2RA U57 ( .A(x[18]), .B(x[26]), .Z(n44) );
  XOR2M2RA U58 ( .A(n54), .B(n35), .Z(y[0]) );
  XNR2M2RA U59 ( .A(x[8]), .B(n60), .Z(n35) );
  XOR4M1RA U1 ( .A(x[27]), .B(x[11]), .C(n41), .D(n5), .Z(y[19]) );
  XNR3M1R U3 ( .A(n41), .B(x[3]), .C(n47), .Z(y[27]) );
  XOR3M2RA U4 ( .A(x[19]), .B(n46), .C(n5), .Z(y[11]) );
  XNR3M1R U5 ( .A(n33), .B(x[28]), .C(n42), .Z(y[20]) );
  XNR3M1R U6 ( .A(n33), .B(x[4]), .C(n48), .Z(y[12]) );
  XNR3M1R U8 ( .A(n49), .B(x[12]), .C(n48), .Z(y[4]) );
  XNR3M1R U10 ( .A(n59), .B(n45), .C(n34), .Z(y[15]) );
  XNR3M1R U11 ( .A(x[20]), .B(n49), .C(n42), .Z(y[28]) );
  XOR4M1RA U12 ( .A(n60), .B(x[26]), .C(x[11]), .D(x[19]), .Z(n47) );
  XNR3M1R U13 ( .A(x[3]), .B(n58), .C(x[10]), .Z(n5) );
  XOR3M2RA U15 ( .A(x[7]), .B(x[2]), .C(x[27]), .Z(n46) );
  XNR3M1R U16 ( .A(x[23]), .B(x[19]), .C(n32), .Z(n42) );
  XNR3M1R U17 ( .A(x[7]), .B(x[3]), .C(n43), .Z(n48) );
  XOR4M1RA U18 ( .A(x[29]), .B(x[22]), .C(x[21]), .D(n45), .Z(y[30]) );
  XOR4M1RA U19 ( .A(n34), .B(x[22]), .C(x[15]), .D(x[14]), .Z(y[23]) );
  XOR4M1RA U20 ( .A(x[20]), .B(x[13]), .C(x[12]), .D(n51), .Z(y[21]) );
  XOR4M1RA U21 ( .A(x[9]), .B(x[26]), .C(x[17]), .D(n39), .Z(y[18]) );
  XOR4M1RA U23 ( .A(x[8]), .B(x[24]), .C(n59), .D(n55), .Z(y[16]) );
  XOR4M1RA U24 ( .A(x[6]), .B(x[5]), .C(x[13]), .D(n52), .Z(y[14]) );
  XOR4M1RA U25 ( .A(n53), .B(x[6]), .C(x[31]), .D(x[30]), .Z(y[7]) );
  XOR4M1RA U26 ( .A(x[4]), .B(x[29]), .C(x[28]), .D(n50), .Z(y[5]) );
  XOR4M1RA U27 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n44), .Z(y[2]) );
  XOR3M2RA U30 ( .A(n38), .B(x[17]), .C(n37), .Z(y[25]) );
  XOR3M2RA U32 ( .A(x[7]), .B(x[0]), .C(n40), .Z(n56) );
  INVM2R U34 ( .A(x[23]), .Z(n59) );
  XOR3M2RA U38 ( .A(x[7]), .B(x[24]), .C(x[16]), .Z(n54) );
  XOR3M2RA U40 ( .A(x[7]), .B(n53), .C(n52), .Z(y[31]) );
  XOR3M2RA U43 ( .A(x[5]), .B(n50), .C(n43), .Z(y[29]) );
  XOR3M2RA U45 ( .A(x[30]), .B(n50), .C(n45), .Z(y[22]) );
  XOR3M2RA U48 ( .A(x[25]), .B(n57), .C(n37), .Z(y[17]) );
  XOR3M2RA U49 ( .A(x[21]), .B(n51), .C(n32), .Z(y[13]) );
  XOR3M2RA U52 ( .A(x[2]), .B(n44), .C(n3), .Z(y[10]) );
  XOR3M2RA U53 ( .A(x[1]), .B(n57), .C(n56), .Z(y[9]) );
  XOR3M2RA U54 ( .A(x[14]), .B(n52), .C(n51), .Z(y[6]) );
  XOR3M2RA U55 ( .A(n38), .B(x[9]), .C(n56), .Z(y[1]) );
  INVM2R U60 ( .A(x[15]), .Z(n58) );
  INVM2R U61 ( .A(x[31]), .Z(n60) );
  XOR3M2RA U62 ( .A(x[18]), .B(n40), .C(n39), .Z(y[26]) );
  XOR3M2RA U63 ( .A(x[0]), .B(n36), .C(n35), .Z(y[24]) );
endmodule


module mixcol_1 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n3, n5, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60;

  XNR2M2RA U2 ( .A(n55), .B(n54), .Z(y[8]) );
  XNR2M2RA U7 ( .A(n47), .B(n46), .Z(y[3]) );
  XNR2M2RA U9 ( .A(n58), .B(x[23]), .Z(n53) );
  XNR2M2RA U14 ( .A(x[27]), .B(n60), .Z(n49) );
  XOR2M2RA U22 ( .A(x[13]), .B(x[21]), .Z(n50) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n40) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n38) );
  XNR2M2RA U31 ( .A(x[18]), .B(n59), .Z(n41) );
  XOR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n39) );
  XOR2M2RA U35 ( .A(n36), .B(n3), .Z(n37) );
  XNR2M2RA U36 ( .A(x[16]), .B(n59), .Z(n36) );
  XNR2M2RA U37 ( .A(x[8]), .B(n58), .Z(n57) );
  XNR2M2RA U39 ( .A(x[0]), .B(x[15]), .Z(n55) );
  XOR2M2RA U41 ( .A(x[31]), .B(x[7]), .Z(n34) );
  XOR2M2RA U42 ( .A(x[14]), .B(x[6]), .Z(n45) );
  XOR2M2RA U44 ( .A(x[22]), .B(x[30]), .Z(n52) );
  XOR2M2RA U46 ( .A(x[12]), .B(x[4]), .Z(n32) );
  XOR2M2RA U47 ( .A(x[29]), .B(x[5]), .Z(n51) );
  XOR2M2RA U50 ( .A(x[20]), .B(x[28]), .Z(n43) );
  XOR2M2RA U51 ( .A(x[11]), .B(x[15]), .Z(n33) );
  XOR2M2RA U56 ( .A(x[1]), .B(x[9]), .Z(n3) );
  XOR2M2RA U57 ( .A(x[18]), .B(x[26]), .Z(n44) );
  XOR2M2RA U58 ( .A(n54), .B(n35), .Z(y[0]) );
  XNR2M2RA U59 ( .A(x[8]), .B(n60), .Z(n35) );
  XNR3M1R U1 ( .A(n41), .B(x[3]), .C(n47), .Z(y[27]) );
  XNR3M1R U3 ( .A(n59), .B(n45), .C(n34), .Z(y[15]) );
  XOR4M1RA U4 ( .A(n60), .B(x[26]), .C(x[11]), .D(x[19]), .Z(n47) );
  XNR3M1R U5 ( .A(x[3]), .B(n58), .C(x[10]), .Z(n5) );
  XOR3M2RA U6 ( .A(x[7]), .B(x[2]), .C(x[27]), .Z(n46) );
  XNR3M1R U8 ( .A(x[23]), .B(x[19]), .C(n32), .Z(n42) );
  XNR3M1R U10 ( .A(x[7]), .B(x[3]), .C(n43), .Z(n48) );
  XOR4M1RA U11 ( .A(x[29]), .B(x[22]), .C(x[21]), .D(n45), .Z(y[30]) );
  XOR4M1RA U12 ( .A(n34), .B(x[22]), .C(x[15]), .D(x[14]), .Z(y[23]) );
  XOR4M1RA U13 ( .A(x[9]), .B(x[26]), .C(x[17]), .D(n39), .Z(y[18]) );
  XOR4M1RA U15 ( .A(x[6]), .B(x[5]), .C(x[13]), .D(n52), .Z(y[14]) );
  XOR4M1RA U16 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n44), .Z(y[2]) );
  XOR3M2RA U17 ( .A(x[7]), .B(x[0]), .C(n40), .Z(n56) );
  INVM2R U18 ( .A(x[23]), .Z(n59) );
  XOR3M2RA U19 ( .A(x[7]), .B(x[24]), .C(x[16]), .Z(n54) );
  XOR3M2RA U20 ( .A(x[7]), .B(n53), .C(n52), .Z(y[31]) );
  XOR3M2RA U21 ( .A(x[30]), .B(n50), .C(n45), .Z(y[22]) );
  XOR3M2RA U23 ( .A(x[2]), .B(n44), .C(n3), .Z(y[10]) );
  XOR3M2RA U24 ( .A(x[14]), .B(n52), .C(n51), .Z(y[6]) );
  INVM2R U25 ( .A(x[15]), .Z(n58) );
  INVM2R U26 ( .A(x[31]), .Z(n60) );
  XOR3M2RA U27 ( .A(x[18]), .B(n40), .C(n39), .Z(y[26]) );
  XOR4M1RA U30 ( .A(x[27]), .B(x[11]), .C(n41), .D(n5), .Z(y[19]) );
  XOR3M2RA U32 ( .A(x[19]), .B(n46), .C(n5), .Z(y[11]) );
  XOR4M1RA U34 ( .A(x[20]), .B(x[13]), .C(x[12]), .D(n51), .Z(y[21]) );
  XOR4M1RA U38 ( .A(x[4]), .B(x[29]), .C(x[28]), .D(n50), .Z(y[5]) );
  XOR3M2RA U40 ( .A(x[5]), .B(n50), .C(n43), .Z(y[29]) );
  XNR3M1R U43 ( .A(x[20]), .B(n49), .C(n42), .Z(y[28]) );
  XOR3M2RA U45 ( .A(n38), .B(x[17]), .C(n37), .Z(y[25]) );
  XOR3M2RA U48 ( .A(x[0]), .B(n36), .C(n35), .Z(y[24]) );
  XNR3M1R U49 ( .A(n33), .B(x[28]), .C(n42), .Z(y[20]) );
  XOR3M2RA U52 ( .A(x[25]), .B(n57), .C(n37), .Z(y[17]) );
  XOR4M1RA U53 ( .A(x[8]), .B(x[24]), .C(n59), .D(n55), .Z(y[16]) );
  XOR3M2RA U54 ( .A(x[21]), .B(n51), .C(n32), .Z(y[13]) );
  XNR3M1R U55 ( .A(n33), .B(x[4]), .C(n48), .Z(y[12]) );
  XOR3M2RA U60 ( .A(x[1]), .B(n57), .C(n56), .Z(y[9]) );
  XOR4M1RA U61 ( .A(n53), .B(x[6]), .C(x[31]), .D(x[30]), .Z(y[7]) );
  XNR3M1R U62 ( .A(n49), .B(x[12]), .C(n48), .Z(y[4]) );
  XOR3M2RA U63 ( .A(n38), .B(x[9]), .C(n56), .Z(y[1]) );
endmodule


module mixcol_2 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n3, n5, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43,
         n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57,
         n58, n59, n60;

  XNR2M2RA U2 ( .A(n55), .B(n54), .Z(y[8]) );
  XNR2M2RA U7 ( .A(n47), .B(n46), .Z(y[3]) );
  XNR2M2RA U9 ( .A(n58), .B(x[23]), .Z(n53) );
  XNR2M2RA U14 ( .A(x[27]), .B(n60), .Z(n49) );
  XOR2M2RA U22 ( .A(x[13]), .B(x[21]), .Z(n50) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n40) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n38) );
  XNR2M2RA U31 ( .A(x[18]), .B(n59), .Z(n41) );
  XOR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n39) );
  XOR2M2RA U35 ( .A(n36), .B(n3), .Z(n37) );
  XNR2M2RA U36 ( .A(x[16]), .B(n59), .Z(n36) );
  XNR2M2RA U37 ( .A(x[8]), .B(n58), .Z(n57) );
  XNR2M2RA U39 ( .A(x[0]), .B(x[15]), .Z(n55) );
  XOR2M2RA U41 ( .A(x[31]), .B(x[7]), .Z(n34) );
  XOR2M2RA U42 ( .A(x[14]), .B(x[6]), .Z(n45) );
  XOR2M2RA U44 ( .A(x[22]), .B(x[30]), .Z(n52) );
  XOR2M2RA U46 ( .A(x[12]), .B(x[4]), .Z(n32) );
  XOR2M2RA U47 ( .A(x[29]), .B(x[5]), .Z(n51) );
  XOR2M2RA U50 ( .A(x[20]), .B(x[28]), .Z(n43) );
  XOR2M2RA U51 ( .A(x[11]), .B(x[15]), .Z(n33) );
  XOR2M2RA U56 ( .A(x[1]), .B(x[9]), .Z(n3) );
  XOR2M2RA U57 ( .A(x[18]), .B(x[26]), .Z(n44) );
  XOR2M2RA U58 ( .A(n54), .B(n35), .Z(y[0]) );
  XNR2M2RA U59 ( .A(x[8]), .B(n60), .Z(n35) );
  XOR4M1RA U1 ( .A(n60), .B(x[26]), .C(x[11]), .D(x[19]), .Z(n47) );
  XNR3M1R U3 ( .A(x[3]), .B(n58), .C(x[10]), .Z(n5) );
  XOR3M2RA U4 ( .A(x[7]), .B(x[2]), .C(x[27]), .Z(n46) );
  XNR3M1R U5 ( .A(x[23]), .B(x[19]), .C(n32), .Z(n42) );
  XNR3M1R U6 ( .A(x[7]), .B(x[3]), .C(n43), .Z(n48) );
  XOR3M2RA U8 ( .A(x[7]), .B(x[0]), .C(n40), .Z(n56) );
  INVM2R U10 ( .A(x[23]), .Z(n59) );
  XOR3M2RA U11 ( .A(x[7]), .B(x[24]), .C(x[16]), .Z(n54) );
  INVM2R U12 ( .A(x[15]), .Z(n58) );
  INVM2R U13 ( .A(x[31]), .Z(n60) );
  XOR4M1RA U15 ( .A(x[27]), .B(x[11]), .C(n41), .D(n5), .Z(y[19]) );
  XNR3M1R U16 ( .A(n41), .B(x[3]), .C(n47), .Z(y[27]) );
  XOR3M2RA U17 ( .A(x[19]), .B(n46), .C(n5), .Z(y[11]) );
  XOR4M1RA U18 ( .A(x[20]), .B(x[13]), .C(x[12]), .D(n51), .Z(y[21]) );
  XOR4M1RA U19 ( .A(x[9]), .B(x[26]), .C(x[17]), .D(n39), .Z(y[18]) );
  XOR4M1RA U20 ( .A(x[6]), .B(x[5]), .C(x[13]), .D(n52), .Z(y[14]) );
  XOR4M1RA U21 ( .A(x[4]), .B(x[29]), .C(x[28]), .D(n50), .Z(y[5]) );
  XOR4M1RA U23 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n44), .Z(y[2]) );
  XOR3M2RA U24 ( .A(x[7]), .B(n53), .C(n52), .Z(y[31]) );
  XOR4M1RA U25 ( .A(x[29]), .B(x[22]), .C(x[21]), .D(n45), .Z(y[30]) );
  XOR3M2RA U26 ( .A(x[5]), .B(n50), .C(n43), .Z(y[29]) );
  XNR3M1R U27 ( .A(x[20]), .B(n49), .C(n42), .Z(y[28]) );
  XOR3M2RA U30 ( .A(n38), .B(x[17]), .C(n37), .Z(y[25]) );
  XOR3M2RA U32 ( .A(x[0]), .B(n36), .C(n35), .Z(y[24]) );
  XOR4M1RA U34 ( .A(n34), .B(x[22]), .C(x[15]), .D(x[14]), .Z(y[23]) );
  XOR3M2RA U38 ( .A(x[30]), .B(n50), .C(n45), .Z(y[22]) );
  XNR3M1R U40 ( .A(n33), .B(x[28]), .C(n42), .Z(y[20]) );
  XOR3M2RA U43 ( .A(x[25]), .B(n57), .C(n37), .Z(y[17]) );
  XOR4M1RA U45 ( .A(x[8]), .B(x[24]), .C(n59), .D(n55), .Z(y[16]) );
  XNR3M1R U48 ( .A(n59), .B(n45), .C(n34), .Z(y[15]) );
  XOR3M2RA U49 ( .A(x[21]), .B(n51), .C(n32), .Z(y[13]) );
  XNR3M1R U52 ( .A(n33), .B(x[4]), .C(n48), .Z(y[12]) );
  XOR3M2RA U53 ( .A(x[2]), .B(n44), .C(n3), .Z(y[10]) );
  XOR3M2RA U54 ( .A(x[1]), .B(n57), .C(n56), .Z(y[9]) );
  XOR4M1RA U55 ( .A(n53), .B(x[6]), .C(x[31]), .D(x[30]), .Z(y[7]) );
  XOR3M2RA U60 ( .A(x[14]), .B(n52), .C(n51), .Z(y[6]) );
  XNR3M1R U61 ( .A(n49), .B(x[12]), .C(n48), .Z(y[4]) );
  XOR3M2RA U62 ( .A(n38), .B(x[9]), .C(n56), .Z(y[1]) );
  XOR3M2RA U63 ( .A(x[18]), .B(n40), .C(n39), .Z(y[26]) );
endmodule


module aes_core ( din, k, s, dout );
  input [127:0] din;
  input [127:0] k;
  output [127:0] dout;
  input s;
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
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n1, n258, n259, n260, n261;
  wire   [7:0] b0;
  wire   [7:0] b1;
  wire   [7:0] b2;
  wire   [7:0] b3;
  wire   [7:0] b4;
  wire   [7:0] b5;
  wire   [7:0] b6;
  wire   [7:0] b7;
  wire   [7:0] b8;
  wire   [7:0] b9;
  wire   [7:0] b10;
  wire   [7:0] b11;
  wire   [7:0] b12;
  wire   [7:0] b13;
  wire   [7:0] b14;
  wire   [7:0] b15;
  wire   [127:0] rs;
  wire   [31:0] my0;
  wire   [31:0] my1;
  wire   [31:0] my2;
  wire   [31:0] my3;

  Newlight_sbox_19 f1 ( .g(din[127:120]), .s(b0) );
  Newlight_sbox_18 f2 ( .g(din[119:112]), .s(b1) );
  Newlight_sbox_17 f3 ( .g(din[111:104]), .s(b2) );
  Newlight_sbox_16 f4 ( .g(din[103:96]), .s(b3) );
  Newlight_sbox_15 f5 ( .g(din[95:88]), .s(b4) );
  Newlight_sbox_14 f6 ( .g(din[87:80]), .s(b5) );
  Newlight_sbox_13 f7 ( .g(din[79:72]), .s(b6) );
  Newlight_sbox_12 f8 ( .g(din[71:64]), .s(b7) );
  Newlight_sbox_11 f9 ( .g(din[63:56]), .s(b8) );
  Newlight_sbox_10 f10 ( .g(din[55:48]), .s(b9) );
  Newlight_sbox_9 f11 ( .g(din[47:40]), .s(b10) );
  Newlight_sbox_8 f12 ( .g(din[39:32]), .s(b11) );
  Newlight_sbox_7 f13 ( .g(din[31:24]), .s(b12) );
  Newlight_sbox_6 f14 ( .g(din[23:16]), .s(b13) );
  Newlight_sbox_5 f15 ( .g(din[15:8]), .s(b14) );
  Newlight_sbox_4 f16 ( .g(din[7:0]), .s(b15) );
  row_shift f17 ( .sb({b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, 
        b13, b14, b15}), .rs(rs) );
  mixcol_3 f18 ( .x(rs[127:96]), .y(my0) );
  mixcol_2 f19 ( .x(rs[95:64]), .y(my1) );
  mixcol_1 f20 ( .x(rs[63:32]), .y(my2) );
  mixcol_0 f21 ( .x(rs[31:0]), .y(my3) );
  XNR2M2RA U2 ( .A(k[9]), .B(rs[9]), .Z(n3) );
  XNR2M2RA U3 ( .A(k[9]), .B(my3[9]), .Z(n2) );
  XNR2M2RA U5 ( .A(k[99]), .B(rs[99]), .Z(n5) );
  XNR2M2RA U6 ( .A(k[99]), .B(my0[3]), .Z(n4) );
  XNR2M2RA U8 ( .A(k[98]), .B(rs[98]), .Z(n7) );
  XNR2M2RA U9 ( .A(k[98]), .B(my0[2]), .Z(n6) );
  XNR2M2RA U11 ( .A(k[97]), .B(rs[97]), .Z(n9) );
  XNR2M2RA U12 ( .A(k[97]), .B(my0[1]), .Z(n8) );
  XNR2M2RA U14 ( .A(k[96]), .B(rs[96]), .Z(n11) );
  XNR2M2RA U15 ( .A(k[96]), .B(my0[0]), .Z(n10) );
  XNR2M2RA U17 ( .A(k[95]), .B(rs[95]), .Z(n13) );
  XNR2M2RA U18 ( .A(k[95]), .B(my1[31]), .Z(n12) );
  XNR2M2RA U20 ( .A(k[94]), .B(rs[94]), .Z(n15) );
  XNR2M2RA U21 ( .A(k[94]), .B(my1[30]), .Z(n14) );
  XNR2M2RA U23 ( .A(k[93]), .B(rs[93]), .Z(n17) );
  XNR2M2RA U24 ( .A(k[93]), .B(my1[29]), .Z(n16) );
  XNR2M2RA U26 ( .A(k[92]), .B(rs[92]), .Z(n19) );
  XNR2M2RA U27 ( .A(k[92]), .B(my1[28]), .Z(n18) );
  XNR2M2RA U29 ( .A(k[91]), .B(rs[91]), .Z(n21) );
  XNR2M2RA U30 ( .A(k[91]), .B(my1[27]), .Z(n20) );
  XNR2M2RA U32 ( .A(k[90]), .B(rs[90]), .Z(n23) );
  XNR2M2RA U33 ( .A(k[90]), .B(my1[26]), .Z(n22) );
  XNR2M2RA U35 ( .A(k[8]), .B(rs[8]), .Z(n25) );
  XNR2M2RA U36 ( .A(k[8]), .B(my3[8]), .Z(n24) );
  XNR2M2RA U38 ( .A(k[89]), .B(rs[89]), .Z(n27) );
  XNR2M2RA U39 ( .A(k[89]), .B(my1[25]), .Z(n26) );
  XNR2M2RA U41 ( .A(k[88]), .B(rs[88]), .Z(n29) );
  XNR2M2RA U42 ( .A(k[88]), .B(my1[24]), .Z(n28) );
  XNR2M2RA U44 ( .A(k[87]), .B(rs[87]), .Z(n31) );
  XNR2M2RA U45 ( .A(k[87]), .B(my1[23]), .Z(n30) );
  XNR2M2RA U47 ( .A(k[86]), .B(rs[86]), .Z(n33) );
  XNR2M2RA U48 ( .A(k[86]), .B(my1[22]), .Z(n32) );
  XNR2M2RA U50 ( .A(k[85]), .B(rs[85]), .Z(n35) );
  XNR2M2RA U51 ( .A(k[85]), .B(my1[21]), .Z(n34) );
  XNR2M2RA U53 ( .A(k[84]), .B(rs[84]), .Z(n37) );
  XNR2M2RA U54 ( .A(k[84]), .B(my1[20]), .Z(n36) );
  XNR2M2RA U56 ( .A(k[83]), .B(rs[83]), .Z(n39) );
  XNR2M2RA U57 ( .A(k[83]), .B(my1[19]), .Z(n38) );
  XNR2M2RA U59 ( .A(k[82]), .B(rs[82]), .Z(n41) );
  XNR2M2RA U60 ( .A(k[82]), .B(my1[18]), .Z(n40) );
  XNR2M2RA U62 ( .A(k[81]), .B(rs[81]), .Z(n43) );
  XNR2M2RA U63 ( .A(k[81]), .B(my1[17]), .Z(n42) );
  XNR2M2RA U65 ( .A(k[80]), .B(rs[80]), .Z(n45) );
  XNR2M2RA U66 ( .A(k[80]), .B(my1[16]), .Z(n44) );
  XNR2M2RA U68 ( .A(k[7]), .B(rs[7]), .Z(n47) );
  XNR2M2RA U69 ( .A(k[7]), .B(my3[7]), .Z(n46) );
  XNR2M2RA U71 ( .A(k[79]), .B(rs[79]), .Z(n49) );
  XNR2M2RA U72 ( .A(k[79]), .B(my1[15]), .Z(n48) );
  XNR2M2RA U74 ( .A(k[78]), .B(rs[78]), .Z(n51) );
  XNR2M2RA U75 ( .A(k[78]), .B(my1[14]), .Z(n50) );
  XNR2M2RA U77 ( .A(k[77]), .B(rs[77]), .Z(n53) );
  XNR2M2RA U78 ( .A(k[77]), .B(my1[13]), .Z(n52) );
  XNR2M2RA U80 ( .A(k[76]), .B(rs[76]), .Z(n55) );
  XNR2M2RA U81 ( .A(k[76]), .B(my1[12]), .Z(n54) );
  XNR2M2RA U83 ( .A(k[75]), .B(rs[75]), .Z(n57) );
  XNR2M2RA U84 ( .A(k[75]), .B(my1[11]), .Z(n56) );
  XNR2M2RA U86 ( .A(k[74]), .B(rs[74]), .Z(n59) );
  XNR2M2RA U87 ( .A(k[74]), .B(my1[10]), .Z(n58) );
  XNR2M2RA U89 ( .A(k[73]), .B(rs[73]), .Z(n61) );
  XNR2M2RA U90 ( .A(k[73]), .B(my1[9]), .Z(n60) );
  XNR2M2RA U92 ( .A(k[72]), .B(rs[72]), .Z(n63) );
  XNR2M2RA U93 ( .A(k[72]), .B(my1[8]), .Z(n62) );
  XNR2M2RA U95 ( .A(k[71]), .B(rs[71]), .Z(n65) );
  XNR2M2RA U96 ( .A(k[71]), .B(my1[7]), .Z(n64) );
  XNR2M2RA U98 ( .A(k[70]), .B(rs[70]), .Z(n67) );
  XNR2M2RA U99 ( .A(k[70]), .B(my1[6]), .Z(n66) );
  XNR2M2RA U101 ( .A(k[6]), .B(rs[6]), .Z(n69) );
  XNR2M2RA U102 ( .A(k[6]), .B(my3[6]), .Z(n68) );
  XNR2M2RA U104 ( .A(k[69]), .B(rs[69]), .Z(n71) );
  XNR2M2RA U105 ( .A(k[69]), .B(my1[5]), .Z(n70) );
  XNR2M2RA U107 ( .A(k[68]), .B(rs[68]), .Z(n73) );
  XNR2M2RA U108 ( .A(k[68]), .B(my1[4]), .Z(n72) );
  XNR2M2RA U110 ( .A(k[67]), .B(rs[67]), .Z(n75) );
  XNR2M2RA U111 ( .A(k[67]), .B(my1[3]), .Z(n74) );
  XNR2M2RA U113 ( .A(k[66]), .B(rs[66]), .Z(n77) );
  XNR2M2RA U114 ( .A(k[66]), .B(my1[2]), .Z(n76) );
  XNR2M2RA U116 ( .A(k[65]), .B(rs[65]), .Z(n79) );
  XNR2M2RA U117 ( .A(k[65]), .B(my1[1]), .Z(n78) );
  XNR2M2RA U119 ( .A(k[64]), .B(rs[64]), .Z(n81) );
  XNR2M2RA U120 ( .A(k[64]), .B(my1[0]), .Z(n80) );
  XNR2M2RA U122 ( .A(k[63]), .B(rs[63]), .Z(n83) );
  XNR2M2RA U123 ( .A(k[63]), .B(my2[31]), .Z(n82) );
  XNR2M2RA U125 ( .A(k[62]), .B(rs[62]), .Z(n85) );
  XNR2M2RA U126 ( .A(k[62]), .B(my2[30]), .Z(n84) );
  XNR2M2RA U128 ( .A(k[61]), .B(rs[61]), .Z(n87) );
  XNR2M2RA U129 ( .A(k[61]), .B(my2[29]), .Z(n86) );
  XNR2M2RA U131 ( .A(k[60]), .B(rs[60]), .Z(n89) );
  XNR2M2RA U132 ( .A(k[60]), .B(my2[28]), .Z(n88) );
  XNR2M2RA U134 ( .A(k[5]), .B(rs[5]), .Z(n91) );
  XNR2M2RA U135 ( .A(k[5]), .B(my3[5]), .Z(n90) );
  XNR2M2RA U137 ( .A(k[59]), .B(rs[59]), .Z(n93) );
  XNR2M2RA U138 ( .A(k[59]), .B(my2[27]), .Z(n92) );
  XNR2M2RA U140 ( .A(k[58]), .B(rs[58]), .Z(n95) );
  XNR2M2RA U141 ( .A(k[58]), .B(my2[26]), .Z(n94) );
  XNR2M2RA U143 ( .A(k[57]), .B(rs[57]), .Z(n97) );
  XNR2M2RA U144 ( .A(k[57]), .B(my2[25]), .Z(n96) );
  XNR2M2RA U146 ( .A(k[56]), .B(rs[56]), .Z(n99) );
  XNR2M2RA U147 ( .A(k[56]), .B(my2[24]), .Z(n98) );
  XNR2M2RA U149 ( .A(k[55]), .B(rs[55]), .Z(n101) );
  XNR2M2RA U150 ( .A(k[55]), .B(my2[23]), .Z(n100) );
  XNR2M2RA U152 ( .A(k[54]), .B(rs[54]), .Z(n103) );
  XNR2M2RA U153 ( .A(k[54]), .B(my2[22]), .Z(n102) );
  XNR2M2RA U155 ( .A(k[53]), .B(rs[53]), .Z(n105) );
  XNR2M2RA U156 ( .A(k[53]), .B(my2[21]), .Z(n104) );
  XNR2M2RA U158 ( .A(k[52]), .B(rs[52]), .Z(n107) );
  XNR2M2RA U159 ( .A(k[52]), .B(my2[20]), .Z(n106) );
  XNR2M2RA U161 ( .A(k[51]), .B(rs[51]), .Z(n109) );
  XNR2M2RA U162 ( .A(k[51]), .B(my2[19]), .Z(n108) );
  XNR2M2RA U164 ( .A(k[50]), .B(rs[50]), .Z(n111) );
  XNR2M2RA U165 ( .A(k[50]), .B(my2[18]), .Z(n110) );
  XNR2M2RA U167 ( .A(k[4]), .B(rs[4]), .Z(n113) );
  XNR2M2RA U168 ( .A(k[4]), .B(my3[4]), .Z(n112) );
  XNR2M2RA U170 ( .A(k[49]), .B(rs[49]), .Z(n115) );
  XNR2M2RA U171 ( .A(k[49]), .B(my2[17]), .Z(n114) );
  XNR2M2RA U173 ( .A(k[48]), .B(rs[48]), .Z(n117) );
  XNR2M2RA U174 ( .A(k[48]), .B(my2[16]), .Z(n116) );
  XNR2M2RA U176 ( .A(k[47]), .B(rs[47]), .Z(n119) );
  XNR2M2RA U177 ( .A(k[47]), .B(my2[15]), .Z(n118) );
  XNR2M2RA U179 ( .A(k[46]), .B(rs[46]), .Z(n121) );
  XNR2M2RA U180 ( .A(k[46]), .B(my2[14]), .Z(n120) );
  XNR2M2RA U182 ( .A(k[45]), .B(rs[45]), .Z(n123) );
  XNR2M2RA U183 ( .A(k[45]), .B(my2[13]), .Z(n122) );
  XNR2M2RA U185 ( .A(k[44]), .B(rs[44]), .Z(n125) );
  XNR2M2RA U186 ( .A(k[44]), .B(my2[12]), .Z(n124) );
  XNR2M2RA U188 ( .A(k[43]), .B(rs[43]), .Z(n127) );
  XNR2M2RA U189 ( .A(k[43]), .B(my2[11]), .Z(n126) );
  XNR2M2RA U191 ( .A(k[42]), .B(rs[42]), .Z(n129) );
  XNR2M2RA U192 ( .A(k[42]), .B(my2[10]), .Z(n128) );
  XNR2M2RA U194 ( .A(k[41]), .B(rs[41]), .Z(n131) );
  XNR2M2RA U195 ( .A(k[41]), .B(my2[9]), .Z(n130) );
  XNR2M2RA U197 ( .A(k[40]), .B(rs[40]), .Z(n133) );
  XNR2M2RA U198 ( .A(k[40]), .B(my2[8]), .Z(n132) );
  XNR2M2RA U200 ( .A(k[3]), .B(rs[3]), .Z(n135) );
  XNR2M2RA U201 ( .A(k[3]), .B(my3[3]), .Z(n134) );
  XNR2M2RA U203 ( .A(k[39]), .B(rs[39]), .Z(n137) );
  XNR2M2RA U204 ( .A(k[39]), .B(my2[7]), .Z(n136) );
  XNR2M2RA U206 ( .A(k[38]), .B(rs[38]), .Z(n139) );
  XNR2M2RA U207 ( .A(k[38]), .B(my2[6]), .Z(n138) );
  XNR2M2RA U209 ( .A(k[37]), .B(rs[37]), .Z(n141) );
  XNR2M2RA U210 ( .A(k[37]), .B(my2[5]), .Z(n140) );
  XNR2M2RA U212 ( .A(k[36]), .B(rs[36]), .Z(n143) );
  XNR2M2RA U213 ( .A(k[36]), .B(my2[4]), .Z(n142) );
  XNR2M2RA U215 ( .A(k[35]), .B(rs[35]), .Z(n145) );
  XNR2M2RA U216 ( .A(k[35]), .B(my2[3]), .Z(n144) );
  XNR2M2RA U218 ( .A(k[34]), .B(rs[34]), .Z(n147) );
  XNR2M2RA U219 ( .A(k[34]), .B(my2[2]), .Z(n146) );
  XNR2M2RA U221 ( .A(k[33]), .B(rs[33]), .Z(n149) );
  XNR2M2RA U222 ( .A(k[33]), .B(my2[1]), .Z(n148) );
  XNR2M2RA U224 ( .A(k[32]), .B(rs[32]), .Z(n151) );
  XNR2M2RA U225 ( .A(k[32]), .B(my2[0]), .Z(n150) );
  XNR2M2RA U227 ( .A(k[31]), .B(rs[31]), .Z(n153) );
  XNR2M2RA U228 ( .A(k[31]), .B(my3[31]), .Z(n152) );
  XNR2M2RA U230 ( .A(k[30]), .B(rs[30]), .Z(n155) );
  XNR2M2RA U231 ( .A(k[30]), .B(my3[30]), .Z(n154) );
  XNR2M2RA U233 ( .A(k[2]), .B(rs[2]), .Z(n157) );
  XNR2M2RA U234 ( .A(k[2]), .B(my3[2]), .Z(n156) );
  XNR2M2RA U236 ( .A(k[29]), .B(rs[29]), .Z(n159) );
  XNR2M2RA U237 ( .A(k[29]), .B(my3[29]), .Z(n158) );
  XNR2M2RA U239 ( .A(k[28]), .B(rs[28]), .Z(n161) );
  XNR2M2RA U240 ( .A(k[28]), .B(my3[28]), .Z(n160) );
  XNR2M2RA U242 ( .A(k[27]), .B(rs[27]), .Z(n163) );
  XNR2M2RA U243 ( .A(k[27]), .B(my3[27]), .Z(n162) );
  XNR2M2RA U245 ( .A(k[26]), .B(rs[26]), .Z(n165) );
  XNR2M2RA U246 ( .A(k[26]), .B(my3[26]), .Z(n164) );
  XNR2M2RA U248 ( .A(k[25]), .B(rs[25]), .Z(n167) );
  XNR2M2RA U249 ( .A(k[25]), .B(my3[25]), .Z(n166) );
  XNR2M2RA U251 ( .A(k[24]), .B(rs[24]), .Z(n169) );
  XNR2M2RA U252 ( .A(k[24]), .B(my3[24]), .Z(n168) );
  XNR2M2RA U254 ( .A(k[23]), .B(rs[23]), .Z(n171) );
  XNR2M2RA U255 ( .A(k[23]), .B(my3[23]), .Z(n170) );
  XNR2M2RA U257 ( .A(k[22]), .B(rs[22]), .Z(n173) );
  XNR2M2RA U258 ( .A(k[22]), .B(my3[22]), .Z(n172) );
  XNR2M2RA U260 ( .A(k[21]), .B(rs[21]), .Z(n175) );
  XNR2M2RA U261 ( .A(k[21]), .B(my3[21]), .Z(n174) );
  XNR2M2RA U263 ( .A(k[20]), .B(rs[20]), .Z(n177) );
  XNR2M2RA U264 ( .A(k[20]), .B(my3[20]), .Z(n176) );
  XNR2M2RA U266 ( .A(k[1]), .B(rs[1]), .Z(n179) );
  XNR2M2RA U267 ( .A(k[1]), .B(my3[1]), .Z(n178) );
  XNR2M2RA U269 ( .A(k[19]), .B(rs[19]), .Z(n181) );
  XNR2M2RA U270 ( .A(k[19]), .B(my3[19]), .Z(n180) );
  XNR2M2RA U272 ( .A(k[18]), .B(rs[18]), .Z(n183) );
  XNR2M2RA U273 ( .A(k[18]), .B(my3[18]), .Z(n182) );
  XNR2M2RA U275 ( .A(k[17]), .B(rs[17]), .Z(n185) );
  XNR2M2RA U276 ( .A(k[17]), .B(my3[17]), .Z(n184) );
  XNR2M2RA U278 ( .A(k[16]), .B(rs[16]), .Z(n187) );
  XNR2M2RA U279 ( .A(k[16]), .B(my3[16]), .Z(n186) );
  XNR2M2RA U281 ( .A(k[15]), .B(rs[15]), .Z(n189) );
  XNR2M2RA U282 ( .A(k[15]), .B(my3[15]), .Z(n188) );
  XNR2M2RA U284 ( .A(k[14]), .B(rs[14]), .Z(n191) );
  XNR2M2RA U285 ( .A(k[14]), .B(my3[14]), .Z(n190) );
  XNR2M2RA U287 ( .A(k[13]), .B(rs[13]), .Z(n193) );
  XNR2M2RA U288 ( .A(k[13]), .B(my3[13]), .Z(n192) );
  XNR2M2RA U290 ( .A(k[12]), .B(rs[12]), .Z(n195) );
  XNR2M2RA U291 ( .A(k[12]), .B(my3[12]), .Z(n194) );
  XNR2M2RA U293 ( .A(k[127]), .B(rs[127]), .Z(n197) );
  XNR2M2RA U294 ( .A(k[127]), .B(my0[31]), .Z(n196) );
  XNR2M2RA U296 ( .A(k[126]), .B(rs[126]), .Z(n199) );
  XNR2M2RA U297 ( .A(k[126]), .B(my0[30]), .Z(n198) );
  XNR2M2RA U299 ( .A(k[125]), .B(rs[125]), .Z(n201) );
  XNR2M2RA U300 ( .A(k[125]), .B(my0[29]), .Z(n200) );
  XNR2M2RA U302 ( .A(k[124]), .B(rs[124]), .Z(n203) );
  XNR2M2RA U303 ( .A(k[124]), .B(my0[28]), .Z(n202) );
  XNR2M2RA U305 ( .A(k[123]), .B(rs[123]), .Z(n205) );
  XNR2M2RA U306 ( .A(k[123]), .B(my0[27]), .Z(n204) );
  XNR2M2RA U308 ( .A(k[122]), .B(rs[122]), .Z(n207) );
  XNR2M2RA U309 ( .A(k[122]), .B(my0[26]), .Z(n206) );
  XNR2M2RA U311 ( .A(k[121]), .B(rs[121]), .Z(n209) );
  XNR2M2RA U312 ( .A(k[121]), .B(my0[25]), .Z(n208) );
  XNR2M2RA U314 ( .A(k[120]), .B(rs[120]), .Z(n211) );
  XNR2M2RA U315 ( .A(k[120]), .B(my0[24]), .Z(n210) );
  XNR2M2RA U317 ( .A(k[11]), .B(rs[11]), .Z(n213) );
  XNR2M2RA U318 ( .A(k[11]), .B(my3[11]), .Z(n212) );
  XNR2M2RA U320 ( .A(k[119]), .B(rs[119]), .Z(n215) );
  XNR2M2RA U321 ( .A(k[119]), .B(my0[23]), .Z(n214) );
  XNR2M2RA U323 ( .A(k[118]), .B(rs[118]), .Z(n217) );
  XNR2M2RA U324 ( .A(k[118]), .B(my0[22]), .Z(n216) );
  XNR2M2RA U326 ( .A(k[117]), .B(rs[117]), .Z(n219) );
  XNR2M2RA U327 ( .A(k[117]), .B(my0[21]), .Z(n218) );
  XNR2M2RA U329 ( .A(k[116]), .B(rs[116]), .Z(n221) );
  XNR2M2RA U330 ( .A(k[116]), .B(my0[20]), .Z(n220) );
  XNR2M2RA U332 ( .A(k[115]), .B(rs[115]), .Z(n223) );
  XNR2M2RA U333 ( .A(k[115]), .B(my0[19]), .Z(n222) );
  XNR2M2RA U335 ( .A(k[114]), .B(rs[114]), .Z(n225) );
  XNR2M2RA U336 ( .A(k[114]), .B(my0[18]), .Z(n224) );
  XNR2M2RA U338 ( .A(k[113]), .B(rs[113]), .Z(n227) );
  XNR2M2RA U339 ( .A(k[113]), .B(my0[17]), .Z(n226) );
  XNR2M2RA U341 ( .A(k[112]), .B(rs[112]), .Z(n229) );
  XNR2M2RA U342 ( .A(k[112]), .B(my0[16]), .Z(n228) );
  XNR2M2RA U344 ( .A(k[111]), .B(rs[111]), .Z(n231) );
  XNR2M2RA U345 ( .A(k[111]), .B(my0[15]), .Z(n230) );
  XNR2M2RA U347 ( .A(k[110]), .B(rs[110]), .Z(n233) );
  XNR2M2RA U348 ( .A(k[110]), .B(my0[14]), .Z(n232) );
  XNR2M2RA U350 ( .A(k[10]), .B(rs[10]), .Z(n235) );
  XNR2M2RA U351 ( .A(k[10]), .B(my3[10]), .Z(n234) );
  XNR2M2RA U353 ( .A(k[109]), .B(rs[109]), .Z(n237) );
  XNR2M2RA U354 ( .A(k[109]), .B(my0[13]), .Z(n236) );
  XNR2M2RA U356 ( .A(k[108]), .B(rs[108]), .Z(n239) );
  XNR2M2RA U357 ( .A(k[108]), .B(my0[12]), .Z(n238) );
  XNR2M2RA U359 ( .A(k[107]), .B(rs[107]), .Z(n241) );
  XNR2M2RA U360 ( .A(k[107]), .B(my0[11]), .Z(n240) );
  XNR2M2RA U362 ( .A(k[106]), .B(rs[106]), .Z(n243) );
  XNR2M2RA U363 ( .A(k[106]), .B(my0[10]), .Z(n242) );
  XNR2M2RA U365 ( .A(k[105]), .B(rs[105]), .Z(n245) );
  XNR2M2RA U366 ( .A(k[105]), .B(my0[9]), .Z(n244) );
  XNR2M2RA U368 ( .A(k[104]), .B(rs[104]), .Z(n247) );
  XNR2M2RA U369 ( .A(k[104]), .B(my0[8]), .Z(n246) );
  XNR2M2RA U371 ( .A(k[103]), .B(rs[103]), .Z(n249) );
  XNR2M2RA U372 ( .A(k[103]), .B(my0[7]), .Z(n248) );
  XNR2M2RA U374 ( .A(k[102]), .B(rs[102]), .Z(n251) );
  XNR2M2RA U375 ( .A(k[102]), .B(my0[6]), .Z(n250) );
  XNR2M2RA U377 ( .A(k[101]), .B(rs[101]), .Z(n253) );
  XNR2M2RA U378 ( .A(k[101]), .B(my0[5]), .Z(n252) );
  XNR2M2RA U380 ( .A(k[100]), .B(rs[100]), .Z(n255) );
  XNR2M2RA U381 ( .A(k[100]), .B(my0[4]), .Z(n254) );
  XNR2M2RA U383 ( .A(k[0]), .B(rs[0]), .Z(n257) );
  XNR2M2RA U384 ( .A(k[0]), .B(my3[0]), .Z(n256) );
  CKINVM2R U1 ( .A(n260), .Z(n1) );
  INVM1R U4 ( .A(n260), .Z(n258) );
  BUFM2R U7 ( .A(n260), .Z(n259) );
  BUFM2R U10 ( .A(n261), .Z(n260) );
  INVM2R U13 ( .A(s), .Z(n261) );
  OAI22M2R U16 ( .A1(s), .A2(n152), .B1(n153), .B2(n260), .Z(dout[31]) );
  OAI22M2R U19 ( .A1(n1), .A2(n162), .B1(n163), .B2(n260), .Z(dout[27]) );
  OAI22M2R U22 ( .A1(s), .A2(n204), .B1(n205), .B2(n260), .Z(dout[123]) );
  OAI22M2R U25 ( .A1(n1), .A2(n222), .B1(n223), .B2(n260), .Z(dout[115]) );
  OAI22M2R U28 ( .A1(s), .A2(n240), .B1(n241), .B2(n260), .Z(dout[107]) );
  OAI22M2R U31 ( .A1(n258), .A2(n4), .B1(n5), .B2(n261), .Z(dout[99]) );
  OAI22M2R U34 ( .A1(n258), .A2(n20), .B1(n21), .B2(n260), .Z(dout[91]) );
  OAI22M2R U37 ( .A1(n258), .A2(n38), .B1(n39), .B2(n260), .Z(dout[83]) );
  OAI22M2R U40 ( .A1(n1), .A2(n56), .B1(n57), .B2(n259), .Z(dout[75]) );
  OAI22M2R U43 ( .A1(n1), .A2(n74), .B1(n75), .B2(n259), .Z(dout[67]) );
  OAI22M2R U46 ( .A1(s), .A2(n92), .B1(n93), .B2(n260), .Z(dout[59]) );
  OAI22M2R U49 ( .A1(s), .A2(n94), .B1(n95), .B2(n260), .Z(dout[58]) );
  OAI22M2R U52 ( .A1(n258), .A2(n108), .B1(n109), .B2(n259), .Z(dout[51]) );
  OAI22M2R U55 ( .A1(s), .A2(n126), .B1(n127), .B2(n260), .Z(dout[43]) );
  OAI22M2R U58 ( .A1(s), .A2(n144), .B1(n145), .B2(n259), .Z(dout[35]) );
  OAI22M2R U61 ( .A1(s), .A2(n160), .B1(n161), .B2(n260), .Z(dout[28]) );
  OAI22M2R U64 ( .A1(n258), .A2(n164), .B1(n165), .B2(n259), .Z(dout[26]) );
  OAI22M2R U67 ( .A1(n258), .A2(n166), .B1(n167), .B2(n260), .Z(dout[25]) );
  OAI22M2R U70 ( .A1(n258), .A2(n170), .B1(n171), .B2(n260), .Z(dout[23]) );
  OAI22M2R U73 ( .A1(n1), .A2(n176), .B1(n177), .B2(n260), .Z(dout[20]) );
  OAI22M2R U76 ( .A1(n1), .A2(n180), .B1(n181), .B2(n260), .Z(dout[19]) );
  OAI22M2R U79 ( .A1(n258), .A2(n182), .B1(n183), .B2(n260), .Z(dout[18]) );
  OAI22M2R U82 ( .A1(n1), .A2(n184), .B1(n185), .B2(n260), .Z(dout[17]) );
  OAI22M2R U85 ( .A1(s), .A2(n188), .B1(n189), .B2(n260), .Z(dout[15]) );
  OAI22M2R U88 ( .A1(s), .A2(n194), .B1(n195), .B2(n260), .Z(dout[12]) );
  OAI22M2R U91 ( .A1(n258), .A2(n212), .B1(n213), .B2(n260), .Z(dout[11]) );
  OAI22M2R U94 ( .A1(n1), .A2(n234), .B1(n235), .B2(n259), .Z(dout[10]) );
  OAI22M2R U97 ( .A1(n1), .A2(n2), .B1(n3), .B2(n261), .Z(dout[9]) );
  OAI22M2R U100 ( .A1(n1), .A2(n46), .B1(n47), .B2(n259), .Z(dout[7]) );
  OAI22M2R U103 ( .A1(n258), .A2(n112), .B1(n113), .B2(n260), .Z(dout[4]) );
  OAI22M2R U106 ( .A1(s), .A2(n134), .B1(n135), .B2(n259), .Z(dout[3]) );
  OAI22M2R U109 ( .A1(s), .A2(n156), .B1(n157), .B2(n260), .Z(dout[2]) );
  OAI22M2R U112 ( .A1(n1), .A2(n178), .B1(n179), .B2(n259), .Z(dout[1]) );
  OAI22M2R U115 ( .A1(s), .A2(n202), .B1(n203), .B2(n260), .Z(dout[124]) );
  OAI22M2R U118 ( .A1(n258), .A2(n216), .B1(n217), .B2(n260), .Z(dout[118]) );
  OAI22M2R U121 ( .A1(n1), .A2(n220), .B1(n221), .B2(n260), .Z(dout[116]) );
  OAI22M2R U124 ( .A1(n258), .A2(n224), .B1(n225), .B2(n260), .Z(dout[114]) );
  OAI22M2R U127 ( .A1(n1), .A2(n226), .B1(n227), .B2(n260), .Z(dout[113]) );
  OAI22M2R U130 ( .A1(s), .A2(n228), .B1(n229), .B2(n259), .Z(dout[112]) );
  OAI22M2R U133 ( .A1(n258), .A2(n242), .B1(n243), .B2(n260), .Z(dout[106]) );
  OAI22M2R U136 ( .A1(n1), .A2(n248), .B1(n249), .B2(n259), .Z(dout[103]) );
  OAI22M2R U139 ( .A1(n258), .A2(n252), .B1(n253), .B2(n259), .Z(dout[101]) );
  OAI22M2R U142 ( .A1(n258), .A2(n18), .B1(n19), .B2(n259), .Z(dout[92]) );
  OAI22M2R U145 ( .A1(n258), .A2(n32), .B1(n33), .B2(n260), .Z(dout[86]) );
  OAI22M2R U148 ( .A1(n258), .A2(n36), .B1(n37), .B2(n261), .Z(dout[84]) );
  OAI22M2R U151 ( .A1(n258), .A2(n40), .B1(n41), .B2(n261), .Z(dout[82]) );
  OAI22M2R U154 ( .A1(n1), .A2(n42), .B1(n43), .B2(n261), .Z(dout[81]) );
  OAI22M2R U157 ( .A1(n1), .A2(n44), .B1(n45), .B2(n261), .Z(dout[80]) );
  OAI22M2R U160 ( .A1(n1), .A2(n58), .B1(n59), .B2(n261), .Z(dout[74]) );
  OAI22M2R U163 ( .A1(n1), .A2(n64), .B1(n65), .B2(n261), .Z(dout[71]) );
  OAI22M2R U166 ( .A1(s), .A2(n66), .B1(n67), .B2(n261), .Z(dout[70]) );
  OAI22M2R U169 ( .A1(n1), .A2(n70), .B1(n71), .B2(n261), .Z(dout[69]) );
  OAI22M2R U172 ( .A1(n1), .A2(n84), .B1(n85), .B2(n259), .Z(dout[62]) );
  OAI22M2R U175 ( .A1(s), .A2(n88), .B1(n89), .B2(n261), .Z(dout[60]) );
  OAI22M2R U178 ( .A1(s), .A2(n100), .B1(n101), .B2(n261), .Z(dout[55]) );
  OAI22M2R U181 ( .A1(s), .A2(n106), .B1(n107), .B2(n261), .Z(dout[52]) );
  OAI22M2R U184 ( .A1(n258), .A2(n114), .B1(n115), .B2(n261), .Z(dout[49]) );
  OAI22M2R U187 ( .A1(n258), .A2(n116), .B1(n117), .B2(n261), .Z(dout[48]) );
  OAI22M2R U190 ( .A1(n1), .A2(n118), .B1(n119), .B2(n261), .Z(dout[47]) );
  OAI22M2R U193 ( .A1(n1), .A2(n136), .B1(n137), .B2(n259), .Z(dout[39]) );
  OAI22M2R U196 ( .A1(s), .A2(n138), .B1(n139), .B2(n260), .Z(dout[38]) );
  OAI22M2R U199 ( .A1(s), .A2(n140), .B1(n141), .B2(n261), .Z(dout[37]) );
  OAI22M2R U202 ( .A1(s), .A2(n186), .B1(n187), .B2(n260), .Z(dout[16]) );
  OAI22M2R U205 ( .A1(s), .A2(n192), .B1(n193), .B2(n260), .Z(dout[13]) );
  OAI22M2R U208 ( .A1(s), .A2(n196), .B1(n197), .B2(n260), .Z(dout[127]) );
  OAI22M2R U211 ( .A1(s), .A2(n198), .B1(n199), .B2(n260), .Z(dout[126]) );
  OAI22M2R U214 ( .A1(s), .A2(n200), .B1(n201), .B2(n260), .Z(dout[125]) );
  OAI22M2R U217 ( .A1(s), .A2(n206), .B1(n207), .B2(n260), .Z(dout[122]) );
  OAI22M2R U220 ( .A1(s), .A2(n208), .B1(n209), .B2(n260), .Z(dout[121]) );
  OAI22M2R U223 ( .A1(s), .A2(n210), .B1(n211), .B2(n260), .Z(dout[120]) );
  OAI22M2R U226 ( .A1(s), .A2(n214), .B1(n215), .B2(n260), .Z(dout[119]) );
  OAI22M2R U229 ( .A1(n1), .A2(n218), .B1(n219), .B2(n260), .Z(dout[117]) );
  OAI22M2R U232 ( .A1(n258), .A2(n230), .B1(n231), .B2(n260), .Z(dout[111]) );
  OAI22M2R U235 ( .A1(n258), .A2(n232), .B1(n233), .B2(n260), .Z(dout[110]) );
  OAI22M2R U238 ( .A1(s), .A2(n236), .B1(n237), .B2(n259), .Z(dout[109]) );
  OAI22M2R U241 ( .A1(n258), .A2(n238), .B1(n239), .B2(n260), .Z(dout[108]) );
  OAI22M2R U244 ( .A1(s), .A2(n244), .B1(n245), .B2(n259), .Z(dout[105]) );
  OAI22M2R U247 ( .A1(s), .A2(n246), .B1(n247), .B2(n260), .Z(dout[104]) );
  OAI22M2R U250 ( .A1(s), .A2(n250), .B1(n251), .B2(n260), .Z(dout[102]) );
  OAI22M2R U253 ( .A1(n1), .A2(n254), .B1(n255), .B2(n261), .Z(dout[100]) );
  OAI22M2R U256 ( .A1(n258), .A2(n6), .B1(n7), .B2(n261), .Z(dout[98]) );
  OAI22M2R U259 ( .A1(n1), .A2(n8), .B1(n9), .B2(n261), .Z(dout[97]) );
  OAI22M2R U262 ( .A1(n258), .A2(n10), .B1(n11), .B2(n261), .Z(dout[96]) );
  OAI22M2R U265 ( .A1(n1), .A2(n12), .B1(n13), .B2(n261), .Z(dout[95]) );
  OAI22M2R U268 ( .A1(n258), .A2(n14), .B1(n15), .B2(n261), .Z(dout[94]) );
  OAI22M2R U271 ( .A1(n1), .A2(n16), .B1(n17), .B2(n261), .Z(dout[93]) );
  OAI22M2R U274 ( .A1(n258), .A2(n22), .B1(n23), .B2(n261), .Z(dout[90]) );
  OAI22M2R U277 ( .A1(n258), .A2(n26), .B1(n27), .B2(n261), .Z(dout[89]) );
  OAI22M2R U280 ( .A1(n258), .A2(n28), .B1(n29), .B2(n261), .Z(dout[88]) );
  OAI22M2R U283 ( .A1(n258), .A2(n30), .B1(n31), .B2(n261), .Z(dout[87]) );
  OAI22M2R U286 ( .A1(n258), .A2(n34), .B1(n35), .B2(n261), .Z(dout[85]) );
  OAI22M2R U289 ( .A1(n1), .A2(n48), .B1(n49), .B2(n261), .Z(dout[79]) );
  OAI22M2R U292 ( .A1(n1), .A2(n50), .B1(n51), .B2(n261), .Z(dout[78]) );
  OAI22M2R U295 ( .A1(n1), .A2(n52), .B1(n53), .B2(n261), .Z(dout[77]) );
  OAI22M2R U298 ( .A1(n1), .A2(n54), .B1(n55), .B2(n261), .Z(dout[76]) );
  OAI22M2R U301 ( .A1(n1), .A2(n60), .B1(n61), .B2(n259), .Z(dout[73]) );
  OAI22M2R U304 ( .A1(n1), .A2(n62), .B1(n63), .B2(n260), .Z(dout[72]) );
  OAI22M2R U307 ( .A1(n258), .A2(n72), .B1(n73), .B2(n261), .Z(dout[68]) );
  OAI22M2R U310 ( .A1(n258), .A2(n76), .B1(n77), .B2(n261), .Z(dout[66]) );
  OAI22M2R U313 ( .A1(n1), .A2(n78), .B1(n79), .B2(n261), .Z(dout[65]) );
  OAI22M2R U316 ( .A1(s), .A2(n80), .B1(n81), .B2(n261), .Z(dout[64]) );
  OAI22M2R U319 ( .A1(s), .A2(n82), .B1(n83), .B2(n261), .Z(dout[63]) );
  OAI22M2R U322 ( .A1(n1), .A2(n86), .B1(n87), .B2(n261), .Z(dout[61]) );
  OAI22M2R U325 ( .A1(s), .A2(n96), .B1(n97), .B2(n261), .Z(dout[57]) );
  OAI22M2R U328 ( .A1(s), .A2(n98), .B1(n99), .B2(n261), .Z(dout[56]) );
  OAI22M2R U331 ( .A1(n258), .A2(n102), .B1(n103), .B2(n261), .Z(dout[54]) );
  OAI22M2R U334 ( .A1(n258), .A2(n104), .B1(n105), .B2(n261), .Z(dout[53]) );
  OAI22M2R U337 ( .A1(n1), .A2(n110), .B1(n111), .B2(n261), .Z(dout[50]) );
  OAI22M2R U340 ( .A1(s), .A2(n120), .B1(n121), .B2(n261), .Z(dout[46]) );
  OAI22M2R U343 ( .A1(s), .A2(n122), .B1(n123), .B2(n261), .Z(dout[45]) );
  OAI22M2R U346 ( .A1(n1), .A2(n124), .B1(n125), .B2(n261), .Z(dout[44]) );
  OAI22M2R U349 ( .A1(n258), .A2(n128), .B1(n129), .B2(n259), .Z(dout[42]) );
  OAI22M2R U352 ( .A1(n1), .A2(n130), .B1(n131), .B2(n261), .Z(dout[41]) );
  OAI22M2R U355 ( .A1(s), .A2(n132), .B1(n133), .B2(n260), .Z(dout[40]) );
  OAI22M2R U358 ( .A1(s), .A2(n142), .B1(n143), .B2(n259), .Z(dout[36]) );
  OAI22M2R U361 ( .A1(s), .A2(n146), .B1(n147), .B2(n259), .Z(dout[34]) );
  OAI22M2R U364 ( .A1(s), .A2(n148), .B1(n149), .B2(n260), .Z(dout[33]) );
  OAI22M2R U367 ( .A1(s), .A2(n150), .B1(n151), .B2(n261), .Z(dout[32]) );
  OAI22M2R U370 ( .A1(s), .A2(n154), .B1(n155), .B2(n260), .Z(dout[30]) );
  OAI22M2R U373 ( .A1(s), .A2(n158), .B1(n159), .B2(n260), .Z(dout[29]) );
  OAI22M2R U376 ( .A1(n1), .A2(n168), .B1(n169), .B2(n261), .Z(dout[24]) );
  OAI22M2R U379 ( .A1(n258), .A2(n172), .B1(n173), .B2(n261), .Z(dout[22]) );
  OAI22M2R U382 ( .A1(n1), .A2(n174), .B1(n175), .B2(n261), .Z(dout[21]) );
  OAI22M2R U385 ( .A1(s), .A2(n190), .B1(n191), .B2(n260), .Z(dout[14]) );
  OAI22M2R U386 ( .A1(n258), .A2(n24), .B1(n25), .B2(n259), .Z(dout[8]) );
  OAI22M2R U387 ( .A1(n258), .A2(n68), .B1(n69), .B2(n260), .Z(dout[6]) );
  OAI22M2R U388 ( .A1(s), .A2(n90), .B1(n91), .B2(n261), .Z(dout[5]) );
  OAI22M2R U389 ( .A1(s), .A2(n256), .B1(n257), .B2(n259), .Z(dout[0]) );
endmodule


module In_tf_0 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[4]), .Z(n17) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_0 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(bp), .B(ap), .Z(n22) );
  XOR4M1RA U13 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U14 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U15 ( .A(a23), .B(b23), .Z(n24) );
  ND2M2R U16 ( .A(b02), .B(a02), .Z(n23) );
endmodule


module Inv_4_0 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  INVM2R U8 ( .A(d1), .Z(n19) );
  INVM2R U9 ( .A(d0), .Z(n20) );
  OAI22M2R U11 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U12 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U13 ( .A(d3), .Z(n17) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_0 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U9 ( .A(bp), .B(n50), .Z(n37) );
  ND2M2R U11 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U12 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U14 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U15 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U38 ( .A(a02), .B(n49), .Z(n48) );
endmodule


module out_tf_0 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_0 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_0 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_0 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_0 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_0 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_0 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_1 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[4]), .Z(n17) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_1 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(bp), .B(ap), .Z(n22) );
  XOR4M1RA U13 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U14 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U15 ( .A(a23), .B(b23), .Z(n24) );
  ND2M2R U16 ( .A(b02), .B(a02), .Z(n23) );
endmodule


module Inv_4_1 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  INVM2R U8 ( .A(d1), .Z(n19) );
  INVM2R U9 ( .A(d0), .Z(n20) );
  OAI22M2R U11 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U12 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U13 ( .A(d3), .Z(n17) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_1 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U9 ( .A(bp), .B(n50), .Z(n37) );
  ND2M2R U11 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U12 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U14 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U15 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U38 ( .A(a02), .B(n49), .Z(n48) );
endmodule


module out_tf_1 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_1 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_1 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_1 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_1 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_1 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_1 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_2 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[4]), .Z(n17) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_2 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U10 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U11 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U12 ( .A(bp), .B(ap), .Z(n22) );
  XOR4M1RA U13 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U14 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U15 ( .A(a23), .B(b23), .Z(n24) );
  ND2M2R U16 ( .A(b02), .B(a02), .Z(n23) );
endmodule


module Inv_4_2 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  INVM2R U8 ( .A(d1), .Z(n19) );
  INVM2R U9 ( .A(d0), .Z(n20) );
  OAI22M2R U11 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U12 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U13 ( .A(d3), .Z(n17) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_2 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U8 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U9 ( .A(bp), .B(n50), .Z(n37) );
  ND2M2R U11 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U12 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U14 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U15 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U17 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U18 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U20 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U21 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U23 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U25 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U28 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U29 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U31 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U32 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U34 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U35 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U37 ( .A(a1), .B(e0), .Z(n40) );
  ND2M2R U38 ( .A(a02), .B(n49), .Z(n48) );
endmodule


module out_tf_2 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_2 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_2 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_2 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_2 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_2 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_2 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module In_tf_3 ( g, a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp );
  input [7:0] g;
  output a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19;

  XNR2M2RA U1 ( .A(g[5]), .B(n14), .Z(bp) );
  XNR2M2RA U2 ( .A(g[5]), .B(n13), .Z(b23) );
  XOR2M2RA U3 ( .A(g[0]), .B(b02), .Z(b2) );
  XOR2M2RA U4 ( .A(n12), .B(b01), .Z(b13) );
  XOR2M2RA U5 ( .A(g[0]), .B(b01), .Z(b1) );
  XNR2M2RA U6 ( .A(n13), .B(g[6]), .Z(b02) );
  XOR2M2RA U7 ( .A(n11), .B(g[2]), .Z(n13) );
  XNR2M2RA U8 ( .A(n11), .B(a02), .Z(b01) );
  XOR2M2RA U9 ( .A(n15), .B(g[3]), .Z(n11) );
  XOR2M2RA U10 ( .A(g[4]), .B(g[2]), .Z(ap) );
  XOR2M2RA U11 ( .A(g[7]), .B(g[1]), .Z(a23) );
  XOR2M2RA U12 ( .A(n19), .B(n18), .Z(a2) );
  XOR2M2RA U13 ( .A(a3), .B(a13), .Z(a1) );
  XOR2M2RA U14 ( .A(n16), .B(n19), .Z(a13) );
  XOR2M2RA U15 ( .A(n18), .B(n15), .Z(a3) );
  XOR2M2RA U16 ( .A(n15), .B(n14), .Z(a01) );
  XOR2M2RA U17 ( .A(a02), .B(n16), .Z(n14) );
  XOR2M2RA U18 ( .A(n17), .B(n19), .Z(a02) );
  XOR2M2RA U19 ( .A(n17), .B(n18), .Z(a0) );
  XOR2M2RA U20 ( .A(n12), .B(g[0]), .Z(b3) );
  XOR2M2RA U21 ( .A(g[5]), .B(g[6]), .Z(n12) );
  INVM2R U22 ( .A(b3), .Z(n18) );
  INVM2R U23 ( .A(g[1]), .Z(n15) );
  INVM2R U24 ( .A(g[7]), .Z(n19) );
  INVM2R U25 ( .A(g[4]), .Z(n17) );
  INVM2R U26 ( .A(g[2]), .Z(n16) );
  BUFM2R U27 ( .A(g[0]), .Z(b0) );
endmodule


module expo_comp_3 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, 
        b01, b02, b13, b23, bp, d0, d1, d2, d3 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp;
  output d0, d1, d2, d3;
  wire   n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24;

  ND2M2R U1 ( .A(b01), .B(a01), .Z(n15) );
  XOR4M1RA U2 ( .A(n14), .B(n13), .C(n23), .D(n15), .Z(d0) );
  ND2M2R U3 ( .A(b0), .B(a0), .Z(n13) );
  NR2M2R U4 ( .A(a13), .B(b13), .Z(n14) );
  XOR4M1RA U5 ( .A(n20), .B(n19), .C(n23), .D(n18), .Z(d2) );
  ND2M2R U6 ( .A(b23), .B(a23), .Z(n19) );
  ND2M2R U7 ( .A(b13), .B(a13), .Z(n18) );
  NR2M2R U8 ( .A(a2), .B(b2), .Z(n20) );
  XOR4M1RA U9 ( .A(n24), .B(n23), .C(n22), .D(n21), .Z(d3) );
  ND2M2R U10 ( .A(b3), .B(a3), .Z(n21) );
  NR2M2R U11 ( .A(a23), .B(b23), .Z(n24) );
  XOR4M1RA U12 ( .A(n17), .B(n16), .C(n22), .D(n15), .Z(d1) );
  NR2M2R U13 ( .A(a02), .B(b02), .Z(n17) );
  ND2M2R U14 ( .A(b1), .B(a1), .Z(n16) );
  ND2M2R U15 ( .A(bp), .B(ap), .Z(n22) );
  ND2M2R U16 ( .A(b02), .B(a02), .Z(n23) );
endmodule


module Inv_4_3 ( d0, d1, d2, d3, e0, e1, e2, e3 );
  input d0, d1, d2, d3;
  output e0, e1, e2, e3;
  wire   n11, n12, n13, n14, n15, n16, n17, n18, n19, n20;

  XNR2M2RA U5 ( .A(n17), .B(d2), .Z(n16) );
  XNR2M2RA U10 ( .A(n19), .B(d0), .Z(n13) );
  OAI32M2R U1 ( .A1(n13), .A2(d2), .A3(n17), .B1(n12), .B2(n18), .Z(e1) );
  NR2M2R U2 ( .A(d1), .B(n17), .Z(n12) );
  OAI32M2R U3 ( .A1(n19), .A2(d0), .A3(n16), .B1(n15), .B2(n20), .Z(e3) );
  NR2M2R U4 ( .A(d3), .B(n19), .Z(n15) );
  OAI22M2R U6 ( .A1(d0), .A2(n18), .B1(n11), .B2(n17), .Z(e0) );
  NR2M2R U7 ( .A(d2), .B(n13), .Z(n11) );
  INVM2R U8 ( .A(d1), .Z(n19) );
  INVM2R U9 ( .A(d3), .Z(n17) );
  INVM2R U11 ( .A(d0), .Z(n20) );
  OAI22M2R U12 ( .A1(d2), .A2(n20), .B1(n14), .B2(n19), .Z(e2) );
  NR2M2R U13 ( .A(d0), .B(n16), .Z(n14) );
  INVM2R U14 ( .A(d2), .Z(n18) );
endmodule


module mul_out_3 ( a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, 
        b02, b13, b23, bp, e0, e1, e2, e3, w0, w1, w2, w3, w4, w5, z0, z1, z2, 
        z3, z4, z5 );
  input a0, a1, a2, a3, b0, b1, b2, b3, a01, a02, a13, a23, ap, b01, b02, b13,
         b23, bp, e0, e1, e2, e3;
  output w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52;

  XOR2M2RA U1 ( .A(n52), .B(n51), .Z(z5) );
  XOR2M2RA U4 ( .A(n48), .B(n47), .Z(z4) );
  XOR2M2RA U7 ( .A(n46), .B(n45), .Z(z3) );
  XOR2M2RA U10 ( .A(n44), .B(n43), .Z(z2) );
  XOR2M2RA U13 ( .A(n42), .B(n41), .Z(z1) );
  XOR2M2RA U16 ( .A(n40), .B(n39), .Z(z0) );
  XOR2M2RA U19 ( .A(n38), .B(n37), .Z(w5) );
  XOR2M2RA U22 ( .A(n36), .B(n35), .Z(w4) );
  XOR2M2RA U24 ( .A(e1), .B(e3), .Z(n50) );
  XOR2M2RA U26 ( .A(e0), .B(e2), .Z(n49) );
  XOR2M2RA U27 ( .A(n34), .B(n33), .Z(w3) );
  XOR2M2RA U30 ( .A(n32), .B(n31), .Z(w2) );
  XOR2M2RA U33 ( .A(n30), .B(n29), .Z(w1) );
  XOR2M2RA U36 ( .A(n28), .B(n27), .Z(w0) );
  ND2M2R U2 ( .A(a01), .B(e1), .Z(n39) );
  ND2M2R U3 ( .A(a01), .B(e0), .Z(n42) );
  ND2M2R U5 ( .A(a0), .B(e1), .Z(n41) );
  ND2M2R U6 ( .A(a02), .B(n49), .Z(n48) );
  ND2M2R U8 ( .A(a13), .B(n50), .Z(n47) );
  ND2M2R U9 ( .A(b13), .B(n49), .Z(n38) );
  ND2M2R U11 ( .A(bp), .B(n50), .Z(n37) );
  ND2M2R U12 ( .A(a13), .B(n49), .Z(n52) );
  ND2M2R U14 ( .A(ap), .B(n50), .Z(n51) );
  ND2M2R U15 ( .A(b23), .B(e2), .Z(n34) );
  ND2M2R U17 ( .A(b2), .B(e3), .Z(n33) );
  ND2M2R U18 ( .A(a3), .B(e2), .Z(n44) );
  ND2M2R U20 ( .A(a23), .B(e3), .Z(n43) );
  ND2M2R U21 ( .A(a23), .B(e2), .Z(n46) );
  ND2M2R U23 ( .A(a2), .B(e3), .Z(n45) );
  ND2M2R U25 ( .A(b02), .B(n49), .Z(n36) );
  ND2M2R U28 ( .A(b13), .B(n50), .Z(n35) );
  ND2M2R U29 ( .A(b1), .B(e0), .Z(n28) );
  ND2M2R U31 ( .A(b01), .B(e1), .Z(n27) );
  ND2M2R U32 ( .A(b3), .B(e2), .Z(n32) );
  ND2M2R U34 ( .A(b23), .B(e3), .Z(n31) );
  ND2M2R U35 ( .A(b01), .B(e0), .Z(n30) );
  ND2M2R U37 ( .A(b0), .B(e1), .Z(n29) );
  ND2M2R U38 ( .A(a1), .B(e0), .Z(n40) );
endmodule


module out_tf_3 ( w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5, s );
  output [7:0] s;
  input w0, w1, w2, w3, w4, w5, z0, z1, z2, z3, z4, z5;
  wire   n7, n8, n9, n10, n11, n12;

  XNR2M2RA U1 ( .A(w5), .B(n11), .Z(s[7]) );
  XNR2M2RA U4 ( .A(s[4]), .B(n9), .Z(s[3]) );
  XNR2M2RA U5 ( .A(n11), .B(w1), .Z(s[4]) );
  XNR2M2RA U7 ( .A(n7), .B(z1), .Z(n11) );
  XOR2M2RA U8 ( .A(w0), .B(z2), .Z(n10) );
  XNR2M2RA U10 ( .A(n12), .B(w3), .Z(n7) );
  XNR2M2RA U11 ( .A(w4), .B(w5), .Z(n8) );
  XNR2M2RA U13 ( .A(w0), .B(w2), .Z(n9) );
  INVM2R U2 ( .A(z5), .Z(n12) );
  XOR4M1RA U3 ( .A(n10), .B(z0), .C(n11), .D(n8), .Z(s[2]) );
  XOR4M1RA U6 ( .A(z3), .B(w2), .C(n8), .D(n7), .Z(s[1]) );
  XOR4M1RA U9 ( .A(n12), .B(z1), .C(w1), .D(w5), .Z(s[6]) );
  XNR3M1R U12 ( .A(z4), .B(w4), .C(n10), .Z(s[5]) );
  XOR3M2RA U14 ( .A(z5), .B(z3), .C(n9), .Z(s[0]) );
endmodule


module Newlight_sbox_3 ( g, s );
  input [7:0] g;
  output [7:0] s;
  wire   y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16,
         y17, y18, l1, l2, l3, l4, x1, x2, x3, x4, r1, r2, r3, r4, r5, r6, r7,
         r8, r9, r10, r11, r12;

  In_tf_3 m1 ( .g(g), .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), 
        .b2(y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18) );
  expo_comp_3 m2 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(
        y7), .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), 
        .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .d0(l1), .d1(l2), 
        .d2(l3), .d3(l4) );
  Inv_4_3 m3 ( .d0(l1), .d1(l2), .d2(l3), .d3(l4), .e0(x1), .e1(x2), .e2(x3), 
        .e3(x4) );
  mul_out_3 m4 ( .a0(y1), .a1(y2), .a2(y3), .a3(y4), .b0(y5), .b1(y6), .b2(y7), 
        .b3(y8), .a01(y9), .a02(y10), .a13(y11), .a23(y12), .ap(y13), .b01(y14), .b02(y15), .b13(y16), .b23(y17), .bp(y18), .e0(x1), .e1(x2), .e2(x3), .e3(x4), .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), .z1(r8), .z2(
        r9), .z3(r10), .z4(r11), .z5(r12) );
  out_tf_3 m5 ( .w0(r1), .w1(r2), .w2(r3), .w3(r4), .w4(r5), .w5(r6), .z0(r7), 
        .z1(r8), .z2(r9), .z3(r10), .z4(r11), .z5(r12), .s(s) );
endmodule


module key_gen ( ki, r, ko );
  input [127:0] ki;
  input [7:0] r;
  output [127:0] ko;

  wire   [31:0] gw32;

  Newlight_sbox_3 s1 ( .g(ki[23:16]), .s(gw32[31:24]) );
  Newlight_sbox_2 s2 ( .g(ki[15:8]), .s(gw32[23:16]) );
  Newlight_sbox_1 s3 ( .g(ki[7:0]), .s(gw32[15:8]) );
  Newlight_sbox_0 s4 ( .g(ki[31:24]), .s(gw32[7:0]) );
  XOR2M2RA U2 ( .A(ki[9]), .B(ko[41]), .Z(ko[9]) );
  XOR2M2RA U3 ( .A(ki[8]), .B(ko[40]), .Z(ko[8]) );
  XOR2M2RA U4 ( .A(ki[7]), .B(ko[39]), .Z(ko[7]) );
  XOR2M2RA U5 ( .A(ki[6]), .B(ko[38]), .Z(ko[6]) );
  XOR2M2RA U6 ( .A(ki[5]), .B(ko[37]), .Z(ko[5]) );
  XOR2M2RA U7 ( .A(ki[4]), .B(ko[36]), .Z(ko[4]) );
  XOR2M2RA U8 ( .A(ko[73]), .B(ki[41]), .Z(ko[41]) );
  XOR2M2RA U9 ( .A(ko[105]), .B(ki[73]), .Z(ko[73]) );
  XOR2M2RA U10 ( .A(ko[72]), .B(ki[40]), .Z(ko[40]) );
  XOR2M2RA U11 ( .A(ko[104]), .B(ki[72]), .Z(ko[72]) );
  XOR2M2RA U12 ( .A(ki[3]), .B(ko[35]), .Z(ko[3]) );
  XOR2M2RA U13 ( .A(ko[71]), .B(ki[39]), .Z(ko[39]) );
  XOR2M2RA U14 ( .A(ko[103]), .B(ki[71]), .Z(ko[71]) );
  XOR2M2RA U15 ( .A(ko[70]), .B(ki[38]), .Z(ko[38]) );
  XOR2M2RA U16 ( .A(ko[102]), .B(ki[70]), .Z(ko[70]) );
  XOR2M2RA U17 ( .A(ko[69]), .B(ki[37]), .Z(ko[37]) );
  XOR2M2RA U18 ( .A(ko[101]), .B(ki[69]), .Z(ko[69]) );
  XOR2M2RA U19 ( .A(ko[68]), .B(ki[36]), .Z(ko[36]) );
  XOR2M2RA U20 ( .A(ko[100]), .B(ki[68]), .Z(ko[68]) );
  XOR2M2RA U21 ( .A(ko[67]), .B(ki[35]), .Z(ko[35]) );
  XOR2M2RA U22 ( .A(ko[99]), .B(ki[67]), .Z(ko[67]) );
  XOR2M2RA U23 ( .A(ki[99]), .B(gw32[3]), .Z(ko[99]) );
  XOR2M2RA U24 ( .A(ki[31]), .B(ko[63]), .Z(ko[31]) );
  XOR2M2RA U25 ( .A(ko[95]), .B(ki[63]), .Z(ko[63]) );
  XOR2M2RA U26 ( .A(ko[127]), .B(ki[95]), .Z(ko[95]) );
  XOR2M2RA U27 ( .A(ki[30]), .B(ko[62]), .Z(ko[30]) );
  XOR2M2RA U28 ( .A(ko[94]), .B(ki[62]), .Z(ko[62]) );
  XOR2M2RA U29 ( .A(ko[126]), .B(ki[94]), .Z(ko[94]) );
  XOR2M2RA U30 ( .A(ki[2]), .B(ko[34]), .Z(ko[2]) );
  XOR2M2RA U31 ( .A(ko[66]), .B(ki[34]), .Z(ko[34]) );
  XOR2M2RA U32 ( .A(ko[98]), .B(ki[66]), .Z(ko[66]) );
  XOR2M2RA U33 ( .A(ki[98]), .B(gw32[2]), .Z(ko[98]) );
  XOR2M2RA U34 ( .A(ki[29]), .B(ko[61]), .Z(ko[29]) );
  XOR2M2RA U35 ( .A(ko[93]), .B(ki[61]), .Z(ko[61]) );
  XOR2M2RA U36 ( .A(ko[125]), .B(ki[93]), .Z(ko[93]) );
  XOR2M2RA U37 ( .A(ki[28]), .B(ko[60]), .Z(ko[28]) );
  XOR2M2RA U38 ( .A(ko[92]), .B(ki[60]), .Z(ko[60]) );
  XOR2M2RA U39 ( .A(ko[124]), .B(ki[92]), .Z(ko[92]) );
  XOR2M2RA U40 ( .A(ki[27]), .B(ko[59]), .Z(ko[27]) );
  XOR2M2RA U41 ( .A(ko[91]), .B(ki[59]), .Z(ko[59]) );
  XOR2M2RA U42 ( .A(ko[123]), .B(ki[91]), .Z(ko[91]) );
  XOR2M2RA U43 ( .A(ki[26]), .B(ko[58]), .Z(ko[26]) );
  XOR2M2RA U44 ( .A(ko[90]), .B(ki[58]), .Z(ko[58]) );
  XOR2M2RA U45 ( .A(ko[122]), .B(ki[90]), .Z(ko[90]) );
  XOR2M2RA U46 ( .A(ki[25]), .B(ko[57]), .Z(ko[25]) );
  XOR2M2RA U47 ( .A(ko[89]), .B(ki[57]), .Z(ko[57]) );
  XOR2M2RA U48 ( .A(ko[121]), .B(ki[89]), .Z(ko[89]) );
  XOR2M2RA U49 ( .A(ki[24]), .B(ko[56]), .Z(ko[24]) );
  XOR2M2RA U50 ( .A(ko[88]), .B(ki[56]), .Z(ko[56]) );
  XOR2M2RA U51 ( .A(ko[120]), .B(ki[88]), .Z(ko[88]) );
  XOR2M2RA U52 ( .A(ki[23]), .B(ko[55]), .Z(ko[23]) );
  XOR2M2RA U53 ( .A(ko[87]), .B(ki[55]), .Z(ko[55]) );
  XOR2M2RA U54 ( .A(ko[119]), .B(ki[87]), .Z(ko[87]) );
  XOR2M2RA U55 ( .A(ki[22]), .B(ko[54]), .Z(ko[22]) );
  XOR2M2RA U56 ( .A(ko[86]), .B(ki[54]), .Z(ko[54]) );
  XOR2M2RA U57 ( .A(ko[118]), .B(ki[86]), .Z(ko[86]) );
  XOR2M2RA U58 ( .A(ki[21]), .B(ko[53]), .Z(ko[21]) );
  XOR2M2RA U59 ( .A(ko[85]), .B(ki[53]), .Z(ko[53]) );
  XOR2M2RA U60 ( .A(ko[117]), .B(ki[85]), .Z(ko[85]) );
  XOR2M2RA U61 ( .A(ki[20]), .B(ko[52]), .Z(ko[20]) );
  XOR2M2RA U62 ( .A(ko[84]), .B(ki[52]), .Z(ko[52]) );
  XOR2M2RA U63 ( .A(ko[116]), .B(ki[84]), .Z(ko[84]) );
  XOR2M2RA U64 ( .A(ki[1]), .B(ko[33]), .Z(ko[1]) );
  XOR2M2RA U65 ( .A(ko[65]), .B(ki[33]), .Z(ko[33]) );
  XOR2M2RA U66 ( .A(ko[97]), .B(ki[65]), .Z(ko[65]) );
  XOR2M2RA U67 ( .A(ki[97]), .B(gw32[1]), .Z(ko[97]) );
  XOR2M2RA U68 ( .A(ki[19]), .B(ko[51]), .Z(ko[19]) );
  XOR2M2RA U69 ( .A(ko[83]), .B(ki[51]), .Z(ko[51]) );
  XOR2M2RA U70 ( .A(ko[115]), .B(ki[83]), .Z(ko[83]) );
  XOR2M2RA U71 ( .A(ki[18]), .B(ko[50]), .Z(ko[18]) );
  XOR2M2RA U72 ( .A(ko[82]), .B(ki[50]), .Z(ko[50]) );
  XOR2M2RA U73 ( .A(ko[114]), .B(ki[82]), .Z(ko[82]) );
  XOR2M2RA U74 ( .A(ki[17]), .B(ko[49]), .Z(ko[17]) );
  XOR2M2RA U75 ( .A(ko[81]), .B(ki[49]), .Z(ko[49]) );
  XOR2M2RA U76 ( .A(ko[113]), .B(ki[81]), .Z(ko[81]) );
  XOR2M2RA U77 ( .A(ki[16]), .B(ko[48]), .Z(ko[16]) );
  XOR2M2RA U78 ( .A(ko[80]), .B(ki[48]), .Z(ko[48]) );
  XOR2M2RA U79 ( .A(ko[112]), .B(ki[80]), .Z(ko[80]) );
  XOR2M2RA U80 ( .A(ki[15]), .B(ko[47]), .Z(ko[15]) );
  XOR2M2RA U81 ( .A(ko[79]), .B(ki[47]), .Z(ko[47]) );
  XOR2M2RA U82 ( .A(ko[111]), .B(ki[79]), .Z(ko[79]) );
  XOR2M2RA U83 ( .A(ki[14]), .B(ko[46]), .Z(ko[14]) );
  XOR2M2RA U84 ( .A(ko[78]), .B(ki[46]), .Z(ko[46]) );
  XOR2M2RA U85 ( .A(ko[110]), .B(ki[78]), .Z(ko[78]) );
  XOR2M2RA U86 ( .A(ki[13]), .B(ko[45]), .Z(ko[13]) );
  XOR2M2RA U87 ( .A(ko[77]), .B(ki[45]), .Z(ko[45]) );
  XOR2M2RA U88 ( .A(ko[109]), .B(ki[77]), .Z(ko[77]) );
  XOR2M2RA U89 ( .A(ki[12]), .B(ko[44]), .Z(ko[12]) );
  XOR2M2RA U90 ( .A(ko[76]), .B(ki[44]), .Z(ko[44]) );
  XOR2M2RA U91 ( .A(ko[108]), .B(ki[76]), .Z(ko[76]) );
  XOR2M2RA U100 ( .A(ki[11]), .B(ko[43]), .Z(ko[11]) );
  XOR2M2RA U101 ( .A(ko[75]), .B(ki[43]), .Z(ko[43]) );
  XOR2M2RA U102 ( .A(ko[107]), .B(ki[75]), .Z(ko[75]) );
  XOR2M2RA U103 ( .A(ki[119]), .B(gw32[23]), .Z(ko[119]) );
  XOR2M2RA U104 ( .A(ki[118]), .B(gw32[22]), .Z(ko[118]) );
  XOR2M2RA U105 ( .A(ki[117]), .B(gw32[21]), .Z(ko[117]) );
  XOR2M2RA U106 ( .A(ki[116]), .B(gw32[20]), .Z(ko[116]) );
  XOR2M2RA U107 ( .A(ki[115]), .B(gw32[19]), .Z(ko[115]) );
  XOR2M2RA U108 ( .A(ki[114]), .B(gw32[18]), .Z(ko[114]) );
  XOR2M2RA U109 ( .A(ki[113]), .B(gw32[17]), .Z(ko[113]) );
  XOR2M2RA U110 ( .A(ki[112]), .B(gw32[16]), .Z(ko[112]) );
  XOR2M2RA U111 ( .A(ki[111]), .B(gw32[15]), .Z(ko[111]) );
  XOR2M2RA U112 ( .A(ki[110]), .B(gw32[14]), .Z(ko[110]) );
  XOR2M2RA U113 ( .A(ki[10]), .B(ko[42]), .Z(ko[10]) );
  XOR2M2RA U114 ( .A(ko[74]), .B(ki[42]), .Z(ko[42]) );
  XOR2M2RA U115 ( .A(ko[106]), .B(ki[74]), .Z(ko[74]) );
  XOR2M2RA U116 ( .A(ki[109]), .B(gw32[13]), .Z(ko[109]) );
  XOR2M2RA U117 ( .A(ki[108]), .B(gw32[12]), .Z(ko[108]) );
  XOR2M2RA U118 ( .A(ki[107]), .B(gw32[11]), .Z(ko[107]) );
  XOR2M2RA U119 ( .A(ki[106]), .B(gw32[10]), .Z(ko[106]) );
  XOR2M2RA U120 ( .A(ki[105]), .B(gw32[9]), .Z(ko[105]) );
  XOR2M2RA U121 ( .A(ki[104]), .B(gw32[8]), .Z(ko[104]) );
  XOR2M2RA U122 ( .A(ki[103]), .B(gw32[7]), .Z(ko[103]) );
  XOR2M2RA U123 ( .A(ki[102]), .B(gw32[6]), .Z(ko[102]) );
  XOR2M2RA U124 ( .A(ki[101]), .B(gw32[5]), .Z(ko[101]) );
  XOR2M2RA U125 ( .A(ki[100]), .B(gw32[4]), .Z(ko[100]) );
  XOR2M2RA U126 ( .A(ki[0]), .B(ko[32]), .Z(ko[0]) );
  XOR2M2RA U127 ( .A(ko[64]), .B(ki[32]), .Z(ko[32]) );
  XOR2M2RA U128 ( .A(ko[96]), .B(ki[64]), .Z(ko[64]) );
  XOR2M2RA U129 ( .A(ki[96]), .B(gw32[0]), .Z(ko[96]) );
  XOR3M2RA U92 ( .A(r[7]), .B(ki[127]), .C(gw32[31]), .Z(ko[127]) );
  XOR3M2RA U93 ( .A(r[4]), .B(ki[124]), .C(gw32[28]), .Z(ko[124]) );
  XOR3M2RA U94 ( .A(r[3]), .B(ki[123]), .C(gw32[27]), .Z(ko[123]) );
  XOR3M2RA U95 ( .A(r[2]), .B(ki[122]), .C(gw32[26]), .Z(ko[122]) );
  XOR3M2RA U96 ( .A(r[1]), .B(ki[121]), .C(gw32[25]), .Z(ko[121]) );
  XOR3M2RA U97 ( .A(r[6]), .B(ki[126]), .C(gw32[30]), .Z(ko[126]) );
  XOR3M2RA U98 ( .A(r[5]), .B(ki[125]), .C(gw32[29]), .Z(ko[125]) );
  XOR3M2RA U99 ( .A(r[0]), .B(ki[120]), .C(gw32[24]), .Z(ko[120]) );
endmodule


module aes_12_comp_masoleh ( in, key, clk, rst, out );
  input [127:0] in;
  input [127:0] key;
  output [127:0] out;
  input clk, rst;
  wire   N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, N145, N146, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N265, N266, N267, N268,
         N269, N270, N271, N272, N273, N274, N275, N276, N277, N278, N279,
         N280, N281, N282, N283, N284, N285, N286, N287, N288, N289, N290,
         N291, N292, N293, N294, N295, N296, N297, N298, N299, N300, N301,
         N302, N303, N304, N305, N306, N307, N308, N309, N310, N311, N312,
         N313, N314, N315, N316, N317, N318, N319, N320, N321, N322, N323,
         N324, N325, N326, N327, N328, N329, N330, N331, N332, N333, N334,
         N335, N336, N337, N338, N339, N340, N341, N342, N343, N344, N345,
         N346, N347, N348, N349, N350, N351, N352, N353, N354, N355, N356,
         N357, N358, N359, N360, N361, N362, N363, N364, N365, N366, N367,
         N368, N369, N370, N371, N372, N373, N374, N375, N376, N377, N378,
         N379, N380, N381, N382, N383, N384, N385, N386, N387, N388, N389,
         N390, N391, N392, N401, N402, N404, N405, n1, n2, n3, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146;
  wire   [127:0] kout;
  wire   [11:0] i;
  wire   [127:0] dout;
  wire   [127:0] kin;
  wire   [7:0] r;
  wire   [7:0] x;

  aes_core dut1 ( .din(out), .k(kout), .s(i[10]), .dout(dout) );
  key_gen dut2 ( .ki(kin), .r({n1, r[6:4], n2, n3, r[1:0]}), .ko(kout) );
  DFQZSM2RA \i_reg[0]  ( .D(i[11]), .SB(n5), .CK(clk), .Q(i[0]) );
  DFQZSM2RA \x_reg[0]  ( .D(n1), .SB(n5), .CK(clk), .Q(x[0]) );
  DFQM2RA \x_reg[1]  ( .D(N402), .CK(clk), .Q(x[1]) );
  DFQM2RA \x_reg[3]  ( .D(N404), .CK(clk), .Q(x[3]) );
  DFQM2RA \x_reg[4]  ( .D(N405), .CK(clk), .Q(x[4]) );
  DFQM2RA \kin_reg[0]  ( .D(N265), .CK(clk), .Q(kin[0]) );
  DFQM2RA \kin_reg[1]  ( .D(N266), .CK(clk), .Q(kin[1]) );
  DFQM2RA \kin_reg[2]  ( .D(N267), .CK(clk), .Q(kin[2]) );
  DFQM2RA \kin_reg[3]  ( .D(N268), .CK(clk), .Q(kin[3]) );
  DFQM2RA \kin_reg[4]  ( .D(N269), .CK(clk), .Q(kin[4]) );
  DFQM2RA \kin_reg[5]  ( .D(N270), .CK(clk), .Q(kin[5]) );
  DFQM2RA \kin_reg[6]  ( .D(N271), .CK(clk), .Q(kin[6]) );
  DFQM2RA \kin_reg[7]  ( .D(N272), .CK(clk), .Q(kin[7]) );
  DFQM2RA \kin_reg[8]  ( .D(N273), .CK(clk), .Q(kin[8]) );
  DFQM2RA \kin_reg[9]  ( .D(N274), .CK(clk), .Q(kin[9]) );
  DFQM2RA \kin_reg[10]  ( .D(N275), .CK(clk), .Q(kin[10]) );
  DFQM2RA \kin_reg[11]  ( .D(N276), .CK(clk), .Q(kin[11]) );
  DFQM2RA \kin_reg[12]  ( .D(N277), .CK(clk), .Q(kin[12]) );
  DFQM2RA \kin_reg[13]  ( .D(N278), .CK(clk), .Q(kin[13]) );
  DFQM2RA \kin_reg[14]  ( .D(N279), .CK(clk), .Q(kin[14]) );
  DFQM2RA \kin_reg[15]  ( .D(N280), .CK(clk), .Q(kin[15]) );
  DFQM2RA \kin_reg[16]  ( .D(N281), .CK(clk), .Q(kin[16]) );
  DFQM2RA \kin_reg[17]  ( .D(N282), .CK(clk), .Q(kin[17]) );
  DFQM2RA \kin_reg[18]  ( .D(N283), .CK(clk), .Q(kin[18]) );
  DFQM2RA \kin_reg[19]  ( .D(N284), .CK(clk), .Q(kin[19]) );
  DFQM2RA \kin_reg[20]  ( .D(N285), .CK(clk), .Q(kin[20]) );
  DFQM2RA \kin_reg[21]  ( .D(N286), .CK(clk), .Q(kin[21]) );
  DFQM2RA \kin_reg[22]  ( .D(N287), .CK(clk), .Q(kin[22]) );
  DFQM2RA \kin_reg[23]  ( .D(N288), .CK(clk), .Q(kin[23]) );
  DFQM2RA \kin_reg[24]  ( .D(N289), .CK(clk), .Q(kin[24]) );
  DFQM2RA \kin_reg[25]  ( .D(N290), .CK(clk), .Q(kin[25]) );
  DFQM2RA \kin_reg[26]  ( .D(N291), .CK(clk), .Q(kin[26]) );
  DFQM2RA \kin_reg[27]  ( .D(N292), .CK(clk), .Q(kin[27]) );
  DFQM2RA \kin_reg[28]  ( .D(N293), .CK(clk), .Q(kin[28]) );
  DFQM2RA \kin_reg[29]  ( .D(N294), .CK(clk), .Q(kin[29]) );
  DFQM2RA \kin_reg[30]  ( .D(N295), .CK(clk), .Q(kin[30]) );
  DFQM2RA \kin_reg[31]  ( .D(N296), .CK(clk), .Q(kin[31]) );
  DFQM2RA \kin_reg[32]  ( .D(N297), .CK(clk), .Q(kin[32]) );
  DFQM2RA \kin_reg[33]  ( .D(N298), .CK(clk), .Q(kin[33]) );
  DFQM2RA \kin_reg[34]  ( .D(N299), .CK(clk), .Q(kin[34]) );
  DFQM2RA \kin_reg[35]  ( .D(N300), .CK(clk), .Q(kin[35]) );
  DFQM2RA \kin_reg[36]  ( .D(N301), .CK(clk), .Q(kin[36]) );
  DFQM2RA \kin_reg[37]  ( .D(N302), .CK(clk), .Q(kin[37]) );
  DFQM2RA \kin_reg[38]  ( .D(N303), .CK(clk), .Q(kin[38]) );
  DFQM2RA \kin_reg[39]  ( .D(N304), .CK(clk), .Q(kin[39]) );
  DFQM2RA \kin_reg[40]  ( .D(N305), .CK(clk), .Q(kin[40]) );
  DFQM2RA \kin_reg[41]  ( .D(N306), .CK(clk), .Q(kin[41]) );
  DFQM2RA \kin_reg[42]  ( .D(N307), .CK(clk), .Q(kin[42]) );
  DFQM2RA \kin_reg[43]  ( .D(N308), .CK(clk), .Q(kin[43]) );
  DFQM2RA \kin_reg[44]  ( .D(N309), .CK(clk), .Q(kin[44]) );
  DFQM2RA \kin_reg[45]  ( .D(N310), .CK(clk), .Q(kin[45]) );
  DFQM2RA \kin_reg[46]  ( .D(N311), .CK(clk), .Q(kin[46]) );
  DFQM2RA \kin_reg[47]  ( .D(N312), .CK(clk), .Q(kin[47]) );
  DFQM2RA \kin_reg[48]  ( .D(N313), .CK(clk), .Q(kin[48]) );
  DFQM2RA \kin_reg[49]  ( .D(N314), .CK(clk), .Q(kin[49]) );
  DFQM2RA \kin_reg[50]  ( .D(N315), .CK(clk), .Q(kin[50]) );
  DFQM2RA \kin_reg[51]  ( .D(N316), .CK(clk), .Q(kin[51]) );
  DFQM2RA \kin_reg[52]  ( .D(N317), .CK(clk), .Q(kin[52]) );
  DFQM2RA \kin_reg[53]  ( .D(N318), .CK(clk), .Q(kin[53]) );
  DFQM2RA \kin_reg[54]  ( .D(N319), .CK(clk), .Q(kin[54]) );
  DFQM2RA \kin_reg[55]  ( .D(N320), .CK(clk), .Q(kin[55]) );
  DFQM2RA \kin_reg[56]  ( .D(N321), .CK(clk), .Q(kin[56]) );
  DFQM2RA \kin_reg[57]  ( .D(N322), .CK(clk), .Q(kin[57]) );
  DFQM2RA \kin_reg[58]  ( .D(N323), .CK(clk), .Q(kin[58]) );
  DFQM2RA \kin_reg[59]  ( .D(N324), .CK(clk), .Q(kin[59]) );
  DFQM2RA \kin_reg[60]  ( .D(N325), .CK(clk), .Q(kin[60]) );
  DFQM2RA \kin_reg[61]  ( .D(N326), .CK(clk), .Q(kin[61]) );
  DFQM2RA \kin_reg[62]  ( .D(N327), .CK(clk), .Q(kin[62]) );
  DFQM2RA \kin_reg[63]  ( .D(N328), .CK(clk), .Q(kin[63]) );
  DFQM2RA \kin_reg[64]  ( .D(N329), .CK(clk), .Q(kin[64]) );
  DFQM2RA \kin_reg[65]  ( .D(N330), .CK(clk), .Q(kin[65]) );
  DFQM2RA \kin_reg[66]  ( .D(N331), .CK(clk), .Q(kin[66]) );
  DFQM2RA \kin_reg[67]  ( .D(N332), .CK(clk), .Q(kin[67]) );
  DFQM2RA \kin_reg[68]  ( .D(N333), .CK(clk), .Q(kin[68]) );
  DFQM2RA \kin_reg[69]  ( .D(N334), .CK(clk), .Q(kin[69]) );
  DFQM2RA \kin_reg[70]  ( .D(N335), .CK(clk), .Q(kin[70]) );
  DFQM2RA \kin_reg[71]  ( .D(N336), .CK(clk), .Q(kin[71]) );
  DFQM2RA \kin_reg[72]  ( .D(N337), .CK(clk), .Q(kin[72]) );
  DFQM2RA \kin_reg[73]  ( .D(N338), .CK(clk), .Q(kin[73]) );
  DFQM2RA \kin_reg[74]  ( .D(N339), .CK(clk), .Q(kin[74]) );
  DFQM2RA \kin_reg[75]  ( .D(N340), .CK(clk), .Q(kin[75]) );
  DFQM2RA \kin_reg[76]  ( .D(N341), .CK(clk), .Q(kin[76]) );
  DFQM2RA \kin_reg[77]  ( .D(N342), .CK(clk), .Q(kin[77]) );
  DFQM2RA \kin_reg[78]  ( .D(N343), .CK(clk), .Q(kin[78]) );
  DFQM2RA \kin_reg[79]  ( .D(N344), .CK(clk), .Q(kin[79]) );
  DFQM2RA \kin_reg[80]  ( .D(N345), .CK(clk), .Q(kin[80]) );
  DFQM2RA \kin_reg[81]  ( .D(N346), .CK(clk), .Q(kin[81]) );
  DFQM2RA \kin_reg[82]  ( .D(N347), .CK(clk), .Q(kin[82]) );
  DFQM2RA \kin_reg[83]  ( .D(N348), .CK(clk), .Q(kin[83]) );
  DFQM2RA \kin_reg[84]  ( .D(N349), .CK(clk), .Q(kin[84]) );
  DFQM2RA \kin_reg[85]  ( .D(N350), .CK(clk), .Q(kin[85]) );
  DFQM2RA \kin_reg[86]  ( .D(N351), .CK(clk), .Q(kin[86]) );
  DFQM2RA \kin_reg[87]  ( .D(N352), .CK(clk), .Q(kin[87]) );
  DFQM2RA \kin_reg[88]  ( .D(N353), .CK(clk), .Q(kin[88]) );
  DFQM2RA \kin_reg[89]  ( .D(N354), .CK(clk), .Q(kin[89]) );
  DFQM2RA \kin_reg[90]  ( .D(N355), .CK(clk), .Q(kin[90]) );
  DFQM2RA \kin_reg[91]  ( .D(N356), .CK(clk), .Q(kin[91]) );
  DFQM2RA \kin_reg[92]  ( .D(N357), .CK(clk), .Q(kin[92]) );
  DFQM2RA \kin_reg[93]  ( .D(N358), .CK(clk), .Q(kin[93]) );
  DFQM2RA \kin_reg[94]  ( .D(N359), .CK(clk), .Q(kin[94]) );
  DFQM2RA \kin_reg[95]  ( .D(N360), .CK(clk), .Q(kin[95]) );
  DFQM2RA \kin_reg[96]  ( .D(N361), .CK(clk), .Q(kin[96]) );
  DFQM2RA \kin_reg[97]  ( .D(N362), .CK(clk), .Q(kin[97]) );
  DFQM2RA \kin_reg[98]  ( .D(N363), .CK(clk), .Q(kin[98]) );
  DFQM2RA \kin_reg[99]  ( .D(N364), .CK(clk), .Q(kin[99]) );
  DFQM2RA \kin_reg[100]  ( .D(N365), .CK(clk), .Q(kin[100]) );
  DFQM2RA \kin_reg[101]  ( .D(N366), .CK(clk), .Q(kin[101]) );
  DFQM2RA \kin_reg[102]  ( .D(N367), .CK(clk), .Q(kin[102]) );
  DFQM2RA \kin_reg[103]  ( .D(N368), .CK(clk), .Q(kin[103]) );
  DFQM2RA \kin_reg[104]  ( .D(N369), .CK(clk), .Q(kin[104]) );
  DFQM2RA \kin_reg[105]  ( .D(N370), .CK(clk), .Q(kin[105]) );
  DFQM2RA \kin_reg[106]  ( .D(N371), .CK(clk), .Q(kin[106]) );
  DFQM2RA \kin_reg[107]  ( .D(N372), .CK(clk), .Q(kin[107]) );
  DFQM2RA \kin_reg[108]  ( .D(N373), .CK(clk), .Q(kin[108]) );
  DFQM2RA \kin_reg[109]  ( .D(N374), .CK(clk), .Q(kin[109]) );
  DFQM2RA \kin_reg[110]  ( .D(N375), .CK(clk), .Q(kin[110]) );
  DFQM2RA \kin_reg[111]  ( .D(N376), .CK(clk), .Q(kin[111]) );
  DFQM2RA \kin_reg[112]  ( .D(N377), .CK(clk), .Q(kin[112]) );
  DFQM2RA \kin_reg[113]  ( .D(N378), .CK(clk), .Q(kin[113]) );
  DFQM2RA \kin_reg[114]  ( .D(N379), .CK(clk), .Q(kin[114]) );
  DFQM2RA \kin_reg[115]  ( .D(N380), .CK(clk), .Q(kin[115]) );
  DFQM2RA \kin_reg[116]  ( .D(N381), .CK(clk), .Q(kin[116]) );
  DFQM2RA \kin_reg[117]  ( .D(N382), .CK(clk), .Q(kin[117]) );
  DFQM2RA \kin_reg[118]  ( .D(N383), .CK(clk), .Q(kin[118]) );
  DFQM2RA \kin_reg[119]  ( .D(N384), .CK(clk), .Q(kin[119]) );
  DFQM2RA \kin_reg[120]  ( .D(N385), .CK(clk), .Q(kin[120]) );
  DFQM2RA \kin_reg[121]  ( .D(N386), .CK(clk), .Q(kin[121]) );
  DFQM2RA \kin_reg[122]  ( .D(N387), .CK(clk), .Q(kin[122]) );
  DFQM2RA \kin_reg[123]  ( .D(N388), .CK(clk), .Q(kin[123]) );
  DFQM2RA \kin_reg[124]  ( .D(N389), .CK(clk), .Q(kin[124]) );
  DFQM2RA \kin_reg[125]  ( .D(N390), .CK(clk), .Q(kin[125]) );
  DFQM2RA \kin_reg[126]  ( .D(N391), .CK(clk), .Q(kin[126]) );
  DFQM2RA \kin_reg[127]  ( .D(N392), .CK(clk), .Q(kin[127]) );
  DFQM2RA \din_reg[0]  ( .D(N133), .CK(clk), .Q(out[0]) );
  DFQM2RA \din_reg[1]  ( .D(N134), .CK(clk), .Q(out[1]) );
  DFQM2RA \din_reg[2]  ( .D(N135), .CK(clk), .Q(out[2]) );
  DFQM2RA \din_reg[3]  ( .D(N136), .CK(clk), .Q(out[3]) );
  DFQM2RA \din_reg[4]  ( .D(N137), .CK(clk), .Q(out[4]) );
  DFQM2RA \din_reg[5]  ( .D(N138), .CK(clk), .Q(out[5]) );
  DFQM2RA \din_reg[6]  ( .D(N139), .CK(clk), .Q(out[6]) );
  DFQM2RA \din_reg[7]  ( .D(N140), .CK(clk), .Q(out[7]) );
  DFQM2RA \din_reg[8]  ( .D(N141), .CK(clk), .Q(out[8]) );
  DFQM2RA \din_reg[9]  ( .D(N142), .CK(clk), .Q(out[9]) );
  DFQM2RA \din_reg[10]  ( .D(N143), .CK(clk), .Q(out[10]) );
  DFQM2RA \din_reg[11]  ( .D(N144), .CK(clk), .Q(out[11]) );
  DFQM2RA \din_reg[12]  ( .D(N145), .CK(clk), .Q(out[12]) );
  DFQM2RA \din_reg[13]  ( .D(N146), .CK(clk), .Q(out[13]) );
  DFQM2RA \din_reg[14]  ( .D(N147), .CK(clk), .Q(out[14]) );
  DFQM2RA \din_reg[15]  ( .D(N148), .CK(clk), .Q(out[15]) );
  DFQM2RA \din_reg[16]  ( .D(N149), .CK(clk), .Q(out[16]) );
  DFQM2RA \din_reg[17]  ( .D(N150), .CK(clk), .Q(out[17]) );
  DFQM2RA \din_reg[18]  ( .D(N151), .CK(clk), .Q(out[18]) );
  DFQM2RA \din_reg[19]  ( .D(N152), .CK(clk), .Q(out[19]) );
  DFQM2RA \din_reg[20]  ( .D(N153), .CK(clk), .Q(out[20]) );
  DFQM2RA \din_reg[21]  ( .D(N154), .CK(clk), .Q(out[21]) );
  DFQM2RA \din_reg[22]  ( .D(N155), .CK(clk), .Q(out[22]) );
  DFQM2RA \din_reg[23]  ( .D(N156), .CK(clk), .Q(out[23]) );
  DFQM2RA \din_reg[24]  ( .D(N157), .CK(clk), .Q(out[24]) );
  DFQM2RA \din_reg[25]  ( .D(N158), .CK(clk), .Q(out[25]) );
  DFQM2RA \din_reg[26]  ( .D(N159), .CK(clk), .Q(out[26]) );
  DFQM2RA \din_reg[27]  ( .D(N160), .CK(clk), .Q(out[27]) );
  DFQM2RA \din_reg[28]  ( .D(N161), .CK(clk), .Q(out[28]) );
  DFQM2RA \din_reg[29]  ( .D(N162), .CK(clk), .Q(out[29]) );
  DFQM2RA \din_reg[30]  ( .D(N163), .CK(clk), .Q(out[30]) );
  DFQM2RA \din_reg[31]  ( .D(N164), .CK(clk), .Q(out[31]) );
  DFQM2RA \din_reg[32]  ( .D(N165), .CK(clk), .Q(out[32]) );
  DFQM2RA \din_reg[33]  ( .D(N166), .CK(clk), .Q(out[33]) );
  DFQM2RA \din_reg[34]  ( .D(N167), .CK(clk), .Q(out[34]) );
  DFQM2RA \din_reg[35]  ( .D(N168), .CK(clk), .Q(out[35]) );
  DFQM2RA \din_reg[36]  ( .D(N169), .CK(clk), .Q(out[36]) );
  DFQM2RA \din_reg[37]  ( .D(N170), .CK(clk), .Q(out[37]) );
  DFQM2RA \din_reg[38]  ( .D(N171), .CK(clk), .Q(out[38]) );
  DFQM2RA \din_reg[39]  ( .D(N172), .CK(clk), .Q(out[39]) );
  DFQM2RA \din_reg[40]  ( .D(N173), .CK(clk), .Q(out[40]) );
  DFQM2RA \din_reg[41]  ( .D(N174), .CK(clk), .Q(out[41]) );
  DFQM2RA \din_reg[42]  ( .D(N175), .CK(clk), .Q(out[42]) );
  DFQM2RA \din_reg[43]  ( .D(N176), .CK(clk), .Q(out[43]) );
  DFQM2RA \din_reg[44]  ( .D(N177), .CK(clk), .Q(out[44]) );
  DFQM2RA \din_reg[45]  ( .D(N178), .CK(clk), .Q(out[45]) );
  DFQM2RA \din_reg[46]  ( .D(N179), .CK(clk), .Q(out[46]) );
  DFQM2RA \din_reg[47]  ( .D(N180), .CK(clk), .Q(out[47]) );
  DFQM2RA \din_reg[48]  ( .D(N181), .CK(clk), .Q(out[48]) );
  DFQM2RA \din_reg[49]  ( .D(N182), .CK(clk), .Q(out[49]) );
  DFQM2RA \din_reg[50]  ( .D(N183), .CK(clk), .Q(out[50]) );
  DFQM2RA \din_reg[51]  ( .D(N184), .CK(clk), .Q(out[51]) );
  DFQM2RA \din_reg[52]  ( .D(N185), .CK(clk), .Q(out[52]) );
  DFQM2RA \din_reg[53]  ( .D(N186), .CK(clk), .Q(out[53]) );
  DFQM2RA \din_reg[54]  ( .D(N187), .CK(clk), .Q(out[54]) );
  DFQM2RA \din_reg[55]  ( .D(N188), .CK(clk), .Q(out[55]) );
  DFQM2RA \din_reg[56]  ( .D(N189), .CK(clk), .Q(out[56]) );
  DFQM2RA \din_reg[57]  ( .D(N190), .CK(clk), .Q(out[57]) );
  DFQM2RA \din_reg[58]  ( .D(N191), .CK(clk), .Q(out[58]) );
  DFQM2RA \din_reg[59]  ( .D(N192), .CK(clk), .Q(out[59]) );
  DFQM2RA \din_reg[60]  ( .D(N193), .CK(clk), .Q(out[60]) );
  DFQM2RA \din_reg[61]  ( .D(N194), .CK(clk), .Q(out[61]) );
  DFQM2RA \din_reg[62]  ( .D(N195), .CK(clk), .Q(out[62]) );
  DFQM2RA \din_reg[63]  ( .D(N196), .CK(clk), .Q(out[63]) );
  DFQM2RA \din_reg[64]  ( .D(N197), .CK(clk), .Q(out[64]) );
  DFQM2RA \din_reg[65]  ( .D(N198), .CK(clk), .Q(out[65]) );
  DFQM2RA \din_reg[66]  ( .D(N199), .CK(clk), .Q(out[66]) );
  DFQM2RA \din_reg[67]  ( .D(N200), .CK(clk), .Q(out[67]) );
  DFQM2RA \din_reg[68]  ( .D(N201), .CK(clk), .Q(out[68]) );
  DFQM2RA \din_reg[69]  ( .D(N202), .CK(clk), .Q(out[69]) );
  DFQM2RA \din_reg[70]  ( .D(N203), .CK(clk), .Q(out[70]) );
  DFQM2RA \din_reg[71]  ( .D(N204), .CK(clk), .Q(out[71]) );
  DFQM2RA \din_reg[72]  ( .D(N205), .CK(clk), .Q(out[72]) );
  DFQM2RA \din_reg[73]  ( .D(N206), .CK(clk), .Q(out[73]) );
  DFQM2RA \din_reg[74]  ( .D(N207), .CK(clk), .Q(out[74]) );
  DFQM2RA \din_reg[75]  ( .D(N208), .CK(clk), .Q(out[75]) );
  DFQM2RA \din_reg[76]  ( .D(N209), .CK(clk), .Q(out[76]) );
  DFQM2RA \din_reg[77]  ( .D(N210), .CK(clk), .Q(out[77]) );
  DFQM2RA \din_reg[78]  ( .D(N211), .CK(clk), .Q(out[78]) );
  DFQM2RA \din_reg[79]  ( .D(N212), .CK(clk), .Q(out[79]) );
  DFQM2RA \din_reg[80]  ( .D(N213), .CK(clk), .Q(out[80]) );
  DFQM2RA \din_reg[81]  ( .D(N214), .CK(clk), .Q(out[81]) );
  DFQM2RA \din_reg[82]  ( .D(N215), .CK(clk), .Q(out[82]) );
  DFQM2RA \din_reg[83]  ( .D(N216), .CK(clk), .Q(out[83]) );
  DFQM2RA \din_reg[84]  ( .D(N217), .CK(clk), .Q(out[84]) );
  DFQM2RA \din_reg[85]  ( .D(N218), .CK(clk), .Q(out[85]) );
  DFQM2RA \din_reg[86]  ( .D(N219), .CK(clk), .Q(out[86]) );
  DFQM2RA \din_reg[87]  ( .D(N220), .CK(clk), .Q(out[87]) );
  DFQM2RA \din_reg[88]  ( .D(N221), .CK(clk), .Q(out[88]) );
  DFQM2RA \din_reg[89]  ( .D(N222), .CK(clk), .Q(out[89]) );
  DFQM2RA \din_reg[90]  ( .D(N223), .CK(clk), .Q(out[90]) );
  DFQM2RA \din_reg[91]  ( .D(N224), .CK(clk), .Q(out[91]) );
  DFQM2RA \din_reg[92]  ( .D(N225), .CK(clk), .Q(out[92]) );
  DFQM2RA \din_reg[93]  ( .D(N226), .CK(clk), .Q(out[93]) );
  DFQM2RA \din_reg[94]  ( .D(N227), .CK(clk), .Q(out[94]) );
  DFQM2RA \din_reg[95]  ( .D(N228), .CK(clk), .Q(out[95]) );
  DFQM2RA \din_reg[96]  ( .D(N229), .CK(clk), .Q(out[96]) );
  DFQM2RA \din_reg[97]  ( .D(N230), .CK(clk), .Q(out[97]) );
  DFQM2RA \din_reg[98]  ( .D(N231), .CK(clk), .Q(out[98]) );
  DFQM2RA \din_reg[99]  ( .D(N232), .CK(clk), .Q(out[99]) );
  DFQM2RA \din_reg[100]  ( .D(N233), .CK(clk), .Q(out[100]) );
  DFQM2RA \din_reg[101]  ( .D(N234), .CK(clk), .Q(out[101]) );
  DFQM2RA \din_reg[102]  ( .D(N235), .CK(clk), .Q(out[102]) );
  DFQM2RA \din_reg[103]  ( .D(N236), .CK(clk), .Q(out[103]) );
  DFQM2RA \din_reg[104]  ( .D(N237), .CK(clk), .Q(out[104]) );
  DFQM2RA \din_reg[105]  ( .D(N238), .CK(clk), .Q(out[105]) );
  DFQM2RA \din_reg[106]  ( .D(N239), .CK(clk), .Q(out[106]) );
  DFQM2RA \din_reg[107]  ( .D(N240), .CK(clk), .Q(out[107]) );
  DFQM2RA \din_reg[108]  ( .D(N241), .CK(clk), .Q(out[108]) );
  DFQM2RA \din_reg[109]  ( .D(N242), .CK(clk), .Q(out[109]) );
  DFQM2RA \din_reg[110]  ( .D(N243), .CK(clk), .Q(out[110]) );
  DFQM2RA \din_reg[111]  ( .D(N244), .CK(clk), .Q(out[111]) );
  DFQM2RA \din_reg[112]  ( .D(N245), .CK(clk), .Q(out[112]) );
  DFQM2RA \din_reg[113]  ( .D(N246), .CK(clk), .Q(out[113]) );
  DFQM2RA \din_reg[114]  ( .D(N247), .CK(clk), .Q(out[114]) );
  DFQM2RA \din_reg[115]  ( .D(N248), .CK(clk), .Q(out[115]) );
  DFQM2RA \din_reg[116]  ( .D(N249), .CK(clk), .Q(out[116]) );
  DFQM2RA \din_reg[117]  ( .D(N250), .CK(clk), .Q(out[117]) );
  DFQM2RA \din_reg[118]  ( .D(N251), .CK(clk), .Q(out[118]) );
  DFQM2RA \din_reg[119]  ( .D(N252), .CK(clk), .Q(out[119]) );
  DFQM2RA \din_reg[120]  ( .D(N253), .CK(clk), .Q(out[120]) );
  DFQM2RA \din_reg[121]  ( .D(N254), .CK(clk), .Q(out[121]) );
  DFQM2RA \din_reg[122]  ( .D(N255), .CK(clk), .Q(out[122]) );
  DFQM2RA \din_reg[123]  ( .D(N256), .CK(clk), .Q(out[123]) );
  DFQM2RA \din_reg[124]  ( .D(N257), .CK(clk), .Q(out[124]) );
  DFQM2RA \din_reg[125]  ( .D(N258), .CK(clk), .Q(out[125]) );
  DFQM2RA \din_reg[126]  ( .D(N259), .CK(clk), .Q(out[126]) );
  DFQM2RA \din_reg[127]  ( .D(N260), .CK(clk), .Q(out[127]) );
  XNR2M2RA U145 ( .A(key[127]), .B(in[127]), .Z(n12) );
  XNR2M2RA U147 ( .A(key[126]), .B(in[126]), .Z(n13) );
  XNR2M2RA U149 ( .A(key[125]), .B(in[125]), .Z(n14) );
  XNR2M2RA U151 ( .A(key[124]), .B(in[124]), .Z(n15) );
  XNR2M2RA U153 ( .A(key[123]), .B(in[123]), .Z(n16) );
  XNR2M2RA U155 ( .A(key[122]), .B(in[122]), .Z(n17) );
  XNR2M2RA U157 ( .A(key[121]), .B(in[121]), .Z(n18) );
  XNR2M2RA U159 ( .A(key[120]), .B(in[120]), .Z(n19) );
  XNR2M2RA U161 ( .A(key[119]), .B(in[119]), .Z(n20) );
  XNR2M2RA U163 ( .A(key[118]), .B(in[118]), .Z(n21) );
  XNR2M2RA U165 ( .A(key[117]), .B(in[117]), .Z(n22) );
  XNR2M2RA U167 ( .A(key[116]), .B(in[116]), .Z(n23) );
  XNR2M2RA U169 ( .A(key[115]), .B(in[115]), .Z(n24) );
  XNR2M2RA U171 ( .A(key[114]), .B(in[114]), .Z(n25) );
  XNR2M2RA U173 ( .A(key[113]), .B(in[113]), .Z(n26) );
  XNR2M2RA U175 ( .A(key[112]), .B(in[112]), .Z(n27) );
  XNR2M2RA U177 ( .A(key[111]), .B(in[111]), .Z(n28) );
  XNR2M2RA U179 ( .A(key[110]), .B(in[110]), .Z(n29) );
  XNR2M2RA U181 ( .A(key[109]), .B(in[109]), .Z(n30) );
  XNR2M2RA U183 ( .A(key[108]), .B(in[108]), .Z(n31) );
  XNR2M2RA U185 ( .A(key[107]), .B(in[107]), .Z(n32) );
  XNR2M2RA U187 ( .A(key[106]), .B(in[106]), .Z(n33) );
  XNR2M2RA U189 ( .A(key[105]), .B(in[105]), .Z(n34) );
  XNR2M2RA U191 ( .A(key[104]), .B(in[104]), .Z(n35) );
  XNR2M2RA U193 ( .A(key[103]), .B(in[103]), .Z(n36) );
  XNR2M2RA U195 ( .A(key[102]), .B(in[102]), .Z(n37) );
  XNR2M2RA U197 ( .A(key[101]), .B(in[101]), .Z(n38) );
  XNR2M2RA U199 ( .A(key[100]), .B(in[100]), .Z(n39) );
  XNR2M2RA U201 ( .A(key[99]), .B(in[99]), .Z(n40) );
  XNR2M2RA U203 ( .A(key[98]), .B(in[98]), .Z(n41) );
  XNR2M2RA U205 ( .A(key[97]), .B(in[97]), .Z(n42) );
  XNR2M2RA U207 ( .A(key[96]), .B(in[96]), .Z(n43) );
  XNR2M2RA U209 ( .A(key[95]), .B(in[95]), .Z(n44) );
  XNR2M2RA U211 ( .A(key[94]), .B(in[94]), .Z(n45) );
  XNR2M2RA U213 ( .A(key[93]), .B(in[93]), .Z(n46) );
  XNR2M2RA U215 ( .A(key[92]), .B(in[92]), .Z(n47) );
  XNR2M2RA U217 ( .A(key[91]), .B(in[91]), .Z(n48) );
  XNR2M2RA U219 ( .A(key[90]), .B(in[90]), .Z(n49) );
  XNR2M2RA U221 ( .A(key[89]), .B(in[89]), .Z(n50) );
  XNR2M2RA U223 ( .A(key[88]), .B(in[88]), .Z(n51) );
  XNR2M2RA U225 ( .A(key[87]), .B(in[87]), .Z(n52) );
  XNR2M2RA U227 ( .A(key[86]), .B(in[86]), .Z(n53) );
  XNR2M2RA U229 ( .A(key[85]), .B(in[85]), .Z(n54) );
  XNR2M2RA U231 ( .A(key[84]), .B(in[84]), .Z(n55) );
  XNR2M2RA U233 ( .A(key[83]), .B(in[83]), .Z(n56) );
  XNR2M2RA U235 ( .A(key[82]), .B(in[82]), .Z(n57) );
  XNR2M2RA U237 ( .A(key[81]), .B(in[81]), .Z(n58) );
  XNR2M2RA U239 ( .A(key[80]), .B(in[80]), .Z(n59) );
  XNR2M2RA U241 ( .A(key[79]), .B(in[79]), .Z(n60) );
  XNR2M2RA U243 ( .A(key[78]), .B(in[78]), .Z(n61) );
  XNR2M2RA U245 ( .A(key[77]), .B(in[77]), .Z(n62) );
  XNR2M2RA U247 ( .A(key[76]), .B(in[76]), .Z(n63) );
  XNR2M2RA U249 ( .A(key[75]), .B(in[75]), .Z(n64) );
  XNR2M2RA U251 ( .A(key[74]), .B(in[74]), .Z(n65) );
  XNR2M2RA U253 ( .A(key[73]), .B(in[73]), .Z(n66) );
  XNR2M2RA U255 ( .A(key[72]), .B(in[72]), .Z(n67) );
  XNR2M2RA U257 ( .A(key[71]), .B(in[71]), .Z(n68) );
  XNR2M2RA U259 ( .A(key[70]), .B(in[70]), .Z(n69) );
  XNR2M2RA U261 ( .A(key[69]), .B(in[69]), .Z(n70) );
  XNR2M2RA U263 ( .A(key[68]), .B(in[68]), .Z(n71) );
  XNR2M2RA U265 ( .A(key[67]), .B(in[67]), .Z(n72) );
  XNR2M2RA U267 ( .A(key[66]), .B(in[66]), .Z(n73) );
  XNR2M2RA U269 ( .A(key[65]), .B(in[65]), .Z(n74) );
  XNR2M2RA U271 ( .A(key[64]), .B(in[64]), .Z(n75) );
  XNR2M2RA U273 ( .A(key[63]), .B(in[63]), .Z(n76) );
  XNR2M2RA U275 ( .A(key[62]), .B(in[62]), .Z(n77) );
  XNR2M2RA U277 ( .A(key[61]), .B(in[61]), .Z(n78) );
  XNR2M2RA U279 ( .A(key[60]), .B(in[60]), .Z(n79) );
  XNR2M2RA U281 ( .A(key[59]), .B(in[59]), .Z(n80) );
  XNR2M2RA U283 ( .A(key[58]), .B(in[58]), .Z(n81) );
  XNR2M2RA U285 ( .A(key[57]), .B(in[57]), .Z(n82) );
  XNR2M2RA U287 ( .A(key[56]), .B(in[56]), .Z(n83) );
  XNR2M2RA U289 ( .A(key[55]), .B(in[55]), .Z(n84) );
  XNR2M2RA U291 ( .A(key[54]), .B(in[54]), .Z(n85) );
  XNR2M2RA U293 ( .A(key[53]), .B(in[53]), .Z(n86) );
  XNR2M2RA U295 ( .A(key[52]), .B(in[52]), .Z(n87) );
  XNR2M2RA U297 ( .A(key[51]), .B(in[51]), .Z(n88) );
  XNR2M2RA U299 ( .A(key[50]), .B(in[50]), .Z(n89) );
  XNR2M2RA U301 ( .A(key[49]), .B(in[49]), .Z(n90) );
  XNR2M2RA U303 ( .A(key[48]), .B(in[48]), .Z(n91) );
  XNR2M2RA U305 ( .A(key[47]), .B(in[47]), .Z(n92) );
  XNR2M2RA U307 ( .A(key[46]), .B(in[46]), .Z(n93) );
  XNR2M2RA U309 ( .A(key[45]), .B(in[45]), .Z(n94) );
  XNR2M2RA U311 ( .A(key[44]), .B(in[44]), .Z(n95) );
  XNR2M2RA U313 ( .A(key[43]), .B(in[43]), .Z(n96) );
  XNR2M2RA U315 ( .A(key[42]), .B(in[42]), .Z(n97) );
  XNR2M2RA U317 ( .A(key[41]), .B(in[41]), .Z(n98) );
  XNR2M2RA U319 ( .A(key[40]), .B(in[40]), .Z(n99) );
  XNR2M2RA U321 ( .A(key[39]), .B(in[39]), .Z(n100) );
  XNR2M2RA U323 ( .A(key[38]), .B(in[38]), .Z(n101) );
  XNR2M2RA U325 ( .A(key[37]), .B(in[37]), .Z(n102) );
  XNR2M2RA U327 ( .A(key[36]), .B(in[36]), .Z(n103) );
  XNR2M2RA U329 ( .A(key[35]), .B(in[35]), .Z(n104) );
  XNR2M2RA U331 ( .A(key[34]), .B(in[34]), .Z(n105) );
  XNR2M2RA U333 ( .A(key[33]), .B(in[33]), .Z(n106) );
  XNR2M2RA U335 ( .A(key[32]), .B(in[32]), .Z(n107) );
  XNR2M2RA U337 ( .A(key[31]), .B(in[31]), .Z(n108) );
  XNR2M2RA U339 ( .A(key[30]), .B(in[30]), .Z(n109) );
  XNR2M2RA U341 ( .A(key[29]), .B(in[29]), .Z(n110) );
  XNR2M2RA U343 ( .A(key[28]), .B(in[28]), .Z(n111) );
  XNR2M2RA U345 ( .A(key[27]), .B(in[27]), .Z(n112) );
  XNR2M2RA U347 ( .A(key[26]), .B(in[26]), .Z(n113) );
  XNR2M2RA U349 ( .A(key[25]), .B(in[25]), .Z(n114) );
  XNR2M2RA U351 ( .A(key[24]), .B(in[24]), .Z(n115) );
  XNR2M2RA U353 ( .A(key[23]), .B(in[23]), .Z(n116) );
  XNR2M2RA U355 ( .A(key[22]), .B(in[22]), .Z(n117) );
  XNR2M2RA U357 ( .A(key[21]), .B(in[21]), .Z(n118) );
  XNR2M2RA U359 ( .A(key[20]), .B(in[20]), .Z(n119) );
  XNR2M2RA U361 ( .A(key[19]), .B(in[19]), .Z(n120) );
  XNR2M2RA U363 ( .A(key[18]), .B(in[18]), .Z(n121) );
  XNR2M2RA U365 ( .A(key[17]), .B(in[17]), .Z(n122) );
  XNR2M2RA U367 ( .A(key[16]), .B(in[16]), .Z(n123) );
  XNR2M2RA U369 ( .A(key[15]), .B(in[15]), .Z(n124) );
  XNR2M2RA U371 ( .A(key[14]), .B(in[14]), .Z(n125) );
  XNR2M2RA U373 ( .A(key[13]), .B(in[13]), .Z(n126) );
  XNR2M2RA U375 ( .A(key[12]), .B(in[12]), .Z(n127) );
  XNR2M2RA U377 ( .A(key[11]), .B(in[11]), .Z(n128) );
  XNR2M2RA U379 ( .A(key[10]), .B(in[10]), .Z(n129) );
  XNR2M2RA U381 ( .A(key[9]), .B(in[9]), .Z(n130) );
  XNR2M2RA U383 ( .A(key[8]), .B(in[8]), .Z(n131) );
  XNR2M2RA U385 ( .A(key[7]), .B(in[7]), .Z(n132) );
  XNR2M2RA U387 ( .A(key[6]), .B(in[6]), .Z(n133) );
  XNR2M2RA U389 ( .A(key[5]), .B(in[5]), .Z(n134) );
  XNR2M2RA U391 ( .A(key[4]), .B(in[4]), .Z(n135) );
  XNR2M2RA U393 ( .A(key[3]), .B(in[3]), .Z(n136) );
  XNR2M2RA U395 ( .A(key[2]), .B(in[2]), .Z(n137) );
  XNR2M2RA U397 ( .A(key[1]), .B(in[1]), .Z(n138) );
  XNR2M2RA U401 ( .A(key[0]), .B(in[0]), .Z(n139) );
  DFQZRM2RA \x_reg[2]  ( .D(x[1]), .RB(n7), .CK(clk), .Q(x[2]) );
  DFQZRM2RA \x_reg[7]  ( .D(x[6]), .RB(n7), .CK(clk), .Q(x[7]) );
  DFQZRM2RA \x_reg[5]  ( .D(x[4]), .RB(n7), .CK(clk), .Q(x[5]) );
  DFQZRM2RA \x_reg[6]  ( .D(x[5]), .RB(n7), .CK(clk), .Q(x[6]) );
  DFQZRM2RA \i_reg[10]  ( .D(i[9]), .RB(n5), .CK(clk), .Q(i[10]) );
  DFQZRM2RA \i_reg[1]  ( .D(i[0]), .RB(n5), .CK(clk), .Q(i[1]) );
  DFQZRM2RA \i_reg[2]  ( .D(i[1]), .RB(n5), .CK(clk), .Q(i[2]) );
  DFQZRM2RA \i_reg[3]  ( .D(i[2]), .RB(n5), .CK(clk), .Q(i[3]) );
  DFQZRM2RA \i_reg[4]  ( .D(i[3]), .RB(n5), .CK(clk), .Q(i[4]) );
  DFQZRM2RA \i_reg[5]  ( .D(i[4]), .RB(n5), .CK(clk), .Q(i[5]) );
  DFQZRM2RA \i_reg[6]  ( .D(i[5]), .RB(n5), .CK(clk), .Q(i[6]) );
  DFQZRM2RA \i_reg[7]  ( .D(i[6]), .RB(n5), .CK(clk), .Q(i[7]) );
  DFQZRM2RA \i_reg[8]  ( .D(i[7]), .RB(n5), .CK(clk), .Q(i[8]) );
  DFQZRM2RA \i_reg[9]  ( .D(i[8]), .RB(n5), .CK(clk), .Q(i[9]) );
  DFQZRM2RA \i_reg[11]  ( .D(i[10]), .RB(n5), .CK(clk), .Q(i[11]) );
  MXB2M1RA U407 ( .A(n6), .B(N401), .S(r[0]), .Z(N402) );
  INVM2R U408 ( .A(n142), .Z(n140) );
  BUFM2R U409 ( .A(n143), .Z(n142) );
  BUFM2R U410 ( .A(n144), .Z(n146) );
  BUFM2R U411 ( .A(n10), .Z(n145) );
  INVM2R U412 ( .A(n142), .Z(n141) );
  INVM2R U413 ( .A(n11), .Z(n143) );
  INVM2R U414 ( .A(n6), .Z(n1) );
  INVM2R U415 ( .A(n8), .Z(n2) );
  INVM2R U416 ( .A(n9), .Z(n3) );
  BUFM2R U417 ( .A(n10), .Z(n144) );
  OAI22M2R U418 ( .A1(N401), .A2(n8), .B1(n2), .B2(n6), .Z(N405) );
  OAI22M2R U419 ( .A1(N401), .A2(n9), .B1(n3), .B2(n6), .Z(N404) );
  ND2M2R U420 ( .A(n6), .B(n5), .Z(N401) );
  MOAI22M2RA U421 ( .A1(n108), .A2(n140), .B1(dout[31]), .B2(n144), .Z(N164)
         );
  MOAI22M2RA U422 ( .A1(n112), .A2(n11), .B1(dout[27]), .B2(n144), .Z(N160) );
  MOAI22M2RA U423 ( .A1(n16), .A2(n141), .B1(dout[123]), .B2(n145), .Z(N256)
         );
  MOAI22M2RA U424 ( .A1(n24), .A2(n140), .B1(dout[115]), .B2(n146), .Z(N248)
         );
  MOAI22M2RA U425 ( .A1(n32), .A2(n140), .B1(dout[107]), .B2(n146), .Z(N240)
         );
  MOAI22M2RA U426 ( .A1(n40), .A2(n141), .B1(dout[99]), .B2(n146), .Z(N232) );
  MOAI22M2RA U427 ( .A1(n48), .A2(n140), .B1(dout[91]), .B2(n145), .Z(N224) );
  MOAI22M2RA U428 ( .A1(n56), .A2(n140), .B1(dout[83]), .B2(n146), .Z(N216) );
  MOAI22M2RA U429 ( .A1(n64), .A2(n141), .B1(dout[75]), .B2(n146), .Z(N208) );
  MOAI22M2RA U430 ( .A1(n72), .A2(n141), .B1(dout[67]), .B2(n145), .Z(N200) );
  MOAI22M2RA U431 ( .A1(n80), .A2(n140), .B1(dout[59]), .B2(n146), .Z(N192) );
  MOAI22M2RA U432 ( .A1(n81), .A2(n140), .B1(dout[58]), .B2(n145), .Z(N191) );
  MOAI22M2RA U433 ( .A1(n88), .A2(n140), .B1(dout[51]), .B2(n145), .Z(N184) );
  MOAI22M2RA U434 ( .A1(n96), .A2(n11), .B1(dout[43]), .B2(n144), .Z(N176) );
  MOAI22M2RA U435 ( .A1(n104), .A2(n11), .B1(dout[35]), .B2(n144), .Z(N168) );
  MOAI22M2RA U436 ( .A1(n111), .A2(n140), .B1(dout[28]), .B2(n144), .Z(N161)
         );
  MOAI22M2RA U437 ( .A1(n113), .A2(n11), .B1(dout[26]), .B2(n144), .Z(N159) );
  MOAI22M2RA U438 ( .A1(n114), .A2(n141), .B1(dout[25]), .B2(n144), .Z(N158)
         );
  MOAI22M2RA U439 ( .A1(n116), .A2(n140), .B1(dout[23]), .B2(n145), .Z(N156)
         );
  MOAI22M2RA U440 ( .A1(n119), .A2(n11), .B1(dout[20]), .B2(n145), .Z(N153) );
  MOAI22M2RA U441 ( .A1(n120), .A2(n11), .B1(dout[19]), .B2(n145), .Z(N152) );
  MOAI22M2RA U442 ( .A1(n121), .A2(n141), .B1(dout[18]), .B2(n145), .Z(N151)
         );
  MOAI22M2RA U443 ( .A1(n122), .A2(n141), .B1(dout[17]), .B2(n145), .Z(N150)
         );
  MOAI22M2RA U444 ( .A1(n124), .A2(n140), .B1(dout[15]), .B2(n145), .Z(N148)
         );
  MOAI22M2RA U445 ( .A1(n127), .A2(n11), .B1(dout[12]), .B2(n145), .Z(N145) );
  MOAI22M2RA U446 ( .A1(n128), .A2(n11), .B1(dout[11]), .B2(n145), .Z(N144) );
  MOAI22M2RA U447 ( .A1(n129), .A2(n11), .B1(dout[10]), .B2(n145), .Z(N143) );
  MOAI22M2RA U448 ( .A1(n130), .A2(n11), .B1(dout[9]), .B2(n145), .Z(N142) );
  MOAI22M2RA U449 ( .A1(n132), .A2(n11), .B1(dout[7]), .B2(n145), .Z(N140) );
  MOAI22M2RA U450 ( .A1(n135), .A2(n11), .B1(dout[4]), .B2(n145), .Z(N137) );
  MOAI22M2RA U451 ( .A1(n136), .A2(n11), .B1(dout[3]), .B2(n145), .Z(N136) );
  MOAI22M2RA U452 ( .A1(n137), .A2(n11), .B1(dout[2]), .B2(n145), .Z(N135) );
  MOAI22M2RA U453 ( .A1(n138), .A2(n11), .B1(dout[1]), .B2(n10), .Z(N134) );
  AN2M2R U454 ( .A(x[4]), .B(n7), .Z(r[4]) );
  AN2M2R U455 ( .A(x[1]), .B(n7), .Z(r[1]) );
  MOAI22M2RA U456 ( .A1(n15), .A2(n141), .B1(dout[124]), .B2(n145), .Z(N257)
         );
  MOAI22M2RA U457 ( .A1(n21), .A2(n141), .B1(dout[118]), .B2(n146), .Z(N251)
         );
  MOAI22M2RA U458 ( .A1(n23), .A2(n141), .B1(dout[116]), .B2(n146), .Z(N249)
         );
  MOAI22M2RA U459 ( .A1(n25), .A2(n11), .B1(dout[114]), .B2(n146), .Z(N247) );
  MOAI22M2RA U460 ( .A1(n26), .A2(n11), .B1(dout[113]), .B2(n146), .Z(N246) );
  MOAI22M2RA U461 ( .A1(n27), .A2(n11), .B1(dout[112]), .B2(n146), .Z(N245) );
  MOAI22M2RA U462 ( .A1(n33), .A2(n140), .B1(dout[106]), .B2(n146), .Z(N239)
         );
  MOAI22M2RA U463 ( .A1(n36), .A2(n141), .B1(dout[103]), .B2(n146), .Z(N236)
         );
  MOAI22M2RA U464 ( .A1(n38), .A2(n141), .B1(dout[101]), .B2(n146), .Z(N234)
         );
  MOAI22M2RA U465 ( .A1(n47), .A2(n141), .B1(dout[92]), .B2(n144), .Z(N225) );
  MOAI22M2RA U466 ( .A1(n53), .A2(n140), .B1(dout[86]), .B2(n144), .Z(N219) );
  MOAI22M2RA U467 ( .A1(n55), .A2(n140), .B1(dout[84]), .B2(n145), .Z(N217) );
  MOAI22M2RA U468 ( .A1(n57), .A2(n140), .B1(dout[82]), .B2(n144), .Z(N215) );
  MOAI22M2RA U469 ( .A1(n58), .A2(n140), .B1(dout[81]), .B2(n146), .Z(N214) );
  MOAI22M2RA U470 ( .A1(n59), .A2(n140), .B1(dout[80]), .B2(n144), .Z(N213) );
  MOAI22M2RA U471 ( .A1(n65), .A2(n141), .B1(dout[74]), .B2(n146), .Z(N207) );
  MOAI22M2RA U472 ( .A1(n68), .A2(n140), .B1(dout[71]), .B2(n146), .Z(N204) );
  MOAI22M2RA U473 ( .A1(n69), .A2(n141), .B1(dout[70]), .B2(n145), .Z(N203) );
  MOAI22M2RA U474 ( .A1(n70), .A2(n140), .B1(dout[69]), .B2(n144), .Z(N202) );
  MOAI22M2RA U475 ( .A1(n77), .A2(n140), .B1(dout[62]), .B2(n146), .Z(N195) );
  MOAI22M2RA U476 ( .A1(n79), .A2(n11), .B1(dout[60]), .B2(n145), .Z(N193) );
  MOAI22M2RA U477 ( .A1(n84), .A2(n11), .B1(dout[55]), .B2(n144), .Z(N188) );
  MOAI22M2RA U478 ( .A1(n87), .A2(n11), .B1(dout[52]), .B2(n144), .Z(N185) );
  MOAI22M2RA U479 ( .A1(n90), .A2(n140), .B1(dout[49]), .B2(n144), .Z(N182) );
  MOAI22M2RA U480 ( .A1(n91), .A2(n11), .B1(dout[48]), .B2(n145), .Z(N181) );
  MOAI22M2RA U481 ( .A1(n92), .A2(n140), .B1(dout[47]), .B2(n144), .Z(N180) );
  MOAI22M2RA U482 ( .A1(n100), .A2(n11), .B1(dout[39]), .B2(n144), .Z(N172) );
  MOAI22M2RA U483 ( .A1(n101), .A2(n11), .B1(dout[38]), .B2(n144), .Z(N171) );
  MOAI22M2RA U484 ( .A1(n102), .A2(n141), .B1(dout[37]), .B2(n144), .Z(N170)
         );
  MOAI22M2RA U485 ( .A1(n123), .A2(n11), .B1(dout[16]), .B2(n145), .Z(N149) );
  MOAI22M2RA U486 ( .A1(n126), .A2(n11), .B1(dout[13]), .B2(n10), .Z(N146) );
  MOAI22M2RA U487 ( .A1(n12), .A2(n141), .B1(dout[127]), .B2(n145), .Z(N260)
         );
  MOAI22M2RA U488 ( .A1(n13), .A2(n141), .B1(dout[126]), .B2(n145), .Z(N259)
         );
  MOAI22M2RA U489 ( .A1(n14), .A2(n141), .B1(dout[125]), .B2(n145), .Z(N258)
         );
  MOAI22M2RA U490 ( .A1(n17), .A2(n141), .B1(dout[122]), .B2(n145), .Z(N255)
         );
  MOAI22M2RA U491 ( .A1(n18), .A2(n141), .B1(dout[121]), .B2(n145), .Z(N254)
         );
  MOAI22M2RA U492 ( .A1(n19), .A2(n141), .B1(dout[120]), .B2(n145), .Z(N253)
         );
  MOAI22M2RA U493 ( .A1(n20), .A2(n141), .B1(dout[119]), .B2(n146), .Z(N252)
         );
  MOAI22M2RA U494 ( .A1(n22), .A2(n141), .B1(dout[117]), .B2(n146), .Z(N250)
         );
  MOAI22M2RA U495 ( .A1(n28), .A2(n141), .B1(dout[111]), .B2(n146), .Z(N244)
         );
  MOAI22M2RA U496 ( .A1(n29), .A2(n141), .B1(dout[110]), .B2(n146), .Z(N243)
         );
  MOAI22M2RA U497 ( .A1(n30), .A2(n140), .B1(dout[109]), .B2(n146), .Z(N242)
         );
  MOAI22M2RA U498 ( .A1(n31), .A2(n140), .B1(dout[108]), .B2(n146), .Z(N241)
         );
  MOAI22M2RA U499 ( .A1(n34), .A2(n141), .B1(dout[105]), .B2(n146), .Z(N238)
         );
  MOAI22M2RA U500 ( .A1(n35), .A2(n140), .B1(dout[104]), .B2(n146), .Z(N237)
         );
  MOAI22M2RA U501 ( .A1(n37), .A2(n141), .B1(dout[102]), .B2(n146), .Z(N235)
         );
  MOAI22M2RA U502 ( .A1(n39), .A2(n140), .B1(dout[100]), .B2(n146), .Z(N233)
         );
  MOAI22M2RA U503 ( .A1(n41), .A2(n140), .B1(dout[98]), .B2(n146), .Z(N231) );
  MOAI22M2RA U504 ( .A1(n42), .A2(n141), .B1(dout[97]), .B2(n146), .Z(N230) );
  MOAI22M2RA U505 ( .A1(n43), .A2(n140), .B1(dout[96]), .B2(n146), .Z(N229) );
  MOAI22M2RA U506 ( .A1(n44), .A2(n11), .B1(dout[95]), .B2(n144), .Z(N228) );
  MOAI22M2RA U507 ( .A1(n45), .A2(n11), .B1(dout[94]), .B2(n10), .Z(N227) );
  MOAI22M2RA U508 ( .A1(n46), .A2(n11), .B1(dout[93]), .B2(n10), .Z(N226) );
  MOAI22M2RA U509 ( .A1(n49), .A2(n140), .B1(dout[90]), .B2(n10), .Z(N223) );
  MOAI22M2RA U510 ( .A1(n50), .A2(n140), .B1(dout[89]), .B2(n10), .Z(N222) );
  MOAI22M2RA U511 ( .A1(n51), .A2(n140), .B1(dout[88]), .B2(n10), .Z(N221) );
  MOAI22M2RA U512 ( .A1(n52), .A2(n140), .B1(dout[87]), .B2(n10), .Z(N220) );
  MOAI22M2RA U513 ( .A1(n54), .A2(n140), .B1(dout[85]), .B2(n10), .Z(N218) );
  MOAI22M2RA U514 ( .A1(n60), .A2(n140), .B1(dout[79]), .B2(n10), .Z(N212) );
  MOAI22M2RA U515 ( .A1(n61), .A2(n140), .B1(dout[78]), .B2(n145), .Z(N211) );
  MOAI22M2RA U516 ( .A1(n62), .A2(n141), .B1(dout[77]), .B2(n144), .Z(N210) );
  MOAI22M2RA U517 ( .A1(n63), .A2(n140), .B1(dout[76]), .B2(n146), .Z(N209) );
  MOAI22M2RA U518 ( .A1(n66), .A2(n141), .B1(dout[73]), .B2(n144), .Z(N206) );
  MOAI22M2RA U519 ( .A1(n67), .A2(n140), .B1(dout[72]), .B2(n144), .Z(N205) );
  MOAI22M2RA U520 ( .A1(n71), .A2(n141), .B1(dout[68]), .B2(n144), .Z(N201) );
  MOAI22M2RA U521 ( .A1(n73), .A2(n140), .B1(dout[66]), .B2(n10), .Z(N199) );
  MOAI22M2RA U522 ( .A1(n74), .A2(n141), .B1(dout[65]), .B2(n10), .Z(N198) );
  MOAI22M2RA U523 ( .A1(n75), .A2(n11), .B1(dout[64]), .B2(n10), .Z(N197) );
  MOAI22M2RA U524 ( .A1(n76), .A2(n11), .B1(dout[63]), .B2(n10), .Z(N196) );
  MOAI22M2RA U525 ( .A1(n78), .A2(n11), .B1(dout[61]), .B2(n10), .Z(N194) );
  MOAI22M2RA U526 ( .A1(n82), .A2(n11), .B1(dout[57]), .B2(n10), .Z(N190) );
  MOAI22M2RA U527 ( .A1(n83), .A2(n11), .B1(dout[56]), .B2(n10), .Z(N189) );
  MOAI22M2RA U528 ( .A1(n85), .A2(n11), .B1(dout[54]), .B2(n10), .Z(N187) );
  MOAI22M2RA U529 ( .A1(n86), .A2(n11), .B1(dout[53]), .B2(n10), .Z(N186) );
  MOAI22M2RA U530 ( .A1(n89), .A2(n140), .B1(dout[50]), .B2(n10), .Z(N183) );
  MOAI22M2RA U531 ( .A1(n93), .A2(n141), .B1(dout[46]), .B2(n144), .Z(N179) );
  MOAI22M2RA U532 ( .A1(n94), .A2(n140), .B1(dout[45]), .B2(n144), .Z(N178) );
  MOAI22M2RA U533 ( .A1(n95), .A2(n141), .B1(dout[44]), .B2(n10), .Z(N177) );
  MOAI22M2RA U534 ( .A1(n97), .A2(n11), .B1(dout[42]), .B2(n10), .Z(N175) );
  MOAI22M2RA U535 ( .A1(n98), .A2(n11), .B1(dout[41]), .B2(n10), .Z(N174) );
  MOAI22M2RA U536 ( .A1(n99), .A2(n11), .B1(dout[40]), .B2(n10), .Z(N173) );
  MOAI22M2RA U537 ( .A1(n103), .A2(n140), .B1(dout[36]), .B2(n10), .Z(N169) );
  MOAI22M2RA U538 ( .A1(n105), .A2(n11), .B1(dout[34]), .B2(n10), .Z(N167) );
  MOAI22M2RA U539 ( .A1(n106), .A2(n11), .B1(dout[33]), .B2(n10), .Z(N166) );
  MOAI22M2RA U540 ( .A1(n107), .A2(n141), .B1(dout[32]), .B2(n10), .Z(N165) );
  MOAI22M2RA U541 ( .A1(n109), .A2(n141), .B1(dout[30]), .B2(n10), .Z(N163) );
  MOAI22M2RA U542 ( .A1(n110), .A2(n140), .B1(dout[29]), .B2(n10), .Z(N162) );
  MOAI22M2RA U543 ( .A1(n115), .A2(n11), .B1(dout[24]), .B2(n10), .Z(N157) );
  MOAI22M2RA U544 ( .A1(n117), .A2(n141), .B1(dout[22]), .B2(n144), .Z(N155)
         );
  MOAI22M2RA U545 ( .A1(n118), .A2(n141), .B1(dout[21]), .B2(n144), .Z(N154)
         );
  MOAI22M2RA U546 ( .A1(n125), .A2(n141), .B1(dout[14]), .B2(n144), .Z(N147)
         );
  MOAI22M2RA U547 ( .A1(n131), .A2(n11), .B1(dout[8]), .B2(n144), .Z(N141) );
  MOAI22M2RA U548 ( .A1(n133), .A2(n11), .B1(dout[6]), .B2(n144), .Z(N139) );
  MOAI22M2RA U549 ( .A1(n134), .A2(n11), .B1(dout[5]), .B2(n144), .Z(N138) );
  MOAI22M2RA U550 ( .A1(n139), .A2(n11), .B1(dout[0]), .B2(n10), .Z(N133) );
  AN2M2R U551 ( .A(x[6]), .B(n7), .Z(r[6]) );
  AN2M2R U552 ( .A(x[5]), .B(n7), .Z(r[5]) );
  AO22M1RA U553 ( .A1(n142), .A2(key[127]), .B1(kout[127]), .B2(n146), .Z(N392) );
  AO22M1RA U554 ( .A1(n142), .A2(key[126]), .B1(kout[126]), .B2(n146), .Z(N391) );
  AO22M1RA U555 ( .A1(n142), .A2(key[125]), .B1(kout[125]), .B2(n146), .Z(N390) );
  AO22M1RA U556 ( .A1(n142), .A2(key[124]), .B1(kout[124]), .B2(n146), .Z(N389) );
  AO22M1RA U557 ( .A1(n142), .A2(key[123]), .B1(kout[123]), .B2(n146), .Z(N388) );
  AO22M1RA U558 ( .A1(n143), .A2(key[122]), .B1(kout[122]), .B2(n146), .Z(N387) );
  AO22M1RA U559 ( .A1(n142), .A2(key[121]), .B1(kout[121]), .B2(n146), .Z(N386) );
  AO22M1RA U560 ( .A1(n142), .A2(key[120]), .B1(kout[120]), .B2(n146), .Z(N385) );
  AO22M1RA U561 ( .A1(n143), .A2(key[119]), .B1(kout[119]), .B2(n146), .Z(N384) );
  AO22M1RA U562 ( .A1(n142), .A2(key[118]), .B1(kout[118]), .B2(n146), .Z(N383) );
  AO22M1RA U563 ( .A1(n142), .A2(key[117]), .B1(kout[117]), .B2(n146), .Z(N382) );
  AO22M1RA U564 ( .A1(n143), .A2(key[116]), .B1(kout[116]), .B2(n146), .Z(N381) );
  AO22M1RA U565 ( .A1(n143), .A2(key[115]), .B1(kout[115]), .B2(n146), .Z(N380) );
  AO22M1RA U566 ( .A1(n143), .A2(key[114]), .B1(kout[114]), .B2(n146), .Z(N379) );
  AO22M1RA U567 ( .A1(n143), .A2(key[113]), .B1(kout[113]), .B2(n144), .Z(N378) );
  AO22M1RA U568 ( .A1(n143), .A2(key[112]), .B1(kout[112]), .B2(n144), .Z(N377) );
  AO22M1RA U569 ( .A1(n143), .A2(key[111]), .B1(kout[111]), .B2(n144), .Z(N376) );
  AO22M1RA U570 ( .A1(n143), .A2(key[110]), .B1(kout[110]), .B2(n144), .Z(N375) );
  AO22M1RA U571 ( .A1(n143), .A2(key[109]), .B1(kout[109]), .B2(n144), .Z(N374) );
  AO22M1RA U572 ( .A1(n143), .A2(key[108]), .B1(kout[108]), .B2(n144), .Z(N373) );
  AO22M1RA U573 ( .A1(n143), .A2(key[107]), .B1(kout[107]), .B2(n144), .Z(N372) );
  AO22M1RA U574 ( .A1(n143), .A2(key[106]), .B1(kout[106]), .B2(n144), .Z(N371) );
  AO22M1RA U575 ( .A1(n142), .A2(key[105]), .B1(kout[105]), .B2(n144), .Z(N370) );
  AO22M1RA U576 ( .A1(n143), .A2(key[104]), .B1(kout[104]), .B2(n144), .Z(N369) );
  AO22M1RA U577 ( .A1(n142), .A2(key[103]), .B1(kout[103]), .B2(n144), .Z(N368) );
  AO22M1RA U578 ( .A1(n142), .A2(key[102]), .B1(kout[102]), .B2(n144), .Z(N367) );
  AO22M1RA U579 ( .A1(n142), .A2(key[101]), .B1(kout[101]), .B2(n144), .Z(N366) );
  AO22M1RA U580 ( .A1(n142), .A2(key[100]), .B1(kout[100]), .B2(n144), .Z(N365) );
  AO22M1RA U581 ( .A1(n142), .A2(key[99]), .B1(kout[99]), .B2(n144), .Z(N364)
         );
  AO22M1RA U582 ( .A1(n142), .A2(key[98]), .B1(kout[98]), .B2(n144), .Z(N363)
         );
  AO22M1RA U583 ( .A1(n142), .A2(key[97]), .B1(kout[97]), .B2(n144), .Z(N362)
         );
  AO22M1RA U584 ( .A1(n142), .A2(key[96]), .B1(kout[96]), .B2(n144), .Z(N361)
         );
  AO22M1RA U585 ( .A1(n142), .A2(key[95]), .B1(kout[95]), .B2(n144), .Z(N360)
         );
  AO22M1RA U586 ( .A1(n142), .A2(key[94]), .B1(kout[94]), .B2(n144), .Z(N359)
         );
  AO22M1RA U587 ( .A1(n142), .A2(key[93]), .B1(kout[93]), .B2(n144), .Z(N358)
         );
  AO22M1RA U588 ( .A1(n142), .A2(key[92]), .B1(kout[92]), .B2(n144), .Z(N357)
         );
  AO22M1RA U589 ( .A1(n142), .A2(key[91]), .B1(kout[91]), .B2(n145), .Z(N356)
         );
  AO22M1RA U590 ( .A1(n142), .A2(key[90]), .B1(kout[90]), .B2(n145), .Z(N355)
         );
  AO22M1RA U591 ( .A1(n143), .A2(key[89]), .B1(kout[89]), .B2(n145), .Z(N354)
         );
  AO22M1RA U592 ( .A1(n143), .A2(key[88]), .B1(kout[88]), .B2(n145), .Z(N353)
         );
  AO22M1RA U593 ( .A1(n143), .A2(key[87]), .B1(kout[87]), .B2(n145), .Z(N352)
         );
  AO22M1RA U594 ( .A1(n143), .A2(key[86]), .B1(kout[86]), .B2(n144), .Z(N351)
         );
  AO22M1RA U595 ( .A1(n143), .A2(key[85]), .B1(kout[85]), .B2(n144), .Z(N350)
         );
  AO22M1RA U596 ( .A1(n143), .A2(key[84]), .B1(kout[84]), .B2(n146), .Z(N349)
         );
  AO22M1RA U597 ( .A1(n143), .A2(key[83]), .B1(kout[83]), .B2(n144), .Z(N348)
         );
  AO22M1RA U598 ( .A1(n143), .A2(key[82]), .B1(kout[82]), .B2(n146), .Z(N347)
         );
  AO22M1RA U599 ( .A1(n143), .A2(key[81]), .B1(kout[81]), .B2(n144), .Z(N346)
         );
  AO22M1RA U600 ( .A1(n143), .A2(key[80]), .B1(kout[80]), .B2(n144), .Z(N345)
         );
  AO22M1RA U601 ( .A1(n143), .A2(key[79]), .B1(kout[79]), .B2(n145), .Z(N344)
         );
  AO22M1RA U602 ( .A1(n143), .A2(key[78]), .B1(kout[78]), .B2(n145), .Z(N343)
         );
  AO22M1RA U603 ( .A1(n142), .A2(key[77]), .B1(kout[77]), .B2(n144), .Z(N342)
         );
  AO22M1RA U604 ( .A1(n142), .A2(key[76]), .B1(kout[76]), .B2(n144), .Z(N341)
         );
  AO22M1RA U605 ( .A1(n142), .A2(key[75]), .B1(kout[75]), .B2(n145), .Z(N340)
         );
  AO22M1RA U606 ( .A1(n142), .A2(key[74]), .B1(kout[74]), .B2(n144), .Z(N339)
         );
  AO22M1RA U607 ( .A1(n142), .A2(key[73]), .B1(kout[73]), .B2(n10), .Z(N338)
         );
  AO22M1RA U608 ( .A1(n142), .A2(key[72]), .B1(kout[72]), .B2(n144), .Z(N337)
         );
  AO22M1RA U609 ( .A1(n142), .A2(key[71]), .B1(kout[71]), .B2(n145), .Z(N336)
         );
  AO22M1RA U610 ( .A1(n143), .A2(key[70]), .B1(kout[70]), .B2(n145), .Z(N335)
         );
  AO22M1RA U611 ( .A1(n142), .A2(key[69]), .B1(kout[69]), .B2(n144), .Z(N334)
         );
  AO22M1RA U612 ( .A1(n142), .A2(key[68]), .B1(kout[68]), .B2(n144), .Z(N333)
         );
  AO22M1RA U613 ( .A1(n142), .A2(key[67]), .B1(kout[67]), .B2(n144), .Z(N332)
         );
  AO22M1RA U614 ( .A1(n142), .A2(key[66]), .B1(kout[66]), .B2(n146), .Z(N331)
         );
  AO22M1RA U615 ( .A1(n142), .A2(key[65]), .B1(kout[65]), .B2(n144), .Z(N330)
         );
  AO22M1RA U616 ( .A1(n142), .A2(key[64]), .B1(kout[64]), .B2(n144), .Z(N329)
         );
  AO22M1RA U617 ( .A1(n142), .A2(key[63]), .B1(kout[63]), .B2(n145), .Z(N328)
         );
  AO22M1RA U618 ( .A1(n142), .A2(key[62]), .B1(kout[62]), .B2(n146), .Z(N327)
         );
  AO22M1RA U619 ( .A1(n142), .A2(key[61]), .B1(kout[61]), .B2(n144), .Z(N326)
         );
  AO22M1RA U620 ( .A1(n142), .A2(key[60]), .B1(kout[60]), .B2(n144), .Z(N325)
         );
  AO22M1RA U621 ( .A1(n142), .A2(key[59]), .B1(kout[59]), .B2(n145), .Z(N324)
         );
  AO22M1RA U622 ( .A1(n142), .A2(key[58]), .B1(kout[58]), .B2(n144), .Z(N323)
         );
  AO22M1RA U623 ( .A1(n143), .A2(key[57]), .B1(kout[57]), .B2(n146), .Z(N322)
         );
  AO22M1RA U624 ( .A1(n143), .A2(key[56]), .B1(kout[56]), .B2(n144), .Z(N321)
         );
  AO22M1RA U625 ( .A1(n143), .A2(key[55]), .B1(kout[55]), .B2(n145), .Z(N320)
         );
  AO22M1RA U626 ( .A1(n143), .A2(key[54]), .B1(kout[54]), .B2(n145), .Z(N319)
         );
  AO22M1RA U627 ( .A1(n143), .A2(key[53]), .B1(kout[53]), .B2(n144), .Z(N318)
         );
  AO22M1RA U628 ( .A1(n143), .A2(key[52]), .B1(kout[52]), .B2(n145), .Z(N317)
         );
  AO22M1RA U629 ( .A1(n142), .A2(key[51]), .B1(kout[51]), .B2(n10), .Z(N316)
         );
  AO22M1RA U630 ( .A1(n143), .A2(key[50]), .B1(kout[50]), .B2(n146), .Z(N315)
         );
  AO22M1RA U631 ( .A1(n143), .A2(key[49]), .B1(kout[49]), .B2(n145), .Z(N314)
         );
  AO22M1RA U632 ( .A1(n142), .A2(key[48]), .B1(kout[48]), .B2(n145), .Z(N313)
         );
  AO22M1RA U633 ( .A1(n143), .A2(key[47]), .B1(kout[47]), .B2(n145), .Z(N312)
         );
  AO22M1RA U634 ( .A1(n142), .A2(key[46]), .B1(kout[46]), .B2(n145), .Z(N311)
         );
  AO22M1RA U635 ( .A1(n143), .A2(key[45]), .B1(kout[45]), .B2(n145), .Z(N310)
         );
  AO22M1RA U636 ( .A1(n143), .A2(key[44]), .B1(kout[44]), .B2(n146), .Z(N309)
         );
  AO22M1RA U637 ( .A1(n143), .A2(key[43]), .B1(kout[43]), .B2(n145), .Z(N308)
         );
  AO22M1RA U638 ( .A1(n143), .A2(key[42]), .B1(kout[42]), .B2(n10), .Z(N307)
         );
  AO22M1RA U639 ( .A1(n143), .A2(key[41]), .B1(kout[41]), .B2(n145), .Z(N306)
         );
  AO22M1RA U640 ( .A1(n143), .A2(key[40]), .B1(kout[40]), .B2(n10), .Z(N305)
         );
  AO22M1RA U641 ( .A1(n143), .A2(key[39]), .B1(kout[39]), .B2(n145), .Z(N304)
         );
  AO22M1RA U642 ( .A1(n142), .A2(key[38]), .B1(kout[38]), .B2(n145), .Z(N303)
         );
  AO22M1RA U643 ( .A1(n142), .A2(key[37]), .B1(kout[37]), .B2(n145), .Z(N302)
         );
  AO22M1RA U644 ( .A1(n142), .A2(key[36]), .B1(kout[36]), .B2(n145), .Z(N301)
         );
  AO22M1RA U645 ( .A1(n142), .A2(key[35]), .B1(kout[35]), .B2(n145), .Z(N300)
         );
  AO22M1RA U646 ( .A1(n142), .A2(key[34]), .B1(kout[34]), .B2(n144), .Z(N299)
         );
  AO22M1RA U647 ( .A1(n142), .A2(key[33]), .B1(kout[33]), .B2(n145), .Z(N298)
         );
  AO22M1RA U648 ( .A1(n142), .A2(key[32]), .B1(kout[32]), .B2(n144), .Z(N297)
         );
  AO22M1RA U649 ( .A1(n142), .A2(key[31]), .B1(kout[31]), .B2(n145), .Z(N296)
         );
  AO22M1RA U650 ( .A1(n142), .A2(key[30]), .B1(kout[30]), .B2(n145), .Z(N295)
         );
  AO22M1RA U651 ( .A1(n142), .A2(key[29]), .B1(kout[29]), .B2(n145), .Z(N294)
         );
  AO22M1RA U652 ( .A1(n142), .A2(key[28]), .B1(kout[28]), .B2(n145), .Z(N293)
         );
  AO22M1RA U653 ( .A1(n142), .A2(key[27]), .B1(kout[27]), .B2(n145), .Z(N292)
         );
  AO22M1RA U654 ( .A1(n142), .A2(key[26]), .B1(kout[26]), .B2(n145), .Z(N291)
         );
  AO22M1RA U655 ( .A1(n143), .A2(key[25]), .B1(kout[25]), .B2(n145), .Z(N290)
         );
  AO22M1RA U656 ( .A1(n142), .A2(key[24]), .B1(kout[24]), .B2(n145), .Z(N289)
         );
  AO22M1RA U657 ( .A1(n143), .A2(key[23]), .B1(kout[23]), .B2(n145), .Z(N288)
         );
  AO22M1RA U658 ( .A1(n143), .A2(key[22]), .B1(kout[22]), .B2(n145), .Z(N287)
         );
  AO22M1RA U659 ( .A1(n142), .A2(key[21]), .B1(kout[21]), .B2(n145), .Z(N286)
         );
  AO22M1RA U660 ( .A1(n142), .A2(key[20]), .B1(kout[20]), .B2(n145), .Z(N285)
         );
  AO22M1RA U661 ( .A1(n143), .A2(key[19]), .B1(kout[19]), .B2(n146), .Z(N284)
         );
  AO22M1RA U662 ( .A1(n143), .A2(key[18]), .B1(kout[18]), .B2(n10), .Z(N283)
         );
  AO22M1RA U663 ( .A1(n143), .A2(key[17]), .B1(kout[17]), .B2(n144), .Z(N282)
         );
  AO22M1RA U664 ( .A1(n143), .A2(key[16]), .B1(kout[16]), .B2(n146), .Z(N281)
         );
  AO22M1RA U665 ( .A1(n143), .A2(key[15]), .B1(kout[15]), .B2(n145), .Z(N280)
         );
  AO22M1RA U666 ( .A1(n143), .A2(key[14]), .B1(kout[14]), .B2(n144), .Z(N279)
         );
  AO22M1RA U667 ( .A1(n143), .A2(key[13]), .B1(kout[13]), .B2(n144), .Z(N278)
         );
  AO22M1RA U668 ( .A1(n143), .A2(key[12]), .B1(kout[12]), .B2(n146), .Z(N277)
         );
  AO22M1RA U669 ( .A1(n143), .A2(key[11]), .B1(kout[11]), .B2(n10), .Z(N276)
         );
  AO22M1RA U670 ( .A1(n143), .A2(key[10]), .B1(kout[10]), .B2(n144), .Z(N275)
         );
  AO22M1RA U671 ( .A1(n143), .A2(key[9]), .B1(kout[9]), .B2(n144), .Z(N274) );
  AO22M1RA U672 ( .A1(n143), .A2(key[8]), .B1(kout[8]), .B2(n146), .Z(N273) );
  AO22M1RA U673 ( .A1(n143), .A2(key[7]), .B1(kout[7]), .B2(n145), .Z(N272) );
  AO22M1RA U674 ( .A1(n143), .A2(key[6]), .B1(kout[6]), .B2(n145), .Z(N271) );
  AO22M1RA U675 ( .A1(n143), .A2(key[5]), .B1(kout[5]), .B2(n145), .Z(N270) );
  AO22M1RA U676 ( .A1(n143), .A2(key[4]), .B1(kout[4]), .B2(n145), .Z(N269) );
  AO22M1RA U677 ( .A1(n143), .A2(key[3]), .B1(kout[3]), .B2(n145), .Z(N268) );
  AO22M1RA U678 ( .A1(n143), .A2(key[2]), .B1(kout[2]), .B2(n145), .Z(N267) );
  AO22M1RA U679 ( .A1(n143), .A2(key[1]), .B1(kout[1]), .B2(n145), .Z(N266) );
  AO22M1RA U680 ( .A1(n143), .A2(key[0]), .B1(kout[0]), .B2(n145), .Z(N265) );
  ND2M2R U681 ( .A(i[0]), .B(n5), .Z(n11) );
  NR2M2R U682 ( .A(rst), .B(i[1]), .Z(n7) );
  ND2M2R U683 ( .A(x[7]), .B(n7), .Z(n6) );
  ND2B1M2R U684 ( .NA(x[0]), .B(n7), .Z(r[0]) );
  ND2M2R U685 ( .A(x[3]), .B(n7), .Z(n8) );
  ND2M2R U686 ( .A(x[2]), .B(n7), .Z(n9) );
  NR2M2R U687 ( .A(i[0]), .B(rst), .Z(n10) );
  INVM2R U688 ( .A(rst), .Z(n5) );
endmodule

