/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Dec 17 14:14:07 2022
/////////////////////////////////////////////////////////////


module cmt_sbox_19 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n58, n59, n60, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n23, n33, n57, n61;

  XOR2M2RA U6 ( .A(n18), .B(n19), .Z(n15) );
  XNR2M2RA U10 ( .A(n16), .B(n25), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n34), .B(n35), .Z(n17) );
  XNR2M2RA U18 ( .A(n42), .B(n43), .Z(n32) );
  XOR2M2RA U21 ( .A(n31), .B(n46), .Z(n12) );
  XOR2M2RA U23 ( .A(n49), .B(n35), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n26), .B(n44), .Z(n35) );
  XOR2M2RA U27 ( .A(n48), .B(n52), .Z(n20) );
  XNR2M2RA U28 ( .A(n29), .B(n22), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n24), .B(n13), .Z(n39) );
  XOR2M2RA U31 ( .A(n48), .B(n41), .Z(n13) );
  XOR2M2RA U32 ( .A(n52), .B(n54), .Z(n24) );
  XOR2M2RA U34 ( .A(n42), .B(n46), .Z(n49) );
  XOR2M2RA U37 ( .A(n54), .B(n41), .Z(n36) );
  XOR2M2RA U46 ( .A(n25), .B(n18), .Z(n30) );
  XNR2M2RA U52 ( .A(n71), .B(n72), .Z(n64) );
  XOR2M2RA U57 ( .A(n77), .B(t[1]), .Z(n50) );
  XNR2M2RA U61 ( .A(n81), .B(n82), .Z(n40) );
  XNR2M2RA U63 ( .A(n6), .B(t[4]), .Z(n81) );
  XOR2M2RA U66 ( .A(n6), .B(t[6]), .Z(n38) );
  XNR2M2RA U70 ( .A(n86), .B(t[5]), .Z(n67) );
  XNR2M2RA U73 ( .A(n5), .B(t[0]), .Z(n66) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n55) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n14) );
  XOR2M2RA U78 ( .A(n69), .B(t[5]), .Z(n45) );
  XOR2M2RA U80 ( .A(n90), .B(t[0]), .Z(n21) );
  XOR2M2RA U81 ( .A(n77), .B(n82), .Z(n51) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n82) );
  XNR2M2RA U84 ( .A(n91), .B(t[6]), .Z(n37) );
  XNR2M2RA U85 ( .A(n69), .B(n4), .Z(n56) );
  XOR2M2RA U87 ( .A(n91), .B(n5), .Z(n62) );
  XNR2M2RA U88 ( .A(n90), .B(t[2]), .Z(n91) );
  XNR2M2RA U89 ( .A(n86), .B(n90), .Z(n47) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n90) );
  XOR2M2RA U91 ( .A(n92), .B(t[1]), .Z(n86) );
  XNR2M2RA U92 ( .A(n77), .B(n83), .Z(n69) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n83) );
  XNR2M2RA U94 ( .A(n92), .B(t[4]), .Z(n77) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n92) );
  ND2M2R U2 ( .A(n36), .B(n56), .Z(n42) );
  OAI22M2R U3 ( .A1(n68), .A2(n65), .B1(n1), .B2(n2), .Z(n54) );
  XOR4M1RA U4 ( .A(n30), .B(n31), .C(n32), .D(n9), .Z(a[3]) );
  INVM2R U5 ( .A(n64), .Z(n1) );
  INVM2R U7 ( .A(n68), .Z(n2) );
  ND2M2R U8 ( .A(n20), .B(n51), .Z(n26) );
  XOR4M1RA U9 ( .A(n26), .B(n27), .C(n28), .D(n29), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n43), .B(n23), .Z(n10) );
  ND2M2R U12 ( .A(n48), .B(n62), .Z(n23) );
  XNR3M1R U13 ( .A(n30), .B(n16), .C(n49), .Z(n29) );
  INVM2R U15 ( .A(n59), .Z(n3) );
  ND2M2R U16 ( .A(n40), .B(n41), .Z(n28) );
  ND2M2R U17 ( .A(n69), .B(n52), .Z(n25) );
  XOR3M2RA U19 ( .A(n12), .B(n44), .C(n27), .Z(a[2]) );
  AN2M2R U20 ( .A(n47), .B(n48), .Z(n31) );
  OAI22M2R U22 ( .A1(n1), .A2(n60), .B1(n63), .B2(n64), .Z(n48) );
  NR2M2R U25 ( .A(n59), .B(n65), .Z(n63) );
  OAI22M2R U26 ( .A1(n1), .A2(n65), .B1(n70), .B2(n64), .Z(n52) );
  NR2M2R U29 ( .A(n68), .B(n60), .Z(n70) );
  OAI22M2R U33 ( .A1(n59), .A2(n60), .B1(n1), .B2(n3), .Z(n41) );
  XOR4M1RA U35 ( .A(n87), .B(n88), .C(n78), .D(n89), .Z(n65) );
  NR2M2R U36 ( .A(n47), .B(n62), .Z(n87) );
  ND2M2R U38 ( .A(n45), .B(n14), .Z(n89) );
  ND2M2R U39 ( .A(n56), .B(n37), .Z(n88) );
  XOR4M1RA U40 ( .A(n78), .B(n75), .C(n79), .D(n80), .Z(n68) );
  ND2M2R U41 ( .A(n58), .B(n40), .Z(n79) );
  OR2M2R U42 ( .A(n14), .B(n45), .Z(n80) );
  ND2M2R U43 ( .A(n36), .B(n37), .Z(n34) );
  XNR3M1R U44 ( .A(n28), .B(n33), .C(n17), .Z(n9) );
  ND2M2R U45 ( .A(n38), .B(n39), .Z(n33) );
  ND2M2R U47 ( .A(n24), .B(n50), .Z(n44) );
  ND2M2R U48 ( .A(n65), .B(n60), .Z(n71) );
  NR2M2R U49 ( .A(n2), .B(n3), .Z(n72) );
  XOR4M1RA U50 ( .A(n8), .B(n15), .C(n16), .D(n17), .Z(a[6]) );
  ND2M2R U51 ( .A(n20), .B(n21), .Z(n19) );
  XOR2M2RA U53 ( .A(n10), .B(n57), .Z(n16) );
  ND2M2R U54 ( .A(n41), .B(n58), .Z(n57) );
  XNR3M1R U55 ( .A(n7), .B(n8), .C(n9), .Z(a[7]) );
  XNR3M1R U56 ( .A(n10), .B(n11), .C(n12), .Z(n7) );
  ND2M2R U58 ( .A(n13), .B(n14), .Z(n11) );
  ND2M2R U59 ( .A(n67), .B(n54), .Z(n18) );
  ND2M2R U60 ( .A(n66), .B(n54), .Z(n43) );
  ND2M2R U62 ( .A(n13), .B(n45), .Z(n27) );
  INVM2R U64 ( .A(n90), .Z(n4) );
  INVM2R U65 ( .A(n77), .Z(n5) );
  ND2M2R U67 ( .A(n55), .B(n66), .Z(n76) );
  INVM2R U68 ( .A(n83), .Z(n6) );
  ND2M2R U69 ( .A(n39), .B(n53), .Z(n22) );
  ND2M2R U71 ( .A(n38), .B(n53), .Z(n75) );
  AN2M2R U72 ( .A(n51), .B(n21), .Z(n78) );
  AN2M2R U75 ( .A(n55), .B(n52), .Z(n46) );
  XOR4M1RA U76 ( .A(n73), .B(n74), .C(n75), .D(n76), .Z(n59) );
  OR2M2R U79 ( .A(n21), .B(n51), .Z(n74) );
  AN2M2R U83 ( .A(n50), .B(n69), .Z(n73) );
  XOR4M1RA U86 ( .A(n78), .B(n76), .C(n84), .D(n85), .Z(n60) );
  AN2M2R U96 ( .A(n67), .B(t[2]), .Z(n85) );
  OR2M2R U97 ( .A(n37), .B(n56), .Z(n84) );
  XOR2M2RA U98 ( .A(n22), .B(n61), .Z(n8) );
  ND2M2R U99 ( .A(n24), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n83), .Z(n53) );
  XOR3M2RA U101 ( .A(t[3]), .B(n4), .C(n81), .Z(n58) );
endmodule


module expansion_7 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[110] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[106] = y_10;
  assign y[105] = y_9;
  assign y[104] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[100] = y_4;
  assign y[99] = y_3;
  assign y[98] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U64 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U65 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U66 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U67 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U68 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U69 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U70 ( .A(x[31]), .Z(y[95]) );
  BUFM2R U71 ( .A(y_1), .Z(y[1]) );
  BUFM2R U72 ( .A(y_2), .Z(y[2]) );
  BUFM2R U73 ( .A(y_3), .Z(y[3]) );
  BUFM2R U74 ( .A(y_4), .Z(y[4]) );
  BUFM2R U75 ( .A(y_5), .Z(y[5]) );
  BUFM2R U76 ( .A(y_6), .Z(y[6]) );
  BUFM2R U77 ( .A(y_7), .Z(y[7]) );
  BUFM2R U78 ( .A(y_8), .Z(y[8]) );
  BUFM2R U79 ( .A(y_9), .Z(y[9]) );
  BUFM2R U80 ( .A(y_10), .Z(y[10]) );
  BUFM2R U81 ( .A(y_11), .Z(y[11]) );
  BUFM2R U82 ( .A(y_16), .Z(y[16]) );
  BUFM2R U83 ( .A(y_17), .Z(y[17]) );
  BUFM2R U84 ( .A(y_18), .Z(y[18]) );
  BUFM2R U85 ( .A(y_19), .Z(y[19]) );
  BUFM2R U86 ( .A(y_20), .Z(y[20]) );
  BUFM2R U87 ( .A(y_21), .Z(y[21]) );
  BUFM2R U88 ( .A(y_22), .Z(y[22]) );
  BUFM2R U89 ( .A(y_23), .Z(y[23]) );
  BUFM2R U90 ( .A(y_24), .Z(y[24]) );
  BUFM2R U91 ( .A(y_25), .Z(y[25]) );
  BUFM2R U92 ( .A(y_26), .Z(y[26]) );
  BUFM2R U93 ( .A(y_27), .Z(y[27]) );
  BUFM2R U94 ( .A(y_12), .Z(y[12]) );
  BUFM2R U95 ( .A(y_13), .Z(y[13]) );
  BUFM2R U96 ( .A(y_14), .Z(y[14]) );
  BUFM2R U97 ( .A(y_15), .Z(y[15]) );
  BUFM2R U98 ( .A(y_28), .Z(y[28]) );
  BUFM2R U99 ( .A(y_29), .Z(y[29]) );
  BUFM2R U100 ( .A(y_30), .Z(y[30]) );
  BUFM2R U101 ( .A(y_31), .Z(y[31]) );
  BUFM2R U102 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U103 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U104 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U105 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U106 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U107 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U108 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U109 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U110 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U111 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U112 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U113 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U114 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U115 ( .A(y_33), .Z(y[33]) );
  BUFM2R U116 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U117 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U118 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U119 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U120 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U121 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U122 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U123 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U124 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U125 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U126 ( .A(y_33), .Z(y[65]) );
  BUFM2R U127 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U128 ( .A(x[5]), .Z(y[69]) );
endmodule


module noninv_31 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module noninv_24 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U13 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U14 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U15 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_25 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U13 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U16 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U17 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U18 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module noninv_26 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U11 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U12 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U13 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U14 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U15 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_27 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U11 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U12 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U13 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U16 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U17 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U18 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U19 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U20 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U21 ( .A(y[5]), .Z(z[9]) );
endmodule


module noninv_28 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_29 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[1]), .Z(z[5]) );
endmodule


module noninv_30 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module pseudo_fib_3 ( p, s, q );
  input [127:0] p;
  input [127:0] s;
  output [127:0] q;

  wire   [127:0] p1;

  noninv_31 uut1 ( .y(p[15:0]), .z(p1[15:0]) );
  noninv_30 uut2 ( .y(p[31:16]), .z(p1[31:16]) );
  noninv_29 uut3 ( .y(p[47:32]), .z(p1[47:32]) );
  noninv_28 uut4 ( .y(p[63:48]), .z(p1[63:48]) );
  noninv_27 uut5 ( .y(p[79:64]), .z(p1[79:64]) );
  noninv_26 uut6 ( .y(p[95:80]), .z(p1[95:80]) );
  noninv_25 uut7 ( .y(p[111:96]), .z(p1[111:96]) );
  noninv_24 uut8 ( .y(p[127:112]), .z(p1[127:112]) );
  XOR2M2RA U1 ( .A(s[105]), .B(p1[73]), .Z(q[9]) );
  XOR2M2RA U6 ( .A(s[63]), .B(p1[31]), .Z(q[95]) );
  XOR2M2RA U7 ( .A(s[62]), .B(p1[30]), .Z(q[94]) );
  XOR2M2RA U8 ( .A(s[61]), .B(p1[29]), .Z(q[93]) );
  XOR2M2RA U9 ( .A(s[60]), .B(p1[28]), .Z(q[92]) );
  XOR2M2RA U10 ( .A(s[59]), .B(p1[27]), .Z(q[91]) );
  XOR2M2RA U11 ( .A(s[58]), .B(p1[26]), .Z(q[90]) );
  XOR2M2RA U12 ( .A(s[104]), .B(p1[72]), .Z(q[8]) );
  XOR2M2RA U13 ( .A(s[57]), .B(p1[25]), .Z(q[89]) );
  XOR2M2RA U14 ( .A(s[56]), .B(p1[24]), .Z(q[88]) );
  XOR2M2RA U15 ( .A(s[55]), .B(p1[23]), .Z(q[87]) );
  XOR2M2RA U16 ( .A(s[54]), .B(p1[22]), .Z(q[86]) );
  XOR2M2RA U17 ( .A(s[53]), .B(p1[21]), .Z(q[85]) );
  XOR2M2RA U18 ( .A(s[52]), .B(p1[20]), .Z(q[84]) );
  XOR2M2RA U23 ( .A(s[103]), .B(p1[71]), .Z(q[7]) );
  XOR2M2RA U24 ( .A(s[47]), .B(p1[15]), .Z(q[79]) );
  XOR2M2RA U25 ( .A(s[46]), .B(p1[14]), .Z(q[78]) );
  XOR2M2RA U26 ( .A(s[45]), .B(p1[13]), .Z(q[77]) );
  XOR2M2RA U27 ( .A(s[44]), .B(p1[12]), .Z(q[76]) );
  XOR2M2RA U28 ( .A(s[43]), .B(p1[11]), .Z(q[75]) );
  XOR2M2RA U29 ( .A(s[42]), .B(p1[10]), .Z(q[74]) );
  XOR2M2RA U30 ( .A(s[41]), .B(p1[9]), .Z(q[73]) );
  XOR2M2RA U31 ( .A(s[40]), .B(p1[8]), .Z(q[72]) );
  XOR2M2RA U32 ( .A(s[39]), .B(p1[7]), .Z(q[71]) );
  XOR2M2RA U33 ( .A(s[38]), .B(p1[6]), .Z(q[70]) );
  XOR2M2RA U34 ( .A(s[102]), .B(p1[70]), .Z(q[6]) );
  XOR2M2RA U35 ( .A(s[37]), .B(p1[5]), .Z(q[69]) );
  XOR2M2RA U36 ( .A(s[36]), .B(p1[4]), .Z(q[68]) );
  XOR2M2RA U41 ( .A(s[31]), .B(p1[127]), .Z(q[63]) );
  XOR2M2RA U42 ( .A(s[30]), .B(p1[126]), .Z(q[62]) );
  XOR2M2RA U43 ( .A(s[29]), .B(p1[125]), .Z(q[61]) );
  XOR2M2RA U44 ( .A(s[28]), .B(p1[124]), .Z(q[60]) );
  XOR2M2RA U45 ( .A(s[101]), .B(p1[69]), .Z(q[5]) );
  XOR2M2RA U46 ( .A(s[27]), .B(p1[123]), .Z(q[59]) );
  XOR2M2RA U47 ( .A(s[26]), .B(p1[122]), .Z(q[58]) );
  XOR2M2RA U48 ( .A(s[25]), .B(p1[121]), .Z(q[57]) );
  XOR2M2RA U49 ( .A(s[24]), .B(p1[120]), .Z(q[56]) );
  XOR2M2RA U50 ( .A(s[23]), .B(p1[119]), .Z(q[55]) );
  XOR2M2RA U51 ( .A(s[22]), .B(p1[118]), .Z(q[54]) );
  XOR2M2RA U52 ( .A(s[21]), .B(p1[117]), .Z(q[53]) );
  XOR2M2RA U53 ( .A(s[20]), .B(p1[116]), .Z(q[52]) );
  XOR2M2RA U56 ( .A(s[100]), .B(p1[68]), .Z(q[4]) );
  XOR2M2RA U59 ( .A(s[15]), .B(p1[111]), .Z(q[47]) );
  XOR2M2RA U60 ( .A(s[14]), .B(p1[110]), .Z(q[46]) );
  XOR2M2RA U61 ( .A(s[13]), .B(p1[109]), .Z(q[45]) );
  XOR2M2RA U62 ( .A(s[12]), .B(p1[108]), .Z(q[44]) );
  XOR2M2RA U63 ( .A(s[11]), .B(p1[107]), .Z(q[43]) );
  XOR2M2RA U64 ( .A(s[10]), .B(p1[106]), .Z(q[42]) );
  XOR2M2RA U65 ( .A(s[9]), .B(p1[105]), .Z(q[41]) );
  XOR2M2RA U66 ( .A(s[8]), .B(p1[104]), .Z(q[40]) );
  XOR2M2RA U68 ( .A(s[7]), .B(p1[103]), .Z(q[39]) );
  XOR2M2RA U69 ( .A(s[6]), .B(p1[102]), .Z(q[38]) );
  XOR2M2RA U70 ( .A(s[5]), .B(p1[101]), .Z(q[37]) );
  XOR2M2RA U71 ( .A(s[4]), .B(p1[100]), .Z(q[36]) );
  XOR2M2RA U76 ( .A(s[127]), .B(p1[95]), .Z(q[31]) );
  XOR2M2RA U77 ( .A(s[126]), .B(p1[94]), .Z(q[30]) );
  XOR2M2RA U79 ( .A(s[125]), .B(p1[93]), .Z(q[29]) );
  XOR2M2RA U80 ( .A(s[124]), .B(p1[92]), .Z(q[28]) );
  XOR2M2RA U81 ( .A(s[123]), .B(p1[91]), .Z(q[27]) );
  XOR2M2RA U82 ( .A(s[122]), .B(p1[90]), .Z(q[26]) );
  XOR2M2RA U83 ( .A(s[121]), .B(p1[89]), .Z(q[25]) );
  XOR2M2RA U84 ( .A(s[120]), .B(p1[88]), .Z(q[24]) );
  XOR2M2RA U85 ( .A(s[119]), .B(p1[87]), .Z(q[23]) );
  XOR2M2RA U86 ( .A(s[118]), .B(p1[86]), .Z(q[22]) );
  XOR2M2RA U87 ( .A(s[117]), .B(p1[85]), .Z(q[21]) );
  XOR2M2RA U88 ( .A(s[116]), .B(p1[84]), .Z(q[20]) );
  XOR2M2RA U94 ( .A(s[111]), .B(p1[79]), .Z(q[15]) );
  XOR2M2RA U95 ( .A(s[110]), .B(p1[78]), .Z(q[14]) );
  XOR2M2RA U96 ( .A(s[109]), .B(p1[77]), .Z(q[13]) );
  XOR2M2RA U97 ( .A(s[108]), .B(p1[76]), .Z(q[12]) );
  XOR2M2RA U98 ( .A(s[95]), .B(p1[63]), .Z(q[127]) );
  XOR2M2RA U99 ( .A(s[94]), .B(p1[62]), .Z(q[126]) );
  XOR2M2RA U100 ( .A(s[93]), .B(p1[61]), .Z(q[125]) );
  XOR2M2RA U101 ( .A(s[92]), .B(p1[60]), .Z(q[124]) );
  XOR2M2RA U102 ( .A(s[91]), .B(p1[59]), .Z(q[123]) );
  XOR2M2RA U103 ( .A(s[90]), .B(p1[58]), .Z(q[122]) );
  XOR2M2RA U104 ( .A(s[89]), .B(p1[57]), .Z(q[121]) );
  XOR2M2RA U105 ( .A(s[88]), .B(p1[56]), .Z(q[120]) );
  XOR2M2RA U106 ( .A(s[107]), .B(p1[75]), .Z(q[11]) );
  XOR2M2RA U107 ( .A(s[87]), .B(p1[55]), .Z(q[119]) );
  XOR2M2RA U108 ( .A(s[86]), .B(p1[54]), .Z(q[118]) );
  XOR2M2RA U109 ( .A(s[85]), .B(p1[53]), .Z(q[117]) );
  XOR2M2RA U110 ( .A(s[84]), .B(p1[52]), .Z(q[116]) );
  XOR2M2RA U115 ( .A(s[79]), .B(p1[47]), .Z(q[111]) );
  XOR2M2RA U116 ( .A(s[78]), .B(p1[46]), .Z(q[110]) );
  XOR2M2RA U117 ( .A(s[106]), .B(p1[74]), .Z(q[10]) );
  XOR2M2RA U118 ( .A(s[77]), .B(p1[45]), .Z(q[109]) );
  XOR2M2RA U119 ( .A(s[76]), .B(p1[44]), .Z(q[108]) );
  XOR2M2RA U120 ( .A(s[75]), .B(p1[43]), .Z(q[107]) );
  XOR2M2RA U121 ( .A(s[74]), .B(p1[42]), .Z(q[106]) );
  XOR2M2RA U122 ( .A(s[73]), .B(p1[41]), .Z(q[105]) );
  XOR2M2RA U123 ( .A(s[72]), .B(p1[40]), .Z(q[104]) );
  XOR2M2RA U124 ( .A(s[71]), .B(p1[39]), .Z(q[103]) );
  XOR2M2RA U125 ( .A(s[70]), .B(p1[38]), .Z(q[102]) );
  XOR2M2RA U126 ( .A(s[69]), .B(p1[37]), .Z(q[101]) );
  XOR2M2RA U127 ( .A(s[68]), .B(p1[36]), .Z(q[100]) );
  BUFM2R U2 ( .A(s[98]), .Z(q[2]) );
  BUFM2R U3 ( .A(s[1]), .Z(q[33]) );
  BUFM2R U4 ( .A(s[3]), .Z(q[35]) );
  BUFM2R U5 ( .A(s[17]), .Z(q[49]) );
  BUFM2R U19 ( .A(s[19]), .Z(q[51]) );
  BUFM2R U20 ( .A(s[18]), .Z(q[50]) );
  BUFM2R U21 ( .A(s[16]), .Z(q[48]) );
  BUFM2R U22 ( .A(s[2]), .Z(q[34]) );
  BUFM2R U37 ( .A(s[114]), .Z(q[18]) );
  BUFM2R U38 ( .A(s[112]), .Z(q[16]) );
  BUFM2R U39 ( .A(s[97]), .Z(q[1]) );
  BUFM2R U40 ( .A(s[115]), .Z(q[19]) );
  BUFM2R U54 ( .A(s[113]), .Z(q[17]) );
  BUFM2R U55 ( .A(s[99]), .Z(q[3]) );
  BUFM2R U57 ( .A(s[49]), .Z(q[81]) );
  BUFM2R U58 ( .A(s[50]), .Z(q[82]) );
  BUFM2R U67 ( .A(s[35]), .Z(q[67]) );
  BUFM2R U72 ( .A(s[48]), .Z(q[80]) );
  BUFM2R U73 ( .A(s[51]), .Z(q[83]) );
  BUFM2R U74 ( .A(s[96]), .Z(q[0]) );
  BUFM2R U75 ( .A(s[64]), .Z(q[96]) );
  BUFM2R U78 ( .A(s[33]), .Z(q[65]) );
  BUFM2R U89 ( .A(s[65]), .Z(q[97]) );
  BUFM2R U90 ( .A(s[82]), .Z(q[114]) );
  BUFM2R U91 ( .A(s[81]), .Z(q[113]) );
  BUFM2R U92 ( .A(s[80]), .Z(q[112]) );
  BUFM2R U93 ( .A(s[66]), .Z(q[98]) );
  BUFM2R U111 ( .A(s[67]), .Z(q[99]) );
  BUFM2R U112 ( .A(s[83]), .Z(q[115]) );
  BUFM2R U113 ( .A(s[34]), .Z(q[66]) );
  BUFM2R U114 ( .A(s[32]), .Z(q[64]) );
  BUFM2R U128 ( .A(s[0]), .Z(q[32]) );
endmodule


module compression_3 ( o, s, p );
  input [127:0] o;
  input [127:0] s;
  output [31:0] p;
  wire   o_66, o_64, o_62, o_60, o_58, o_56, o_54, o_52, o_50, o_48, o_46,
         o_44, o_42, o_40, o_38, o_36, o_34, o_32, o_30, o_28, o_26, o_24,
         o_22, o_20, o_18, o_16, o_14, o_12, o_10, o_8, o_6, s_124, s_122,
         s_120, s_118, s_116, s_114, s_112, s_110, s_108, s_106, s_104, s_102,
         s_100, s_98, s_96, s_94, s_92, s_90, s_88, s_86, s_84, s_82, s_80,
         s_78, s_76, s_74, s_72, s_70, s_68, s_66, s_64;
  assign o_66 = o[66];
  assign o_64 = o[64];
  assign o_62 = o[62];
  assign o_60 = o[60];
  assign o_58 = o[58];
  assign o_56 = o[56];
  assign o_54 = o[54];
  assign o_52 = o[52];
  assign o_50 = o[50];
  assign o_48 = o[48];
  assign o_46 = o[46];
  assign o_44 = o[44];
  assign o_42 = o[42];
  assign o_40 = o[40];
  assign o_38 = o[38];
  assign o_36 = o[36];
  assign o_34 = o[34];
  assign o_32 = o[32];
  assign o_30 = o[30];
  assign o_28 = o[28];
  assign o_26 = o[26];
  assign o_24 = o[24];
  assign o_22 = o[22];
  assign o_20 = o[20];
  assign o_18 = o[18];
  assign o_16 = o[16];
  assign o_14 = o[14];
  assign o_12 = o[12];
  assign o_10 = o[10];
  assign o_8 = o[8];
  assign o_6 = o[6];
  assign s_124 = s[124];
  assign s_122 = s[122];
  assign s_120 = s[120];
  assign s_118 = s[118];
  assign s_116 = s[116];
  assign s_114 = s[114];
  assign s_112 = s[112];
  assign s_110 = s[110];
  assign s_108 = s[108];
  assign s_106 = s[106];
  assign s_104 = s[104];
  assign s_102 = s[102];
  assign s_100 = s[100];
  assign s_98 = s[98];
  assign s_96 = s[96];
  assign s_94 = s[94];
  assign s_92 = s[92];
  assign s_90 = s[90];
  assign s_88 = s[88];
  assign s_86 = s[86];
  assign s_84 = s[84];
  assign s_82 = s[82];
  assign s_80 = s[80];
  assign s_78 = s[78];
  assign s_76 = s[76];
  assign s_74 = s[74];
  assign s_72 = s[72];
  assign s_70 = s[70];
  assign s_68 = s[68];
  assign s_66 = s[66];
  assign s_64 = s[64];

  XOR2M2RA U1 ( .A(s_82), .B(o_24), .Z(p[9]) );
  XOR2M2RA U2 ( .A(s_80), .B(o_22), .Z(p[8]) );
  XOR2M2RA U3 ( .A(s_78), .B(o_20), .Z(p[7]) );
  XOR2M2RA U4 ( .A(s_76), .B(o_18), .Z(p[6]) );
  XOR2M2RA U5 ( .A(s_74), .B(o_16), .Z(p[5]) );
  XOR2M2RA U6 ( .A(s_72), .B(o_14), .Z(p[4]) );
  XOR2M2RA U7 ( .A(s_70), .B(o_12), .Z(p[3]) );
  XOR2M2RA U8 ( .A(s[126]), .B(o[68]), .Z(p[31]) );
  XOR2M2RA U9 ( .A(s_124), .B(o_66), .Z(p[30]) );
  XOR2M2RA U10 ( .A(s_68), .B(o_10), .Z(p[2]) );
  XOR2M2RA U11 ( .A(s_122), .B(o_64), .Z(p[29]) );
  XOR2M2RA U12 ( .A(s_120), .B(o_62), .Z(p[28]) );
  XOR2M2RA U13 ( .A(s_118), .B(o_60), .Z(p[27]) );
  XOR2M2RA U14 ( .A(s_116), .B(o_58), .Z(p[26]) );
  XOR2M2RA U15 ( .A(s_114), .B(o_56), .Z(p[25]) );
  XOR2M2RA U16 ( .A(s_112), .B(o_54), .Z(p[24]) );
  XOR2M2RA U17 ( .A(s_110), .B(o_52), .Z(p[23]) );
  XOR2M2RA U18 ( .A(s_108), .B(o_50), .Z(p[22]) );
  XOR2M2RA U19 ( .A(s_106), .B(o_48), .Z(p[21]) );
  XOR2M2RA U20 ( .A(s_104), .B(o_46), .Z(p[20]) );
  XOR2M2RA U21 ( .A(s_66), .B(o_8), .Z(p[1]) );
  XOR2M2RA U22 ( .A(s_102), .B(o_44), .Z(p[19]) );
  XOR2M2RA U23 ( .A(s_100), .B(o_42), .Z(p[18]) );
  XOR2M2RA U24 ( .A(s_98), .B(o_40), .Z(p[17]) );
  XOR2M2RA U25 ( .A(s_96), .B(o_38), .Z(p[16]) );
  XOR2M2RA U26 ( .A(s_94), .B(o_36), .Z(p[15]) );
  XOR2M2RA U27 ( .A(s_92), .B(o_34), .Z(p[14]) );
  XOR2M2RA U28 ( .A(s_90), .B(o_32), .Z(p[13]) );
  XOR2M2RA U29 ( .A(s_88), .B(o_30), .Z(p[12]) );
  XOR2M2RA U30 ( .A(s_86), .B(o_28), .Z(p[11]) );
  XOR2M2RA U31 ( .A(s_84), .B(o_26), .Z(p[10]) );
  XOR2M2RA U32 ( .A(s_64), .B(o_6), .Z(p[0]) );
endmodule


module expansion_6 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[22] = y_22;
  assign y[117] = y_21;
  assign y[20] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[14] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[10] = y_10;
  assign y[105] = y_9;
  assign y[104] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[4] = y_4;
  assign y[99] = y_3;
  assign y[2] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(y_24), .Z(y[24]) );
  BUFM2R U64 ( .A(y_30), .Z(y[30]) );
  BUFM2R U65 ( .A(y_18), .Z(y[18]) );
  BUFM2R U66 ( .A(y_12), .Z(y[12]) );
  BUFM2R U67 ( .A(y_26), .Z(y[26]) );
  BUFM2R U68 ( .A(y_6), .Z(y[6]) );
  BUFM2R U69 ( .A(y_16), .Z(y[16]) );
  BUFM2R U70 ( .A(y_28), .Z(y[28]) );
  BUFM2R U71 ( .A(y_2), .Z(y[98]) );
  BUFM2R U72 ( .A(y_8), .Z(y[8]) );
  BUFM2R U73 ( .A(y_22), .Z(y[118]) );
  BUFM2R U74 ( .A(y_20), .Z(y[116]) );
  BUFM2R U75 ( .A(y_14), .Z(y[110]) );
  BUFM2R U76 ( .A(y_10), .Z(y[106]) );
  BUFM2R U77 ( .A(y_4), .Z(y[100]) );
  BUFM2R U78 ( .A(y_1), .Z(y[1]) );
  BUFM2R U79 ( .A(y_19), .Z(y[19]) );
  BUFM2R U80 ( .A(y_17), .Z(y[17]) );
  BUFM2R U81 ( .A(y_3), .Z(y[3]) );
  BUFM2R U82 ( .A(y_7), .Z(y[7]) );
  BUFM2R U83 ( .A(y_9), .Z(y[9]) );
  BUFM2R U84 ( .A(y_13), .Z(y[13]) );
  BUFM2R U85 ( .A(y_15), .Z(y[15]) );
  BUFM2R U86 ( .A(y_21), .Z(y[21]) );
  BUFM2R U87 ( .A(y_5), .Z(y[5]) );
  BUFM2R U88 ( .A(y_11), .Z(y[11]) );
  BUFM2R U89 ( .A(y_23), .Z(y[23]) );
  BUFM2R U90 ( .A(y_25), .Z(y[25]) );
  BUFM2R U91 ( .A(y_27), .Z(y[27]) );
  BUFM2R U92 ( .A(y_29), .Z(y[29]) );
  BUFM2R U93 ( .A(y_31), .Z(y[31]) );
  BUFM2R U94 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U95 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U96 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U97 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U98 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U99 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U100 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U101 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U102 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U103 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U104 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U105 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U106 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U107 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U108 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U109 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U110 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U111 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U112 ( .A(y_33), .Z(y[33]) );
  BUFM2R U113 ( .A(y_33), .Z(y[65]) );
  BUFM2R U114 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U115 ( .A(x[5]), .Z(y[69]) );
  BUFM2R U116 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U117 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U118 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U119 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U120 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U121 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U122 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U123 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U124 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U125 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U126 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U127 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U128 ( .A(x[31]), .Z(y[95]) );
endmodule


module cm_3 ( a, s, b );
  input [31:0] a;
  input [31:0] s;
  output [31:0] b;

  wire   [127:0] a1;
  wire   [127:0] sd;
  wire   [127:0] b1;

  expansion_7 e1 ( .x(a), .y(a1) );
  expansion_6 e2 ( .x(s), .y(sd) );
  pseudo_fib_3 dut2 ( .p(a1), .s(sd), .q(b1) );
  compression_3 dut3 ( .o(b1), .s(sd), .p(b) );
endmodule


module MixColumns_3 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32;

  XOR2M2RA U14 ( .A(x[27]), .B(x[31]), .Z(n10) );
  XNR2M2RA U16 ( .A(x[26]), .B(x[31]), .Z(n12) );
  XOR2M2RA U21 ( .A(x[15]), .B(x[31]), .Z(n7) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n23) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n25) );
  XNR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n24) );
  XOR2M2RA U36 ( .A(x[8]), .B(x[15]), .Z(n3) );
  XOR2M2RA U38 ( .A(x[0]), .B(x[23]), .Z(n27) );
  XOR2M2RA U39 ( .A(x[24]), .B(x[15]), .Z(n5) );
  XOR2M2RA U41 ( .A(x[14]), .B(x[6]), .Z(n16) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[7]), .Z(n15) );
  XOR2M2RA U44 ( .A(x[13]), .B(x[5]), .Z(n19) );
  XOR2M2RA U45 ( .A(x[22]), .B(x[30]), .Z(n8) );
  XOR2M2RA U47 ( .A(x[12]), .B(x[4]), .Z(n30) );
  XOR2M2RA U48 ( .A(x[21]), .B(x[29]), .Z(n9) );
  XOR2M2RA U51 ( .A(x[20]), .B(x[28]), .Z(n18) );
  XOR2M2RA U52 ( .A(x[11]), .B(x[15]), .Z(n29) );
  XNR2M2RA U55 ( .A(n1), .B(x[3]), .Z(n21) );
  XOR2M2RA U56 ( .A(x[2]), .B(x[7]), .Z(n13) );
  XOR2M2RA U58 ( .A(x[1]), .B(x[9]), .Z(n32) );
  XOR2M2RA U59 ( .A(x[18]), .B(x[26]), .Z(n17) );
  XOR2M2RA U61 ( .A(x[8]), .B(x[31]), .Z(n28) );
  XOR2M2RA U62 ( .A(x[16]), .B(x[7]), .Z(n6) );
  INVM2R U1 ( .A(x[17]), .Z(n2) );
  INVM2R U2 ( .A(x[19]), .Z(n1) );
  XNR3M1R U3 ( .A(x[23]), .B(x[19]), .C(n30), .Z(n20) );
  XNR3M1R U4 ( .A(x[7]), .B(x[3]), .C(n18), .Z(n11) );
  XOR3M2RA U5 ( .A(x[23]), .B(x[16]), .C(n32), .Z(n26) );
  XOR3M2RA U6 ( .A(x[23]), .B(x[18]), .C(x[11]), .Z(n22) );
  XOR3M2RA U7 ( .A(x[27]), .B(x[15]), .C(x[10]), .Z(n31) );
  XOR3M2RA U8 ( .A(x[7]), .B(x[0]), .C(n23), .Z(n4) );
  XNR3M1R U9 ( .A(n12), .B(n13), .C(n14), .Z(y[3]) );
  XNR3M1R U10 ( .A(x[27]), .B(n1), .C(x[11]), .Z(n14) );
  XNR3M1R U11 ( .A(x[20]), .B(n10), .C(n20), .Z(y[28]) );
  XNR3M1R U12 ( .A(n21), .B(n12), .C(n22), .Z(y[27]) );
  XNR3M1R U13 ( .A(n29), .B(x[28]), .C(n20), .Z(y[20]) );
  XOR3M2RA U15 ( .A(x[3]), .B(n22), .C(n31), .Z(y[19]) );
  XOR3M2RA U17 ( .A(x[25]), .B(n3), .C(n26), .Z(y[17]) );
  XNR3M1R U18 ( .A(n29), .B(x[4]), .C(n11), .Z(y[12]) );
  XOR3M2RA U19 ( .A(n13), .B(n21), .C(n31), .Z(y[11]) );
  XNR3M1R U20 ( .A(n10), .B(x[12]), .C(n11), .Z(y[4]) );
  XOR4M1RA U22 ( .A(x[30]), .B(x[21]), .C(x[13]), .D(n16), .Z(y[22]) );
  XOR4M1RA U23 ( .A(x[9]), .B(x[26]), .C(n2), .D(n24), .Z(y[18]) );
  XOR4M1RA U24 ( .A(x[4]), .B(x[28]), .C(x[13]), .D(n9), .Z(y[5]) );
  XOR3M2RA U25 ( .A(x[15]), .B(n8), .C(n15), .Z(y[31]) );
  XOR3M2RA U26 ( .A(x[21]), .B(n18), .C(n19), .Z(y[29]) );
  XNR3M1R U27 ( .A(x[18]), .B(n23), .C(n24), .Z(y[26]) );
  XNR3M1R U30 ( .A(n25), .B(n2), .C(n26), .Z(y[25]) );
  XOR3M2RA U31 ( .A(x[16]), .B(n27), .C(n28), .Z(y[24]) );
  XOR4M1RA U32 ( .A(n7), .B(x[7]), .C(x[22]), .D(x[14]), .Z(y[23]) );
  XOR4M1RA U34 ( .A(x[29]), .B(x[20]), .C(x[12]), .D(n19), .Z(y[21]) );
  XOR3M2RA U35 ( .A(x[8]), .B(n5), .C(n27), .Z(y[16]) );
  XOR3M2RA U37 ( .A(x[31]), .B(n15), .C(n16), .Z(y[15]) );
  XOR3M2RA U40 ( .A(x[6]), .B(n8), .C(n19), .Z(y[14]) );
  XOR3M2RA U43 ( .A(x[5]), .B(n9), .C(n30), .Z(y[13]) );
  XOR3M2RA U46 ( .A(x[2]), .B(n17), .C(n32), .Z(y[10]) );
  XOR3M2RA U49 ( .A(x[1]), .B(n3), .C(n4), .Z(y[9]) );
  XOR3M2RA U50 ( .A(x[0]), .B(n5), .C(n6), .Z(y[8]) );
  XOR4M1RA U53 ( .A(n7), .B(x[6]), .C(x[30]), .D(x[23]), .Z(y[7]) );
  XOR4M1RA U54 ( .A(x[5]), .B(x[29]), .C(x[14]), .D(n8), .Z(y[6]) );
  XOR4M1RA U57 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n17), .Z(y[2]) );
  XOR3M2RA U60 ( .A(n25), .B(x[9]), .C(n4), .Z(y[1]) );
  XOR3M2RA U63 ( .A(x[24]), .B(n6), .C(n28), .Z(y[0]) );
  XOR3M2RA U64 ( .A(x[22]), .B(n9), .C(n16), .Z(y[30]) );
endmodule


module cmt_sbox_4 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U40 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U41 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U42 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U43 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U44 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U45 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U47 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U48 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U49 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_5 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_6 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  XOR3M2RA U16 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U17 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  XNR3M1R U40 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U41 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U42 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U50 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U51 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U53 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U54 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U55 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U56 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U58 ( .A(n142), .B(n126), .Z(n57) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_7 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U17 ( .A(n116), .B(n131), .Z(n157) );
  XOR3M2RA U19 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_8 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U40 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U41 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U42 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U43 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U44 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U45 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U47 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U48 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U49 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_9 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_10 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  XOR3M2RA U16 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U17 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  XNR3M1R U40 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U41 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U42 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U50 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U51 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U53 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U54 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U55 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U56 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U58 ( .A(n142), .B(n126), .Z(n57) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_11 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U17 ( .A(n116), .B(n131), .Z(n157) );
  XOR3M2RA U19 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_12 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U40 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U41 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U42 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U43 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U44 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U45 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U47 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U48 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U49 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_13 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_14 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  XOR3M2RA U16 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U17 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  XNR3M1R U40 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U41 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U42 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U50 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U51 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U53 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U54 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U55 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U56 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U58 ( .A(n142), .B(n126), .Z(n57) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_15 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U17 ( .A(n116), .B(n131), .Z(n157) );
  XOR3M2RA U19 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_16 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U40 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U41 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U42 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U43 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U44 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U45 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U47 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U48 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U49 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_17 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  ND2M2R U16 ( .A(n143), .B(n142), .Z(n154) );
  XOR3M2RA U17 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U25 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U26 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U29 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U33 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U35 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U36 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U38 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U39 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  XOR4M1RA U50 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U51 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U53 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U54 ( .A(n142), .B(n126), .Z(n57) );
  XNR3M1R U55 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U56 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U58 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module cmt_sbox_18 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  XOR4M1RA U4 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  INVM2R U5 ( .A(n121), .Z(n180) );
  INVM2R U7 ( .A(n117), .Z(n179) );
  ND2M2R U8 ( .A(n161), .B(n132), .Z(n156) );
  XOR4M1RA U9 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR2M2RA U11 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U12 ( .A(n135), .B(n123), .Z(n23) );
  XNR3M1R U13 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U15 ( .A(n125), .Z(n178) );
  XOR3M2RA U16 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
  ND2M2R U17 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U19 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U20 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U22 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U25 ( .A(n117), .B(n124), .Z(n115) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U38 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U39 ( .A(n167), .B(n138), .Z(n105) );
  XNR3M1R U40 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U41 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U42 ( .A(n168), .B(n167), .Z(n170) );
  ND2M2R U43 ( .A(n147), .B(n146), .Z(n149) );
  XNR3M1R U44 ( .A(n154), .B(n33), .C(n164), .Z(n172) );
  ND2M2R U45 ( .A(n145), .B(n144), .Z(n33) );
  ND2M2R U47 ( .A(n158), .B(n133), .Z(n139) );
  ND2M2R U48 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U49 ( .A(n179), .B(n178), .Z(n113) );
  OAI22M2R U50 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U51 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U53 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U54 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U55 ( .A(n161), .B(n160), .Z(n162) );
  XOR2M2RA U56 ( .A(n171), .B(n57), .Z(n165) );
  ND2M2R U58 ( .A(n142), .B(n126), .Z(n57) );
  ND2M2R U59 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U60 ( .A(n119), .B(n129), .Z(n140) );
  ND2M2R U62 ( .A(n168), .B(n138), .Z(n155) );
  INVM2R U64 ( .A(n95), .Z(n177) );
  INVM2R U65 ( .A(n108), .Z(n176) );
  ND2M2R U67 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U68 ( .A(n102), .Z(n175) );
  ND2M2R U69 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U71 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U72 ( .A(n132), .B(n160), .Z(n107) );
  AN2M2R U75 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U76 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U79 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U83 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U86 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U96 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U97 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U98 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U99 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U100 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U101 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
endmodule


module expansion_0 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[28] = y_28;
  assign y[123] = y_27;
  assign y[26] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[14] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[10] = y_10;
  assign y[105] = y_9;
  assign y[8] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[4] = y_4;
  assign y[99] = y_3;
  assign y[2] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(y_30), .Z(y[30]) );
  BUFM2R U64 ( .A(y_18), .Z(y[18]) );
  BUFM2R U65 ( .A(y_24), .Z(y[24]) );
  BUFM2R U66 ( .A(y_6), .Z(y[6]) );
  BUFM2R U67 ( .A(y_16), .Z(y[16]) );
  BUFM2R U68 ( .A(y_2), .Z(y[98]) );
  BUFM2R U69 ( .A(y_22), .Z(y[22]) );
  BUFM2R U70 ( .A(y_12), .Z(y[12]) );
  BUFM2R U71 ( .A(y_20), .Z(y[20]) );
  BUFM2R U72 ( .A(y_26), .Z(y[122]) );
  BUFM2R U73 ( .A(y_28), .Z(y[124]) );
  BUFM2R U74 ( .A(y_14), .Z(y[110]) );
  BUFM2R U75 ( .A(y_10), .Z(y[106]) );
  BUFM2R U76 ( .A(y_8), .Z(y[104]) );
  BUFM2R U77 ( .A(y_4), .Z(y[100]) );
  BUFM2R U78 ( .A(y_1), .Z(y[1]) );
  BUFM2R U79 ( .A(y_17), .Z(y[17]) );
  BUFM2R U80 ( .A(y_19), .Z(y[19]) );
  BUFM2R U81 ( .A(y_3), .Z(y[3]) );
  BUFM2R U82 ( .A(y_25), .Z(y[25]) );
  BUFM2R U83 ( .A(y_31), .Z(y[31]) );
  BUFM2R U84 ( .A(y_23), .Z(y[23]) );
  BUFM2R U85 ( .A(y_27), .Z(y[27]) );
  BUFM2R U86 ( .A(y_29), .Z(y[29]) );
  BUFM2R U87 ( .A(y_5), .Z(y[5]) );
  BUFM2R U88 ( .A(y_9), .Z(y[9]) );
  BUFM2R U89 ( .A(y_15), .Z(y[15]) );
  BUFM2R U90 ( .A(y_7), .Z(y[7]) );
  BUFM2R U91 ( .A(y_11), .Z(y[11]) );
  BUFM2R U92 ( .A(y_13), .Z(y[13]) );
  BUFM2R U93 ( .A(y_21), .Z(y[21]) );
  BUFM2R U94 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U95 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U96 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U97 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U98 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U99 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U100 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U101 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U102 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U103 ( .A(x[31]), .Z(y[95]) );
  BUFM2R U104 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U105 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U106 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U107 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U108 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U109 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U110 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U111 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U112 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U113 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U114 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U115 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U116 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U117 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U118 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U119 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U120 ( .A(x[5]), .Z(y[69]) );
  BUFM2R U121 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U122 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U123 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U124 ( .A(y_33), .Z(y[65]) );
  BUFM2R U125 ( .A(y_33), .Z(y[33]) );
  BUFM2R U126 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U127 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U128 ( .A(x[0]), .Z(y[0]) );
endmodule


module expansion_1 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[110] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[106] = y_10;
  assign y[105] = y_9;
  assign y[104] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[100] = y_4;
  assign y[99] = y_3;
  assign y[98] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U64 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U65 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U66 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U67 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U68 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U69 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U70 ( .A(x[31]), .Z(y[95]) );
  BUFM2R U71 ( .A(y_1), .Z(y[1]) );
  BUFM2R U72 ( .A(y_2), .Z(y[2]) );
  BUFM2R U73 ( .A(y_3), .Z(y[3]) );
  BUFM2R U74 ( .A(y_4), .Z(y[4]) );
  BUFM2R U75 ( .A(y_5), .Z(y[5]) );
  BUFM2R U76 ( .A(y_6), .Z(y[6]) );
  BUFM2R U77 ( .A(y_7), .Z(y[7]) );
  BUFM2R U78 ( .A(y_8), .Z(y[8]) );
  BUFM2R U79 ( .A(y_9), .Z(y[9]) );
  BUFM2R U80 ( .A(y_10), .Z(y[10]) );
  BUFM2R U81 ( .A(y_11), .Z(y[11]) );
  BUFM2R U82 ( .A(y_16), .Z(y[16]) );
  BUFM2R U83 ( .A(y_17), .Z(y[17]) );
  BUFM2R U84 ( .A(y_18), .Z(y[18]) );
  BUFM2R U85 ( .A(y_19), .Z(y[19]) );
  BUFM2R U86 ( .A(y_20), .Z(y[20]) );
  BUFM2R U87 ( .A(y_21), .Z(y[21]) );
  BUFM2R U88 ( .A(y_22), .Z(y[22]) );
  BUFM2R U89 ( .A(y_23), .Z(y[23]) );
  BUFM2R U90 ( .A(y_24), .Z(y[24]) );
  BUFM2R U91 ( .A(y_25), .Z(y[25]) );
  BUFM2R U92 ( .A(y_26), .Z(y[26]) );
  BUFM2R U93 ( .A(y_27), .Z(y[27]) );
  BUFM2R U94 ( .A(y_12), .Z(y[12]) );
  BUFM2R U95 ( .A(y_13), .Z(y[13]) );
  BUFM2R U96 ( .A(y_14), .Z(y[14]) );
  BUFM2R U97 ( .A(y_15), .Z(y[15]) );
  BUFM2R U98 ( .A(y_28), .Z(y[28]) );
  BUFM2R U99 ( .A(y_29), .Z(y[29]) );
  BUFM2R U100 ( .A(y_30), .Z(y[30]) );
  BUFM2R U101 ( .A(y_31), .Z(y[31]) );
  BUFM2R U102 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U103 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U104 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U105 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U106 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U107 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U108 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U109 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U110 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U111 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U112 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U113 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U114 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U115 ( .A(y_33), .Z(y[33]) );
  BUFM2R U116 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U117 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U118 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U119 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U120 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U121 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U122 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U123 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U124 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U125 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U126 ( .A(y_33), .Z(y[65]) );
  BUFM2R U127 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U128 ( .A(x[5]), .Z(y[69]) );
endmodule


module noninv_0 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U11 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U12 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U15 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_1 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U11 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U14 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U15 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U16 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U17 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U18 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module noninv_2 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U11 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U12 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U13 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U14 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U15 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_3 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U11 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U14 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U15 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U16 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U17 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U18 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U19 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U20 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U21 ( .A(y[5]), .Z(z[9]) );
endmodule


module noninv_4 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_5 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[1]), .Z(z[5]) );
endmodule


module noninv_6 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_7 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module pseudo_fib_0 ( p, s, q );
  input [127:0] p;
  input [127:0] s;
  output [127:0] q;

  wire   [127:0] p1;

  noninv_7 uut1 ( .y(p[15:0]), .z(p1[15:0]) );
  noninv_6 uut2 ( .y(p[31:16]), .z(p1[31:16]) );
  noninv_5 uut3 ( .y(p[47:32]), .z(p1[47:32]) );
  noninv_4 uut4 ( .y(p[63:48]), .z(p1[63:48]) );
  noninv_3 uut5 ( .y(p[79:64]), .z(p1[79:64]) );
  noninv_2 uut6 ( .y(p[95:80]), .z(p1[95:80]) );
  noninv_1 uut7 ( .y(p[111:96]), .z(p1[111:96]) );
  noninv_0 uut8 ( .y(p[127:112]), .z(p1[127:112]) );
  XOR2M2RA U1 ( .A(s[105]), .B(p1[73]), .Z(q[9]) );
  XOR2M2RA U6 ( .A(s[63]), .B(p1[31]), .Z(q[95]) );
  XOR2M2RA U7 ( .A(s[62]), .B(p1[30]), .Z(q[94]) );
  XOR2M2RA U8 ( .A(s[61]), .B(p1[29]), .Z(q[93]) );
  XOR2M2RA U9 ( .A(s[60]), .B(p1[28]), .Z(q[92]) );
  XOR2M2RA U10 ( .A(s[59]), .B(p1[27]), .Z(q[91]) );
  XOR2M2RA U11 ( .A(s[58]), .B(p1[26]), .Z(q[90]) );
  XOR2M2RA U12 ( .A(s[104]), .B(p1[72]), .Z(q[8]) );
  XOR2M2RA U13 ( .A(s[57]), .B(p1[25]), .Z(q[89]) );
  XOR2M2RA U14 ( .A(s[56]), .B(p1[24]), .Z(q[88]) );
  XOR2M2RA U15 ( .A(s[55]), .B(p1[23]), .Z(q[87]) );
  XOR2M2RA U16 ( .A(s[54]), .B(p1[22]), .Z(q[86]) );
  XOR2M2RA U17 ( .A(s[53]), .B(p1[21]), .Z(q[85]) );
  XOR2M2RA U18 ( .A(s[52]), .B(p1[20]), .Z(q[84]) );
  XOR2M2RA U23 ( .A(s[103]), .B(p1[71]), .Z(q[7]) );
  XOR2M2RA U24 ( .A(s[47]), .B(p1[15]), .Z(q[79]) );
  XOR2M2RA U25 ( .A(s[46]), .B(p1[14]), .Z(q[78]) );
  XOR2M2RA U26 ( .A(s[45]), .B(p1[13]), .Z(q[77]) );
  XOR2M2RA U27 ( .A(s[44]), .B(p1[12]), .Z(q[76]) );
  XOR2M2RA U28 ( .A(s[43]), .B(p1[11]), .Z(q[75]) );
  XOR2M2RA U29 ( .A(s[42]), .B(p1[10]), .Z(q[74]) );
  XOR2M2RA U30 ( .A(s[41]), .B(p1[9]), .Z(q[73]) );
  XOR2M2RA U31 ( .A(s[40]), .B(p1[8]), .Z(q[72]) );
  XOR2M2RA U32 ( .A(s[39]), .B(p1[7]), .Z(q[71]) );
  XOR2M2RA U33 ( .A(s[38]), .B(p1[6]), .Z(q[70]) );
  XOR2M2RA U34 ( .A(s[102]), .B(p1[70]), .Z(q[6]) );
  XOR2M2RA U35 ( .A(s[37]), .B(p1[5]), .Z(q[69]) );
  XOR2M2RA U36 ( .A(s[36]), .B(p1[4]), .Z(q[68]) );
  XOR2M2RA U41 ( .A(s[31]), .B(p1[127]), .Z(q[63]) );
  XOR2M2RA U42 ( .A(s[30]), .B(p1[126]), .Z(q[62]) );
  XOR2M2RA U43 ( .A(s[29]), .B(p1[125]), .Z(q[61]) );
  XOR2M2RA U44 ( .A(s[28]), .B(p1[124]), .Z(q[60]) );
  XOR2M2RA U45 ( .A(s[101]), .B(p1[69]), .Z(q[5]) );
  XOR2M2RA U46 ( .A(s[27]), .B(p1[123]), .Z(q[59]) );
  XOR2M2RA U47 ( .A(s[26]), .B(p1[122]), .Z(q[58]) );
  XOR2M2RA U48 ( .A(s[25]), .B(p1[121]), .Z(q[57]) );
  XOR2M2RA U49 ( .A(s[24]), .B(p1[120]), .Z(q[56]) );
  XOR2M2RA U50 ( .A(s[23]), .B(p1[119]), .Z(q[55]) );
  XOR2M2RA U51 ( .A(s[22]), .B(p1[118]), .Z(q[54]) );
  XOR2M2RA U52 ( .A(s[21]), .B(p1[117]), .Z(q[53]) );
  XOR2M2RA U53 ( .A(s[20]), .B(p1[116]), .Z(q[52]) );
  XOR2M2RA U56 ( .A(s[100]), .B(p1[68]), .Z(q[4]) );
  XOR2M2RA U59 ( .A(s[15]), .B(p1[111]), .Z(q[47]) );
  XOR2M2RA U60 ( .A(s[14]), .B(p1[110]), .Z(q[46]) );
  XOR2M2RA U61 ( .A(s[13]), .B(p1[109]), .Z(q[45]) );
  XOR2M2RA U62 ( .A(s[12]), .B(p1[108]), .Z(q[44]) );
  XOR2M2RA U63 ( .A(s[11]), .B(p1[107]), .Z(q[43]) );
  XOR2M2RA U64 ( .A(s[10]), .B(p1[106]), .Z(q[42]) );
  XOR2M2RA U65 ( .A(s[9]), .B(p1[105]), .Z(q[41]) );
  XOR2M2RA U66 ( .A(s[8]), .B(p1[104]), .Z(q[40]) );
  XOR2M2RA U68 ( .A(s[7]), .B(p1[103]), .Z(q[39]) );
  XOR2M2RA U69 ( .A(s[6]), .B(p1[102]), .Z(q[38]) );
  XOR2M2RA U70 ( .A(s[5]), .B(p1[101]), .Z(q[37]) );
  XOR2M2RA U71 ( .A(s[4]), .B(p1[100]), .Z(q[36]) );
  XOR2M2RA U76 ( .A(s[127]), .B(p1[95]), .Z(q[31]) );
  XOR2M2RA U77 ( .A(s[126]), .B(p1[94]), .Z(q[30]) );
  XOR2M2RA U79 ( .A(s[125]), .B(p1[93]), .Z(q[29]) );
  XOR2M2RA U80 ( .A(s[124]), .B(p1[92]), .Z(q[28]) );
  XOR2M2RA U81 ( .A(s[123]), .B(p1[91]), .Z(q[27]) );
  XOR2M2RA U82 ( .A(s[122]), .B(p1[90]), .Z(q[26]) );
  XOR2M2RA U83 ( .A(s[121]), .B(p1[89]), .Z(q[25]) );
  XOR2M2RA U84 ( .A(s[120]), .B(p1[88]), .Z(q[24]) );
  XOR2M2RA U85 ( .A(s[119]), .B(p1[87]), .Z(q[23]) );
  XOR2M2RA U86 ( .A(s[118]), .B(p1[86]), .Z(q[22]) );
  XOR2M2RA U87 ( .A(s[117]), .B(p1[85]), .Z(q[21]) );
  XOR2M2RA U88 ( .A(s[116]), .B(p1[84]), .Z(q[20]) );
  XOR2M2RA U94 ( .A(s[111]), .B(p1[79]), .Z(q[15]) );
  XOR2M2RA U95 ( .A(s[110]), .B(p1[78]), .Z(q[14]) );
  XOR2M2RA U96 ( .A(s[109]), .B(p1[77]), .Z(q[13]) );
  XOR2M2RA U97 ( .A(s[108]), .B(p1[76]), .Z(q[12]) );
  XOR2M2RA U98 ( .A(s[95]), .B(p1[63]), .Z(q[127]) );
  XOR2M2RA U99 ( .A(s[94]), .B(p1[62]), .Z(q[126]) );
  XOR2M2RA U100 ( .A(s[93]), .B(p1[61]), .Z(q[125]) );
  XOR2M2RA U101 ( .A(s[92]), .B(p1[60]), .Z(q[124]) );
  XOR2M2RA U102 ( .A(s[91]), .B(p1[59]), .Z(q[123]) );
  XOR2M2RA U103 ( .A(s[90]), .B(p1[58]), .Z(q[122]) );
  XOR2M2RA U104 ( .A(s[89]), .B(p1[57]), .Z(q[121]) );
  XOR2M2RA U105 ( .A(s[88]), .B(p1[56]), .Z(q[120]) );
  XOR2M2RA U106 ( .A(s[107]), .B(p1[75]), .Z(q[11]) );
  XOR2M2RA U107 ( .A(s[87]), .B(p1[55]), .Z(q[119]) );
  XOR2M2RA U108 ( .A(s[86]), .B(p1[54]), .Z(q[118]) );
  XOR2M2RA U109 ( .A(s[85]), .B(p1[53]), .Z(q[117]) );
  XOR2M2RA U110 ( .A(s[84]), .B(p1[52]), .Z(q[116]) );
  XOR2M2RA U115 ( .A(s[79]), .B(p1[47]), .Z(q[111]) );
  XOR2M2RA U116 ( .A(s[78]), .B(p1[46]), .Z(q[110]) );
  XOR2M2RA U117 ( .A(s[106]), .B(p1[74]), .Z(q[10]) );
  XOR2M2RA U118 ( .A(s[77]), .B(p1[45]), .Z(q[109]) );
  XOR2M2RA U119 ( .A(s[76]), .B(p1[44]), .Z(q[108]) );
  XOR2M2RA U120 ( .A(s[75]), .B(p1[43]), .Z(q[107]) );
  XOR2M2RA U121 ( .A(s[74]), .B(p1[42]), .Z(q[106]) );
  XOR2M2RA U122 ( .A(s[73]), .B(p1[41]), .Z(q[105]) );
  XOR2M2RA U123 ( .A(s[72]), .B(p1[40]), .Z(q[104]) );
  XOR2M2RA U124 ( .A(s[71]), .B(p1[39]), .Z(q[103]) );
  XOR2M2RA U125 ( .A(s[70]), .B(p1[38]), .Z(q[102]) );
  XOR2M2RA U126 ( .A(s[69]), .B(p1[37]), .Z(q[101]) );
  XOR2M2RA U127 ( .A(s[68]), .B(p1[36]), .Z(q[100]) );
  BUFM2R U2 ( .A(s[98]), .Z(q[2]) );
  BUFM2R U3 ( .A(s[1]), .Z(q[33]) );
  BUFM2R U4 ( .A(s[3]), .Z(q[35]) );
  BUFM2R U5 ( .A(s[17]), .Z(q[49]) );
  BUFM2R U19 ( .A(s[19]), .Z(q[51]) );
  BUFM2R U20 ( .A(s[18]), .Z(q[50]) );
  BUFM2R U21 ( .A(s[114]), .Z(q[18]) );
  BUFM2R U22 ( .A(s[16]), .Z(q[48]) );
  BUFM2R U37 ( .A(s[112]), .Z(q[16]) );
  BUFM2R U38 ( .A(s[2]), .Z(q[34]) );
  BUFM2R U39 ( .A(s[97]), .Z(q[1]) );
  BUFM2R U40 ( .A(s[113]), .Z(q[17]) );
  BUFM2R U54 ( .A(s[115]), .Z(q[19]) );
  BUFM2R U55 ( .A(s[99]), .Z(q[3]) );
  BUFM2R U57 ( .A(s[96]), .Z(q[0]) );
  BUFM2R U58 ( .A(s[64]), .Z(q[96]) );
  BUFM2R U67 ( .A(s[80]), .Z(q[112]) );
  BUFM2R U72 ( .A(s[82]), .Z(q[114]) );
  BUFM2R U73 ( .A(s[66]), .Z(q[98]) );
  BUFM2R U74 ( .A(s[48]), .Z(q[80]) );
  BUFM2R U75 ( .A(s[50]), .Z(q[82]) );
  BUFM2R U78 ( .A(s[35]), .Z(q[67]) );
  BUFM2R U89 ( .A(s[49]), .Z(q[81]) );
  BUFM2R U90 ( .A(s[51]), .Z(q[83]) );
  BUFM2R U91 ( .A(s[67]), .Z(q[99]) );
  BUFM2R U92 ( .A(s[81]), .Z(q[113]) );
  BUFM2R U93 ( .A(s[83]), .Z(q[115]) );
  BUFM2R U111 ( .A(s[65]), .Z(q[97]) );
  BUFM2R U112 ( .A(s[33]), .Z(q[65]) );
  BUFM2R U113 ( .A(s[0]), .Z(q[32]) );
  BUFM2R U114 ( .A(s[34]), .Z(q[66]) );
  BUFM2R U128 ( .A(s[32]), .Z(q[64]) );
endmodule


module compression_0 ( o, s, p );
  input [127:0] o;
  input [127:0] s;
  output [31:0] p;
  wire   o_66, o_64, o_62, o_60, o_58, o_56, o_54, o_52, o_50, o_48, o_46,
         o_44, o_42, o_40, o_38, o_36, o_34, o_32, o_30, o_28, o_26, o_24,
         o_22, o_20, o_18, o_16, o_14, o_12, o_10, o_8, o_6, s_124, s_122,
         s_120, s_118, s_116, s_114, s_112, s_110, s_108, s_106, s_104, s_102,
         s_100, s_98, s_96, s_94, s_92, s_90, s_88, s_86, s_84, s_82, s_80,
         s_78, s_76, s_74, s_72, s_70, s_68, s_66, s_64;
  assign o_66 = o[66];
  assign o_64 = o[64];
  assign o_62 = o[62];
  assign o_60 = o[60];
  assign o_58 = o[58];
  assign o_56 = o[56];
  assign o_54 = o[54];
  assign o_52 = o[52];
  assign o_50 = o[50];
  assign o_48 = o[48];
  assign o_46 = o[46];
  assign o_44 = o[44];
  assign o_42 = o[42];
  assign o_40 = o[40];
  assign o_38 = o[38];
  assign o_36 = o[36];
  assign o_34 = o[34];
  assign o_32 = o[32];
  assign o_30 = o[30];
  assign o_28 = o[28];
  assign o_26 = o[26];
  assign o_24 = o[24];
  assign o_22 = o[22];
  assign o_20 = o[20];
  assign o_18 = o[18];
  assign o_16 = o[16];
  assign o_14 = o[14];
  assign o_12 = o[12];
  assign o_10 = o[10];
  assign o_8 = o[8];
  assign o_6 = o[6];
  assign s_124 = s[124];
  assign s_122 = s[122];
  assign s_120 = s[120];
  assign s_118 = s[118];
  assign s_116 = s[116];
  assign s_114 = s[114];
  assign s_112 = s[112];
  assign s_110 = s[110];
  assign s_108 = s[108];
  assign s_106 = s[106];
  assign s_104 = s[104];
  assign s_102 = s[102];
  assign s_100 = s[100];
  assign s_98 = s[98];
  assign s_96 = s[96];
  assign s_94 = s[94];
  assign s_92 = s[92];
  assign s_90 = s[90];
  assign s_88 = s[88];
  assign s_86 = s[86];
  assign s_84 = s[84];
  assign s_82 = s[82];
  assign s_80 = s[80];
  assign s_78 = s[78];
  assign s_76 = s[76];
  assign s_74 = s[74];
  assign s_72 = s[72];
  assign s_70 = s[70];
  assign s_68 = s[68];
  assign s_66 = s[66];
  assign s_64 = s[64];

  XOR2M2RA U1 ( .A(s_82), .B(o_24), .Z(p[9]) );
  XOR2M2RA U2 ( .A(s_80), .B(o_22), .Z(p[8]) );
  XOR2M2RA U3 ( .A(s_78), .B(o_20), .Z(p[7]) );
  XOR2M2RA U4 ( .A(s_76), .B(o_18), .Z(p[6]) );
  XOR2M2RA U5 ( .A(s_74), .B(o_16), .Z(p[5]) );
  XOR2M2RA U6 ( .A(s_72), .B(o_14), .Z(p[4]) );
  XOR2M2RA U7 ( .A(s_70), .B(o_12), .Z(p[3]) );
  XOR2M2RA U8 ( .A(s[126]), .B(o[68]), .Z(p[31]) );
  XOR2M2RA U9 ( .A(s_124), .B(o_66), .Z(p[30]) );
  XOR2M2RA U10 ( .A(s_68), .B(o_10), .Z(p[2]) );
  XOR2M2RA U11 ( .A(s_122), .B(o_64), .Z(p[29]) );
  XOR2M2RA U12 ( .A(s_120), .B(o_62), .Z(p[28]) );
  XOR2M2RA U13 ( .A(s_118), .B(o_60), .Z(p[27]) );
  XOR2M2RA U14 ( .A(s_116), .B(o_58), .Z(p[26]) );
  XOR2M2RA U15 ( .A(s_114), .B(o_56), .Z(p[25]) );
  XOR2M2RA U16 ( .A(s_112), .B(o_54), .Z(p[24]) );
  XOR2M2RA U17 ( .A(s_110), .B(o_52), .Z(p[23]) );
  XOR2M2RA U18 ( .A(s_108), .B(o_50), .Z(p[22]) );
  XOR2M2RA U19 ( .A(s_106), .B(o_48), .Z(p[21]) );
  XOR2M2RA U20 ( .A(s_104), .B(o_46), .Z(p[20]) );
  XOR2M2RA U21 ( .A(s_66), .B(o_8), .Z(p[1]) );
  XOR2M2RA U22 ( .A(s_102), .B(o_44), .Z(p[19]) );
  XOR2M2RA U23 ( .A(s_100), .B(o_42), .Z(p[18]) );
  XOR2M2RA U24 ( .A(s_98), .B(o_40), .Z(p[17]) );
  XOR2M2RA U25 ( .A(s_96), .B(o_38), .Z(p[16]) );
  XOR2M2RA U26 ( .A(s_94), .B(o_36), .Z(p[15]) );
  XOR2M2RA U27 ( .A(s_92), .B(o_34), .Z(p[14]) );
  XOR2M2RA U28 ( .A(s_90), .B(o_32), .Z(p[13]) );
  XOR2M2RA U29 ( .A(s_88), .B(o_30), .Z(p[12]) );
  XOR2M2RA U30 ( .A(s_86), .B(o_28), .Z(p[11]) );
  XOR2M2RA U31 ( .A(s_84), .B(o_26), .Z(p[10]) );
  XOR2M2RA U32 ( .A(s_64), .B(o_6), .Z(p[0]) );
endmodule


module cm_0 ( a, s, b );
  input [31:0] a;
  input [31:0] s;
  output [31:0] b;

  wire   [127:0] a1;
  wire   [127:0] sd;
  wire   [127:0] b1;

  expansion_1 e1 ( .x(a), .y(a1) );
  expansion_0 e2 ( .x(s), .y(sd) );
  pseudo_fib_0 dut2 ( .p(a1), .s(sd), .q(b1) );
  compression_0 dut3 ( .o(b1), .s(sd), .p(b) );
endmodule


module expansion_2 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[16] = y_16;
  assign y[111] = y_15;
  assign y[110] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[10] = y_10;
  assign y[105] = y_9;
  assign y[8] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[4] = y_4;
  assign y[99] = y_3;
  assign y[2] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(y_28), .Z(y[28]) );
  BUFM2R U64 ( .A(y_20), .Z(y[20]) );
  BUFM2R U65 ( .A(y_26), .Z(y[26]) );
  BUFM2R U66 ( .A(y_18), .Z(y[18]) );
  BUFM2R U67 ( .A(y_12), .Z(y[12]) );
  BUFM2R U68 ( .A(y_24), .Z(y[24]) );
  BUFM2R U69 ( .A(y_30), .Z(y[30]) );
  BUFM2R U70 ( .A(y_14), .Z(y[14]) );
  BUFM2R U71 ( .A(y_6), .Z(y[6]) );
  BUFM2R U72 ( .A(y_22), .Z(y[22]) );
  BUFM2R U73 ( .A(y_2), .Z(y[98]) );
  BUFM2R U74 ( .A(y_16), .Z(y[112]) );
  BUFM2R U75 ( .A(y_8), .Z(y[104]) );
  BUFM2R U76 ( .A(y_4), .Z(y[100]) );
  BUFM2R U77 ( .A(y_10), .Z(y[106]) );
  BUFM2R U78 ( .A(y_1), .Z(y[1]) );
  BUFM2R U79 ( .A(y_17), .Z(y[17]) );
  BUFM2R U80 ( .A(y_19), .Z(y[19]) );
  BUFM2R U81 ( .A(y_3), .Z(y[3]) );
  BUFM2R U82 ( .A(y_9), .Z(y[9]) );
  BUFM2R U83 ( .A(y_11), .Z(y[11]) );
  BUFM2R U84 ( .A(y_15), .Z(y[15]) );
  BUFM2R U85 ( .A(y_25), .Z(y[25]) );
  BUFM2R U86 ( .A(y_31), .Z(y[31]) );
  BUFM2R U87 ( .A(y_5), .Z(y[5]) );
  BUFM2R U88 ( .A(y_7), .Z(y[7]) );
  BUFM2R U89 ( .A(y_13), .Z(y[13]) );
  BUFM2R U90 ( .A(y_21), .Z(y[21]) );
  BUFM2R U91 ( .A(y_23), .Z(y[23]) );
  BUFM2R U92 ( .A(y_27), .Z(y[27]) );
  BUFM2R U93 ( .A(y_29), .Z(y[29]) );
  BUFM2R U94 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U95 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U96 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U97 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U98 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U99 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U100 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U101 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U102 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U103 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U104 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U105 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U106 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U107 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U108 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U109 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U110 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U111 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U112 ( .A(y_33), .Z(y[65]) );
  BUFM2R U113 ( .A(y_33), .Z(y[33]) );
  BUFM2R U114 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U115 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U116 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U117 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U118 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U119 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U120 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U121 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U122 ( .A(x[5]), .Z(y[69]) );
  BUFM2R U123 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U124 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U125 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U126 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U127 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U128 ( .A(x[31]), .Z(y[95]) );
endmodule


module expansion_3 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[110] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[106] = y_10;
  assign y[105] = y_9;
  assign y[104] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[100] = y_4;
  assign y[99] = y_3;
  assign y[98] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U64 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U65 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U66 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U67 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U68 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U69 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U70 ( .A(x[31]), .Z(y[95]) );
  BUFM2R U71 ( .A(y_1), .Z(y[1]) );
  BUFM2R U72 ( .A(y_2), .Z(y[2]) );
  BUFM2R U73 ( .A(y_3), .Z(y[3]) );
  BUFM2R U74 ( .A(y_4), .Z(y[4]) );
  BUFM2R U75 ( .A(y_5), .Z(y[5]) );
  BUFM2R U76 ( .A(y_6), .Z(y[6]) );
  BUFM2R U77 ( .A(y_7), .Z(y[7]) );
  BUFM2R U78 ( .A(y_8), .Z(y[8]) );
  BUFM2R U79 ( .A(y_9), .Z(y[9]) );
  BUFM2R U80 ( .A(y_10), .Z(y[10]) );
  BUFM2R U81 ( .A(y_11), .Z(y[11]) );
  BUFM2R U82 ( .A(y_16), .Z(y[16]) );
  BUFM2R U83 ( .A(y_17), .Z(y[17]) );
  BUFM2R U84 ( .A(y_18), .Z(y[18]) );
  BUFM2R U85 ( .A(y_19), .Z(y[19]) );
  BUFM2R U86 ( .A(y_20), .Z(y[20]) );
  BUFM2R U87 ( .A(y_21), .Z(y[21]) );
  BUFM2R U88 ( .A(y_22), .Z(y[22]) );
  BUFM2R U89 ( .A(y_23), .Z(y[23]) );
  BUFM2R U90 ( .A(y_24), .Z(y[24]) );
  BUFM2R U91 ( .A(y_25), .Z(y[25]) );
  BUFM2R U92 ( .A(y_26), .Z(y[26]) );
  BUFM2R U93 ( .A(y_27), .Z(y[27]) );
  BUFM2R U94 ( .A(y_12), .Z(y[12]) );
  BUFM2R U95 ( .A(y_13), .Z(y[13]) );
  BUFM2R U96 ( .A(y_14), .Z(y[14]) );
  BUFM2R U97 ( .A(y_15), .Z(y[15]) );
  BUFM2R U98 ( .A(y_28), .Z(y[28]) );
  BUFM2R U99 ( .A(y_29), .Z(y[29]) );
  BUFM2R U100 ( .A(y_30), .Z(y[30]) );
  BUFM2R U101 ( .A(y_31), .Z(y[31]) );
  BUFM2R U102 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U103 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U104 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U105 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U106 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U107 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U108 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U109 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U110 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U111 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U112 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U113 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U114 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U115 ( .A(y_33), .Z(y[33]) );
  BUFM2R U116 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U117 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U118 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U119 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U120 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U121 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U122 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U123 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U124 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U125 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U126 ( .A(y_33), .Z(y[65]) );
  BUFM2R U127 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U128 ( .A(x[5]), .Z(y[69]) );
endmodule


module noninv_8 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U11 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U12 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U15 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_9 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U11 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U15 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U16 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U17 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U18 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module noninv_10 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U12 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U15 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_11 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U11 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U14 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U15 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U16 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U17 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U18 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U19 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U20 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U21 ( .A(y[5]), .Z(z[9]) );
endmodule


module noninv_12 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_13 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[1]), .Z(z[5]) );
endmodule


module noninv_14 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_15 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module pseudo_fib_1 ( p, s, q );
  input [127:0] p;
  input [127:0] s;
  output [127:0] q;

  wire   [127:0] p1;

  noninv_15 uut1 ( .y(p[15:0]), .z(p1[15:0]) );
  noninv_14 uut2 ( .y(p[31:16]), .z(p1[31:16]) );
  noninv_13 uut3 ( .y(p[47:32]), .z(p1[47:32]) );
  noninv_12 uut4 ( .y(p[63:48]), .z(p1[63:48]) );
  noninv_11 uut5 ( .y(p[79:64]), .z(p1[79:64]) );
  noninv_10 uut6 ( .y(p[95:80]), .z(p1[95:80]) );
  noninv_9 uut7 ( .y(p[111:96]), .z(p1[111:96]) );
  noninv_8 uut8 ( .y(p[127:112]), .z(p1[127:112]) );
  XOR2M2RA U1 ( .A(s[105]), .B(p1[73]), .Z(q[9]) );
  XOR2M2RA U6 ( .A(s[63]), .B(p1[31]), .Z(q[95]) );
  XOR2M2RA U7 ( .A(s[62]), .B(p1[30]), .Z(q[94]) );
  XOR2M2RA U8 ( .A(s[61]), .B(p1[29]), .Z(q[93]) );
  XOR2M2RA U9 ( .A(s[60]), .B(p1[28]), .Z(q[92]) );
  XOR2M2RA U10 ( .A(s[59]), .B(p1[27]), .Z(q[91]) );
  XOR2M2RA U11 ( .A(s[58]), .B(p1[26]), .Z(q[90]) );
  XOR2M2RA U12 ( .A(s[104]), .B(p1[72]), .Z(q[8]) );
  XOR2M2RA U13 ( .A(s[57]), .B(p1[25]), .Z(q[89]) );
  XOR2M2RA U14 ( .A(s[56]), .B(p1[24]), .Z(q[88]) );
  XOR2M2RA U15 ( .A(s[55]), .B(p1[23]), .Z(q[87]) );
  XOR2M2RA U16 ( .A(s[54]), .B(p1[22]), .Z(q[86]) );
  XOR2M2RA U17 ( .A(s[53]), .B(p1[21]), .Z(q[85]) );
  XOR2M2RA U18 ( .A(s[52]), .B(p1[20]), .Z(q[84]) );
  XOR2M2RA U23 ( .A(s[103]), .B(p1[71]), .Z(q[7]) );
  XOR2M2RA U24 ( .A(s[47]), .B(p1[15]), .Z(q[79]) );
  XOR2M2RA U25 ( .A(s[46]), .B(p1[14]), .Z(q[78]) );
  XOR2M2RA U26 ( .A(s[45]), .B(p1[13]), .Z(q[77]) );
  XOR2M2RA U27 ( .A(s[44]), .B(p1[12]), .Z(q[76]) );
  XOR2M2RA U28 ( .A(s[43]), .B(p1[11]), .Z(q[75]) );
  XOR2M2RA U29 ( .A(s[42]), .B(p1[10]), .Z(q[74]) );
  XOR2M2RA U30 ( .A(s[41]), .B(p1[9]), .Z(q[73]) );
  XOR2M2RA U31 ( .A(s[40]), .B(p1[8]), .Z(q[72]) );
  XOR2M2RA U32 ( .A(s[39]), .B(p1[7]), .Z(q[71]) );
  XOR2M2RA U33 ( .A(s[38]), .B(p1[6]), .Z(q[70]) );
  XOR2M2RA U34 ( .A(s[102]), .B(p1[70]), .Z(q[6]) );
  XOR2M2RA U35 ( .A(s[37]), .B(p1[5]), .Z(q[69]) );
  XOR2M2RA U36 ( .A(s[36]), .B(p1[4]), .Z(q[68]) );
  XOR2M2RA U41 ( .A(s[31]), .B(p1[127]), .Z(q[63]) );
  XOR2M2RA U42 ( .A(s[30]), .B(p1[126]), .Z(q[62]) );
  XOR2M2RA U43 ( .A(s[29]), .B(p1[125]), .Z(q[61]) );
  XOR2M2RA U44 ( .A(s[28]), .B(p1[124]), .Z(q[60]) );
  XOR2M2RA U45 ( .A(s[101]), .B(p1[69]), .Z(q[5]) );
  XOR2M2RA U46 ( .A(s[27]), .B(p1[123]), .Z(q[59]) );
  XOR2M2RA U47 ( .A(s[26]), .B(p1[122]), .Z(q[58]) );
  XOR2M2RA U48 ( .A(s[25]), .B(p1[121]), .Z(q[57]) );
  XOR2M2RA U49 ( .A(s[24]), .B(p1[120]), .Z(q[56]) );
  XOR2M2RA U50 ( .A(s[23]), .B(p1[119]), .Z(q[55]) );
  XOR2M2RA U51 ( .A(s[22]), .B(p1[118]), .Z(q[54]) );
  XOR2M2RA U52 ( .A(s[21]), .B(p1[117]), .Z(q[53]) );
  XOR2M2RA U53 ( .A(s[20]), .B(p1[116]), .Z(q[52]) );
  XOR2M2RA U56 ( .A(s[100]), .B(p1[68]), .Z(q[4]) );
  XOR2M2RA U59 ( .A(s[15]), .B(p1[111]), .Z(q[47]) );
  XOR2M2RA U60 ( .A(s[14]), .B(p1[110]), .Z(q[46]) );
  XOR2M2RA U61 ( .A(s[13]), .B(p1[109]), .Z(q[45]) );
  XOR2M2RA U62 ( .A(s[12]), .B(p1[108]), .Z(q[44]) );
  XOR2M2RA U63 ( .A(s[11]), .B(p1[107]), .Z(q[43]) );
  XOR2M2RA U64 ( .A(s[10]), .B(p1[106]), .Z(q[42]) );
  XOR2M2RA U65 ( .A(s[9]), .B(p1[105]), .Z(q[41]) );
  XOR2M2RA U66 ( .A(s[8]), .B(p1[104]), .Z(q[40]) );
  XOR2M2RA U68 ( .A(s[7]), .B(p1[103]), .Z(q[39]) );
  XOR2M2RA U69 ( .A(s[6]), .B(p1[102]), .Z(q[38]) );
  XOR2M2RA U70 ( .A(s[5]), .B(p1[101]), .Z(q[37]) );
  XOR2M2RA U71 ( .A(s[4]), .B(p1[100]), .Z(q[36]) );
  XOR2M2RA U76 ( .A(s[127]), .B(p1[95]), .Z(q[31]) );
  XOR2M2RA U77 ( .A(s[126]), .B(p1[94]), .Z(q[30]) );
  XOR2M2RA U79 ( .A(s[125]), .B(p1[93]), .Z(q[29]) );
  XOR2M2RA U80 ( .A(s[124]), .B(p1[92]), .Z(q[28]) );
  XOR2M2RA U81 ( .A(s[123]), .B(p1[91]), .Z(q[27]) );
  XOR2M2RA U82 ( .A(s[122]), .B(p1[90]), .Z(q[26]) );
  XOR2M2RA U83 ( .A(s[121]), .B(p1[89]), .Z(q[25]) );
  XOR2M2RA U84 ( .A(s[120]), .B(p1[88]), .Z(q[24]) );
  XOR2M2RA U85 ( .A(s[119]), .B(p1[87]), .Z(q[23]) );
  XOR2M2RA U86 ( .A(s[118]), .B(p1[86]), .Z(q[22]) );
  XOR2M2RA U87 ( .A(s[117]), .B(p1[85]), .Z(q[21]) );
  XOR2M2RA U88 ( .A(s[116]), .B(p1[84]), .Z(q[20]) );
  XOR2M2RA U94 ( .A(s[111]), .B(p1[79]), .Z(q[15]) );
  XOR2M2RA U95 ( .A(s[110]), .B(p1[78]), .Z(q[14]) );
  XOR2M2RA U96 ( .A(s[109]), .B(p1[77]), .Z(q[13]) );
  XOR2M2RA U97 ( .A(s[108]), .B(p1[76]), .Z(q[12]) );
  XOR2M2RA U98 ( .A(s[95]), .B(p1[63]), .Z(q[127]) );
  XOR2M2RA U99 ( .A(s[94]), .B(p1[62]), .Z(q[126]) );
  XOR2M2RA U100 ( .A(s[93]), .B(p1[61]), .Z(q[125]) );
  XOR2M2RA U101 ( .A(s[92]), .B(p1[60]), .Z(q[124]) );
  XOR2M2RA U102 ( .A(s[91]), .B(p1[59]), .Z(q[123]) );
  XOR2M2RA U103 ( .A(s[90]), .B(p1[58]), .Z(q[122]) );
  XOR2M2RA U104 ( .A(s[89]), .B(p1[57]), .Z(q[121]) );
  XOR2M2RA U105 ( .A(s[88]), .B(p1[56]), .Z(q[120]) );
  XOR2M2RA U106 ( .A(s[107]), .B(p1[75]), .Z(q[11]) );
  XOR2M2RA U107 ( .A(s[87]), .B(p1[55]), .Z(q[119]) );
  XOR2M2RA U108 ( .A(s[86]), .B(p1[54]), .Z(q[118]) );
  XOR2M2RA U109 ( .A(s[85]), .B(p1[53]), .Z(q[117]) );
  XOR2M2RA U110 ( .A(s[84]), .B(p1[52]), .Z(q[116]) );
  XOR2M2RA U115 ( .A(s[79]), .B(p1[47]), .Z(q[111]) );
  XOR2M2RA U116 ( .A(s[78]), .B(p1[46]), .Z(q[110]) );
  XOR2M2RA U117 ( .A(s[106]), .B(p1[74]), .Z(q[10]) );
  XOR2M2RA U118 ( .A(s[77]), .B(p1[45]), .Z(q[109]) );
  XOR2M2RA U119 ( .A(s[76]), .B(p1[44]), .Z(q[108]) );
  XOR2M2RA U120 ( .A(s[75]), .B(p1[43]), .Z(q[107]) );
  XOR2M2RA U121 ( .A(s[74]), .B(p1[42]), .Z(q[106]) );
  XOR2M2RA U122 ( .A(s[73]), .B(p1[41]), .Z(q[105]) );
  XOR2M2RA U123 ( .A(s[72]), .B(p1[40]), .Z(q[104]) );
  XOR2M2RA U124 ( .A(s[71]), .B(p1[39]), .Z(q[103]) );
  XOR2M2RA U125 ( .A(s[70]), .B(p1[38]), .Z(q[102]) );
  XOR2M2RA U126 ( .A(s[69]), .B(p1[37]), .Z(q[101]) );
  XOR2M2RA U127 ( .A(s[68]), .B(p1[36]), .Z(q[100]) );
  BUFM2R U2 ( .A(s[98]), .Z(q[2]) );
  BUFM2R U3 ( .A(s[1]), .Z(q[33]) );
  BUFM2R U4 ( .A(s[3]), .Z(q[35]) );
  BUFM2R U5 ( .A(s[17]), .Z(q[49]) );
  BUFM2R U19 ( .A(s[19]), .Z(q[51]) );
  BUFM2R U20 ( .A(s[18]), .Z(q[50]) );
  BUFM2R U21 ( .A(s[114]), .Z(q[18]) );
  BUFM2R U22 ( .A(s[112]), .Z(q[16]) );
  BUFM2R U37 ( .A(s[16]), .Z(q[48]) );
  BUFM2R U38 ( .A(s[2]), .Z(q[34]) );
  BUFM2R U39 ( .A(s[97]), .Z(q[1]) );
  BUFM2R U40 ( .A(s[113]), .Z(q[17]) );
  BUFM2R U54 ( .A(s[115]), .Z(q[19]) );
  BUFM2R U55 ( .A(s[99]), .Z(q[3]) );
  BUFM2R U57 ( .A(s[35]), .Z(q[67]) );
  BUFM2R U58 ( .A(s[48]), .Z(q[80]) );
  BUFM2R U67 ( .A(s[50]), .Z(q[82]) );
  BUFM2R U72 ( .A(s[49]), .Z(q[81]) );
  BUFM2R U73 ( .A(s[51]), .Z(q[83]) );
  BUFM2R U74 ( .A(s[96]), .Z(q[0]) );
  BUFM2R U75 ( .A(s[64]), .Z(q[96]) );
  BUFM2R U78 ( .A(s[80]), .Z(q[112]) );
  BUFM2R U89 ( .A(s[82]), .Z(q[114]) );
  BUFM2R U90 ( .A(s[67]), .Z(q[99]) );
  BUFM2R U91 ( .A(s[65]), .Z(q[97]) );
  BUFM2R U92 ( .A(s[33]), .Z(q[65]) );
  BUFM2R U93 ( .A(s[66]), .Z(q[98]) );
  BUFM2R U111 ( .A(s[81]), .Z(q[113]) );
  BUFM2R U112 ( .A(s[83]), .Z(q[115]) );
  BUFM2R U113 ( .A(s[32]), .Z(q[64]) );
  BUFM2R U114 ( .A(s[34]), .Z(q[66]) );
  BUFM2R U128 ( .A(s[0]), .Z(q[32]) );
endmodule


module compression_1 ( o, s, p );
  input [127:0] o;
  input [127:0] s;
  output [31:0] p;
  wire   o_66, o_64, o_62, o_60, o_58, o_56, o_54, o_52, o_50, o_48, o_46,
         o_44, o_42, o_40, o_38, o_36, o_34, o_32, o_30, o_28, o_26, o_24,
         o_22, o_20, o_18, o_16, o_14, o_12, o_10, o_8, o_6, s_124, s_122,
         s_120, s_118, s_116, s_114, s_112, s_110, s_108, s_106, s_104, s_102,
         s_100, s_98, s_96, s_94, s_92, s_90, s_88, s_86, s_84, s_82, s_80,
         s_78, s_76, s_74, s_72, s_70, s_68, s_66, s_64;
  assign o_66 = o[66];
  assign o_64 = o[64];
  assign o_62 = o[62];
  assign o_60 = o[60];
  assign o_58 = o[58];
  assign o_56 = o[56];
  assign o_54 = o[54];
  assign o_52 = o[52];
  assign o_50 = o[50];
  assign o_48 = o[48];
  assign o_46 = o[46];
  assign o_44 = o[44];
  assign o_42 = o[42];
  assign o_40 = o[40];
  assign o_38 = o[38];
  assign o_36 = o[36];
  assign o_34 = o[34];
  assign o_32 = o[32];
  assign o_30 = o[30];
  assign o_28 = o[28];
  assign o_26 = o[26];
  assign o_24 = o[24];
  assign o_22 = o[22];
  assign o_20 = o[20];
  assign o_18 = o[18];
  assign o_16 = o[16];
  assign o_14 = o[14];
  assign o_12 = o[12];
  assign o_10 = o[10];
  assign o_8 = o[8];
  assign o_6 = o[6];
  assign s_124 = s[124];
  assign s_122 = s[122];
  assign s_120 = s[120];
  assign s_118 = s[118];
  assign s_116 = s[116];
  assign s_114 = s[114];
  assign s_112 = s[112];
  assign s_110 = s[110];
  assign s_108 = s[108];
  assign s_106 = s[106];
  assign s_104 = s[104];
  assign s_102 = s[102];
  assign s_100 = s[100];
  assign s_98 = s[98];
  assign s_96 = s[96];
  assign s_94 = s[94];
  assign s_92 = s[92];
  assign s_90 = s[90];
  assign s_88 = s[88];
  assign s_86 = s[86];
  assign s_84 = s[84];
  assign s_82 = s[82];
  assign s_80 = s[80];
  assign s_78 = s[78];
  assign s_76 = s[76];
  assign s_74 = s[74];
  assign s_72 = s[72];
  assign s_70 = s[70];
  assign s_68 = s[68];
  assign s_66 = s[66];
  assign s_64 = s[64];

  XOR2M2RA U1 ( .A(s_82), .B(o_24), .Z(p[9]) );
  XOR2M2RA U2 ( .A(s_80), .B(o_22), .Z(p[8]) );
  XOR2M2RA U3 ( .A(s_78), .B(o_20), .Z(p[7]) );
  XOR2M2RA U4 ( .A(s_76), .B(o_18), .Z(p[6]) );
  XOR2M2RA U5 ( .A(s_74), .B(o_16), .Z(p[5]) );
  XOR2M2RA U6 ( .A(s_72), .B(o_14), .Z(p[4]) );
  XOR2M2RA U7 ( .A(s_70), .B(o_12), .Z(p[3]) );
  XOR2M2RA U8 ( .A(s[126]), .B(o[68]), .Z(p[31]) );
  XOR2M2RA U9 ( .A(s_124), .B(o_66), .Z(p[30]) );
  XOR2M2RA U10 ( .A(s_68), .B(o_10), .Z(p[2]) );
  XOR2M2RA U11 ( .A(s_122), .B(o_64), .Z(p[29]) );
  XOR2M2RA U12 ( .A(s_120), .B(o_62), .Z(p[28]) );
  XOR2M2RA U13 ( .A(s_118), .B(o_60), .Z(p[27]) );
  XOR2M2RA U14 ( .A(s_116), .B(o_58), .Z(p[26]) );
  XOR2M2RA U15 ( .A(s_114), .B(o_56), .Z(p[25]) );
  XOR2M2RA U16 ( .A(s_112), .B(o_54), .Z(p[24]) );
  XOR2M2RA U17 ( .A(s_110), .B(o_52), .Z(p[23]) );
  XOR2M2RA U18 ( .A(s_108), .B(o_50), .Z(p[22]) );
  XOR2M2RA U19 ( .A(s_106), .B(o_48), .Z(p[21]) );
  XOR2M2RA U20 ( .A(s_104), .B(o_46), .Z(p[20]) );
  XOR2M2RA U21 ( .A(s_66), .B(o_8), .Z(p[1]) );
  XOR2M2RA U22 ( .A(s_102), .B(o_44), .Z(p[19]) );
  XOR2M2RA U23 ( .A(s_100), .B(o_42), .Z(p[18]) );
  XOR2M2RA U24 ( .A(s_98), .B(o_40), .Z(p[17]) );
  XOR2M2RA U25 ( .A(s_96), .B(o_38), .Z(p[16]) );
  XOR2M2RA U26 ( .A(s_94), .B(o_36), .Z(p[15]) );
  XOR2M2RA U27 ( .A(s_92), .B(o_34), .Z(p[14]) );
  XOR2M2RA U28 ( .A(s_90), .B(o_32), .Z(p[13]) );
  XOR2M2RA U29 ( .A(s_88), .B(o_30), .Z(p[12]) );
  XOR2M2RA U30 ( .A(s_86), .B(o_28), .Z(p[11]) );
  XOR2M2RA U31 ( .A(s_84), .B(o_26), .Z(p[10]) );
  XOR2M2RA U32 ( .A(s_64), .B(o_6), .Z(p[0]) );
endmodule


module cm_1 ( a, s, b );
  input [31:0] a;
  input [31:0] s;
  output [31:0] b;

  wire   [127:0] a1;
  wire   [127:0] sd;
  wire   [127:0] b1;

  expansion_3 e1 ( .x(a), .y(a1) );
  expansion_2 e2 ( .x(s), .y(sd) );
  pseudo_fib_1 dut2 ( .p(a1), .s(sd), .q(b1) );
  compression_1 dut3 ( .o(b1), .s(sd), .p(b) );
endmodule


module expansion_4 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[26] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[20] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[14] = y_14;
  assign y[109] = y_13;
  assign y[12] = y_12;
  assign y[107] = y_11;
  assign y[10] = y_10;
  assign y[105] = y_9;
  assign y[8] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[4] = y_4;
  assign y[99] = y_3;
  assign y[2] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(y_24), .Z(y[24]) );
  BUFM2R U64 ( .A(y_28), .Z(y[28]) );
  BUFM2R U65 ( .A(y_22), .Z(y[22]) );
  BUFM2R U66 ( .A(y_30), .Z(y[30]) );
  BUFM2R U67 ( .A(y_18), .Z(y[18]) );
  BUFM2R U68 ( .A(y_16), .Z(y[16]) );
  BUFM2R U69 ( .A(y_6), .Z(y[6]) );
  BUFM2R U70 ( .A(y_2), .Z(y[98]) );
  BUFM2R U71 ( .A(y_20), .Z(y[116]) );
  BUFM2R U72 ( .A(y_14), .Z(y[110]) );
  BUFM2R U73 ( .A(y_26), .Z(y[122]) );
  BUFM2R U74 ( .A(y_12), .Z(y[108]) );
  BUFM2R U75 ( .A(y_10), .Z(y[106]) );
  BUFM2R U76 ( .A(y_8), .Z(y[104]) );
  BUFM2R U77 ( .A(y_4), .Z(y[100]) );
  BUFM2R U78 ( .A(y_1), .Z(y[1]) );
  BUFM2R U79 ( .A(y_17), .Z(y[17]) );
  BUFM2R U80 ( .A(y_19), .Z(y[19]) );
  BUFM2R U81 ( .A(y_3), .Z(y[3]) );
  BUFM2R U82 ( .A(y_7), .Z(y[7]) );
  BUFM2R U83 ( .A(y_11), .Z(y[11]) );
  BUFM2R U84 ( .A(y_15), .Z(y[15]) );
  BUFM2R U85 ( .A(y_21), .Z(y[21]) );
  BUFM2R U86 ( .A(y_25), .Z(y[25]) );
  BUFM2R U87 ( .A(y_27), .Z(y[27]) );
  BUFM2R U88 ( .A(y_31), .Z(y[31]) );
  BUFM2R U89 ( .A(y_5), .Z(y[5]) );
  BUFM2R U90 ( .A(y_9), .Z(y[9]) );
  BUFM2R U91 ( .A(y_13), .Z(y[13]) );
  BUFM2R U92 ( .A(y_23), .Z(y[23]) );
  BUFM2R U93 ( .A(y_29), .Z(y[29]) );
  BUFM2R U94 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U95 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U96 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U97 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U98 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U99 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U100 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U101 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U102 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U103 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U104 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U105 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U106 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U107 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U108 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U109 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U110 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U111 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U112 ( .A(y_33), .Z(y[65]) );
  BUFM2R U113 ( .A(y_33), .Z(y[33]) );
  BUFM2R U114 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U115 ( .A(x[5]), .Z(y[69]) );
  BUFM2R U116 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U117 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U118 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U119 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U120 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U121 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U122 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U123 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U124 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U125 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U126 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U127 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U128 ( .A(x[31]), .Z(y[95]) );
endmodule


module expansion_5 ( x, y );
  input [31:0] x;
  output [127:0] y;
  wire   y_63, y_62, y_61, y_60, y_59, y_58, y_57, y_56, y_55, y_54, y_53,
         y_52, y_51, y_50, y_49, y_48, y_47, y_46, y_45, y_44, y_43, y_42,
         y_41, y_40, y_39, y_38, y_37, y_36, y_35, y_34, y_33, y_32, y_31,
         y_30, y_29, y_28, y_27, y_26, y_25, y_24, y_23, y_22, y_21, y_20,
         y_19, y_18, y_17, y_16, y_15, y_14, y_13, y_12, y_11, y_10, y_9, y_8,
         y_7, y_6, y_5, y_4, y_3, y_2, y_1;
  assign y[63] = y_63;
  assign y[62] = y_62;
  assign y[61] = y_61;
  assign y[60] = y_60;
  assign y[59] = y_59;
  assign y[58] = y_58;
  assign y[57] = y_57;
  assign y[56] = y_56;
  assign y[55] = y_55;
  assign y[54] = y_54;
  assign y[53] = y_53;
  assign y[52] = y_52;
  assign y[51] = y_51;
  assign y[50] = y_50;
  assign y[49] = y_49;
  assign y[48] = y_48;
  assign y[47] = y_47;
  assign y[46] = y_46;
  assign y[45] = y_45;
  assign y[44] = y_44;
  assign y[43] = y_43;
  assign y[42] = y_42;
  assign y[41] = y_41;
  assign y[40] = y_40;
  assign y[39] = y_39;
  assign y[38] = y_38;
  assign y[37] = y_37;
  assign y[36] = y_36;
  assign y[35] = y_35;
  assign y[34] = y_34;
  assign y_33 = x[1];
  assign y[32] = y_32;
  assign y[127] = y_31;
  assign y[126] = y_30;
  assign y[125] = y_29;
  assign y[124] = y_28;
  assign y[123] = y_27;
  assign y[122] = y_26;
  assign y[121] = y_25;
  assign y[120] = y_24;
  assign y[119] = y_23;
  assign y[118] = y_22;
  assign y[117] = y_21;
  assign y[116] = y_20;
  assign y[115] = y_19;
  assign y[114] = y_18;
  assign y[113] = y_17;
  assign y[112] = y_16;
  assign y[111] = y_15;
  assign y[110] = y_14;
  assign y[109] = y_13;
  assign y[108] = y_12;
  assign y[107] = y_11;
  assign y[106] = y_10;
  assign y[105] = y_9;
  assign y[104] = y_8;
  assign y[103] = y_7;
  assign y[102] = y_6;
  assign y[101] = y_5;
  assign y[100] = y_4;
  assign y[99] = y_3;
  assign y[98] = y_2;
  assign y[97] = y_1;

  XOR2M2RA U1 ( .A(x[31]), .B(x[29]), .Z(y_63) );
  XOR2M2RA U2 ( .A(x[30]), .B(x[28]), .Z(y_62) );
  XOR2M2RA U3 ( .A(x[29]), .B(x[27]), .Z(y_61) );
  XOR2M2RA U4 ( .A(x[28]), .B(x[26]), .Z(y_60) );
  XOR2M2RA U5 ( .A(x[27]), .B(x[25]), .Z(y_59) );
  XOR2M2RA U6 ( .A(x[26]), .B(x[24]), .Z(y_58) );
  XOR2M2RA U7 ( .A(x[25]), .B(x[23]), .Z(y_57) );
  XOR2M2RA U8 ( .A(x[24]), .B(x[22]), .Z(y_56) );
  XOR2M2RA U9 ( .A(x[23]), .B(x[21]), .Z(y_55) );
  XOR2M2RA U10 ( .A(x[22]), .B(x[20]), .Z(y_54) );
  XOR2M2RA U11 ( .A(x[21]), .B(x[19]), .Z(y_53) );
  XOR2M2RA U12 ( .A(x[20]), .B(x[18]), .Z(y_52) );
  XOR2M2RA U13 ( .A(x[19]), .B(x[17]), .Z(y_51) );
  XOR2M2RA U14 ( .A(x[18]), .B(x[16]), .Z(y_50) );
  XOR2M2RA U15 ( .A(x[17]), .B(x[15]), .Z(y_49) );
  XOR2M2RA U16 ( .A(x[16]), .B(x[14]), .Z(y_48) );
  XOR2M2RA U17 ( .A(x[15]), .B(x[13]), .Z(y_47) );
  XOR2M2RA U18 ( .A(x[14]), .B(x[12]), .Z(y_46) );
  XOR2M2RA U19 ( .A(x[13]), .B(x[11]), .Z(y_45) );
  XOR2M2RA U20 ( .A(x[12]), .B(x[10]), .Z(y_44) );
  XOR2M2RA U21 ( .A(x[11]), .B(x[9]), .Z(y_43) );
  XOR2M2RA U22 ( .A(x[10]), .B(x[8]), .Z(y_42) );
  XOR2M2RA U23 ( .A(x[9]), .B(x[7]), .Z(y_41) );
  XOR2M2RA U24 ( .A(x[8]), .B(x[6]), .Z(y_40) );
  XOR2M2RA U25 ( .A(x[7]), .B(x[5]), .Z(y_39) );
  XOR2M2RA U26 ( .A(x[6]), .B(x[4]), .Z(y_38) );
  XOR2M2RA U27 ( .A(x[5]), .B(x[3]), .Z(y_37) );
  XOR2M2RA U28 ( .A(x[4]), .B(x[2]), .Z(y_36) );
  XOR2M2RA U29 ( .A(x[3]), .B(y_33), .Z(y_35) );
  XOR2M2RA U30 ( .A(x[0]), .B(x[2]), .Z(y_34) );
  XOR2M2RA U31 ( .A(x[0]), .B(x[31]), .Z(y_32) );
  XOR2M2RA U32 ( .A(x[2]), .B(x[3]), .Z(y_3) );
  XOR2M2RA U33 ( .A(y_33), .B(x[2]), .Z(y_2) );
  XOR2M2RA U34 ( .A(x[0]), .B(y_33), .Z(y_1) );
  XOR2M2RA U35 ( .A(x[30]), .B(x[31]), .Z(y_31) );
  XOR2M2RA U36 ( .A(x[30]), .B(x[29]), .Z(y_30) );
  XOR2M2RA U37 ( .A(x[28]), .B(x[29]), .Z(y_29) );
  XOR2M2RA U38 ( .A(x[27]), .B(x[28]), .Z(y_28) );
  XOR2M2RA U39 ( .A(x[26]), .B(x[27]), .Z(y_27) );
  XOR2M2RA U40 ( .A(x[25]), .B(x[26]), .Z(y_26) );
  XOR2M2RA U41 ( .A(x[24]), .B(x[25]), .Z(y_25) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[24]), .Z(y_24) );
  XOR2M2RA U43 ( .A(x[22]), .B(x[23]), .Z(y_23) );
  XOR2M2RA U44 ( .A(x[21]), .B(x[22]), .Z(y_22) );
  XOR2M2RA U45 ( .A(x[20]), .B(x[21]), .Z(y_21) );
  XOR2M2RA U46 ( .A(x[19]), .B(x[20]), .Z(y_20) );
  XOR2M2RA U47 ( .A(x[18]), .B(x[19]), .Z(y_19) );
  XOR2M2RA U48 ( .A(x[17]), .B(x[18]), .Z(y_18) );
  XOR2M2RA U49 ( .A(x[16]), .B(x[17]), .Z(y_17) );
  XOR2M2RA U50 ( .A(x[15]), .B(x[16]), .Z(y_16) );
  XOR2M2RA U51 ( .A(x[14]), .B(x[15]), .Z(y_15) );
  XOR2M2RA U52 ( .A(x[13]), .B(x[14]), .Z(y_14) );
  XOR2M2RA U53 ( .A(x[12]), .B(x[13]), .Z(y_13) );
  XOR2M2RA U54 ( .A(x[11]), .B(x[12]), .Z(y_12) );
  XOR2M2RA U55 ( .A(x[10]), .B(x[11]), .Z(y_11) );
  XOR2M2RA U56 ( .A(x[9]), .B(x[10]), .Z(y_10) );
  XOR2M2RA U57 ( .A(x[8]), .B(x[9]), .Z(y_9) );
  XOR2M2RA U58 ( .A(x[7]), .B(x[8]), .Z(y_8) );
  XOR2M2RA U59 ( .A(x[6]), .B(x[7]), .Z(y_7) );
  XOR2M2RA U60 ( .A(x[5]), .B(x[6]), .Z(y_6) );
  XOR2M2RA U61 ( .A(x[4]), .B(x[5]), .Z(y_5) );
  XOR2M2RA U62 ( .A(x[3]), .B(x[4]), .Z(y_4) );
  BUFM2R U63 ( .A(x[12]), .Z(y[76]) );
  BUFM2R U64 ( .A(x[13]), .Z(y[77]) );
  BUFM2R U65 ( .A(x[14]), .Z(y[78]) );
  BUFM2R U66 ( .A(x[15]), .Z(y[79]) );
  BUFM2R U67 ( .A(x[28]), .Z(y[92]) );
  BUFM2R U68 ( .A(x[29]), .Z(y[93]) );
  BUFM2R U69 ( .A(x[30]), .Z(y[94]) );
  BUFM2R U70 ( .A(x[31]), .Z(y[95]) );
  BUFM2R U71 ( .A(y_1), .Z(y[1]) );
  BUFM2R U72 ( .A(y_2), .Z(y[2]) );
  BUFM2R U73 ( .A(y_3), .Z(y[3]) );
  BUFM2R U74 ( .A(y_4), .Z(y[4]) );
  BUFM2R U75 ( .A(y_5), .Z(y[5]) );
  BUFM2R U76 ( .A(y_6), .Z(y[6]) );
  BUFM2R U77 ( .A(y_7), .Z(y[7]) );
  BUFM2R U78 ( .A(y_8), .Z(y[8]) );
  BUFM2R U79 ( .A(y_9), .Z(y[9]) );
  BUFM2R U80 ( .A(y_10), .Z(y[10]) );
  BUFM2R U81 ( .A(y_11), .Z(y[11]) );
  BUFM2R U82 ( .A(y_16), .Z(y[16]) );
  BUFM2R U83 ( .A(y_17), .Z(y[17]) );
  BUFM2R U84 ( .A(y_18), .Z(y[18]) );
  BUFM2R U85 ( .A(y_19), .Z(y[19]) );
  BUFM2R U86 ( .A(y_20), .Z(y[20]) );
  BUFM2R U87 ( .A(y_21), .Z(y[21]) );
  BUFM2R U88 ( .A(y_22), .Z(y[22]) );
  BUFM2R U89 ( .A(y_23), .Z(y[23]) );
  BUFM2R U90 ( .A(y_24), .Z(y[24]) );
  BUFM2R U91 ( .A(y_25), .Z(y[25]) );
  BUFM2R U92 ( .A(y_26), .Z(y[26]) );
  BUFM2R U93 ( .A(y_27), .Z(y[27]) );
  BUFM2R U94 ( .A(y_12), .Z(y[12]) );
  BUFM2R U95 ( .A(y_13), .Z(y[13]) );
  BUFM2R U96 ( .A(y_14), .Z(y[14]) );
  BUFM2R U97 ( .A(y_15), .Z(y[15]) );
  BUFM2R U98 ( .A(y_28), .Z(y[28]) );
  BUFM2R U99 ( .A(y_29), .Z(y[29]) );
  BUFM2R U100 ( .A(y_30), .Z(y[30]) );
  BUFM2R U101 ( .A(y_31), .Z(y[31]) );
  BUFM2R U102 ( .A(x[2]), .Z(y[66]) );
  BUFM2R U103 ( .A(x[10]), .Z(y[74]) );
  BUFM2R U104 ( .A(x[6]), .Z(y[70]) );
  BUFM2R U105 ( .A(x[24]), .Z(y[88]) );
  BUFM2R U106 ( .A(x[18]), .Z(y[82]) );
  BUFM2R U107 ( .A(x[0]), .Z(y[96]) );
  BUFM2R U108 ( .A(x[26]), .Z(y[90]) );
  BUFM2R U109 ( .A(x[20]), .Z(y[84]) );
  BUFM2R U110 ( .A(x[16]), .Z(y[80]) );
  BUFM2R U111 ( .A(x[8]), .Z(y[72]) );
  BUFM2R U112 ( .A(x[22]), .Z(y[86]) );
  BUFM2R U113 ( .A(x[4]), .Z(y[68]) );
  BUFM2R U114 ( .A(x[0]), .Z(y[0]) );
  BUFM2R U115 ( .A(y_33), .Z(y[33]) );
  BUFM2R U116 ( .A(x[7]), .Z(y[71]) );
  BUFM2R U117 ( .A(x[9]), .Z(y[73]) );
  BUFM2R U118 ( .A(x[11]), .Z(y[75]) );
  BUFM2R U119 ( .A(x[17]), .Z(y[81]) );
  BUFM2R U120 ( .A(x[19]), .Z(y[83]) );
  BUFM2R U121 ( .A(x[21]), .Z(y[85]) );
  BUFM2R U122 ( .A(x[23]), .Z(y[87]) );
  BUFM2R U123 ( .A(x[25]), .Z(y[89]) );
  BUFM2R U124 ( .A(x[27]), .Z(y[91]) );
  BUFM2R U125 ( .A(x[0]), .Z(y[64]) );
  BUFM2R U126 ( .A(y_33), .Z(y[65]) );
  BUFM2R U127 ( .A(x[3]), .Z(y[67]) );
  BUFM2R U128 ( .A(x[5]), .Z(y[69]) );
endmodule


module noninv_16 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U11 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U14 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U15 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_17 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U11 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U12 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U13 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U14 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U15 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U16 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U17 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U18 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module noninv_18 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U17 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U18 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U19 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U20 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_19 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U11 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U12 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U13 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U16 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U17 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U18 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U19 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U20 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U21 ( .A(y[5]), .Z(z[9]) );
endmodule


module noninv_20 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_21 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[1]), .Z(z[5]) );
endmodule


module noninv_22 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[0]), .Z(z[4]) );
  BUFM2R U11 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U12 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U13 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U14 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U15 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U16 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U17 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U18 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U19 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U20 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U21 ( .A(y[11]), .Z(z[15]) );
endmodule


module noninv_23 ( y, z );
  input [15:0] y;
  output [15:0] z;


  INVM2R U2 ( .A(1'b1), .Z(z[3]) );
  INVM2R U4 ( .A(1'b1), .Z(z[2]) );
  INVM2R U6 ( .A(1'b1), .Z(z[1]) );
  INVM2R U8 ( .A(1'b1), .Z(z[0]) );
  BUFM2R U10 ( .A(y[1]), .Z(z[5]) );
  BUFM2R U11 ( .A(y[2]), .Z(z[6]) );
  BUFM2R U12 ( .A(y[3]), .Z(z[7]) );
  BUFM2R U13 ( .A(y[4]), .Z(z[8]) );
  BUFM2R U14 ( .A(y[5]), .Z(z[9]) );
  BUFM2R U15 ( .A(y[6]), .Z(z[10]) );
  BUFM2R U16 ( .A(y[7]), .Z(z[11]) );
  BUFM2R U17 ( .A(y[8]), .Z(z[12]) );
  BUFM2R U18 ( .A(y[9]), .Z(z[13]) );
  BUFM2R U19 ( .A(y[10]), .Z(z[14]) );
  BUFM2R U20 ( .A(y[11]), .Z(z[15]) );
  BUFM2R U21 ( .A(y[0]), .Z(z[4]) );
endmodule


module pseudo_fib_2 ( p, s, q );
  input [127:0] p;
  input [127:0] s;
  output [127:0] q;

  wire   [127:0] p1;

  noninv_23 uut1 ( .y(p[15:0]), .z(p1[15:0]) );
  noninv_22 uut2 ( .y(p[31:16]), .z(p1[31:16]) );
  noninv_21 uut3 ( .y(p[47:32]), .z(p1[47:32]) );
  noninv_20 uut4 ( .y(p[63:48]), .z(p1[63:48]) );
  noninv_19 uut5 ( .y(p[79:64]), .z(p1[79:64]) );
  noninv_18 uut6 ( .y(p[95:80]), .z(p1[95:80]) );
  noninv_17 uut7 ( .y(p[111:96]), .z(p1[111:96]) );
  noninv_16 uut8 ( .y(p[127:112]), .z(p1[127:112]) );
  XOR2M2RA U1 ( .A(s[105]), .B(p1[73]), .Z(q[9]) );
  XOR2M2RA U6 ( .A(s[63]), .B(p1[31]), .Z(q[95]) );
  XOR2M2RA U7 ( .A(s[62]), .B(p1[30]), .Z(q[94]) );
  XOR2M2RA U8 ( .A(s[61]), .B(p1[29]), .Z(q[93]) );
  XOR2M2RA U9 ( .A(s[60]), .B(p1[28]), .Z(q[92]) );
  XOR2M2RA U10 ( .A(s[59]), .B(p1[27]), .Z(q[91]) );
  XOR2M2RA U11 ( .A(s[58]), .B(p1[26]), .Z(q[90]) );
  XOR2M2RA U12 ( .A(s[104]), .B(p1[72]), .Z(q[8]) );
  XOR2M2RA U13 ( .A(s[57]), .B(p1[25]), .Z(q[89]) );
  XOR2M2RA U14 ( .A(s[56]), .B(p1[24]), .Z(q[88]) );
  XOR2M2RA U15 ( .A(s[55]), .B(p1[23]), .Z(q[87]) );
  XOR2M2RA U16 ( .A(s[54]), .B(p1[22]), .Z(q[86]) );
  XOR2M2RA U17 ( .A(s[53]), .B(p1[21]), .Z(q[85]) );
  XOR2M2RA U18 ( .A(s[52]), .B(p1[20]), .Z(q[84]) );
  XOR2M2RA U23 ( .A(s[103]), .B(p1[71]), .Z(q[7]) );
  XOR2M2RA U24 ( .A(s[47]), .B(p1[15]), .Z(q[79]) );
  XOR2M2RA U25 ( .A(s[46]), .B(p1[14]), .Z(q[78]) );
  XOR2M2RA U26 ( .A(s[45]), .B(p1[13]), .Z(q[77]) );
  XOR2M2RA U27 ( .A(s[44]), .B(p1[12]), .Z(q[76]) );
  XOR2M2RA U28 ( .A(s[43]), .B(p1[11]), .Z(q[75]) );
  XOR2M2RA U29 ( .A(s[42]), .B(p1[10]), .Z(q[74]) );
  XOR2M2RA U30 ( .A(s[41]), .B(p1[9]), .Z(q[73]) );
  XOR2M2RA U31 ( .A(s[40]), .B(p1[8]), .Z(q[72]) );
  XOR2M2RA U32 ( .A(s[39]), .B(p1[7]), .Z(q[71]) );
  XOR2M2RA U33 ( .A(s[38]), .B(p1[6]), .Z(q[70]) );
  XOR2M2RA U34 ( .A(s[102]), .B(p1[70]), .Z(q[6]) );
  XOR2M2RA U35 ( .A(s[37]), .B(p1[5]), .Z(q[69]) );
  XOR2M2RA U36 ( .A(s[36]), .B(p1[4]), .Z(q[68]) );
  XOR2M2RA U41 ( .A(s[31]), .B(p1[127]), .Z(q[63]) );
  XOR2M2RA U42 ( .A(s[30]), .B(p1[126]), .Z(q[62]) );
  XOR2M2RA U43 ( .A(s[29]), .B(p1[125]), .Z(q[61]) );
  XOR2M2RA U44 ( .A(s[28]), .B(p1[124]), .Z(q[60]) );
  XOR2M2RA U45 ( .A(s[101]), .B(p1[69]), .Z(q[5]) );
  XOR2M2RA U46 ( .A(s[27]), .B(p1[123]), .Z(q[59]) );
  XOR2M2RA U47 ( .A(s[26]), .B(p1[122]), .Z(q[58]) );
  XOR2M2RA U48 ( .A(s[25]), .B(p1[121]), .Z(q[57]) );
  XOR2M2RA U49 ( .A(s[24]), .B(p1[120]), .Z(q[56]) );
  XOR2M2RA U50 ( .A(s[23]), .B(p1[119]), .Z(q[55]) );
  XOR2M2RA U51 ( .A(s[22]), .B(p1[118]), .Z(q[54]) );
  XOR2M2RA U52 ( .A(s[21]), .B(p1[117]), .Z(q[53]) );
  XOR2M2RA U53 ( .A(s[20]), .B(p1[116]), .Z(q[52]) );
  XOR2M2RA U56 ( .A(s[100]), .B(p1[68]), .Z(q[4]) );
  XOR2M2RA U59 ( .A(s[15]), .B(p1[111]), .Z(q[47]) );
  XOR2M2RA U60 ( .A(s[14]), .B(p1[110]), .Z(q[46]) );
  XOR2M2RA U61 ( .A(s[13]), .B(p1[109]), .Z(q[45]) );
  XOR2M2RA U62 ( .A(s[12]), .B(p1[108]), .Z(q[44]) );
  XOR2M2RA U63 ( .A(s[11]), .B(p1[107]), .Z(q[43]) );
  XOR2M2RA U64 ( .A(s[10]), .B(p1[106]), .Z(q[42]) );
  XOR2M2RA U65 ( .A(s[9]), .B(p1[105]), .Z(q[41]) );
  XOR2M2RA U66 ( .A(s[8]), .B(p1[104]), .Z(q[40]) );
  XOR2M2RA U68 ( .A(s[7]), .B(p1[103]), .Z(q[39]) );
  XOR2M2RA U69 ( .A(s[6]), .B(p1[102]), .Z(q[38]) );
  XOR2M2RA U70 ( .A(s[5]), .B(p1[101]), .Z(q[37]) );
  XOR2M2RA U71 ( .A(s[4]), .B(p1[100]), .Z(q[36]) );
  XOR2M2RA U76 ( .A(s[127]), .B(p1[95]), .Z(q[31]) );
  XOR2M2RA U77 ( .A(s[126]), .B(p1[94]), .Z(q[30]) );
  XOR2M2RA U79 ( .A(s[125]), .B(p1[93]), .Z(q[29]) );
  XOR2M2RA U80 ( .A(s[124]), .B(p1[92]), .Z(q[28]) );
  XOR2M2RA U81 ( .A(s[123]), .B(p1[91]), .Z(q[27]) );
  XOR2M2RA U82 ( .A(s[122]), .B(p1[90]), .Z(q[26]) );
  XOR2M2RA U83 ( .A(s[121]), .B(p1[89]), .Z(q[25]) );
  XOR2M2RA U84 ( .A(s[120]), .B(p1[88]), .Z(q[24]) );
  XOR2M2RA U85 ( .A(s[119]), .B(p1[87]), .Z(q[23]) );
  XOR2M2RA U86 ( .A(s[118]), .B(p1[86]), .Z(q[22]) );
  XOR2M2RA U87 ( .A(s[117]), .B(p1[85]), .Z(q[21]) );
  XOR2M2RA U88 ( .A(s[116]), .B(p1[84]), .Z(q[20]) );
  XOR2M2RA U94 ( .A(s[111]), .B(p1[79]), .Z(q[15]) );
  XOR2M2RA U95 ( .A(s[110]), .B(p1[78]), .Z(q[14]) );
  XOR2M2RA U96 ( .A(s[109]), .B(p1[77]), .Z(q[13]) );
  XOR2M2RA U97 ( .A(s[108]), .B(p1[76]), .Z(q[12]) );
  XOR2M2RA U98 ( .A(s[95]), .B(p1[63]), .Z(q[127]) );
  XOR2M2RA U99 ( .A(s[94]), .B(p1[62]), .Z(q[126]) );
  XOR2M2RA U100 ( .A(s[93]), .B(p1[61]), .Z(q[125]) );
  XOR2M2RA U101 ( .A(s[92]), .B(p1[60]), .Z(q[124]) );
  XOR2M2RA U102 ( .A(s[91]), .B(p1[59]), .Z(q[123]) );
  XOR2M2RA U103 ( .A(s[90]), .B(p1[58]), .Z(q[122]) );
  XOR2M2RA U104 ( .A(s[89]), .B(p1[57]), .Z(q[121]) );
  XOR2M2RA U105 ( .A(s[88]), .B(p1[56]), .Z(q[120]) );
  XOR2M2RA U106 ( .A(s[107]), .B(p1[75]), .Z(q[11]) );
  XOR2M2RA U107 ( .A(s[87]), .B(p1[55]), .Z(q[119]) );
  XOR2M2RA U108 ( .A(s[86]), .B(p1[54]), .Z(q[118]) );
  XOR2M2RA U109 ( .A(s[85]), .B(p1[53]), .Z(q[117]) );
  XOR2M2RA U110 ( .A(s[84]), .B(p1[52]), .Z(q[116]) );
  XOR2M2RA U115 ( .A(s[79]), .B(p1[47]), .Z(q[111]) );
  XOR2M2RA U116 ( .A(s[78]), .B(p1[46]), .Z(q[110]) );
  XOR2M2RA U117 ( .A(s[106]), .B(p1[74]), .Z(q[10]) );
  XOR2M2RA U118 ( .A(s[77]), .B(p1[45]), .Z(q[109]) );
  XOR2M2RA U119 ( .A(s[76]), .B(p1[44]), .Z(q[108]) );
  XOR2M2RA U120 ( .A(s[75]), .B(p1[43]), .Z(q[107]) );
  XOR2M2RA U121 ( .A(s[74]), .B(p1[42]), .Z(q[106]) );
  XOR2M2RA U122 ( .A(s[73]), .B(p1[41]), .Z(q[105]) );
  XOR2M2RA U123 ( .A(s[72]), .B(p1[40]), .Z(q[104]) );
  XOR2M2RA U124 ( .A(s[71]), .B(p1[39]), .Z(q[103]) );
  XOR2M2RA U125 ( .A(s[70]), .B(p1[38]), .Z(q[102]) );
  XOR2M2RA U126 ( .A(s[69]), .B(p1[37]), .Z(q[101]) );
  XOR2M2RA U127 ( .A(s[68]), .B(p1[36]), .Z(q[100]) );
  BUFM2R U2 ( .A(s[98]), .Z(q[2]) );
  BUFM2R U3 ( .A(s[1]), .Z(q[33]) );
  BUFM2R U4 ( .A(s[3]), .Z(q[35]) );
  BUFM2R U5 ( .A(s[17]), .Z(q[49]) );
  BUFM2R U19 ( .A(s[19]), .Z(q[51]) );
  BUFM2R U20 ( .A(s[18]), .Z(q[50]) );
  BUFM2R U21 ( .A(s[16]), .Z(q[48]) );
  BUFM2R U22 ( .A(s[2]), .Z(q[34]) );
  BUFM2R U37 ( .A(s[114]), .Z(q[18]) );
  BUFM2R U38 ( .A(s[112]), .Z(q[16]) );
  BUFM2R U39 ( .A(s[97]), .Z(q[1]) );
  BUFM2R U40 ( .A(s[113]), .Z(q[17]) );
  BUFM2R U54 ( .A(s[115]), .Z(q[19]) );
  BUFM2R U55 ( .A(s[99]), .Z(q[3]) );
  BUFM2R U57 ( .A(s[48]), .Z(q[80]) );
  BUFM2R U58 ( .A(s[51]), .Z(q[83]) );
  BUFM2R U67 ( .A(s[35]), .Z(q[67]) );
  BUFM2R U72 ( .A(s[49]), .Z(q[81]) );
  BUFM2R U73 ( .A(s[50]), .Z(q[82]) );
  BUFM2R U74 ( .A(s[96]), .Z(q[0]) );
  BUFM2R U75 ( .A(s[64]), .Z(q[96]) );
  BUFM2R U78 ( .A(s[65]), .Z(q[97]) );
  BUFM2R U89 ( .A(s[33]), .Z(q[65]) );
  BUFM2R U90 ( .A(s[80]), .Z(q[112]) );
  BUFM2R U91 ( .A(s[83]), .Z(q[115]) );
  BUFM2R U92 ( .A(s[82]), .Z(q[114]) );
  BUFM2R U93 ( .A(s[66]), .Z(q[98]) );
  BUFM2R U111 ( .A(s[67]), .Z(q[99]) );
  BUFM2R U112 ( .A(s[81]), .Z(q[113]) );
  BUFM2R U113 ( .A(s[34]), .Z(q[66]) );
  BUFM2R U114 ( .A(s[32]), .Z(q[64]) );
  BUFM2R U128 ( .A(s[0]), .Z(q[32]) );
endmodule


module compression_2 ( o, s, p );
  input [127:0] o;
  input [127:0] s;
  output [31:0] p;
  wire   o_66, o_64, o_62, o_60, o_58, o_56, o_54, o_52, o_50, o_48, o_46,
         o_44, o_42, o_40, o_38, o_36, o_34, o_32, o_30, o_28, o_26, o_24,
         o_22, o_20, o_18, o_16, o_14, o_12, o_10, o_8, o_6, s_124, s_122,
         s_120, s_118, s_116, s_114, s_112, s_110, s_108, s_106, s_104, s_102,
         s_100, s_98, s_96, s_94, s_92, s_90, s_88, s_86, s_84, s_82, s_80,
         s_78, s_76, s_74, s_72, s_70, s_68, s_66, s_64;
  assign o_66 = o[66];
  assign o_64 = o[64];
  assign o_62 = o[62];
  assign o_60 = o[60];
  assign o_58 = o[58];
  assign o_56 = o[56];
  assign o_54 = o[54];
  assign o_52 = o[52];
  assign o_50 = o[50];
  assign o_48 = o[48];
  assign o_46 = o[46];
  assign o_44 = o[44];
  assign o_42 = o[42];
  assign o_40 = o[40];
  assign o_38 = o[38];
  assign o_36 = o[36];
  assign o_34 = o[34];
  assign o_32 = o[32];
  assign o_30 = o[30];
  assign o_28 = o[28];
  assign o_26 = o[26];
  assign o_24 = o[24];
  assign o_22 = o[22];
  assign o_20 = o[20];
  assign o_18 = o[18];
  assign o_16 = o[16];
  assign o_14 = o[14];
  assign o_12 = o[12];
  assign o_10 = o[10];
  assign o_8 = o[8];
  assign o_6 = o[6];
  assign s_124 = s[124];
  assign s_122 = s[122];
  assign s_120 = s[120];
  assign s_118 = s[118];
  assign s_116 = s[116];
  assign s_114 = s[114];
  assign s_112 = s[112];
  assign s_110 = s[110];
  assign s_108 = s[108];
  assign s_106 = s[106];
  assign s_104 = s[104];
  assign s_102 = s[102];
  assign s_100 = s[100];
  assign s_98 = s[98];
  assign s_96 = s[96];
  assign s_94 = s[94];
  assign s_92 = s[92];
  assign s_90 = s[90];
  assign s_88 = s[88];
  assign s_86 = s[86];
  assign s_84 = s[84];
  assign s_82 = s[82];
  assign s_80 = s[80];
  assign s_78 = s[78];
  assign s_76 = s[76];
  assign s_74 = s[74];
  assign s_72 = s[72];
  assign s_70 = s[70];
  assign s_68 = s[68];
  assign s_66 = s[66];
  assign s_64 = s[64];

  XOR2M2RA U1 ( .A(s_82), .B(o_24), .Z(p[9]) );
  XOR2M2RA U2 ( .A(s_80), .B(o_22), .Z(p[8]) );
  XOR2M2RA U3 ( .A(s_78), .B(o_20), .Z(p[7]) );
  XOR2M2RA U4 ( .A(s_76), .B(o_18), .Z(p[6]) );
  XOR2M2RA U5 ( .A(s_74), .B(o_16), .Z(p[5]) );
  XOR2M2RA U6 ( .A(s_72), .B(o_14), .Z(p[4]) );
  XOR2M2RA U7 ( .A(s_70), .B(o_12), .Z(p[3]) );
  XOR2M2RA U8 ( .A(s[126]), .B(o[68]), .Z(p[31]) );
  XOR2M2RA U9 ( .A(s_124), .B(o_66), .Z(p[30]) );
  XOR2M2RA U10 ( .A(s_68), .B(o_10), .Z(p[2]) );
  XOR2M2RA U11 ( .A(s_122), .B(o_64), .Z(p[29]) );
  XOR2M2RA U12 ( .A(s_120), .B(o_62), .Z(p[28]) );
  XOR2M2RA U13 ( .A(s_118), .B(o_60), .Z(p[27]) );
  XOR2M2RA U14 ( .A(s_116), .B(o_58), .Z(p[26]) );
  XOR2M2RA U15 ( .A(s_114), .B(o_56), .Z(p[25]) );
  XOR2M2RA U16 ( .A(s_112), .B(o_54), .Z(p[24]) );
  XOR2M2RA U17 ( .A(s_110), .B(o_52), .Z(p[23]) );
  XOR2M2RA U18 ( .A(s_108), .B(o_50), .Z(p[22]) );
  XOR2M2RA U19 ( .A(s_106), .B(o_48), .Z(p[21]) );
  XOR2M2RA U20 ( .A(s_104), .B(o_46), .Z(p[20]) );
  XOR2M2RA U21 ( .A(s_66), .B(o_8), .Z(p[1]) );
  XOR2M2RA U22 ( .A(s_102), .B(o_44), .Z(p[19]) );
  XOR2M2RA U23 ( .A(s_100), .B(o_42), .Z(p[18]) );
  XOR2M2RA U24 ( .A(s_98), .B(o_40), .Z(p[17]) );
  XOR2M2RA U25 ( .A(s_96), .B(o_38), .Z(p[16]) );
  XOR2M2RA U26 ( .A(s_94), .B(o_36), .Z(p[15]) );
  XOR2M2RA U27 ( .A(s_92), .B(o_34), .Z(p[14]) );
  XOR2M2RA U28 ( .A(s_90), .B(o_32), .Z(p[13]) );
  XOR2M2RA U29 ( .A(s_88), .B(o_30), .Z(p[12]) );
  XOR2M2RA U30 ( .A(s_86), .B(o_28), .Z(p[11]) );
  XOR2M2RA U31 ( .A(s_84), .B(o_26), .Z(p[10]) );
  XOR2M2RA U32 ( .A(s_64), .B(o_6), .Z(p[0]) );
endmodule


module cm_2 ( a, s, b );
  input [31:0] a;
  input [31:0] s;
  output [31:0] b;

  wire   [127:0] a1;
  wire   [127:0] sd;
  wire   [127:0] b1;

  expansion_5 e1 ( .x(a), .y(a1) );
  expansion_4 e2 ( .x(s), .y(sd) );
  pseudo_fib_2 dut2 ( .p(a1), .s(sd), .q(b1) );
  compression_2 dut3 ( .o(b1), .s(sd), .p(b) );
endmodule


module MixColumns_0 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;

  XOR2M2RA U14 ( .A(x[27]), .B(x[31]), .Z(n55) );
  XNR2M2RA U16 ( .A(x[26]), .B(x[31]), .Z(n53) );
  XOR2M2RA U21 ( .A(x[15]), .B(x[31]), .Z(n58) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n42) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n40) );
  XNR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n41) );
  XOR2M2RA U36 ( .A(x[8]), .B(x[15]), .Z(n62) );
  XOR2M2RA U38 ( .A(x[0]), .B(x[23]), .Z(n38) );
  XOR2M2RA U39 ( .A(x[24]), .B(x[15]), .Z(n60) );
  XOR2M2RA U41 ( .A(x[14]), .B(x[6]), .Z(n49) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[7]), .Z(n50) );
  XOR2M2RA U44 ( .A(x[13]), .B(x[5]), .Z(n46) );
  XOR2M2RA U45 ( .A(x[22]), .B(x[30]), .Z(n57) );
  XOR2M2RA U47 ( .A(x[12]), .B(x[4]), .Z(n35) );
  XOR2M2RA U48 ( .A(x[21]), .B(x[29]), .Z(n56) );
  XOR2M2RA U51 ( .A(x[20]), .B(x[28]), .Z(n47) );
  XOR2M2RA U52 ( .A(x[11]), .B(x[15]), .Z(n36) );
  XNR2M2RA U55 ( .A(n64), .B(x[3]), .Z(n44) );
  XOR2M2RA U56 ( .A(x[2]), .B(x[7]), .Z(n52) );
  XOR2M2RA U58 ( .A(x[1]), .B(x[9]), .Z(n33) );
  XOR2M2RA U59 ( .A(x[18]), .B(x[26]), .Z(n48) );
  XOR2M2RA U61 ( .A(x[8]), .B(x[31]), .Z(n37) );
  XOR2M2RA U62 ( .A(x[16]), .B(x[7]), .Z(n59) );
  INVM2R U1 ( .A(x[17]), .Z(n63) );
  INVM2R U2 ( .A(x[19]), .Z(n64) );
  XNR3M1R U3 ( .A(x[23]), .B(x[19]), .C(n35), .Z(n45) );
  XNR3M1R U4 ( .A(x[7]), .B(x[3]), .C(n47), .Z(n54) );
  XOR3M2RA U5 ( .A(x[23]), .B(x[16]), .C(n33), .Z(n39) );
  XOR3M2RA U6 ( .A(x[23]), .B(x[18]), .C(x[11]), .Z(n43) );
  XOR3M2RA U7 ( .A(x[27]), .B(x[15]), .C(x[10]), .Z(n34) );
  XOR3M2RA U8 ( .A(x[7]), .B(x[0]), .C(n42), .Z(n61) );
  XOR3M2RA U9 ( .A(x[15]), .B(n57), .C(n50), .Z(y[31]) );
  XOR3M2RA U10 ( .A(x[22]), .B(n56), .C(n49), .Z(y[30]) );
  XNR3M1R U11 ( .A(x[20]), .B(n55), .C(n45), .Z(y[28]) );
  XNR3M1R U12 ( .A(n44), .B(n53), .C(n43), .Z(y[27]) );
  XOR3M2RA U13 ( .A(x[16]), .B(n38), .C(n37), .Z(y[24]) );
  XOR4M1RA U15 ( .A(n58), .B(x[7]), .C(x[22]), .D(x[14]), .Z(y[23]) );
  XOR4M1RA U17 ( .A(x[30]), .B(x[21]), .C(x[13]), .D(n49), .Z(y[22]) );
  XNR3M1R U18 ( .A(n36), .B(x[28]), .C(n45), .Z(y[20]) );
  XOR3M2RA U19 ( .A(x[3]), .B(n43), .C(n34), .Z(y[19]) );
  XOR3M2RA U20 ( .A(x[25]), .B(n62), .C(n39), .Z(y[17]) );
  XOR3M2RA U22 ( .A(x[8]), .B(n60), .C(n38), .Z(y[16]) );
  XOR3M2RA U23 ( .A(x[31]), .B(n50), .C(n49), .Z(y[15]) );
  XOR3M2RA U24 ( .A(x[6]), .B(n57), .C(n46), .Z(y[14]) );
  XNR3M1R U25 ( .A(n36), .B(x[4]), .C(n54), .Z(y[12]) );
  XOR3M2RA U26 ( .A(n52), .B(n44), .C(n34), .Z(y[11]) );
  XOR3M2RA U27 ( .A(x[0]), .B(n60), .C(n59), .Z(y[8]) );
  XOR4M1RA U30 ( .A(n58), .B(x[6]), .C(x[30]), .D(x[23]), .Z(y[7]) );
  XOR4M1RA U31 ( .A(x[5]), .B(x[29]), .C(x[14]), .D(n57), .Z(y[6]) );
  XNR3M1R U32 ( .A(n55), .B(x[12]), .C(n54), .Z(y[4]) );
  XNR3M1R U34 ( .A(n53), .B(n52), .C(n51), .Z(y[3]) );
  XNR3M1R U35 ( .A(x[27]), .B(n64), .C(x[11]), .Z(n51) );
  XOR3M2RA U37 ( .A(x[24]), .B(n59), .C(n37), .Z(y[0]) );
  XOR3M2RA U40 ( .A(x[21]), .B(n47), .C(n46), .Z(y[29]) );
  XNR3M1R U43 ( .A(x[18]), .B(n42), .C(n41), .Z(y[26]) );
  XNR3M1R U46 ( .A(n40), .B(n63), .C(n39), .Z(y[25]) );
  XOR4M1RA U49 ( .A(x[29]), .B(x[20]), .C(x[12]), .D(n46), .Z(y[21]) );
  XOR4M1RA U50 ( .A(x[9]), .B(x[26]), .C(n63), .D(n41), .Z(y[18]) );
  XOR3M2RA U53 ( .A(x[5]), .B(n56), .C(n35), .Z(y[13]) );
  XOR3M2RA U54 ( .A(x[2]), .B(n48), .C(n33), .Z(y[10]) );
  XOR3M2RA U57 ( .A(x[1]), .B(n62), .C(n61), .Z(y[9]) );
  XOR4M1RA U60 ( .A(x[4]), .B(x[28]), .C(x[13]), .D(n56), .Z(y[5]) );
  XOR4M1RA U63 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n48), .Z(y[2]) );
  XOR3M2RA U64 ( .A(n40), .B(x[9]), .C(n61), .Z(y[1]) );
endmodule


module MixColumns_1 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;

  XOR2M2RA U14 ( .A(x[27]), .B(x[31]), .Z(n55) );
  XNR2M2RA U16 ( .A(x[26]), .B(x[31]), .Z(n53) );
  XOR2M2RA U21 ( .A(x[15]), .B(x[31]), .Z(n58) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n42) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n40) );
  XNR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n41) );
  XOR2M2RA U36 ( .A(x[8]), .B(x[15]), .Z(n62) );
  XOR2M2RA U38 ( .A(x[0]), .B(x[23]), .Z(n38) );
  XOR2M2RA U39 ( .A(x[24]), .B(x[15]), .Z(n60) );
  XOR2M2RA U41 ( .A(x[14]), .B(x[6]), .Z(n49) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[7]), .Z(n50) );
  XOR2M2RA U44 ( .A(x[13]), .B(x[5]), .Z(n46) );
  XOR2M2RA U45 ( .A(x[22]), .B(x[30]), .Z(n57) );
  XOR2M2RA U47 ( .A(x[12]), .B(x[4]), .Z(n35) );
  XOR2M2RA U48 ( .A(x[21]), .B(x[29]), .Z(n56) );
  XOR2M2RA U51 ( .A(x[20]), .B(x[28]), .Z(n47) );
  XOR2M2RA U52 ( .A(x[11]), .B(x[15]), .Z(n36) );
  XNR2M2RA U55 ( .A(n64), .B(x[3]), .Z(n44) );
  XOR2M2RA U56 ( .A(x[2]), .B(x[7]), .Z(n52) );
  XOR2M2RA U58 ( .A(x[1]), .B(x[9]), .Z(n33) );
  XOR2M2RA U59 ( .A(x[18]), .B(x[26]), .Z(n48) );
  XOR2M2RA U61 ( .A(x[8]), .B(x[31]), .Z(n37) );
  XOR2M2RA U62 ( .A(x[16]), .B(x[7]), .Z(n59) );
  INVM2R U1 ( .A(x[17]), .Z(n63) );
  INVM2R U2 ( .A(x[19]), .Z(n64) );
  XNR3M1R U3 ( .A(x[23]), .B(x[19]), .C(n35), .Z(n45) );
  XNR3M1R U4 ( .A(x[7]), .B(x[3]), .C(n47), .Z(n54) );
  XOR3M2RA U5 ( .A(x[23]), .B(x[16]), .C(n33), .Z(n39) );
  XOR3M2RA U6 ( .A(x[23]), .B(x[18]), .C(x[11]), .Z(n43) );
  XOR3M2RA U7 ( .A(x[27]), .B(x[15]), .C(x[10]), .Z(n34) );
  XOR3M2RA U8 ( .A(x[7]), .B(x[0]), .C(n42), .Z(n61) );
  XOR3M2RA U9 ( .A(x[15]), .B(n57), .C(n50), .Z(y[31]) );
  XNR3M1R U10 ( .A(x[20]), .B(n55), .C(n45), .Z(y[28]) );
  XNR3M1R U11 ( .A(n44), .B(n53), .C(n43), .Z(y[27]) );
  XOR4M1RA U12 ( .A(n58), .B(x[7]), .C(x[22]), .D(x[14]), .Z(y[23]) );
  XNR3M1R U13 ( .A(n36), .B(x[28]), .C(n45), .Z(y[20]) );
  XOR3M2RA U15 ( .A(x[3]), .B(n43), .C(n34), .Z(y[19]) );
  XOR3M2RA U17 ( .A(x[25]), .B(n62), .C(n39), .Z(y[17]) );
  XOR3M2RA U18 ( .A(x[31]), .B(n50), .C(n49), .Z(y[15]) );
  XNR3M1R U19 ( .A(n36), .B(x[4]), .C(n54), .Z(y[12]) );
  XOR3M2RA U20 ( .A(n52), .B(n44), .C(n34), .Z(y[11]) );
  XOR4M1RA U22 ( .A(n58), .B(x[6]), .C(x[30]), .D(x[23]), .Z(y[7]) );
  XNR3M1R U23 ( .A(n55), .B(x[12]), .C(n54), .Z(y[4]) );
  XNR3M1R U24 ( .A(n53), .B(n52), .C(n51), .Z(y[3]) );
  XNR3M1R U25 ( .A(x[27]), .B(n64), .C(x[11]), .Z(n51) );
  XOR4M1RA U26 ( .A(x[4]), .B(x[28]), .C(x[13]), .D(n56), .Z(y[5]) );
  XOR3M2RA U27 ( .A(x[22]), .B(n56), .C(n49), .Z(y[30]) );
  XOR3M2RA U30 ( .A(x[21]), .B(n47), .C(n46), .Z(y[29]) );
  XNR3M1R U31 ( .A(x[18]), .B(n42), .C(n41), .Z(y[26]) );
  XNR3M1R U32 ( .A(n40), .B(n63), .C(n39), .Z(y[25]) );
  XOR3M2RA U34 ( .A(x[16]), .B(n38), .C(n37), .Z(y[24]) );
  XOR4M1RA U35 ( .A(x[30]), .B(x[21]), .C(x[13]), .D(n49), .Z(y[22]) );
  XOR4M1RA U37 ( .A(x[29]), .B(x[20]), .C(x[12]), .D(n46), .Z(y[21]) );
  XOR4M1RA U40 ( .A(x[9]), .B(x[26]), .C(n63), .D(n41), .Z(y[18]) );
  XOR3M2RA U43 ( .A(x[8]), .B(n60), .C(n38), .Z(y[16]) );
  XOR3M2RA U46 ( .A(x[6]), .B(n57), .C(n46), .Z(y[14]) );
  XOR3M2RA U49 ( .A(x[5]), .B(n56), .C(n35), .Z(y[13]) );
  XOR3M2RA U50 ( .A(x[2]), .B(n48), .C(n33), .Z(y[10]) );
  XOR3M2RA U53 ( .A(x[1]), .B(n62), .C(n61), .Z(y[9]) );
  XOR3M2RA U54 ( .A(x[0]), .B(n60), .C(n59), .Z(y[8]) );
  XOR4M1RA U57 ( .A(x[5]), .B(x[29]), .C(x[14]), .D(n57), .Z(y[6]) );
  XOR4M1RA U60 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n48), .Z(y[2]) );
  XOR3M2RA U63 ( .A(n40), .B(x[9]), .C(n61), .Z(y[1]) );
  XOR3M2RA U64 ( .A(x[24]), .B(n59), .C(n37), .Z(y[0]) );
endmodule


module MixColumns_2 ( x, y );
  input [31:0] x;
  output [31:0] y;
  wire   n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64;

  XOR2M2RA U14 ( .A(x[27]), .B(x[31]), .Z(n55) );
  XNR2M2RA U16 ( .A(x[26]), .B(x[31]), .Z(n53) );
  XOR2M2RA U21 ( .A(x[15]), .B(x[31]), .Z(n58) );
  XOR2M2RA U28 ( .A(x[17]), .B(x[25]), .Z(n42) );
  XOR2M2RA U29 ( .A(x[24]), .B(x[31]), .Z(n40) );
  XNR2M2RA U33 ( .A(x[10]), .B(x[2]), .Z(n41) );
  XOR2M2RA U36 ( .A(x[8]), .B(x[15]), .Z(n62) );
  XOR2M2RA U38 ( .A(x[0]), .B(x[23]), .Z(n38) );
  XOR2M2RA U39 ( .A(x[24]), .B(x[15]), .Z(n60) );
  XOR2M2RA U41 ( .A(x[14]), .B(x[6]), .Z(n49) );
  XOR2M2RA U42 ( .A(x[23]), .B(x[7]), .Z(n50) );
  XOR2M2RA U44 ( .A(x[13]), .B(x[5]), .Z(n46) );
  XOR2M2RA U45 ( .A(x[22]), .B(x[30]), .Z(n57) );
  XOR2M2RA U47 ( .A(x[12]), .B(x[4]), .Z(n35) );
  XOR2M2RA U48 ( .A(x[21]), .B(x[29]), .Z(n56) );
  XOR2M2RA U51 ( .A(x[20]), .B(x[28]), .Z(n47) );
  XOR2M2RA U52 ( .A(x[11]), .B(x[15]), .Z(n36) );
  XNR2M2RA U55 ( .A(n64), .B(x[3]), .Z(n44) );
  XOR2M2RA U56 ( .A(x[2]), .B(x[7]), .Z(n52) );
  XOR2M2RA U58 ( .A(x[1]), .B(x[9]), .Z(n33) );
  XOR2M2RA U59 ( .A(x[18]), .B(x[26]), .Z(n48) );
  XOR2M2RA U61 ( .A(x[8]), .B(x[31]), .Z(n37) );
  XOR2M2RA U62 ( .A(x[16]), .B(x[7]), .Z(n59) );
  INVM2R U1 ( .A(x[17]), .Z(n63) );
  INVM2R U2 ( .A(x[19]), .Z(n64) );
  XNR3M1R U3 ( .A(x[23]), .B(x[19]), .C(n35), .Z(n45) );
  XNR3M1R U4 ( .A(x[7]), .B(x[3]), .C(n47), .Z(n54) );
  XOR3M2RA U5 ( .A(x[23]), .B(x[16]), .C(n33), .Z(n39) );
  XOR3M2RA U6 ( .A(x[23]), .B(x[18]), .C(x[11]), .Z(n43) );
  XOR3M2RA U7 ( .A(x[27]), .B(x[15]), .C(x[10]), .Z(n34) );
  XOR3M2RA U8 ( .A(x[7]), .B(x[0]), .C(n42), .Z(n61) );
  XNR3M1R U9 ( .A(n53), .B(n52), .C(n51), .Z(y[3]) );
  XNR3M1R U10 ( .A(x[27]), .B(n64), .C(x[11]), .Z(n51) );
  XNR3M1R U11 ( .A(x[20]), .B(n55), .C(n45), .Z(y[28]) );
  XNR3M1R U12 ( .A(n44), .B(n53), .C(n43), .Z(y[27]) );
  XNR3M1R U13 ( .A(n36), .B(x[28]), .C(n45), .Z(y[20]) );
  XOR3M2RA U15 ( .A(x[3]), .B(n43), .C(n34), .Z(y[19]) );
  XOR3M2RA U17 ( .A(x[25]), .B(n62), .C(n39), .Z(y[17]) );
  XNR3M1R U18 ( .A(n36), .B(x[4]), .C(n54), .Z(y[12]) );
  XOR3M2RA U19 ( .A(n52), .B(n44), .C(n34), .Z(y[11]) );
  XNR3M1R U20 ( .A(n55), .B(x[12]), .C(n54), .Z(y[4]) );
  XOR4M1RA U22 ( .A(x[30]), .B(x[21]), .C(x[13]), .D(n49), .Z(y[22]) );
  XOR4M1RA U23 ( .A(x[9]), .B(x[26]), .C(n63), .D(n41), .Z(y[18]) );
  XOR4M1RA U24 ( .A(x[4]), .B(x[28]), .C(x[13]), .D(n56), .Z(y[5]) );
  XOR3M2RA U25 ( .A(x[15]), .B(n57), .C(n50), .Z(y[31]) );
  XOR3M2RA U26 ( .A(x[21]), .B(n47), .C(n46), .Z(y[29]) );
  XNR3M1R U27 ( .A(x[18]), .B(n42), .C(n41), .Z(y[26]) );
  XNR3M1R U30 ( .A(n40), .B(n63), .C(n39), .Z(y[25]) );
  XOR3M2RA U31 ( .A(x[16]), .B(n38), .C(n37), .Z(y[24]) );
  XOR4M1RA U32 ( .A(n58), .B(x[7]), .C(x[22]), .D(x[14]), .Z(y[23]) );
  XOR4M1RA U34 ( .A(x[29]), .B(x[20]), .C(x[12]), .D(n46), .Z(y[21]) );
  XOR3M2RA U35 ( .A(x[8]), .B(n60), .C(n38), .Z(y[16]) );
  XOR3M2RA U37 ( .A(x[31]), .B(n50), .C(n49), .Z(y[15]) );
  XOR3M2RA U40 ( .A(x[6]), .B(n57), .C(n46), .Z(y[14]) );
  XOR3M2RA U43 ( .A(x[5]), .B(n56), .C(n35), .Z(y[13]) );
  XOR3M2RA U46 ( .A(x[2]), .B(n48), .C(n33), .Z(y[10]) );
  XOR3M2RA U49 ( .A(x[1]), .B(n62), .C(n61), .Z(y[9]) );
  XOR3M2RA U50 ( .A(x[0]), .B(n60), .C(n59), .Z(y[8]) );
  XOR4M1RA U53 ( .A(n58), .B(x[6]), .C(x[30]), .D(x[23]), .Z(y[7]) );
  XOR4M1RA U54 ( .A(x[5]), .B(x[29]), .C(x[14]), .D(n57), .Z(y[6]) );
  XOR4M1RA U57 ( .A(x[25]), .B(x[1]), .C(x[10]), .D(n48), .Z(y[2]) );
  XOR3M2RA U60 ( .A(n40), .B(x[9]), .C(n61), .Z(y[1]) );
  XOR3M2RA U63 ( .A(x[24]), .B(n59), .C(n37), .Z(y[0]) );
  XOR3M2RA U64 ( .A(x[22]), .B(n56), .C(n49), .Z(y[30]) );
endmodule


module AES_Core ( din, dout, kin, sel, seed, sout, cntm );
  input [127:0] din;
  output [127:0] dout;
  input [127:0] kin;
  input [127:0] seed;
  output [127:0] sout;
  input [127:0] cntm;
  input sel;
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
  wire   [31:0] sc0;
  wire   [31:0] sc1;
  wire   [31:0] sc2;
  wire   [31:0] sc3;

  cmt_sbox_19 f1 ( .t(din[127:120]), .a(b0) );
  cmt_sbox_18 f2 ( .t(din[119:112]), .a(b1) );
  cmt_sbox_17 f3 ( .t(din[111:104]), .a(b2) );
  cmt_sbox_16 f4 ( .t(din[103:96]), .a(b3) );
  cmt_sbox_15 f5 ( .t(din[95:88]), .a(b4) );
  cmt_sbox_14 f6 ( .t(din[87:80]), .a(b5) );
  cmt_sbox_13 f7 ( .t(din[79:72]), .a(b6) );
  cmt_sbox_12 f8 ( .t(din[71:64]), .a(b7) );
  cmt_sbox_11 f9 ( .t(din[63:56]), .a(b8) );
  cmt_sbox_10 f10 ( .t(din[55:48]), .a(b9) );
  cmt_sbox_9 f11 ( .t(din[47:40]), .a(b10) );
  cmt_sbox_8 f12 ( .t(din[39:32]), .a(b11) );
  cmt_sbox_7 f13 ( .t(din[31:24]), .a(b12) );
  cmt_sbox_6 f14 ( .t(din[23:16]), .a(b13) );
  cmt_sbox_5 f15 ( .t(din[15:8]), .a(b14) );
  cmt_sbox_4 f16 ( .t(din[7:0]), .a(b15) );
  cm_3 cm1 ( .a(cntm[127:96]), .s(seed[127:96]), .b(sout[127:96]) );
  cm_2 cm2 ( .a(cntm[95:64]), .s(seed[95:64]), .b(sout[95:64]) );
  cm_1 cm3 ( .a(cntm[63:32]), .s(seed[63:32]), .b(sout[63:32]) );
  cm_0 cm4 ( .a(cntm[31:0]), .s(seed[31:0]), .b(sout[31:0]) );
  MixColumns_3 MC0 ( .x({b0, b5, b10, b15}), .y(sc0) );
  MixColumns_2 MC1 ( .x({b4, b9, b14, b3}), .y(sc1) );
  MixColumns_1 MC2 ( .x({b8, b13, b2, b7}), .y(sc2) );
  MixColumns_0 MC3 ( .x({b12, b1, b6, b11}), .y(sc3) );
  XNR2M2RA U2 ( .A(kin[9]), .B(sc3[9]), .Z(n3) );
  XNR2M2RA U3 ( .A(kin[9]), .B(b6[1]), .Z(n2) );
  XNR2M2RA U5 ( .A(kin[99]), .B(sc0[3]), .Z(n5) );
  XNR2M2RA U6 ( .A(kin[99]), .B(b15[3]), .Z(n4) );
  XNR2M2RA U8 ( .A(kin[98]), .B(sc0[2]), .Z(n7) );
  XNR2M2RA U9 ( .A(kin[98]), .B(b15[2]), .Z(n6) );
  XNR2M2RA U11 ( .A(kin[97]), .B(sc0[1]), .Z(n9) );
  XNR2M2RA U12 ( .A(kin[97]), .B(b15[1]), .Z(n8) );
  XNR2M2RA U14 ( .A(kin[96]), .B(sc0[0]), .Z(n11) );
  XNR2M2RA U15 ( .A(kin[96]), .B(b15[0]), .Z(n10) );
  XNR2M2RA U17 ( .A(kin[95]), .B(sc1[31]), .Z(n13) );
  XNR2M2RA U18 ( .A(kin[95]), .B(b4[7]), .Z(n12) );
  XNR2M2RA U20 ( .A(kin[94]), .B(sc1[30]), .Z(n15) );
  XNR2M2RA U21 ( .A(kin[94]), .B(b4[6]), .Z(n14) );
  XNR2M2RA U23 ( .A(kin[93]), .B(sc1[29]), .Z(n17) );
  XNR2M2RA U24 ( .A(kin[93]), .B(b4[5]), .Z(n16) );
  XNR2M2RA U26 ( .A(kin[92]), .B(sc1[28]), .Z(n19) );
  XNR2M2RA U27 ( .A(kin[92]), .B(b4[4]), .Z(n18) );
  XNR2M2RA U29 ( .A(kin[91]), .B(sc1[27]), .Z(n21) );
  XNR2M2RA U30 ( .A(kin[91]), .B(b4[3]), .Z(n20) );
  XNR2M2RA U32 ( .A(kin[90]), .B(sc1[26]), .Z(n23) );
  XNR2M2RA U33 ( .A(kin[90]), .B(b4[2]), .Z(n22) );
  XNR2M2RA U35 ( .A(kin[8]), .B(sc3[8]), .Z(n25) );
  XNR2M2RA U36 ( .A(kin[8]), .B(b6[0]), .Z(n24) );
  XNR2M2RA U38 ( .A(kin[89]), .B(sc1[25]), .Z(n27) );
  XNR2M2RA U39 ( .A(kin[89]), .B(b4[1]), .Z(n26) );
  XNR2M2RA U41 ( .A(kin[88]), .B(sc1[24]), .Z(n29) );
  XNR2M2RA U42 ( .A(kin[88]), .B(b4[0]), .Z(n28) );
  XNR2M2RA U44 ( .A(kin[87]), .B(sc1[23]), .Z(n31) );
  XNR2M2RA U45 ( .A(kin[87]), .B(b9[7]), .Z(n30) );
  XNR2M2RA U47 ( .A(kin[86]), .B(sc1[22]), .Z(n33) );
  XNR2M2RA U48 ( .A(kin[86]), .B(b9[6]), .Z(n32) );
  XNR2M2RA U50 ( .A(kin[85]), .B(sc1[21]), .Z(n35) );
  XNR2M2RA U51 ( .A(kin[85]), .B(b9[5]), .Z(n34) );
  XNR2M2RA U53 ( .A(kin[84]), .B(sc1[20]), .Z(n37) );
  XNR2M2RA U54 ( .A(kin[84]), .B(b9[4]), .Z(n36) );
  XNR2M2RA U56 ( .A(kin[83]), .B(sc1[19]), .Z(n39) );
  XNR2M2RA U57 ( .A(kin[83]), .B(b9[3]), .Z(n38) );
  XNR2M2RA U59 ( .A(kin[82]), .B(sc1[18]), .Z(n41) );
  XNR2M2RA U60 ( .A(kin[82]), .B(b9[2]), .Z(n40) );
  XNR2M2RA U62 ( .A(kin[81]), .B(sc1[17]), .Z(n43) );
  XNR2M2RA U63 ( .A(kin[81]), .B(b9[1]), .Z(n42) );
  XNR2M2RA U65 ( .A(kin[80]), .B(sc1[16]), .Z(n45) );
  XNR2M2RA U66 ( .A(kin[80]), .B(b9[0]), .Z(n44) );
  XNR2M2RA U68 ( .A(kin[7]), .B(sc3[7]), .Z(n47) );
  XNR2M2RA U69 ( .A(kin[7]), .B(b11[7]), .Z(n46) );
  XNR2M2RA U71 ( .A(kin[79]), .B(sc1[15]), .Z(n49) );
  XNR2M2RA U72 ( .A(kin[79]), .B(b14[7]), .Z(n48) );
  XNR2M2RA U74 ( .A(kin[78]), .B(sc1[14]), .Z(n51) );
  XNR2M2RA U75 ( .A(kin[78]), .B(b14[6]), .Z(n50) );
  XNR2M2RA U77 ( .A(kin[77]), .B(sc1[13]), .Z(n53) );
  XNR2M2RA U78 ( .A(kin[77]), .B(b14[5]), .Z(n52) );
  XNR2M2RA U80 ( .A(kin[76]), .B(sc1[12]), .Z(n55) );
  XNR2M2RA U81 ( .A(kin[76]), .B(b14[4]), .Z(n54) );
  XNR2M2RA U83 ( .A(kin[75]), .B(sc1[11]), .Z(n57) );
  XNR2M2RA U84 ( .A(kin[75]), .B(b14[3]), .Z(n56) );
  XNR2M2RA U86 ( .A(kin[74]), .B(sc1[10]), .Z(n59) );
  XNR2M2RA U87 ( .A(kin[74]), .B(b14[2]), .Z(n58) );
  XNR2M2RA U89 ( .A(kin[73]), .B(sc1[9]), .Z(n61) );
  XNR2M2RA U90 ( .A(kin[73]), .B(b14[1]), .Z(n60) );
  XNR2M2RA U92 ( .A(kin[72]), .B(sc1[8]), .Z(n63) );
  XNR2M2RA U93 ( .A(kin[72]), .B(b14[0]), .Z(n62) );
  XNR2M2RA U95 ( .A(kin[71]), .B(sc1[7]), .Z(n65) );
  XNR2M2RA U96 ( .A(kin[71]), .B(b3[7]), .Z(n64) );
  XNR2M2RA U98 ( .A(kin[70]), .B(sc1[6]), .Z(n67) );
  XNR2M2RA U99 ( .A(kin[70]), .B(b3[6]), .Z(n66) );
  XNR2M2RA U101 ( .A(kin[6]), .B(sc3[6]), .Z(n69) );
  XNR2M2RA U102 ( .A(kin[6]), .B(b11[6]), .Z(n68) );
  XNR2M2RA U104 ( .A(kin[69]), .B(sc1[5]), .Z(n71) );
  XNR2M2RA U105 ( .A(kin[69]), .B(b3[5]), .Z(n70) );
  XNR2M2RA U107 ( .A(kin[68]), .B(sc1[4]), .Z(n73) );
  XNR2M2RA U108 ( .A(kin[68]), .B(b3[4]), .Z(n72) );
  XNR2M2RA U110 ( .A(kin[67]), .B(sc1[3]), .Z(n75) );
  XNR2M2RA U111 ( .A(kin[67]), .B(b3[3]), .Z(n74) );
  XNR2M2RA U113 ( .A(kin[66]), .B(sc1[2]), .Z(n77) );
  XNR2M2RA U114 ( .A(kin[66]), .B(b3[2]), .Z(n76) );
  XNR2M2RA U116 ( .A(kin[65]), .B(sc1[1]), .Z(n79) );
  XNR2M2RA U117 ( .A(kin[65]), .B(b3[1]), .Z(n78) );
  XNR2M2RA U119 ( .A(kin[64]), .B(sc1[0]), .Z(n81) );
  XNR2M2RA U120 ( .A(kin[64]), .B(b3[0]), .Z(n80) );
  XNR2M2RA U122 ( .A(kin[63]), .B(sc2[31]), .Z(n83) );
  XNR2M2RA U123 ( .A(kin[63]), .B(b8[7]), .Z(n82) );
  XNR2M2RA U125 ( .A(kin[62]), .B(sc2[30]), .Z(n85) );
  XNR2M2RA U126 ( .A(kin[62]), .B(b8[6]), .Z(n84) );
  XNR2M2RA U128 ( .A(kin[61]), .B(sc2[29]), .Z(n87) );
  XNR2M2RA U129 ( .A(kin[61]), .B(b8[5]), .Z(n86) );
  XNR2M2RA U131 ( .A(kin[60]), .B(sc2[28]), .Z(n89) );
  XNR2M2RA U132 ( .A(kin[60]), .B(b8[4]), .Z(n88) );
  XNR2M2RA U134 ( .A(kin[5]), .B(sc3[5]), .Z(n91) );
  XNR2M2RA U135 ( .A(kin[5]), .B(b11[5]), .Z(n90) );
  XNR2M2RA U137 ( .A(kin[59]), .B(sc2[27]), .Z(n93) );
  XNR2M2RA U138 ( .A(kin[59]), .B(b8[3]), .Z(n92) );
  XNR2M2RA U140 ( .A(kin[58]), .B(sc2[26]), .Z(n95) );
  XNR2M2RA U141 ( .A(kin[58]), .B(b8[2]), .Z(n94) );
  XNR2M2RA U143 ( .A(kin[57]), .B(sc2[25]), .Z(n97) );
  XNR2M2RA U144 ( .A(kin[57]), .B(b8[1]), .Z(n96) );
  XNR2M2RA U146 ( .A(kin[56]), .B(sc2[24]), .Z(n99) );
  XNR2M2RA U147 ( .A(kin[56]), .B(b8[0]), .Z(n98) );
  XNR2M2RA U149 ( .A(kin[55]), .B(sc2[23]), .Z(n101) );
  XNR2M2RA U150 ( .A(kin[55]), .B(b13[7]), .Z(n100) );
  XNR2M2RA U152 ( .A(kin[54]), .B(sc2[22]), .Z(n103) );
  XNR2M2RA U153 ( .A(kin[54]), .B(b13[6]), .Z(n102) );
  XNR2M2RA U155 ( .A(kin[53]), .B(sc2[21]), .Z(n105) );
  XNR2M2RA U156 ( .A(kin[53]), .B(b13[5]), .Z(n104) );
  XNR2M2RA U158 ( .A(kin[52]), .B(sc2[20]), .Z(n107) );
  XNR2M2RA U159 ( .A(kin[52]), .B(b13[4]), .Z(n106) );
  XNR2M2RA U161 ( .A(kin[51]), .B(sc2[19]), .Z(n109) );
  XNR2M2RA U162 ( .A(kin[51]), .B(b13[3]), .Z(n108) );
  XNR2M2RA U164 ( .A(kin[50]), .B(sc2[18]), .Z(n111) );
  XNR2M2RA U165 ( .A(kin[50]), .B(b13[2]), .Z(n110) );
  XNR2M2RA U167 ( .A(kin[4]), .B(sc3[4]), .Z(n113) );
  XNR2M2RA U168 ( .A(kin[4]), .B(b11[4]), .Z(n112) );
  XNR2M2RA U170 ( .A(kin[49]), .B(sc2[17]), .Z(n115) );
  XNR2M2RA U171 ( .A(kin[49]), .B(b13[1]), .Z(n114) );
  XNR2M2RA U173 ( .A(kin[48]), .B(sc2[16]), .Z(n117) );
  XNR2M2RA U174 ( .A(kin[48]), .B(b13[0]), .Z(n116) );
  XNR2M2RA U176 ( .A(kin[47]), .B(sc2[15]), .Z(n119) );
  XNR2M2RA U177 ( .A(kin[47]), .B(b2[7]), .Z(n118) );
  XNR2M2RA U179 ( .A(kin[46]), .B(sc2[14]), .Z(n121) );
  XNR2M2RA U180 ( .A(kin[46]), .B(b2[6]), .Z(n120) );
  XNR2M2RA U182 ( .A(kin[45]), .B(sc2[13]), .Z(n123) );
  XNR2M2RA U183 ( .A(kin[45]), .B(b2[5]), .Z(n122) );
  XNR2M2RA U185 ( .A(kin[44]), .B(sc2[12]), .Z(n125) );
  XNR2M2RA U186 ( .A(kin[44]), .B(b2[4]), .Z(n124) );
  XNR2M2RA U188 ( .A(kin[43]), .B(sc2[11]), .Z(n127) );
  XNR2M2RA U189 ( .A(kin[43]), .B(b2[3]), .Z(n126) );
  XNR2M2RA U191 ( .A(kin[42]), .B(sc2[10]), .Z(n129) );
  XNR2M2RA U192 ( .A(kin[42]), .B(b2[2]), .Z(n128) );
  XNR2M2RA U194 ( .A(kin[41]), .B(sc2[9]), .Z(n131) );
  XNR2M2RA U195 ( .A(kin[41]), .B(b2[1]), .Z(n130) );
  XNR2M2RA U197 ( .A(kin[40]), .B(sc2[8]), .Z(n133) );
  XNR2M2RA U198 ( .A(kin[40]), .B(b2[0]), .Z(n132) );
  XNR2M2RA U200 ( .A(kin[3]), .B(sc3[3]), .Z(n135) );
  XNR2M2RA U201 ( .A(kin[3]), .B(b11[3]), .Z(n134) );
  XNR2M2RA U203 ( .A(kin[39]), .B(sc2[7]), .Z(n137) );
  XNR2M2RA U204 ( .A(kin[39]), .B(b7[7]), .Z(n136) );
  XNR2M2RA U206 ( .A(kin[38]), .B(sc2[6]), .Z(n139) );
  XNR2M2RA U207 ( .A(kin[38]), .B(b7[6]), .Z(n138) );
  XNR2M2RA U209 ( .A(kin[37]), .B(sc2[5]), .Z(n141) );
  XNR2M2RA U210 ( .A(kin[37]), .B(b7[5]), .Z(n140) );
  XNR2M2RA U212 ( .A(kin[36]), .B(sc2[4]), .Z(n143) );
  XNR2M2RA U213 ( .A(kin[36]), .B(b7[4]), .Z(n142) );
  XNR2M2RA U215 ( .A(kin[35]), .B(sc2[3]), .Z(n145) );
  XNR2M2RA U216 ( .A(kin[35]), .B(b7[3]), .Z(n144) );
  XNR2M2RA U218 ( .A(kin[34]), .B(sc2[2]), .Z(n147) );
  XNR2M2RA U219 ( .A(kin[34]), .B(b7[2]), .Z(n146) );
  XNR2M2RA U221 ( .A(kin[33]), .B(sc2[1]), .Z(n149) );
  XNR2M2RA U222 ( .A(kin[33]), .B(b7[1]), .Z(n148) );
  XNR2M2RA U224 ( .A(kin[32]), .B(sc2[0]), .Z(n151) );
  XNR2M2RA U225 ( .A(kin[32]), .B(b7[0]), .Z(n150) );
  XNR2M2RA U227 ( .A(kin[31]), .B(sc3[31]), .Z(n153) );
  XNR2M2RA U228 ( .A(kin[31]), .B(b12[7]), .Z(n152) );
  XNR2M2RA U230 ( .A(kin[30]), .B(sc3[30]), .Z(n155) );
  XNR2M2RA U231 ( .A(kin[30]), .B(b12[6]), .Z(n154) );
  XNR2M2RA U233 ( .A(kin[2]), .B(sc3[2]), .Z(n157) );
  XNR2M2RA U234 ( .A(kin[2]), .B(b11[2]), .Z(n156) );
  XNR2M2RA U236 ( .A(kin[29]), .B(sc3[29]), .Z(n159) );
  XNR2M2RA U237 ( .A(kin[29]), .B(b12[5]), .Z(n158) );
  XNR2M2RA U239 ( .A(kin[28]), .B(sc3[28]), .Z(n161) );
  XNR2M2RA U240 ( .A(kin[28]), .B(b12[4]), .Z(n160) );
  XNR2M2RA U242 ( .A(kin[27]), .B(sc3[27]), .Z(n163) );
  XNR2M2RA U243 ( .A(kin[27]), .B(b12[3]), .Z(n162) );
  XNR2M2RA U245 ( .A(kin[26]), .B(sc3[26]), .Z(n165) );
  XNR2M2RA U246 ( .A(kin[26]), .B(b12[2]), .Z(n164) );
  XNR2M2RA U248 ( .A(kin[25]), .B(sc3[25]), .Z(n167) );
  XNR2M2RA U249 ( .A(kin[25]), .B(b12[1]), .Z(n166) );
  XNR2M2RA U251 ( .A(kin[24]), .B(sc3[24]), .Z(n169) );
  XNR2M2RA U252 ( .A(kin[24]), .B(b12[0]), .Z(n168) );
  XNR2M2RA U254 ( .A(kin[23]), .B(sc3[23]), .Z(n171) );
  XNR2M2RA U255 ( .A(kin[23]), .B(b1[7]), .Z(n170) );
  XNR2M2RA U257 ( .A(kin[22]), .B(sc3[22]), .Z(n173) );
  XNR2M2RA U258 ( .A(kin[22]), .B(b1[6]), .Z(n172) );
  XNR2M2RA U260 ( .A(kin[21]), .B(sc3[21]), .Z(n175) );
  XNR2M2RA U261 ( .A(kin[21]), .B(b1[5]), .Z(n174) );
  XNR2M2RA U263 ( .A(kin[20]), .B(sc3[20]), .Z(n177) );
  XNR2M2RA U264 ( .A(kin[20]), .B(b1[4]), .Z(n176) );
  XNR2M2RA U266 ( .A(kin[1]), .B(sc3[1]), .Z(n179) );
  XNR2M2RA U267 ( .A(kin[1]), .B(b11[1]), .Z(n178) );
  XNR2M2RA U269 ( .A(kin[19]), .B(sc3[19]), .Z(n181) );
  XNR2M2RA U270 ( .A(kin[19]), .B(b1[3]), .Z(n180) );
  XNR2M2RA U272 ( .A(kin[18]), .B(sc3[18]), .Z(n183) );
  XNR2M2RA U273 ( .A(kin[18]), .B(b1[2]), .Z(n182) );
  XNR2M2RA U275 ( .A(kin[17]), .B(sc3[17]), .Z(n185) );
  XNR2M2RA U276 ( .A(kin[17]), .B(b1[1]), .Z(n184) );
  XNR2M2RA U278 ( .A(kin[16]), .B(sc3[16]), .Z(n187) );
  XNR2M2RA U279 ( .A(kin[16]), .B(b1[0]), .Z(n186) );
  XNR2M2RA U281 ( .A(kin[15]), .B(sc3[15]), .Z(n189) );
  XNR2M2RA U282 ( .A(kin[15]), .B(b6[7]), .Z(n188) );
  XNR2M2RA U284 ( .A(kin[14]), .B(sc3[14]), .Z(n191) );
  XNR2M2RA U285 ( .A(kin[14]), .B(b6[6]), .Z(n190) );
  XNR2M2RA U287 ( .A(kin[13]), .B(sc3[13]), .Z(n193) );
  XNR2M2RA U288 ( .A(kin[13]), .B(b6[5]), .Z(n192) );
  XNR2M2RA U290 ( .A(kin[12]), .B(sc3[12]), .Z(n195) );
  XNR2M2RA U291 ( .A(kin[12]), .B(b6[4]), .Z(n194) );
  XNR2M2RA U293 ( .A(kin[127]), .B(sc0[31]), .Z(n197) );
  XNR2M2RA U294 ( .A(kin[127]), .B(b0[7]), .Z(n196) );
  XNR2M2RA U296 ( .A(kin[126]), .B(sc0[30]), .Z(n199) );
  XNR2M2RA U297 ( .A(kin[126]), .B(b0[6]), .Z(n198) );
  XNR2M2RA U299 ( .A(kin[125]), .B(sc0[29]), .Z(n201) );
  XNR2M2RA U300 ( .A(kin[125]), .B(b0[5]), .Z(n200) );
  XNR2M2RA U302 ( .A(kin[124]), .B(sc0[28]), .Z(n203) );
  XNR2M2RA U303 ( .A(kin[124]), .B(b0[4]), .Z(n202) );
  XNR2M2RA U305 ( .A(kin[123]), .B(sc0[27]), .Z(n205) );
  XNR2M2RA U306 ( .A(kin[123]), .B(b0[3]), .Z(n204) );
  XNR2M2RA U308 ( .A(kin[122]), .B(sc0[26]), .Z(n207) );
  XNR2M2RA U309 ( .A(kin[122]), .B(b0[2]), .Z(n206) );
  XNR2M2RA U311 ( .A(kin[121]), .B(sc0[25]), .Z(n209) );
  XNR2M2RA U312 ( .A(kin[121]), .B(b0[1]), .Z(n208) );
  XNR2M2RA U314 ( .A(kin[120]), .B(sc0[24]), .Z(n211) );
  XNR2M2RA U315 ( .A(kin[120]), .B(b0[0]), .Z(n210) );
  XNR2M2RA U317 ( .A(kin[11]), .B(sc3[11]), .Z(n213) );
  XNR2M2RA U318 ( .A(kin[11]), .B(b6[3]), .Z(n212) );
  XNR2M2RA U320 ( .A(kin[119]), .B(sc0[23]), .Z(n215) );
  XNR2M2RA U321 ( .A(kin[119]), .B(b5[7]), .Z(n214) );
  XNR2M2RA U323 ( .A(kin[118]), .B(sc0[22]), .Z(n217) );
  XNR2M2RA U324 ( .A(kin[118]), .B(b5[6]), .Z(n216) );
  XNR2M2RA U326 ( .A(kin[117]), .B(sc0[21]), .Z(n219) );
  XNR2M2RA U327 ( .A(kin[117]), .B(b5[5]), .Z(n218) );
  XNR2M2RA U329 ( .A(kin[116]), .B(sc0[20]), .Z(n221) );
  XNR2M2RA U330 ( .A(kin[116]), .B(b5[4]), .Z(n220) );
  XNR2M2RA U332 ( .A(kin[115]), .B(sc0[19]), .Z(n223) );
  XNR2M2RA U333 ( .A(kin[115]), .B(b5[3]), .Z(n222) );
  XNR2M2RA U335 ( .A(kin[114]), .B(sc0[18]), .Z(n225) );
  XNR2M2RA U336 ( .A(kin[114]), .B(b5[2]), .Z(n224) );
  XNR2M2RA U338 ( .A(kin[113]), .B(sc0[17]), .Z(n227) );
  XNR2M2RA U339 ( .A(kin[113]), .B(b5[1]), .Z(n226) );
  XNR2M2RA U341 ( .A(kin[112]), .B(sc0[16]), .Z(n229) );
  XNR2M2RA U342 ( .A(kin[112]), .B(b5[0]), .Z(n228) );
  XNR2M2RA U344 ( .A(kin[111]), .B(sc0[15]), .Z(n231) );
  XNR2M2RA U345 ( .A(kin[111]), .B(b10[7]), .Z(n230) );
  XNR2M2RA U347 ( .A(kin[110]), .B(sc0[14]), .Z(n233) );
  XNR2M2RA U348 ( .A(kin[110]), .B(b10[6]), .Z(n232) );
  XNR2M2RA U350 ( .A(kin[10]), .B(sc3[10]), .Z(n235) );
  XNR2M2RA U351 ( .A(kin[10]), .B(b6[2]), .Z(n234) );
  XNR2M2RA U353 ( .A(kin[109]), .B(sc0[13]), .Z(n237) );
  XNR2M2RA U354 ( .A(kin[109]), .B(b10[5]), .Z(n236) );
  XNR2M2RA U356 ( .A(kin[108]), .B(sc0[12]), .Z(n239) );
  XNR2M2RA U357 ( .A(kin[108]), .B(b10[4]), .Z(n238) );
  XNR2M2RA U359 ( .A(kin[107]), .B(sc0[11]), .Z(n241) );
  XNR2M2RA U360 ( .A(kin[107]), .B(b10[3]), .Z(n240) );
  XNR2M2RA U362 ( .A(kin[106]), .B(sc0[10]), .Z(n243) );
  XNR2M2RA U363 ( .A(kin[106]), .B(b10[2]), .Z(n242) );
  XNR2M2RA U365 ( .A(kin[105]), .B(sc0[9]), .Z(n245) );
  XNR2M2RA U366 ( .A(kin[105]), .B(b10[1]), .Z(n244) );
  XNR2M2RA U368 ( .A(kin[104]), .B(sc0[8]), .Z(n247) );
  XNR2M2RA U369 ( .A(kin[104]), .B(b10[0]), .Z(n246) );
  XNR2M2RA U371 ( .A(kin[103]), .B(sc0[7]), .Z(n249) );
  XNR2M2RA U372 ( .A(kin[103]), .B(b15[7]), .Z(n248) );
  XNR2M2RA U374 ( .A(kin[102]), .B(sc0[6]), .Z(n251) );
  XNR2M2RA U375 ( .A(kin[102]), .B(b15[6]), .Z(n250) );
  XNR2M2RA U377 ( .A(kin[101]), .B(sc0[5]), .Z(n253) );
  XNR2M2RA U378 ( .A(kin[101]), .B(b15[5]), .Z(n252) );
  XNR2M2RA U380 ( .A(kin[100]), .B(sc0[4]), .Z(n255) );
  XNR2M2RA U381 ( .A(kin[100]), .B(b15[4]), .Z(n254) );
  XNR2M2RA U383 ( .A(kin[0]), .B(sc3[0]), .Z(n257) );
  XNR2M2RA U384 ( .A(kin[0]), .B(b11[0]), .Z(n256) );
  INVM1R U1 ( .A(n260), .Z(n258) );
  INVM2R U4 ( .A(n261), .Z(n1) );
  BUFM2R U7 ( .A(n260), .Z(n259) );
  BUFM2R U10 ( .A(n261), .Z(n260) );
  INVM2R U13 ( .A(sel), .Z(n261) );
  OAI22M2R U16 ( .A1(n202), .A2(n260), .B1(sel), .B2(n203), .Z(dout[124]) );
  OAI22M2R U19 ( .A1(n204), .A2(n260), .B1(sel), .B2(n205), .Z(dout[123]) );
  OAI22M2R U22 ( .A1(n220), .A2(n259), .B1(n1), .B2(n221), .Z(dout[116]) );
  OAI22M2R U25 ( .A1(n222), .A2(n260), .B1(n1), .B2(n223), .Z(dout[115]) );
  OAI22M2R U28 ( .A1(n226), .A2(n260), .B1(n1), .B2(n227), .Z(dout[113]) );
  OAI22M2R U31 ( .A1(n238), .A2(n260), .B1(n258), .B2(n239), .Z(dout[108]) );
  OAI22M2R U34 ( .A1(n240), .A2(n260), .B1(n1), .B2(n241), .Z(dout[107]) );
  OAI22M2R U37 ( .A1(n254), .A2(n260), .B1(sel), .B2(n255), .Z(dout[100]) );
  OAI22M2R U40 ( .A1(n4), .A2(n261), .B1(n1), .B2(n5), .Z(dout[99]) );
  OAI22M2R U43 ( .A1(n18), .A2(n260), .B1(n258), .B2(n19), .Z(dout[92]) );
  OAI22M2R U46 ( .A1(n20), .A2(n260), .B1(n258), .B2(n21), .Z(dout[91]) );
  OAI22M2R U49 ( .A1(n36), .A2(n260), .B1(n258), .B2(n37), .Z(dout[84]) );
  OAI22M2R U52 ( .A1(n38), .A2(n260), .B1(n258), .B2(n39), .Z(dout[83]) );
  OAI22M2R U55 ( .A1(n42), .A2(n260), .B1(n1), .B2(n43), .Z(dout[81]) );
  OAI22M2R U58 ( .A1(n54), .A2(n260), .B1(n1), .B2(n55), .Z(dout[76]) );
  OAI22M2R U61 ( .A1(n56), .A2(n259), .B1(n1), .B2(n57), .Z(dout[75]) );
  OAI22M2R U64 ( .A1(n72), .A2(n260), .B1(n258), .B2(n73), .Z(dout[68]) );
  OAI22M2R U67 ( .A1(n74), .A2(n259), .B1(n258), .B2(n75), .Z(dout[67]) );
  OAI22M2R U70 ( .A1(n82), .A2(n260), .B1(n258), .B2(n83), .Z(dout[63]) );
  OAI22M2R U73 ( .A1(n88), .A2(n260), .B1(n258), .B2(n89), .Z(dout[60]) );
  OAI22M2R U76 ( .A1(n92), .A2(n260), .B1(n1), .B2(n93), .Z(dout[59]) );
  OAI22M2R U79 ( .A1(n100), .A2(n260), .B1(n1), .B2(n101), .Z(dout[55]) );
  OAI22M2R U82 ( .A1(n106), .A2(n260), .B1(n1), .B2(n107), .Z(dout[52]) );
  OAI22M2R U85 ( .A1(n108), .A2(n261), .B1(n1), .B2(n109), .Z(dout[51]) );
  OAI22M2R U88 ( .A1(n114), .A2(n261), .B1(n1), .B2(n115), .Z(dout[49]) );
  OAI22M2R U91 ( .A1(n118), .A2(n261), .B1(n258), .B2(n119), .Z(dout[47]) );
  OAI22M2R U94 ( .A1(n124), .A2(n260), .B1(sel), .B2(n125), .Z(dout[44]) );
  OAI22M2R U97 ( .A1(n126), .A2(n260), .B1(sel), .B2(n127), .Z(dout[43]) );
  OAI22M2R U100 ( .A1(n136), .A2(n260), .B1(sel), .B2(n137), .Z(dout[39]) );
  OAI22M2R U103 ( .A1(n142), .A2(n259), .B1(sel), .B2(n143), .Z(dout[36]) );
  OAI22M2R U106 ( .A1(n144), .A2(n259), .B1(sel), .B2(n145), .Z(dout[35]) );
  OAI22M2R U109 ( .A1(n152), .A2(n260), .B1(n258), .B2(n153), .Z(dout[31]) );
  OAI22M2R U112 ( .A1(n154), .A2(n261), .B1(sel), .B2(n155), .Z(dout[30]) );
  OAI22M2R U115 ( .A1(n160), .A2(n261), .B1(sel), .B2(n161), .Z(dout[28]) );
  OAI22M2R U118 ( .A1(n162), .A2(n259), .B1(sel), .B2(n163), .Z(dout[27]) );
  OAI22M2R U121 ( .A1(n168), .A2(n261), .B1(n1), .B2(n169), .Z(dout[24]) );
  OAI22M2R U124 ( .A1(n170), .A2(n259), .B1(n258), .B2(n171), .Z(dout[23]) );
  OAI22M2R U127 ( .A1(n172), .A2(n259), .B1(sel), .B2(n173), .Z(dout[22]) );
  OAI22M2R U130 ( .A1(n176), .A2(n260), .B1(sel), .B2(n177), .Z(dout[20]) );
  OAI22M2R U133 ( .A1(n180), .A2(n259), .B1(n258), .B2(n181), .Z(dout[19]) );
  OAI22M2R U136 ( .A1(n184), .A2(n259), .B1(n1), .B2(n185), .Z(dout[17]) );
  OAI22M2R U139 ( .A1(n186), .A2(n260), .B1(sel), .B2(n187), .Z(dout[16]) );
  OAI22M2R U142 ( .A1(n188), .A2(n259), .B1(sel), .B2(n189), .Z(dout[15]) );
  OAI22M2R U145 ( .A1(n190), .A2(n259), .B1(sel), .B2(n191), .Z(dout[14]) );
  OAI22M2R U148 ( .A1(n194), .A2(n259), .B1(sel), .B2(n195), .Z(dout[12]) );
  OAI22M2R U151 ( .A1(n212), .A2(n260), .B1(n1), .B2(n213), .Z(dout[11]) );
  OAI22M2R U154 ( .A1(n24), .A2(n259), .B1(n258), .B2(n25), .Z(dout[8]) );
  OAI22M2R U157 ( .A1(n46), .A2(n260), .B1(n1), .B2(n47), .Z(dout[7]) );
  OAI22M2R U160 ( .A1(n68), .A2(n261), .B1(n258), .B2(n69), .Z(dout[6]) );
  OAI22M2R U163 ( .A1(n112), .A2(n261), .B1(n1), .B2(n113), .Z(dout[4]) );
  OAI22M2R U166 ( .A1(n134), .A2(n260), .B1(sel), .B2(n135), .Z(dout[3]) );
  OAI22M2R U169 ( .A1(n256), .A2(n259), .B1(sel), .B2(n257), .Z(dout[0]) );
  OAI22M2R U172 ( .A1(n196), .A2(n259), .B1(sel), .B2(n197), .Z(dout[127]) );
  OAI22M2R U175 ( .A1(n198), .A2(n259), .B1(sel), .B2(n199), .Z(dout[126]) );
  OAI22M2R U178 ( .A1(n200), .A2(n259), .B1(sel), .B2(n201), .Z(dout[125]) );
  OAI22M2R U181 ( .A1(n206), .A2(n259), .B1(sel), .B2(n207), .Z(dout[122]) );
  OAI22M2R U184 ( .A1(n208), .A2(n259), .B1(sel), .B2(n209), .Z(dout[121]) );
  OAI22M2R U187 ( .A1(n210), .A2(n260), .B1(n1), .B2(n211), .Z(dout[120]) );
  OAI22M2R U190 ( .A1(n214), .A2(n260), .B1(n1), .B2(n215), .Z(dout[119]) );
  OAI22M2R U193 ( .A1(n216), .A2(n260), .B1(n1), .B2(n217), .Z(dout[118]) );
  OAI22M2R U196 ( .A1(n218), .A2(n260), .B1(sel), .B2(n219), .Z(dout[117]) );
  OAI22M2R U199 ( .A1(n224), .A2(n260), .B1(sel), .B2(n225), .Z(dout[114]) );
  OAI22M2R U202 ( .A1(n228), .A2(n260), .B1(sel), .B2(n229), .Z(dout[112]) );
  OAI22M2R U205 ( .A1(n230), .A2(n260), .B1(sel), .B2(n231), .Z(dout[111]) );
  OAI22M2R U208 ( .A1(n232), .A2(n260), .B1(n1), .B2(n233), .Z(dout[110]) );
  OAI22M2R U211 ( .A1(n236), .A2(n260), .B1(n1), .B2(n237), .Z(dout[109]) );
  OAI22M2R U214 ( .A1(n242), .A2(n260), .B1(n258), .B2(n243), .Z(dout[106]) );
  OAI22M2R U217 ( .A1(n244), .A2(n260), .B1(n1), .B2(n245), .Z(dout[105]) );
  OAI22M2R U220 ( .A1(n246), .A2(n260), .B1(n258), .B2(n247), .Z(dout[104]) );
  OAI22M2R U223 ( .A1(n248), .A2(n260), .B1(n1), .B2(n249), .Z(dout[103]) );
  OAI22M2R U226 ( .A1(n250), .A2(n260), .B1(sel), .B2(n251), .Z(dout[102]) );
  OAI22M2R U229 ( .A1(n252), .A2(n260), .B1(sel), .B2(n253), .Z(dout[101]) );
  OAI22M2R U232 ( .A1(n6), .A2(n261), .B1(n258), .B2(n7), .Z(dout[98]) );
  OAI22M2R U235 ( .A1(n8), .A2(n261), .B1(n1), .B2(n9), .Z(dout[97]) );
  OAI22M2R U238 ( .A1(n10), .A2(n261), .B1(n1), .B2(n11), .Z(dout[96]) );
  OAI22M2R U241 ( .A1(n12), .A2(n261), .B1(n258), .B2(n13), .Z(dout[95]) );
  OAI22M2R U244 ( .A1(n14), .A2(n261), .B1(n1), .B2(n15), .Z(dout[94]) );
  OAI22M2R U247 ( .A1(n16), .A2(n261), .B1(n258), .B2(n17), .Z(dout[93]) );
  OAI22M2R U250 ( .A1(n22), .A2(n261), .B1(n258), .B2(n23), .Z(dout[90]) );
  OAI22M2R U253 ( .A1(n26), .A2(n261), .B1(n258), .B2(n27), .Z(dout[89]) );
  OAI22M2R U256 ( .A1(n28), .A2(n261), .B1(n258), .B2(n29), .Z(dout[88]) );
  OAI22M2R U259 ( .A1(n30), .A2(n261), .B1(n258), .B2(n31), .Z(dout[87]) );
  OAI22M2R U262 ( .A1(n32), .A2(n261), .B1(n258), .B2(n33), .Z(dout[86]) );
  OAI22M2R U265 ( .A1(n34), .A2(n261), .B1(n258), .B2(n35), .Z(dout[85]) );
  OAI22M2R U268 ( .A1(n40), .A2(n261), .B1(n258), .B2(n41), .Z(dout[82]) );
  OAI22M2R U271 ( .A1(n44), .A2(n261), .B1(n1), .B2(n45), .Z(dout[80]) );
  OAI22M2R U274 ( .A1(n48), .A2(n261), .B1(n1), .B2(n49), .Z(dout[79]) );
  OAI22M2R U277 ( .A1(n50), .A2(n261), .B1(n1), .B2(n51), .Z(dout[78]) );
  OAI22M2R U280 ( .A1(n52), .A2(n261), .B1(n1), .B2(n53), .Z(dout[77]) );
  OAI22M2R U283 ( .A1(n58), .A2(n261), .B1(n1), .B2(n59), .Z(dout[74]) );
  OAI22M2R U286 ( .A1(n60), .A2(n261), .B1(n1), .B2(n61), .Z(dout[73]) );
  OAI22M2R U289 ( .A1(n62), .A2(n261), .B1(n1), .B2(n63), .Z(dout[72]) );
  OAI22M2R U292 ( .A1(n64), .A2(n261), .B1(n1), .B2(n65), .Z(dout[71]) );
  OAI22M2R U295 ( .A1(n66), .A2(n261), .B1(n258), .B2(n67), .Z(dout[70]) );
  OAI22M2R U298 ( .A1(n70), .A2(n261), .B1(n258), .B2(n71), .Z(dout[69]) );
  OAI22M2R U301 ( .A1(n76), .A2(n261), .B1(n258), .B2(n77), .Z(dout[66]) );
  OAI22M2R U304 ( .A1(n78), .A2(n261), .B1(n258), .B2(n79), .Z(dout[65]) );
  OAI22M2R U307 ( .A1(n80), .A2(n261), .B1(n258), .B2(n81), .Z(dout[64]) );
  OAI22M2R U310 ( .A1(n84), .A2(n261), .B1(n258), .B2(n85), .Z(dout[62]) );
  OAI22M2R U313 ( .A1(n86), .A2(n261), .B1(n258), .B2(n87), .Z(dout[61]) );
  OAI22M2R U316 ( .A1(n94), .A2(n261), .B1(n1), .B2(n95), .Z(dout[58]) );
  OAI22M2R U319 ( .A1(n96), .A2(n261), .B1(n1), .B2(n97), .Z(dout[57]) );
  OAI22M2R U322 ( .A1(n98), .A2(n261), .B1(n1), .B2(n99), .Z(dout[56]) );
  OAI22M2R U325 ( .A1(n102), .A2(n261), .B1(n1), .B2(n103), .Z(dout[54]) );
  OAI22M2R U328 ( .A1(n104), .A2(n261), .B1(n1), .B2(n105), .Z(dout[53]) );
  OAI22M2R U331 ( .A1(n110), .A2(n261), .B1(n1), .B2(n111), .Z(dout[50]) );
  OAI22M2R U334 ( .A1(n116), .A2(n261), .B1(n1), .B2(n117), .Z(dout[48]) );
  OAI22M2R U337 ( .A1(n120), .A2(n260), .B1(sel), .B2(n121), .Z(dout[46]) );
  OAI22M2R U340 ( .A1(n122), .A2(n261), .B1(sel), .B2(n123), .Z(dout[45]) );
  OAI22M2R U343 ( .A1(n128), .A2(n260), .B1(sel), .B2(n129), .Z(dout[42]) );
  OAI22M2R U346 ( .A1(n130), .A2(n260), .B1(sel), .B2(n131), .Z(dout[41]) );
  OAI22M2R U349 ( .A1(n132), .A2(n260), .B1(sel), .B2(n133), .Z(dout[40]) );
  OAI22M2R U352 ( .A1(n138), .A2(n260), .B1(sel), .B2(n139), .Z(dout[38]) );
  OAI22M2R U355 ( .A1(n140), .A2(n261), .B1(sel), .B2(n141), .Z(dout[37]) );
  OAI22M2R U358 ( .A1(n146), .A2(n261), .B1(sel), .B2(n147), .Z(dout[34]) );
  OAI22M2R U361 ( .A1(n148), .A2(n261), .B1(sel), .B2(n149), .Z(dout[33]) );
  OAI22M2R U364 ( .A1(n150), .A2(n261), .B1(n258), .B2(n151), .Z(dout[32]) );
  OAI22M2R U367 ( .A1(n158), .A2(n261), .B1(n1), .B2(n159), .Z(dout[29]) );
  OAI22M2R U370 ( .A1(n164), .A2(n259), .B1(sel), .B2(n165), .Z(dout[26]) );
  OAI22M2R U373 ( .A1(n166), .A2(n260), .B1(sel), .B2(n167), .Z(dout[25]) );
  OAI22M2R U376 ( .A1(n174), .A2(n260), .B1(n258), .B2(n175), .Z(dout[21]) );
  OAI22M2R U379 ( .A1(n182), .A2(n259), .B1(n1), .B2(n183), .Z(dout[18]) );
  OAI22M2R U382 ( .A1(n192), .A2(n259), .B1(sel), .B2(n193), .Z(dout[13]) );
  OAI22M2R U385 ( .A1(n234), .A2(n260), .B1(n1), .B2(n235), .Z(dout[10]) );
  OAI22M2R U386 ( .A1(n2), .A2(n261), .B1(sel), .B2(n3), .Z(dout[9]) );
  OAI22M2R U387 ( .A1(n90), .A2(n261), .B1(n1), .B2(n91), .Z(dout[5]) );
  OAI22M2R U388 ( .A1(n156), .A2(n260), .B1(n1), .B2(n157), .Z(dout[2]) );
  OAI22M2R U389 ( .A1(n178), .A2(n260), .B1(n258), .B2(n179), .Z(dout[1]) );
endmodule


module cmt_sbox_0 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  INVM2R U4 ( .A(n121), .Z(n180) );
  XOR2M2RA U5 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U7 ( .A(n135), .B(n123), .Z(n23) );
  INVM2R U8 ( .A(n117), .Z(n179) );
  XNR3M1R U9 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U11 ( .A(n125), .Z(n178) );
  ND2M2R U12 ( .A(n161), .B(n132), .Z(n156) );
  ND2M2R U13 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U15 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U16 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U17 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U19 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U20 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U22 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U25 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U38 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U39 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U44 ( .A(n179), .B(n178), .Z(n113) );
  XOR2M2RA U45 ( .A(n171), .B(n33), .Z(n165) );
  ND2M2R U47 ( .A(n142), .B(n126), .Z(n33) );
  ND2M2R U48 ( .A(n147), .B(n146), .Z(n149) );
  ND2M2R U49 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U50 ( .A(n119), .B(n129), .Z(n140) );
  XNR3M1R U51 ( .A(n154), .B(n57), .C(n164), .Z(n172) );
  ND2M2R U53 ( .A(n145), .B(n144), .Z(n57) );
  ND2M2R U54 ( .A(n158), .B(n133), .Z(n139) );
  INVM2R U55 ( .A(n95), .Z(n177) );
  INVM2R U56 ( .A(n108), .Z(n176) );
  ND2M2R U58 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U59 ( .A(n102), .Z(n175) );
  ND2M2R U60 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U62 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U64 ( .A(n132), .B(n160), .Z(n107) );
  ND2M2R U65 ( .A(n168), .B(n138), .Z(n155) );
  AN2M2R U67 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U68 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U69 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U71 ( .A(n146), .B(n127), .Z(n101) );
  XNR3M1R U72 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U75 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U76 ( .A(n168), .B(n167), .Z(n170) );
  XOR4M1RA U79 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U83 ( .A(n161), .B(n160), .Z(n162) );
  XOR4M1RA U86 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR4M1RA U96 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  XOR2M2RA U97 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U98 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U99 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U100 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
  XOR3M2RA U101 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
endmodule


module cmt_sbox_1 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  INVM2R U4 ( .A(n121), .Z(n180) );
  XOR2M2RA U5 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U7 ( .A(n135), .B(n123), .Z(n23) );
  INVM2R U8 ( .A(n117), .Z(n179) );
  XNR3M1R U9 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U11 ( .A(n125), .Z(n178) );
  ND2M2R U12 ( .A(n161), .B(n132), .Z(n156) );
  ND2M2R U13 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U15 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U16 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U17 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U19 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U20 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U22 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U25 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U38 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U39 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U44 ( .A(n179), .B(n178), .Z(n113) );
  XOR2M2RA U45 ( .A(n171), .B(n33), .Z(n165) );
  ND2M2R U47 ( .A(n142), .B(n126), .Z(n33) );
  ND2M2R U48 ( .A(n147), .B(n146), .Z(n149) );
  ND2M2R U49 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U50 ( .A(n119), .B(n129), .Z(n140) );
  XNR3M1R U51 ( .A(n154), .B(n57), .C(n164), .Z(n172) );
  ND2M2R U53 ( .A(n145), .B(n144), .Z(n57) );
  ND2M2R U54 ( .A(n158), .B(n133), .Z(n139) );
  INVM2R U55 ( .A(n95), .Z(n177) );
  INVM2R U56 ( .A(n108), .Z(n176) );
  ND2M2R U58 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U59 ( .A(n102), .Z(n175) );
  ND2M2R U60 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U62 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U64 ( .A(n132), .B(n160), .Z(n107) );
  ND2M2R U65 ( .A(n168), .B(n138), .Z(n155) );
  AN2M2R U67 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U68 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U69 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U71 ( .A(n146), .B(n127), .Z(n101) );
  XNR3M1R U72 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U75 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U76 ( .A(n168), .B(n167), .Z(n170) );
  XOR4M1RA U79 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U83 ( .A(n161), .B(n160), .Z(n162) );
  XOR4M1RA U86 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR4M1RA U96 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  XOR2M2RA U97 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U98 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U99 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U100 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
  XOR3M2RA U101 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
endmodule


module cmt_sbox_2 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  INVM2R U4 ( .A(n121), .Z(n180) );
  XOR2M2RA U5 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U7 ( .A(n135), .B(n123), .Z(n23) );
  INVM2R U8 ( .A(n117), .Z(n179) );
  XNR3M1R U9 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U11 ( .A(n125), .Z(n178) );
  ND2M2R U12 ( .A(n161), .B(n132), .Z(n156) );
  ND2M2R U13 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U15 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U16 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U17 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U19 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U20 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U22 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U25 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U38 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U39 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U44 ( .A(n179), .B(n178), .Z(n113) );
  XOR2M2RA U45 ( .A(n171), .B(n33), .Z(n165) );
  ND2M2R U47 ( .A(n142), .B(n126), .Z(n33) );
  ND2M2R U48 ( .A(n147), .B(n146), .Z(n149) );
  ND2M2R U49 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U50 ( .A(n119), .B(n129), .Z(n140) );
  XNR3M1R U51 ( .A(n154), .B(n57), .C(n164), .Z(n172) );
  ND2M2R U53 ( .A(n145), .B(n144), .Z(n57) );
  ND2M2R U54 ( .A(n158), .B(n133), .Z(n139) );
  INVM2R U55 ( .A(n95), .Z(n177) );
  INVM2R U56 ( .A(n108), .Z(n176) );
  ND2M2R U58 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U59 ( .A(n102), .Z(n175) );
  ND2M2R U60 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U62 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U64 ( .A(n132), .B(n160), .Z(n107) );
  ND2M2R U65 ( .A(n168), .B(n138), .Z(n155) );
  AN2M2R U67 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U68 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U69 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U71 ( .A(n146), .B(n127), .Z(n101) );
  XNR3M1R U72 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U75 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U76 ( .A(n168), .B(n167), .Z(n170) );
  XOR4M1RA U79 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U83 ( .A(n161), .B(n160), .Z(n162) );
  XOR4M1RA U86 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR4M1RA U96 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  XOR2M2RA U97 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U98 ( .A(n158), .B(t[2]), .Z(n61) );
  XNR3M1R U99 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XOR3M2RA U100 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
  XOR3M2RA U101 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
endmodule


module cmt_sbox_3 ( t, a );
  input [7:0] t;
  output [7:0] a;
  wire   n23, n33, n57, n61, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n109, n110, n111, n112,
         n113, n114, n115, n116, n117, n118, n119, n120, n121, n122, n123,
         n124, n125, n126, n127, n128, n129, n130, n131, n132, n133, n134,
         n135, n136, n137, n138, n139, n140, n141, n142, n143, n144, n145,
         n146, n147, n148, n149, n150, n151, n152, n153, n154, n155, n156,
         n157, n158, n159, n160, n161, n162, n163, n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180;

  XOR2M2RA U6 ( .A(n163), .B(n162), .Z(n166) );
  XNR2M2RA U10 ( .A(n165), .B(n157), .Z(a[5]) );
  XNR2M2RA U14 ( .A(n149), .B(n148), .Z(n164) );
  XNR2M2RA U18 ( .A(n141), .B(n140), .Z(n150) );
  XOR2M2RA U21 ( .A(n151), .B(n137), .Z(n169) );
  XOR2M2RA U23 ( .A(n134), .B(n148), .Z(a[1]) );
  XOR2M2RA U24 ( .A(n156), .B(n139), .Z(n148) );
  XOR2M2RA U27 ( .A(n135), .B(n131), .Z(n161) );
  XNR2M2RA U28 ( .A(n153), .B(n159), .Z(a[0]) );
  XOR2M2RA U30 ( .A(n158), .B(n168), .Z(n144) );
  XOR2M2RA U31 ( .A(n135), .B(n142), .Z(n168) );
  XOR2M2RA U32 ( .A(n131), .B(n129), .Z(n158) );
  XOR2M2RA U34 ( .A(n141), .B(n137), .Z(n134) );
  XOR2M2RA U37 ( .A(n129), .B(n142), .Z(n147) );
  XOR2M2RA U46 ( .A(n157), .B(n163), .Z(n152) );
  XNR2M2RA U52 ( .A(n114), .B(n113), .Z(n121) );
  XOR2M2RA U57 ( .A(n108), .B(t[1]), .Z(n133) );
  XNR2M2RA U61 ( .A(n104), .B(n103), .Z(n143) );
  XNR2M2RA U63 ( .A(n175), .B(t[4]), .Z(n104) );
  XOR2M2RA U66 ( .A(n175), .B(t[6]), .Z(n145) );
  XNR2M2RA U70 ( .A(n99), .B(t[5]), .Z(n118) );
  XNR2M2RA U73 ( .A(n176), .B(t[0]), .Z(n119) );
  XOR2M2RA U74 ( .A(t[4]), .B(t[5]), .Z(n128) );
  XOR2M2RA U77 ( .A(t[0]), .B(t[6]), .Z(n167) );
  XOR2M2RA U78 ( .A(n116), .B(t[5]), .Z(n138) );
  XOR2M2RA U80 ( .A(n95), .B(t[0]), .Z(n160) );
  XOR2M2RA U81 ( .A(n108), .B(n103), .Z(n132) );
  XOR2M2RA U82 ( .A(t[7]), .B(t[1]), .Z(n103) );
  XNR2M2RA U84 ( .A(n94), .B(t[6]), .Z(n146) );
  XNR2M2RA U85 ( .A(n116), .B(n177), .Z(n127) );
  XOR2M2RA U87 ( .A(n94), .B(n176), .Z(n123) );
  XNR2M2RA U88 ( .A(n95), .B(t[2]), .Z(n94) );
  XNR2M2RA U89 ( .A(n99), .B(n95), .Z(n136) );
  XOR2M2RA U90 ( .A(t[7]), .B(t[5]), .Z(n95) );
  XOR2M2RA U91 ( .A(n93), .B(t[1]), .Z(n99) );
  XNR2M2RA U92 ( .A(n108), .B(n102), .Z(n116) );
  XNR2M2RA U93 ( .A(t[0]), .B(t[2]), .Z(n102) );
  XNR2M2RA U94 ( .A(n93), .B(t[4]), .Z(n108) );
  XNR2M2RA U95 ( .A(t[3]), .B(t[6]), .Z(n93) );
  ND2M2R U2 ( .A(n147), .B(n127), .Z(n141) );
  OAI22M2R U3 ( .A1(n117), .A2(n120), .B1(n180), .B2(n179), .Z(n129) );
  INVM2R U4 ( .A(n121), .Z(n180) );
  XOR2M2RA U5 ( .A(n140), .B(n23), .Z(n171) );
  ND2M2R U7 ( .A(n135), .B(n123), .Z(n23) );
  INVM2R U8 ( .A(n117), .Z(n179) );
  XNR3M1R U9 ( .A(n152), .B(n165), .C(n134), .Z(n153) );
  INVM2R U11 ( .A(n125), .Z(n178) );
  ND2M2R U12 ( .A(n161), .B(n132), .Z(n156) );
  ND2M2R U13 ( .A(n143), .B(n142), .Z(n154) );
  ND2M2R U15 ( .A(n116), .B(n131), .Z(n157) );
  AN2M2R U16 ( .A(n136), .B(n135), .Z(n151) );
  OAI22M2R U17 ( .A1(n180), .A2(n124), .B1(n122), .B2(n121), .Z(n135) );
  NR2M2R U19 ( .A(n125), .B(n120), .Z(n122) );
  OAI22M2R U20 ( .A1(n180), .A2(n120), .B1(n115), .B2(n121), .Z(n131) );
  NR2M2R U22 ( .A(n117), .B(n124), .Z(n115) );
  OAI22M2R U25 ( .A1(n125), .A2(n124), .B1(n180), .B2(n178), .Z(n142) );
  XOR4M1RA U26 ( .A(n98), .B(n97), .C(n107), .D(n96), .Z(n120) );
  NR2M2R U29 ( .A(n136), .B(n123), .Z(n98) );
  ND2M2R U33 ( .A(n138), .B(n167), .Z(n96) );
  ND2M2R U35 ( .A(n127), .B(n146), .Z(n97) );
  XOR4M1RA U36 ( .A(n112), .B(n111), .C(n110), .D(n109), .Z(n125) );
  OR2M2R U38 ( .A(n160), .B(n132), .Z(n111) );
  AN2M2R U39 ( .A(n133), .B(n116), .Z(n112) );
  XOR4M1RA U40 ( .A(n107), .B(n110), .C(n106), .D(n105), .Z(n117) );
  ND2M2R U41 ( .A(n126), .B(n143), .Z(n106) );
  OR2M2R U42 ( .A(n167), .B(n138), .Z(n105) );
  ND2M2R U43 ( .A(n120), .B(n124), .Z(n114) );
  NR2M2R U44 ( .A(n179), .B(n178), .Z(n113) );
  XOR2M2RA U45 ( .A(n171), .B(n33), .Z(n165) );
  ND2M2R U47 ( .A(n142), .B(n126), .Z(n33) );
  ND2M2R U48 ( .A(n147), .B(n146), .Z(n149) );
  ND2M2R U49 ( .A(n118), .B(n129), .Z(n163) );
  ND2M2R U50 ( .A(n119), .B(n129), .Z(n140) );
  XNR3M1R U51 ( .A(n154), .B(n57), .C(n164), .Z(n172) );
  ND2M2R U53 ( .A(n145), .B(n144), .Z(n57) );
  ND2M2R U54 ( .A(n158), .B(n133), .Z(n139) );
  INVM2R U55 ( .A(n95), .Z(n177) );
  INVM2R U56 ( .A(n108), .Z(n176) );
  ND2M2R U58 ( .A(n128), .B(n119), .Z(n109) );
  INVM2R U59 ( .A(n102), .Z(n175) );
  ND2M2R U60 ( .A(n144), .B(n130), .Z(n159) );
  ND2M2R U62 ( .A(n145), .B(n130), .Z(n110) );
  AN2M2R U64 ( .A(n132), .B(n160), .Z(n107) );
  ND2M2R U65 ( .A(n168), .B(n138), .Z(n155) );
  AN2M2R U67 ( .A(n128), .B(n131), .Z(n137) );
  XOR4M1RA U68 ( .A(n107), .B(n109), .C(n101), .D(n100), .Z(n124) );
  AN2M2R U69 ( .A(n118), .B(t[2]), .Z(n100) );
  OR2M2R U71 ( .A(n146), .B(n127), .Z(n101) );
  XOR2M2RA U72 ( .A(n159), .B(n61), .Z(n173) );
  ND2M2R U75 ( .A(n158), .B(t[2]), .Z(n61) );
  XOR4M1RA U76 ( .A(n173), .B(n166), .C(n165), .D(n164), .Z(a[6]) );
  ND2M2R U79 ( .A(n161), .B(n160), .Z(n162) );
  XNR3M1R U83 ( .A(t[5]), .B(t[1]), .C(n102), .Z(n130) );
  XNR3M1R U86 ( .A(n174), .B(n173), .C(n172), .Z(a[7]) );
  XNR3M1R U96 ( .A(n171), .B(n170), .C(n169), .Z(n174) );
  ND2M2R U97 ( .A(n168), .B(n167), .Z(n170) );
  XOR4M1RA U98 ( .A(n156), .B(n155), .C(n154), .D(n153), .Z(a[4]) );
  XOR4M1RA U99 ( .A(n152), .B(n151), .C(n150), .D(n172), .Z(a[3]) );
  XOR3M2RA U100 ( .A(t[3]), .B(n177), .C(n104), .Z(n126) );
  XOR3M2RA U101 ( .A(n169), .B(n139), .C(n155), .Z(a[2]) );
endmodule


module KeyExpantion ( ki, ko, r );
  input [127:0] ki;
  output [127:0] ko;
  input [7:0] r;

  wire   [31:0] gw32;

  cmt_sbox_3 s1 ( .t(ki[23:16]), .a(gw32[31:24]) );
  cmt_sbox_2 s2 ( .t(ki[15:8]), .a(gw32[23:16]) );
  cmt_sbox_1 s3 ( .t(ki[7:0]), .a(gw32[15:8]) );
  cmt_sbox_0 s4 ( .t(ki[31:24]), .a(gw32[7:0]) );
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
  XOR3M2RA U92 ( .A(r[6]), .B(ki[126]), .C(gw32[30]), .Z(ko[126]) );
  XOR3M2RA U93 ( .A(r[7]), .B(ki[127]), .C(gw32[31]), .Z(ko[127]) );
  XOR3M2RA U94 ( .A(r[4]), .B(ki[124]), .C(gw32[28]), .Z(ko[124]) );
  XOR3M2RA U95 ( .A(r[3]), .B(ki[123]), .C(gw32[27]), .Z(ko[123]) );
  XOR3M2RA U96 ( .A(r[0]), .B(ki[120]), .C(gw32[24]), .Z(ko[120]) );
  XOR3M2RA U97 ( .A(r[5]), .B(ki[125]), .C(gw32[29]), .Z(ko[125]) );
  XOR3M2RA U98 ( .A(r[2]), .B(ki[122]), .C(gw32[26]), .Z(ko[122]) );
  XOR3M2RA U99 ( .A(r[1]), .B(ki[121]), .C(gw32[25]), .Z(ko[121]) );
endmodule


module AES_Composite_enc ( Kin, Din, Dout, EN, CLK, RSTn );
  input [127:0] Kin;
  input [127:0] Din;
  output [127:0] Dout;
  input EN, CLK, RSTn;
  wire   sel, \rnd[9] , \rnd[8] , \rnd[7] , \rnd[6] , \rnd[5] , \rnd[4] ,
         \rnd[3] , \rnd[2] , \rnd[1] , \rnd[0] , N7, N8, N9, N10, N11, N12,
         N13, N14, N15, N16, N147, N148, N149, N150, N151, N152, N153, N154,
         N155, N156, N157, N158, N159, N160, N161, N162, N163, N164, N165,
         N166, N167, N168, N169, N170, N171, N172, N173, N174, N175, N176,
         N177, N178, N179, N180, N181, N182, N183, N184, N185, N186, N187,
         N188, N189, N190, N191, N192, N193, N194, N195, N196, N197, N198,
         N199, N200, N201, N202, N203, N204, N205, N206, N207, N208, N209,
         N210, N211, N212, N213, N214, N215, N216, N217, N218, N219, N220,
         N221, N222, N223, N224, N225, N226, N227, N228, N229, N230, N231,
         N232, N233, N234, N235, N236, N237, N238, N239, N240, N241, N242,
         N243, N244, N245, N246, N247, N248, N249, N250, N251, N252, N253,
         N254, N255, N256, N257, N258, N259, N260, N261, N262, N263, N264,
         N265, N266, N267, N268, N269, N270, N271, N272, N273, N274, N277,
         N278, N279, N280, N281, N282, N283, N284, N285, N286, N287, N288,
         N289, N290, N291, N292, N293, N294, N295, N296, N297, N298, N299,
         N300, N301, N302, N303, N304, N305, N306, N307, N308, N309, N310,
         N311, N312, N313, N314, N315, N316, N317, N318, N319, N320, N321,
         N322, N323, N324, N325, N326, N327, N328, N329, N330, N331, N332,
         N333, N334, N335, N336, N337, N338, N339, N340, N341, N342, N343,
         N344, N345, N346, N347, N348, N349, N350, N351, N352, N353, N354,
         N355, N356, N357, N358, N359, N360, N361, N362, N363, N364, N365,
         N366, N367, N368, N369, N370, N371, N372, N373, N374, N375, N376,
         N377, N378, N379, N380, N381, N382, N383, N384, N385, N386, N387,
         N388, N389, N390, N391, N392, N393, N394, N395, N396, N397, N398,
         N399, N400, N401, N402, N403, N404, N415, N416, N417, N418, N419,
         N420, N421, N422, n1, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144;
  wire   [127:0] dat_next;
  wire   [127:0] rkey_next;
  wire   [127:0] seed;
  wire   [127:0] sout;
  wire   [127:0] cntm;
  wire   [127:0] rkey;
  wire   [7:0] rcon;

  AES_Core aes_core ( .din(Dout), .dout(dat_next), .kin(rkey_next), .sel(sel), 
        .seed(seed), .sout(sout), .cntm({1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 
        1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 
        1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b1, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b0, 1'b0, 1'b1, 
        1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 1'b1, 1'b1, 1'b0, 1'b1, 1'b0, 1'b1, 
        1'b0, 1'b1, 1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b1, 1'b0, 1'b1, 1'b1, 
        1'b1, 1'b0}) );
  KeyExpantion keyexpantion ( .ki(rkey), .ko(rkey_next), .r(rcon) );
  DFQSM1RA \rnd_reg[0]  ( .D(N7), .CK(CLK), .SB(RSTn), .Q(\rnd[0] ) );
  DFQRM2RA \rnd_reg[1]  ( .D(N8), .CK(CLK), .RB(RSTn), .Q(\rnd[1] ) );
  DFQRM2RA \rnd_reg[2]  ( .D(N9), .CK(CLK), .RB(RSTn), .Q(\rnd[2] ) );
  DFQRM2RA \rnd_reg[3]  ( .D(N10), .CK(CLK), .RB(RSTn), .Q(\rnd[3] ) );
  DFQRM2RA \rnd_reg[4]  ( .D(N11), .CK(CLK), .RB(RSTn), .Q(\rnd[4] ) );
  DFQRM2RA \rnd_reg[5]  ( .D(N12), .CK(CLK), .RB(RSTn), .Q(\rnd[5] ) );
  DFQRM2RA \rnd_reg[6]  ( .D(N13), .CK(CLK), .RB(RSTn), .Q(\rnd[6] ) );
  DFQRM2RA \rnd_reg[7]  ( .D(N14), .CK(CLK), .RB(RSTn), .Q(\rnd[7] ) );
  DFQRM2RA \rnd_reg[8]  ( .D(N15), .CK(CLK), .RB(RSTn), .Q(\rnd[8] ) );
  DFQRM2RA \rnd_reg[9]  ( .D(N16), .CK(CLK), .RB(RSTn), .Q(\rnd[9] ) );
  DFEQRM2RA sel_reg ( .D(\rnd[9] ), .E(EN), .CK(CLK), .RB(RSTn), .Q(sel) );
  DFQSM1RA \rcon_reg[0]  ( .D(N415), .CK(CLK), .SB(RSTn), .Q(rcon[0]) );
  DFQRM2RA \rcon_reg[1]  ( .D(N416), .CK(CLK), .RB(RSTn), .Q(rcon[1]) );
  DFQRM2RA \rcon_reg[2]  ( .D(N417), .CK(CLK), .RB(RSTn), .Q(rcon[2]) );
  DFQRM2RA \rcon_reg[3]  ( .D(N418), .CK(CLK), .RB(RSTn), .Q(rcon[3]) );
  DFQRM2RA \rcon_reg[4]  ( .D(N419), .CK(CLK), .RB(RSTn), .Q(rcon[4]) );
  DFQRM2RA \rcon_reg[5]  ( .D(N420), .CK(CLK), .RB(RSTn), .Q(rcon[5]) );
  DFQRM2RA \rcon_reg[6]  ( .D(N421), .CK(CLK), .RB(RSTn), .Q(rcon[6]) );
  DFQRM2RA \rcon_reg[7]  ( .D(N422), .CK(CLK), .RB(RSTn), .Q(rcon[7]) );
  DFEQRM2RA \rkey_reg[0]  ( .D(N277), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[0])
         );
  DFEQRM2RA \rkey_reg[1]  ( .D(N278), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[1])
         );
  DFEQRM2RA \rkey_reg[2]  ( .D(N279), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[2])
         );
  DFEQRM2RA \rkey_reg[3]  ( .D(N280), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[3])
         );
  DFEQRM2RA \rkey_reg[4]  ( .D(N281), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[4])
         );
  DFEQRM2RA \rkey_reg[5]  ( .D(N282), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[5])
         );
  DFEQRM2RA \rkey_reg[6]  ( .D(N283), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[6])
         );
  DFEQRM2RA \rkey_reg[7]  ( .D(N284), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[7])
         );
  DFEQRM2RA \rkey_reg[8]  ( .D(N285), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[8])
         );
  DFEQRM2RA \rkey_reg[9]  ( .D(N286), .E(EN), .CK(CLK), .RB(RSTn), .Q(rkey[9])
         );
  DFEQRM2RA \rkey_reg[10]  ( .D(N287), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[10]) );
  DFEQRM2RA \rkey_reg[11]  ( .D(N288), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[11]) );
  DFEQRM2RA \rkey_reg[12]  ( .D(N289), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[12]) );
  DFEQRM2RA \rkey_reg[13]  ( .D(N290), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[13]) );
  DFEQRM2RA \rkey_reg[14]  ( .D(N291), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[14]) );
  DFEQRM2RA \rkey_reg[15]  ( .D(N292), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[15]) );
  DFEQRM2RA \rkey_reg[16]  ( .D(N293), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[16]) );
  DFEQRM2RA \rkey_reg[17]  ( .D(N294), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[17]) );
  DFEQRM2RA \rkey_reg[18]  ( .D(N295), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[18]) );
  DFEQRM2RA \rkey_reg[19]  ( .D(N296), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[19]) );
  DFEQRM2RA \rkey_reg[20]  ( .D(N297), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[20]) );
  DFEQRM2RA \rkey_reg[21]  ( .D(N298), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[21]) );
  DFEQRM2RA \rkey_reg[22]  ( .D(N299), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[22]) );
  DFEQRM2RA \rkey_reg[23]  ( .D(N300), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[23]) );
  DFEQRM2RA \rkey_reg[24]  ( .D(N301), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[24]) );
  DFEQRM2RA \rkey_reg[25]  ( .D(N302), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[25]) );
  DFEQRM2RA \rkey_reg[26]  ( .D(N303), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[26]) );
  DFEQRM2RA \rkey_reg[27]  ( .D(N304), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[27]) );
  DFEQRM2RA \rkey_reg[28]  ( .D(N305), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[28]) );
  DFEQRM2RA \rkey_reg[29]  ( .D(N306), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[29]) );
  DFEQRM2RA \rkey_reg[30]  ( .D(N307), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[30]) );
  DFEQRM2RA \rkey_reg[31]  ( .D(N308), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[31]) );
  DFEQRM2RA \rkey_reg[32]  ( .D(N309), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[32]) );
  DFEQRM2RA \rkey_reg[33]  ( .D(N310), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[33]) );
  DFEQRM2RA \rkey_reg[34]  ( .D(N311), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[34]) );
  DFEQRM2RA \rkey_reg[35]  ( .D(N312), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[35]) );
  DFEQRM2RA \rkey_reg[36]  ( .D(N313), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[36]) );
  DFEQRM2RA \rkey_reg[37]  ( .D(N314), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[37]) );
  DFEQRM2RA \rkey_reg[38]  ( .D(N315), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[38]) );
  DFEQRM2RA \rkey_reg[39]  ( .D(N316), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[39]) );
  DFEQRM2RA \rkey_reg[40]  ( .D(N317), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[40]) );
  DFEQRM2RA \rkey_reg[41]  ( .D(N318), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[41]) );
  DFEQRM2RA \rkey_reg[42]  ( .D(N319), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[42]) );
  DFEQRM2RA \rkey_reg[43]  ( .D(N320), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[43]) );
  DFEQRM2RA \rkey_reg[44]  ( .D(N321), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[44]) );
  DFEQRM2RA \rkey_reg[45]  ( .D(N322), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[45]) );
  DFEQRM2RA \rkey_reg[46]  ( .D(N323), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[46]) );
  DFEQRM2RA \rkey_reg[47]  ( .D(N324), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[47]) );
  DFEQRM2RA \rkey_reg[48]  ( .D(N325), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[48]) );
  DFEQRM2RA \rkey_reg[49]  ( .D(N326), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[49]) );
  DFEQRM2RA \rkey_reg[50]  ( .D(N327), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[50]) );
  DFEQRM2RA \rkey_reg[51]  ( .D(N328), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[51]) );
  DFEQRM2RA \rkey_reg[52]  ( .D(N329), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[52]) );
  DFEQRM2RA \rkey_reg[53]  ( .D(N330), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[53]) );
  DFEQRM2RA \rkey_reg[54]  ( .D(N331), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[54]) );
  DFEQRM2RA \rkey_reg[55]  ( .D(N332), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[55]) );
  DFEQRM2RA \rkey_reg[56]  ( .D(N333), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[56]) );
  DFEQRM2RA \rkey_reg[57]  ( .D(N334), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[57]) );
  DFEQRM2RA \rkey_reg[58]  ( .D(N335), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[58]) );
  DFEQRM2RA \rkey_reg[59]  ( .D(N336), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[59]) );
  DFEQRM2RA \rkey_reg[60]  ( .D(N337), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[60]) );
  DFEQRM2RA \rkey_reg[61]  ( .D(N338), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[61]) );
  DFEQRM2RA \rkey_reg[62]  ( .D(N339), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[62]) );
  DFEQRM2RA \rkey_reg[63]  ( .D(N340), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[63]) );
  DFEQRM2RA \rkey_reg[64]  ( .D(N341), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[64]) );
  DFEQRM2RA \rkey_reg[65]  ( .D(N342), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[65]) );
  DFEQRM2RA \rkey_reg[66]  ( .D(N343), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[66]) );
  DFEQRM2RA \rkey_reg[67]  ( .D(N344), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[67]) );
  DFEQRM2RA \rkey_reg[68]  ( .D(N345), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[68]) );
  DFEQRM2RA \rkey_reg[69]  ( .D(N346), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[69]) );
  DFEQRM2RA \rkey_reg[70]  ( .D(N347), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[70]) );
  DFEQRM2RA \rkey_reg[71]  ( .D(N348), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[71]) );
  DFEQRM2RA \rkey_reg[72]  ( .D(N349), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[72]) );
  DFEQRM2RA \rkey_reg[73]  ( .D(N350), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[73]) );
  DFEQRM2RA \rkey_reg[74]  ( .D(N351), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[74]) );
  DFEQRM2RA \rkey_reg[75]  ( .D(N352), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[75]) );
  DFEQRM2RA \rkey_reg[76]  ( .D(N353), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[76]) );
  DFEQRM2RA \rkey_reg[77]  ( .D(N354), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[77]) );
  DFEQRM2RA \rkey_reg[78]  ( .D(N355), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[78]) );
  DFEQRM2RA \rkey_reg[79]  ( .D(N356), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[79]) );
  DFEQRM2RA \rkey_reg[80]  ( .D(N357), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[80]) );
  DFEQRM2RA \rkey_reg[81]  ( .D(N358), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[81]) );
  DFEQRM2RA \rkey_reg[82]  ( .D(N359), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[82]) );
  DFEQRM2RA \rkey_reg[83]  ( .D(N360), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[83]) );
  DFEQRM2RA \rkey_reg[84]  ( .D(N361), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[84]) );
  DFEQRM2RA \rkey_reg[85]  ( .D(N362), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[85]) );
  DFEQRM2RA \rkey_reg[86]  ( .D(N363), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[86]) );
  DFEQRM2RA \rkey_reg[87]  ( .D(N364), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[87]) );
  DFEQRM2RA \rkey_reg[88]  ( .D(N365), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[88]) );
  DFEQRM2RA \rkey_reg[89]  ( .D(N366), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[89]) );
  DFEQRM2RA \rkey_reg[90]  ( .D(N367), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[90]) );
  DFEQRM2RA \rkey_reg[91]  ( .D(N368), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[91]) );
  DFEQRM2RA \rkey_reg[92]  ( .D(N369), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[92]) );
  DFEQRM2RA \rkey_reg[93]  ( .D(N370), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[93]) );
  DFEQRM2RA \rkey_reg[94]  ( .D(N371), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[94]) );
  DFEQRM2RA \rkey_reg[95]  ( .D(N372), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[95]) );
  DFEQRM2RA \rkey_reg[96]  ( .D(N373), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[96]) );
  DFEQRM2RA \rkey_reg[97]  ( .D(N374), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[97]) );
  DFEQRM2RA \rkey_reg[98]  ( .D(N375), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[98]) );
  DFEQRM2RA \rkey_reg[99]  ( .D(N376), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[99]) );
  DFEQRM2RA \rkey_reg[100]  ( .D(N377), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[100]) );
  DFEQRM2RA \rkey_reg[101]  ( .D(N378), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[101]) );
  DFEQRM2RA \rkey_reg[102]  ( .D(N379), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[102]) );
  DFEQRM2RA \rkey_reg[103]  ( .D(N380), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[103]) );
  DFEQRM2RA \rkey_reg[104]  ( .D(N381), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[104]) );
  DFEQRM2RA \rkey_reg[105]  ( .D(N382), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[105]) );
  DFEQRM2RA \rkey_reg[106]  ( .D(N383), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[106]) );
  DFEQRM2RA \rkey_reg[107]  ( .D(N384), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[107]) );
  DFEQRM2RA \rkey_reg[108]  ( .D(N385), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[108]) );
  DFEQRM2RA \rkey_reg[109]  ( .D(N386), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[109]) );
  DFEQRM2RA \rkey_reg[110]  ( .D(N387), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[110]) );
  DFEQRM2RA \rkey_reg[111]  ( .D(N388), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[111]) );
  DFEQRM2RA \rkey_reg[112]  ( .D(N389), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[112]) );
  DFEQRM2RA \rkey_reg[113]  ( .D(N390), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[113]) );
  DFEQRM2RA \rkey_reg[114]  ( .D(N391), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[114]) );
  DFEQRM2RA \rkey_reg[115]  ( .D(N392), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[115]) );
  DFEQRM2RA \rkey_reg[116]  ( .D(N393), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[116]) );
  DFEQRM2RA \rkey_reg[117]  ( .D(N394), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[117]) );
  DFEQRM2RA \rkey_reg[118]  ( .D(N395), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[118]) );
  DFEQRM2RA \rkey_reg[119]  ( .D(N396), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[119]) );
  DFEQRM2RA \rkey_reg[120]  ( .D(N397), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[120]) );
  DFEQRM2RA \rkey_reg[121]  ( .D(N398), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[121]) );
  DFEQRM2RA \rkey_reg[122]  ( .D(N399), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[122]) );
  DFEQRM2RA \rkey_reg[123]  ( .D(N400), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[123]) );
  DFEQRM2RA \rkey_reg[124]  ( .D(N401), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[124]) );
  DFEQRM2RA \rkey_reg[125]  ( .D(N402), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[125]) );
  DFEQRM2RA \rkey_reg[126]  ( .D(N403), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[126]) );
  DFEQRM2RA \rkey_reg[127]  ( .D(N404), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        rkey[127]) );
  DFQSM1RA \seed_reg[0]  ( .D(sout[0]), .CK(CLK), .SB(RSTn), .Q(seed[0]) );
  DFQRM2RA \seed_reg[1]  ( .D(sout[1]), .CK(CLK), .RB(RSTn), .Q(seed[1]) );
  DFQSM1RA \seed_reg[2]  ( .D(sout[2]), .CK(CLK), .SB(RSTn), .Q(seed[2]) );
  DFQRM2RA \seed_reg[3]  ( .D(sout[3]), .CK(CLK), .RB(RSTn), .Q(seed[3]) );
  DFQSM1RA \seed_reg[4]  ( .D(sout[4]), .CK(CLK), .SB(RSTn), .Q(seed[4]) );
  DFQSM1RA \seed_reg[5]  ( .D(sout[5]), .CK(CLK), .SB(RSTn), .Q(seed[5]) );
  DFQRM2RA \seed_reg[6]  ( .D(sout[6]), .CK(CLK), .RB(RSTn), .Q(seed[6]) );
  DFQRM2RA \seed_reg[7]  ( .D(sout[7]), .CK(CLK), .RB(RSTn), .Q(seed[7]) );
  DFQSM1RA \seed_reg[8]  ( .D(sout[8]), .CK(CLK), .SB(RSTn), .Q(seed[8]) );
  DFQRM2RA \seed_reg[9]  ( .D(sout[9]), .CK(CLK), .RB(RSTn), .Q(seed[9]) );
  DFQRM2RA \seed_reg[10]  ( .D(sout[10]), .CK(CLK), .RB(RSTn), .Q(seed[10]) );
  DFQSM1RA \seed_reg[11]  ( .D(sout[11]), .CK(CLK), .SB(RSTn), .Q(seed[11]) );
  DFQRM2RA \seed_reg[12]  ( .D(sout[12]), .CK(CLK), .RB(RSTn), .Q(seed[12]) );
  DFQSM1RA \seed_reg[13]  ( .D(sout[13]), .CK(CLK), .SB(RSTn), .Q(seed[13]) );
  DFQSM1RA \seed_reg[14]  ( .D(sout[14]), .CK(CLK), .SB(RSTn), .Q(seed[14]) );
  DFQRM2RA \seed_reg[15]  ( .D(sout[15]), .CK(CLK), .RB(RSTn), .Q(seed[15]) );
  DFQSM1RA \seed_reg[16]  ( .D(sout[16]), .CK(CLK), .SB(RSTn), .Q(seed[16]) );
  DFQRM2RA \seed_reg[17]  ( .D(sout[17]), .CK(CLK), .RB(RSTn), .Q(seed[17]) );
  DFQSM1RA \seed_reg[18]  ( .D(sout[18]), .CK(CLK), .SB(RSTn), .Q(seed[18]) );
  DFQRM2RA \seed_reg[19]  ( .D(sout[19]), .CK(CLK), .RB(RSTn), .Q(seed[19]) );
  DFQRM2RA \seed_reg[20]  ( .D(sout[20]), .CK(CLK), .RB(RSTn), .Q(seed[20]) );
  DFQSM1RA \seed_reg[21]  ( .D(sout[21]), .CK(CLK), .SB(RSTn), .Q(seed[21]) );
  DFQRM2RA \seed_reg[22]  ( .D(sout[22]), .CK(CLK), .RB(RSTn), .Q(seed[22]) );
  DFQRM2RA \seed_reg[23]  ( .D(sout[23]), .CK(CLK), .RB(RSTn), .Q(seed[23]) );
  DFQSM1RA \seed_reg[24]  ( .D(sout[24]), .CK(CLK), .SB(RSTn), .Q(seed[24]) );
  DFQSM1RA \seed_reg[25]  ( .D(sout[25]), .CK(CLK), .SB(RSTn), .Q(seed[25]) );
  DFQRM2RA \seed_reg[26]  ( .D(sout[26]), .CK(CLK), .RB(RSTn), .Q(seed[26]) );
  DFQRM2RA \seed_reg[27]  ( .D(sout[27]), .CK(CLK), .RB(RSTn), .Q(seed[27]) );
  DFQRM2RA \seed_reg[28]  ( .D(sout[28]), .CK(CLK), .RB(RSTn), .Q(seed[28]) );
  DFQSM1RA \seed_reg[29]  ( .D(sout[29]), .CK(CLK), .SB(RSTn), .Q(seed[29]) );
  DFQSM1RA \seed_reg[30]  ( .D(sout[30]), .CK(CLK), .SB(RSTn), .Q(seed[30]) );
  DFQRM2RA \seed_reg[31]  ( .D(sout[31]), .CK(CLK), .RB(RSTn), .Q(seed[31]) );
  DFQSM1RA \seed_reg[32]  ( .D(sout[32]), .CK(CLK), .SB(RSTn), .Q(seed[32]) );
  DFQRM2RA \seed_reg[33]  ( .D(sout[33]), .CK(CLK), .RB(RSTn), .Q(seed[33]) );
  DFQRM2RA \seed_reg[34]  ( .D(sout[34]), .CK(CLK), .RB(RSTn), .Q(seed[34]) );
  DFQSM1RA \seed_reg[35]  ( .D(sout[35]), .CK(CLK), .SB(RSTn), .Q(seed[35]) );
  DFQRM2RA \seed_reg[36]  ( .D(sout[36]), .CK(CLK), .RB(RSTn), .Q(seed[36]) );
  DFQRM2RA \seed_reg[37]  ( .D(sout[37]), .CK(CLK), .RB(RSTn), .Q(seed[37]) );
  DFQRM2RA \seed_reg[38]  ( .D(sout[38]), .CK(CLK), .RB(RSTn), .Q(seed[38]) );
  DFQSM1RA \seed_reg[39]  ( .D(sout[39]), .CK(CLK), .SB(RSTn), .Q(seed[39]) );
  DFQSM1RA \seed_reg[40]  ( .D(sout[40]), .CK(CLK), .SB(RSTn), .Q(seed[40]) );
  DFQRM2RA \seed_reg[41]  ( .D(sout[41]), .CK(CLK), .RB(RSTn), .Q(seed[41]) );
  DFQSM1RA \seed_reg[42]  ( .D(sout[42]), .CK(CLK), .SB(RSTn), .Q(seed[42]) );
  DFQRM2RA \seed_reg[43]  ( .D(sout[43]), .CK(CLK), .RB(RSTn), .Q(seed[43]) );
  DFQRM2RA \seed_reg[44]  ( .D(sout[44]), .CK(CLK), .RB(RSTn), .Q(seed[44]) );
  DFQSM1RA \seed_reg[45]  ( .D(sout[45]), .CK(CLK), .SB(RSTn), .Q(seed[45]) );
  DFQSM1RA \seed_reg[46]  ( .D(sout[46]), .CK(CLK), .SB(RSTn), .Q(seed[46]) );
  DFQRM2RA \seed_reg[47]  ( .D(sout[47]), .CK(CLK), .RB(RSTn), .Q(seed[47]) );
  DFQSM1RA \seed_reg[48]  ( .D(sout[48]), .CK(CLK), .SB(RSTn), .Q(seed[48]) );
  DFQRM2RA \seed_reg[49]  ( .D(sout[49]), .CK(CLK), .RB(RSTn), .Q(seed[49]) );
  DFQSM1RA \seed_reg[50]  ( .D(sout[50]), .CK(CLK), .SB(RSTn), .Q(seed[50]) );
  DFQRM2RA \seed_reg[51]  ( .D(sout[51]), .CK(CLK), .RB(RSTn), .Q(seed[51]) );
  DFQRM2RA \seed_reg[52]  ( .D(sout[52]), .CK(CLK), .RB(RSTn), .Q(seed[52]) );
  DFQSM1RA \seed_reg[53]  ( .D(sout[53]), .CK(CLK), .SB(RSTn), .Q(seed[53]) );
  DFQRM2RA \seed_reg[54]  ( .D(sout[54]), .CK(CLK), .RB(RSTn), .Q(seed[54]) );
  DFQRM2RA \seed_reg[55]  ( .D(sout[55]), .CK(CLK), .RB(RSTn), .Q(seed[55]) );
  DFQSM1RA \seed_reg[56]  ( .D(sout[56]), .CK(CLK), .SB(RSTn), .Q(seed[56]) );
  DFQSM1RA \seed_reg[57]  ( .D(sout[57]), .CK(CLK), .SB(RSTn), .Q(seed[57]) );
  DFQRM2RA \seed_reg[58]  ( .D(sout[58]), .CK(CLK), .RB(RSTn), .Q(seed[58]) );
  DFQRM2RA \seed_reg[59]  ( .D(sout[59]), .CK(CLK), .RB(RSTn), .Q(seed[59]) );
  DFQRM2RA \seed_reg[60]  ( .D(sout[60]), .CK(CLK), .RB(RSTn), .Q(seed[60]) );
  DFQSM1RA \seed_reg[61]  ( .D(sout[61]), .CK(CLK), .SB(RSTn), .Q(seed[61]) );
  DFQSM1RA \seed_reg[62]  ( .D(sout[62]), .CK(CLK), .SB(RSTn), .Q(seed[62]) );
  DFQRM2RA \seed_reg[63]  ( .D(sout[63]), .CK(CLK), .RB(RSTn), .Q(seed[63]) );
  DFQSM1RA \seed_reg[64]  ( .D(sout[64]), .CK(CLK), .SB(RSTn), .Q(seed[64]) );
  DFQSM1RA \seed_reg[65]  ( .D(sout[65]), .CK(CLK), .SB(RSTn), .Q(seed[65]) );
  DFQRM2RA \seed_reg[66]  ( .D(sout[66]), .CK(CLK), .RB(RSTn), .Q(seed[66]) );
  DFQRM2RA \seed_reg[67]  ( .D(sout[67]), .CK(CLK), .RB(RSTn), .Q(seed[67]) );
  DFQRM2RA \seed_reg[68]  ( .D(sout[68]), .CK(CLK), .RB(RSTn), .Q(seed[68]) );
  DFQSM1RA \seed_reg[69]  ( .D(sout[69]), .CK(CLK), .SB(RSTn), .Q(seed[69]) );
  DFQSM1RA \seed_reg[70]  ( .D(sout[70]), .CK(CLK), .SB(RSTn), .Q(seed[70]) );
  DFQRM2RA \seed_reg[71]  ( .D(sout[71]), .CK(CLK), .RB(RSTn), .Q(seed[71]) );
  DFQRM2RA \seed_reg[72]  ( .D(sout[72]), .CK(CLK), .RB(RSTn), .Q(seed[72]) );
  DFQRM2RA \seed_reg[73]  ( .D(sout[73]), .CK(CLK), .RB(RSTn), .Q(seed[73]) );
  DFQSM1RA \seed_reg[74]  ( .D(sout[74]), .CK(CLK), .SB(RSTn), .Q(seed[74]) );
  DFQRM2RA \seed_reg[75]  ( .D(sout[75]), .CK(CLK), .RB(RSTn), .Q(seed[75]) );
  DFQRM2RA \seed_reg[76]  ( .D(sout[76]), .CK(CLK), .RB(RSTn), .Q(seed[76]) );
  DFQSM1RA \seed_reg[77]  ( .D(sout[77]), .CK(CLK), .SB(RSTn), .Q(seed[77]) );
  DFQSM1RA \seed_reg[78]  ( .D(sout[78]), .CK(CLK), .SB(RSTn), .Q(seed[78]) );
  DFQRM2RA \seed_reg[79]  ( .D(sout[79]), .CK(CLK), .RB(RSTn), .Q(seed[79]) );
  DFQSM1RA \seed_reg[80]  ( .D(sout[80]), .CK(CLK), .SB(RSTn), .Q(seed[80]) );
  DFQRM2RA \seed_reg[81]  ( .D(sout[81]), .CK(CLK), .RB(RSTn), .Q(seed[81]) );
  DFQRM2RA \seed_reg[82]  ( .D(sout[82]), .CK(CLK), .RB(RSTn), .Q(seed[82]) );
  DFQSM1RA \seed_reg[83]  ( .D(sout[83]), .CK(CLK), .SB(RSTn), .Q(seed[83]) );
  DFQSM1RA \seed_reg[84]  ( .D(sout[84]), .CK(CLK), .SB(RSTn), .Q(seed[84]) );
  DFQRM2RA \seed_reg[85]  ( .D(sout[85]), .CK(CLK), .RB(RSTn), .Q(seed[85]) );
  DFQRM2RA \seed_reg[86]  ( .D(sout[86]), .CK(CLK), .RB(RSTn), .Q(seed[86]) );
  DFQSM1RA \seed_reg[87]  ( .D(sout[87]), .CK(CLK), .SB(RSTn), .Q(seed[87]) );
  DFQSM1RA \seed_reg[88]  ( .D(sout[88]), .CK(CLK), .SB(RSTn), .Q(seed[88]) );
  DFQRM2RA \seed_reg[89]  ( .D(sout[89]), .CK(CLK), .RB(RSTn), .Q(seed[89]) );
  DFQSM1RA \seed_reg[90]  ( .D(sout[90]), .CK(CLK), .SB(RSTn), .Q(seed[90]) );
  DFQRM2RA \seed_reg[91]  ( .D(sout[91]), .CK(CLK), .RB(RSTn), .Q(seed[91]) );
  DFQRM2RA \seed_reg[92]  ( .D(sout[92]), .CK(CLK), .RB(RSTn), .Q(seed[92]) );
  DFQSM1RA \seed_reg[93]  ( .D(sout[93]), .CK(CLK), .SB(RSTn), .Q(seed[93]) );
  DFQSM1RA \seed_reg[94]  ( .D(sout[94]), .CK(CLK), .SB(RSTn), .Q(seed[94]) );
  DFQRM2RA \seed_reg[95]  ( .D(sout[95]), .CK(CLK), .RB(RSTn), .Q(seed[95]) );
  DFQSM1RA \seed_reg[96]  ( .D(sout[96]), .CK(CLK), .SB(RSTn), .Q(seed[96]) );
  DFQSM1RA \seed_reg[97]  ( .D(sout[97]), .CK(CLK), .SB(RSTn), .Q(seed[97]) );
  DFQRM2RA \seed_reg[98]  ( .D(sout[98]), .CK(CLK), .RB(RSTn), .Q(seed[98]) );
  DFQRM2RA \seed_reg[99]  ( .D(sout[99]), .CK(CLK), .RB(RSTn), .Q(seed[99]) );
  DFQRM2RA \seed_reg[100]  ( .D(sout[100]), .CK(CLK), .RB(RSTn), .Q(seed[100])
         );
  DFQSM1RA \seed_reg[101]  ( .D(sout[101]), .CK(CLK), .SB(RSTn), .Q(seed[101])
         );
  DFQSM1RA \seed_reg[102]  ( .D(sout[102]), .CK(CLK), .SB(RSTn), .Q(seed[102])
         );
  DFQRM2RA \seed_reg[103]  ( .D(sout[103]), .CK(CLK), .RB(RSTn), .Q(seed[103])
         );
  DFQSM1RA \seed_reg[104]  ( .D(sout[104]), .CK(CLK), .SB(RSTn), .Q(seed[104])
         );
  DFQRM2RA \seed_reg[105]  ( .D(sout[105]), .CK(CLK), .RB(RSTn), .Q(seed[105])
         );
  DFQRM2RA \seed_reg[106]  ( .D(sout[106]), .CK(CLK), .RB(RSTn), .Q(seed[106])
         );
  DFQSM1RA \seed_reg[107]  ( .D(sout[107]), .CK(CLK), .SB(RSTn), .Q(seed[107])
         );
  DFQSM1RA \seed_reg[108]  ( .D(sout[108]), .CK(CLK), .SB(RSTn), .Q(seed[108])
         );
  DFQRM2RA \seed_reg[109]  ( .D(sout[109]), .CK(CLK), .RB(RSTn), .Q(seed[109])
         );
  DFQSM1RA \seed_reg[110]  ( .D(sout[110]), .CK(CLK), .SB(RSTn), .Q(seed[110])
         );
  DFQRM2RA \seed_reg[111]  ( .D(sout[111]), .CK(CLK), .RB(RSTn), .Q(seed[111])
         );
  DFQRM2RA \seed_reg[112]  ( .D(sout[112]), .CK(CLK), .RB(RSTn), .Q(seed[112])
         );
  DFQSM1RA \seed_reg[113]  ( .D(sout[113]), .CK(CLK), .SB(RSTn), .Q(seed[113])
         );
  DFQSM1RA \seed_reg[114]  ( .D(sout[114]), .CK(CLK), .SB(RSTn), .Q(seed[114])
         );
  DFQRM2RA \seed_reg[115]  ( .D(sout[115]), .CK(CLK), .RB(RSTn), .Q(seed[115])
         );
  DFQSM1RA \seed_reg[116]  ( .D(sout[116]), .CK(CLK), .SB(RSTn), .Q(seed[116])
         );
  DFQRM2RA \seed_reg[117]  ( .D(sout[117]), .CK(CLK), .RB(RSTn), .Q(seed[117])
         );
  DFQRM2RA \seed_reg[118]  ( .D(sout[118]), .CK(CLK), .RB(RSTn), .Q(seed[118])
         );
  DFQSM1RA \seed_reg[119]  ( .D(sout[119]), .CK(CLK), .SB(RSTn), .Q(seed[119])
         );
  DFQRM2RA \seed_reg[120]  ( .D(sout[120]), .CK(CLK), .RB(RSTn), .Q(seed[120])
         );
  DFQRM2RA \seed_reg[121]  ( .D(sout[121]), .CK(CLK), .RB(RSTn), .Q(seed[121])
         );
  DFQRM2RA \seed_reg[122]  ( .D(sout[122]), .CK(CLK), .RB(RSTn), .Q(seed[122])
         );
  DFQSM1RA \seed_reg[123]  ( .D(sout[123]), .CK(CLK), .SB(RSTn), .Q(seed[123])
         );
  DFQRM2RA \seed_reg[124]  ( .D(sout[124]), .CK(CLK), .RB(RSTn), .Q(seed[124])
         );
  DFQRM2RA \seed_reg[125]  ( .D(sout[125]), .CK(CLK), .RB(RSTn), .Q(seed[125])
         );
  DFQRM2RA \seed_reg[126]  ( .D(sout[126]), .CK(CLK), .RB(RSTn), .Q(seed[126])
         );
  DFQRM2RA \seed_reg[127]  ( .D(sout[127]), .CK(CLK), .RB(RSTn), .Q(seed[127])
         );
  DFEQRM2RA \dat_reg[0]  ( .D(N147), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[0])
         );
  DFEQRM2RA \dat_reg[1]  ( .D(N148), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[1])
         );
  DFEQRM2RA \dat_reg[2]  ( .D(N149), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[2])
         );
  DFEQRM2RA \dat_reg[3]  ( .D(N150), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[3])
         );
  DFEQRM2RA \dat_reg[4]  ( .D(N151), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[4])
         );
  DFEQRM2RA \dat_reg[5]  ( .D(N152), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[5])
         );
  DFEQRM2RA \dat_reg[6]  ( .D(N153), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[6])
         );
  DFEQRM2RA \dat_reg[7]  ( .D(N154), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[7])
         );
  DFEQRM2RA \dat_reg[8]  ( .D(N155), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[8])
         );
  DFEQRM2RA \dat_reg[9]  ( .D(N156), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[9])
         );
  DFEQRM2RA \dat_reg[10]  ( .D(N157), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[10]) );
  DFEQRM2RA \dat_reg[11]  ( .D(N158), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[11]) );
  DFEQRM2RA \dat_reg[12]  ( .D(N159), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[12]) );
  DFEQRM2RA \dat_reg[13]  ( .D(N160), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[13]) );
  DFEQRM2RA \dat_reg[14]  ( .D(N161), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[14]) );
  DFEQRM2RA \dat_reg[15]  ( .D(N162), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[15]) );
  DFEQRM2RA \dat_reg[16]  ( .D(N163), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[16]) );
  DFEQRM2RA \dat_reg[17]  ( .D(N164), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[17]) );
  DFEQRM2RA \dat_reg[18]  ( .D(N165), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[18]) );
  DFEQRM2RA \dat_reg[19]  ( .D(N166), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[19]) );
  DFEQRM2RA \dat_reg[20]  ( .D(N167), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[20]) );
  DFEQRM2RA \dat_reg[21]  ( .D(N168), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[21]) );
  DFEQRM2RA \dat_reg[22]  ( .D(N169), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[22]) );
  DFEQRM2RA \dat_reg[23]  ( .D(N170), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[23]) );
  DFEQRM2RA \dat_reg[24]  ( .D(N171), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[24]) );
  DFEQRM2RA \dat_reg[25]  ( .D(N172), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[25]) );
  DFEQRM2RA \dat_reg[26]  ( .D(N173), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[26]) );
  DFEQRM2RA \dat_reg[27]  ( .D(N174), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[27]) );
  DFEQRM2RA \dat_reg[28]  ( .D(N175), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[28]) );
  DFEQRM2RA \dat_reg[29]  ( .D(N176), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[29]) );
  DFEQRM2RA \dat_reg[30]  ( .D(N177), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[30]) );
  DFEQRM2RA \dat_reg[31]  ( .D(N178), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[31]) );
  DFEQRM2RA \dat_reg[32]  ( .D(N179), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[32]) );
  DFEQRM2RA \dat_reg[33]  ( .D(N180), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[33]) );
  DFEQRM2RA \dat_reg[34]  ( .D(N181), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[34]) );
  DFEQRM2RA \dat_reg[35]  ( .D(N182), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[35]) );
  DFEQRM2RA \dat_reg[36]  ( .D(N183), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[36]) );
  DFEQRM2RA \dat_reg[37]  ( .D(N184), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[37]) );
  DFEQRM2RA \dat_reg[38]  ( .D(N185), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[38]) );
  DFEQRM2RA \dat_reg[39]  ( .D(N186), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[39]) );
  DFEQRM2RA \dat_reg[40]  ( .D(N187), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[40]) );
  DFEQRM2RA \dat_reg[41]  ( .D(N188), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[41]) );
  DFEQRM2RA \dat_reg[42]  ( .D(N189), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[42]) );
  DFEQRM2RA \dat_reg[43]  ( .D(N190), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[43]) );
  DFEQRM2RA \dat_reg[44]  ( .D(N191), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[44]) );
  DFEQRM2RA \dat_reg[45]  ( .D(N192), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[45]) );
  DFEQRM2RA \dat_reg[46]  ( .D(N193), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[46]) );
  DFEQRM2RA \dat_reg[47]  ( .D(N194), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[47]) );
  DFEQRM2RA \dat_reg[48]  ( .D(N195), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[48]) );
  DFEQRM2RA \dat_reg[49]  ( .D(N196), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[49]) );
  DFEQRM2RA \dat_reg[50]  ( .D(N197), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[50]) );
  DFEQRM2RA \dat_reg[51]  ( .D(N198), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[51]) );
  DFEQRM2RA \dat_reg[52]  ( .D(N199), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[52]) );
  DFEQRM2RA \dat_reg[53]  ( .D(N200), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[53]) );
  DFEQRM2RA \dat_reg[54]  ( .D(N201), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[54]) );
  DFEQRM2RA \dat_reg[55]  ( .D(N202), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[55]) );
  DFEQRM2RA \dat_reg[56]  ( .D(N203), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[56]) );
  DFEQRM2RA \dat_reg[57]  ( .D(N204), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[57]) );
  DFEQRM2RA \dat_reg[58]  ( .D(N205), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[58]) );
  DFEQRM2RA \dat_reg[59]  ( .D(N206), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[59]) );
  DFEQRM2RA \dat_reg[60]  ( .D(N207), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[60]) );
  DFEQRM2RA \dat_reg[61]  ( .D(N208), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[61]) );
  DFEQRM2RA \dat_reg[62]  ( .D(N209), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[62]) );
  DFEQRM2RA \dat_reg[63]  ( .D(N210), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[63]) );
  DFEQRM2RA \dat_reg[64]  ( .D(N211), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[64]) );
  DFEQRM2RA \dat_reg[65]  ( .D(N212), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[65]) );
  DFEQRM2RA \dat_reg[66]  ( .D(N213), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[66]) );
  DFEQRM2RA \dat_reg[67]  ( .D(N214), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[67]) );
  DFEQRM2RA \dat_reg[68]  ( .D(N215), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[68]) );
  DFEQRM2RA \dat_reg[69]  ( .D(N216), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[69]) );
  DFEQRM2RA \dat_reg[70]  ( .D(N217), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[70]) );
  DFEQRM2RA \dat_reg[71]  ( .D(N218), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[71]) );
  DFEQRM2RA \dat_reg[72]  ( .D(N219), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[72]) );
  DFEQRM2RA \dat_reg[73]  ( .D(N220), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[73]) );
  DFEQRM2RA \dat_reg[74]  ( .D(N221), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[74]) );
  DFEQRM2RA \dat_reg[75]  ( .D(N222), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[75]) );
  DFEQRM2RA \dat_reg[76]  ( .D(N223), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[76]) );
  DFEQRM2RA \dat_reg[77]  ( .D(N224), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[77]) );
  DFEQRM2RA \dat_reg[78]  ( .D(N225), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[78]) );
  DFEQRM2RA \dat_reg[79]  ( .D(N226), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[79]) );
  DFEQRM2RA \dat_reg[80]  ( .D(N227), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[80]) );
  DFEQRM2RA \dat_reg[81]  ( .D(N228), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[81]) );
  DFEQRM2RA \dat_reg[82]  ( .D(N229), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[82]) );
  DFEQRM2RA \dat_reg[83]  ( .D(N230), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[83]) );
  DFEQRM2RA \dat_reg[84]  ( .D(N231), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[84]) );
  DFEQRM2RA \dat_reg[85]  ( .D(N232), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[85]) );
  DFEQRM2RA \dat_reg[86]  ( .D(N233), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[86]) );
  DFEQRM2RA \dat_reg[87]  ( .D(N234), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[87]) );
  DFEQRM2RA \dat_reg[88]  ( .D(N235), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[88]) );
  DFEQRM2RA \dat_reg[89]  ( .D(N236), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[89]) );
  DFEQRM2RA \dat_reg[90]  ( .D(N237), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[90]) );
  DFEQRM2RA \dat_reg[91]  ( .D(N238), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[91]) );
  DFEQRM2RA \dat_reg[92]  ( .D(N239), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[92]) );
  DFEQRM2RA \dat_reg[93]  ( .D(N240), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[93]) );
  DFEQRM2RA \dat_reg[94]  ( .D(N241), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[94]) );
  DFEQRM2RA \dat_reg[95]  ( .D(N242), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[95]) );
  DFEQRM2RA \dat_reg[96]  ( .D(N243), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[96]) );
  DFEQRM2RA \dat_reg[97]  ( .D(N244), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[97]) );
  DFEQRM2RA \dat_reg[98]  ( .D(N245), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[98]) );
  DFEQRM2RA \dat_reg[99]  ( .D(N246), .E(EN), .CK(CLK), .RB(RSTn), .Q(Dout[99]) );
  DFEQRM2RA \dat_reg[100]  ( .D(N247), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[100]) );
  DFEQRM2RA \dat_reg[101]  ( .D(N248), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[101]) );
  DFEQRM2RA \dat_reg[102]  ( .D(N249), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[102]) );
  DFEQRM2RA \dat_reg[103]  ( .D(N250), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[103]) );
  DFEQRM2RA \dat_reg[104]  ( .D(N251), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[104]) );
  DFEQRM2RA \dat_reg[105]  ( .D(N252), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[105]) );
  DFEQRM2RA \dat_reg[106]  ( .D(N253), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[106]) );
  DFEQRM2RA \dat_reg[107]  ( .D(N254), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[107]) );
  DFEQRM2RA \dat_reg[108]  ( .D(N255), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[108]) );
  DFEQRM2RA \dat_reg[109]  ( .D(N256), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[109]) );
  DFEQRM2RA \dat_reg[110]  ( .D(N257), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[110]) );
  DFEQRM2RA \dat_reg[111]  ( .D(N258), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[111]) );
  DFEQRM2RA \dat_reg[112]  ( .D(N259), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[112]) );
  DFEQRM2RA \dat_reg[113]  ( .D(N260), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[113]) );
  DFEQRM2RA \dat_reg[114]  ( .D(N261), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[114]) );
  DFEQRM2RA \dat_reg[115]  ( .D(N262), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[115]) );
  DFEQRM2RA \dat_reg[116]  ( .D(N263), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[116]) );
  DFEQRM2RA \dat_reg[117]  ( .D(N264), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[117]) );
  DFEQRM2RA \dat_reg[118]  ( .D(N265), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[118]) );
  DFEQRM2RA \dat_reg[119]  ( .D(N266), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[119]) );
  DFEQRM2RA \dat_reg[120]  ( .D(N267), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[120]) );
  DFEQRM2RA \dat_reg[121]  ( .D(N268), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[121]) );
  DFEQRM2RA \dat_reg[122]  ( .D(N269), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[122]) );
  DFEQRM2RA \dat_reg[123]  ( .D(N270), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[123]) );
  DFEQRM2RA \dat_reg[124]  ( .D(N271), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[124]) );
  DFEQRM2RA \dat_reg[125]  ( .D(N272), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[125]) );
  DFEQRM2RA \dat_reg[126]  ( .D(N273), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[126]) );
  DFEQRM2RA \dat_reg[127]  ( .D(N274), .E(EN), .CK(CLK), .RB(RSTn), .Q(
        Dout[127]) );
  XNR2M2RA U138 ( .A(rcon[7]), .B(rcon[3]), .Z(n4) );
  XNR2M2RA U140 ( .A(rcon[7]), .B(rcon[2]), .Z(n5) );
  XNR2M2RA U143 ( .A(rcon[7]), .B(rcon[0]), .Z(n6) );
  XNR2M2RA U275 ( .A(Kin[127]), .B(Din[127]), .Z(n8) );
  XNR2M2RA U277 ( .A(Kin[126]), .B(Din[126]), .Z(n10) );
  XNR2M2RA U279 ( .A(Kin[125]), .B(Din[125]), .Z(n11) );
  XNR2M2RA U281 ( .A(Kin[124]), .B(Din[124]), .Z(n12) );
  XNR2M2RA U283 ( .A(Kin[123]), .B(Din[123]), .Z(n13) );
  XNR2M2RA U285 ( .A(Kin[122]), .B(Din[122]), .Z(n14) );
  XNR2M2RA U287 ( .A(Kin[121]), .B(Din[121]), .Z(n15) );
  XNR2M2RA U289 ( .A(Kin[120]), .B(Din[120]), .Z(n16) );
  XNR2M2RA U291 ( .A(Kin[119]), .B(Din[119]), .Z(n17) );
  XNR2M2RA U293 ( .A(Kin[118]), .B(Din[118]), .Z(n18) );
  XNR2M2RA U295 ( .A(Kin[117]), .B(Din[117]), .Z(n19) );
  XNR2M2RA U297 ( .A(Kin[116]), .B(Din[116]), .Z(n20) );
  XNR2M2RA U299 ( .A(Kin[115]), .B(Din[115]), .Z(n21) );
  XNR2M2RA U301 ( .A(Kin[114]), .B(Din[114]), .Z(n22) );
  XNR2M2RA U303 ( .A(Kin[113]), .B(Din[113]), .Z(n23) );
  XNR2M2RA U305 ( .A(Kin[112]), .B(Din[112]), .Z(n24) );
  XNR2M2RA U307 ( .A(Kin[111]), .B(Din[111]), .Z(n25) );
  XNR2M2RA U309 ( .A(Kin[110]), .B(Din[110]), .Z(n26) );
  XNR2M2RA U311 ( .A(Kin[109]), .B(Din[109]), .Z(n27) );
  XNR2M2RA U313 ( .A(Kin[108]), .B(Din[108]), .Z(n28) );
  XNR2M2RA U315 ( .A(Kin[107]), .B(Din[107]), .Z(n29) );
  XNR2M2RA U317 ( .A(Kin[106]), .B(Din[106]), .Z(n30) );
  XNR2M2RA U319 ( .A(Kin[105]), .B(Din[105]), .Z(n31) );
  XNR2M2RA U321 ( .A(Kin[104]), .B(Din[104]), .Z(n32) );
  XNR2M2RA U323 ( .A(Kin[103]), .B(Din[103]), .Z(n33) );
  XNR2M2RA U325 ( .A(Kin[102]), .B(Din[102]), .Z(n34) );
  XNR2M2RA U327 ( .A(Kin[101]), .B(Din[101]), .Z(n35) );
  XNR2M2RA U329 ( .A(Kin[100]), .B(Din[100]), .Z(n36) );
  XNR2M2RA U331 ( .A(Kin[99]), .B(Din[99]), .Z(n37) );
  XNR2M2RA U333 ( .A(Kin[98]), .B(Din[98]), .Z(n38) );
  XNR2M2RA U335 ( .A(Kin[97]), .B(Din[97]), .Z(n39) );
  XNR2M2RA U337 ( .A(Kin[96]), .B(Din[96]), .Z(n40) );
  XNR2M2RA U339 ( .A(Kin[95]), .B(Din[95]), .Z(n41) );
  XNR2M2RA U341 ( .A(Kin[94]), .B(Din[94]), .Z(n42) );
  XNR2M2RA U343 ( .A(Kin[93]), .B(Din[93]), .Z(n43) );
  XNR2M2RA U345 ( .A(Kin[92]), .B(Din[92]), .Z(n44) );
  XNR2M2RA U347 ( .A(Kin[91]), .B(Din[91]), .Z(n45) );
  XNR2M2RA U349 ( .A(Kin[90]), .B(Din[90]), .Z(n46) );
  XNR2M2RA U351 ( .A(Kin[89]), .B(Din[89]), .Z(n47) );
  XNR2M2RA U353 ( .A(Kin[88]), .B(Din[88]), .Z(n48) );
  XNR2M2RA U355 ( .A(Kin[87]), .B(Din[87]), .Z(n49) );
  XNR2M2RA U357 ( .A(Kin[86]), .B(Din[86]), .Z(n50) );
  XNR2M2RA U359 ( .A(Kin[85]), .B(Din[85]), .Z(n51) );
  XNR2M2RA U361 ( .A(Kin[84]), .B(Din[84]), .Z(n52) );
  XNR2M2RA U363 ( .A(Kin[83]), .B(Din[83]), .Z(n53) );
  XNR2M2RA U365 ( .A(Kin[82]), .B(Din[82]), .Z(n54) );
  XNR2M2RA U367 ( .A(Kin[81]), .B(Din[81]), .Z(n55) );
  XNR2M2RA U369 ( .A(Kin[80]), .B(Din[80]), .Z(n56) );
  XNR2M2RA U371 ( .A(Kin[79]), .B(Din[79]), .Z(n57) );
  XNR2M2RA U373 ( .A(Kin[78]), .B(Din[78]), .Z(n58) );
  XNR2M2RA U375 ( .A(Kin[77]), .B(Din[77]), .Z(n59) );
  XNR2M2RA U377 ( .A(Kin[76]), .B(Din[76]), .Z(n60) );
  XNR2M2RA U379 ( .A(Kin[75]), .B(Din[75]), .Z(n61) );
  XNR2M2RA U381 ( .A(Kin[74]), .B(Din[74]), .Z(n62) );
  XNR2M2RA U383 ( .A(Kin[73]), .B(Din[73]), .Z(n63) );
  XNR2M2RA U385 ( .A(Kin[72]), .B(Din[72]), .Z(n64) );
  XNR2M2RA U387 ( .A(Kin[71]), .B(Din[71]), .Z(n65) );
  XNR2M2RA U389 ( .A(Kin[70]), .B(Din[70]), .Z(n66) );
  XNR2M2RA U391 ( .A(Kin[69]), .B(Din[69]), .Z(n67) );
  XNR2M2RA U393 ( .A(Kin[68]), .B(Din[68]), .Z(n68) );
  XNR2M2RA U395 ( .A(Kin[67]), .B(Din[67]), .Z(n69) );
  XNR2M2RA U397 ( .A(Kin[66]), .B(Din[66]), .Z(n70) );
  XNR2M2RA U399 ( .A(Kin[65]), .B(Din[65]), .Z(n71) );
  XNR2M2RA U401 ( .A(Kin[64]), .B(Din[64]), .Z(n72) );
  XNR2M2RA U403 ( .A(Kin[63]), .B(Din[63]), .Z(n73) );
  XNR2M2RA U405 ( .A(Kin[62]), .B(Din[62]), .Z(n74) );
  XNR2M2RA U407 ( .A(Kin[61]), .B(Din[61]), .Z(n75) );
  XNR2M2RA U409 ( .A(Kin[60]), .B(Din[60]), .Z(n76) );
  XNR2M2RA U411 ( .A(Kin[59]), .B(Din[59]), .Z(n77) );
  XNR2M2RA U413 ( .A(Kin[58]), .B(Din[58]), .Z(n78) );
  XNR2M2RA U415 ( .A(Kin[57]), .B(Din[57]), .Z(n79) );
  XNR2M2RA U417 ( .A(Kin[56]), .B(Din[56]), .Z(n80) );
  XNR2M2RA U419 ( .A(Kin[55]), .B(Din[55]), .Z(n81) );
  XNR2M2RA U421 ( .A(Kin[54]), .B(Din[54]), .Z(n82) );
  XNR2M2RA U423 ( .A(Kin[53]), .B(Din[53]), .Z(n83) );
  XNR2M2RA U425 ( .A(Kin[52]), .B(Din[52]), .Z(n84) );
  XNR2M2RA U427 ( .A(Kin[51]), .B(Din[51]), .Z(n85) );
  XNR2M2RA U429 ( .A(Kin[50]), .B(Din[50]), .Z(n86) );
  XNR2M2RA U431 ( .A(Kin[49]), .B(Din[49]), .Z(n87) );
  XNR2M2RA U433 ( .A(Kin[48]), .B(Din[48]), .Z(n88) );
  XNR2M2RA U435 ( .A(Kin[47]), .B(Din[47]), .Z(n89) );
  XNR2M2RA U437 ( .A(Kin[46]), .B(Din[46]), .Z(n90) );
  XNR2M2RA U439 ( .A(Kin[45]), .B(Din[45]), .Z(n91) );
  XNR2M2RA U441 ( .A(Kin[44]), .B(Din[44]), .Z(n92) );
  XNR2M2RA U443 ( .A(Kin[43]), .B(Din[43]), .Z(n93) );
  XNR2M2RA U445 ( .A(Kin[42]), .B(Din[42]), .Z(n94) );
  XNR2M2RA U447 ( .A(Kin[41]), .B(Din[41]), .Z(n95) );
  XNR2M2RA U449 ( .A(Kin[40]), .B(Din[40]), .Z(n96) );
  XNR2M2RA U451 ( .A(Kin[39]), .B(Din[39]), .Z(n97) );
  XNR2M2RA U453 ( .A(Kin[38]), .B(Din[38]), .Z(n98) );
  XNR2M2RA U455 ( .A(Kin[37]), .B(Din[37]), .Z(n99) );
  XNR2M2RA U457 ( .A(Kin[36]), .B(Din[36]), .Z(n100) );
  XNR2M2RA U459 ( .A(Kin[35]), .B(Din[35]), .Z(n101) );
  XNR2M2RA U461 ( .A(Kin[34]), .B(Din[34]), .Z(n102) );
  XNR2M2RA U463 ( .A(Kin[33]), .B(Din[33]), .Z(n103) );
  XNR2M2RA U465 ( .A(Kin[32]), .B(Din[32]), .Z(n104) );
  XNR2M2RA U467 ( .A(Kin[31]), .B(Din[31]), .Z(n105) );
  XNR2M2RA U469 ( .A(Kin[30]), .B(Din[30]), .Z(n106) );
  XNR2M2RA U471 ( .A(Kin[29]), .B(Din[29]), .Z(n107) );
  XNR2M2RA U473 ( .A(Kin[28]), .B(Din[28]), .Z(n108) );
  XNR2M2RA U475 ( .A(Kin[27]), .B(Din[27]), .Z(n109) );
  XNR2M2RA U477 ( .A(Kin[26]), .B(Din[26]), .Z(n110) );
  XNR2M2RA U479 ( .A(Kin[25]), .B(Din[25]), .Z(n111) );
  XNR2M2RA U481 ( .A(Kin[24]), .B(Din[24]), .Z(n112) );
  XNR2M2RA U483 ( .A(Kin[23]), .B(Din[23]), .Z(n113) );
  XNR2M2RA U485 ( .A(Kin[22]), .B(Din[22]), .Z(n114) );
  XNR2M2RA U487 ( .A(Kin[21]), .B(Din[21]), .Z(n115) );
  XNR2M2RA U489 ( .A(Kin[20]), .B(Din[20]), .Z(n116) );
  XNR2M2RA U491 ( .A(Kin[19]), .B(Din[19]), .Z(n117) );
  XNR2M2RA U493 ( .A(Kin[18]), .B(Din[18]), .Z(n118) );
  XNR2M2RA U495 ( .A(Kin[17]), .B(Din[17]), .Z(n119) );
  XNR2M2RA U497 ( .A(Kin[16]), .B(Din[16]), .Z(n120) );
  XNR2M2RA U499 ( .A(Kin[15]), .B(Din[15]), .Z(n121) );
  XNR2M2RA U501 ( .A(Kin[14]), .B(Din[14]), .Z(n122) );
  XNR2M2RA U503 ( .A(Kin[13]), .B(Din[13]), .Z(n123) );
  XNR2M2RA U506 ( .A(Kin[12]), .B(Din[12]), .Z(n124) );
  XNR2M2RA U508 ( .A(Kin[11]), .B(Din[11]), .Z(n125) );
  XNR2M2RA U510 ( .A(Kin[10]), .B(Din[10]), .Z(n126) );
  XNR2M2RA U512 ( .A(Kin[9]), .B(Din[9]), .Z(n127) );
  XNR2M2RA U514 ( .A(Kin[8]), .B(Din[8]), .Z(n128) );
  XNR2M2RA U516 ( .A(Kin[7]), .B(Din[7]), .Z(n129) );
  XNR2M2RA U518 ( .A(Kin[6]), .B(Din[6]), .Z(n130) );
  XNR2M2RA U520 ( .A(Kin[5]), .B(Din[5]), .Z(n131) );
  XNR2M2RA U522 ( .A(Kin[4]), .B(Din[4]), .Z(n132) );
  XNR2M2RA U524 ( .A(Kin[3]), .B(Din[3]), .Z(n133) );
  XNR2M2RA U527 ( .A(Kin[2]), .B(Din[2]), .Z(n134) );
  XNR2M2RA U529 ( .A(Kin[1]), .B(Din[1]), .Z(n135) );
  XNR2M2RA U532 ( .A(Kin[0]), .B(Din[0]), .Z(n136) );
  INVM2R U541 ( .A(n142), .Z(n141) );
  INVM2R U542 ( .A(n142), .Z(n140) );
  INVM2R U543 ( .A(n7), .Z(n1) );
  BUFM2R U544 ( .A(n9), .Z(n138) );
  BUFM2R U545 ( .A(n143), .Z(n142) );
  NR2M2R U546 ( .A(n144), .B(n140), .Z(n7) );
  NR2M2R U547 ( .A(n144), .B(n143), .Z(N8) );
  BUFM2R U548 ( .A(n137), .Z(n139) );
  BUFM2R U549 ( .A(n9), .Z(n137) );
  INVM2R U550 ( .A(\rnd[0] ), .Z(n143) );
  MOAI22M2RA U551 ( .A1(n12), .A2(n9), .B1(dat_next[124]), .B2(n138), .Z(N271)
         );
  MOAI22M2RA U552 ( .A1(n13), .A2(n9), .B1(dat_next[123]), .B2(n9), .Z(N270)
         );
  MOAI22M2RA U553 ( .A1(n20), .A2(n138), .B1(dat_next[116]), .B2(n137), .Z(
        N263) );
  MOAI22M2RA U554 ( .A1(n21), .A2(n138), .B1(dat_next[115]), .B2(n139), .Z(
        N262) );
  MOAI22M2RA U555 ( .A1(n23), .A2(n9), .B1(dat_next[113]), .B2(n9), .Z(N260)
         );
  MOAI22M2RA U556 ( .A1(n28), .A2(n137), .B1(dat_next[108]), .B2(n9), .Z(N255)
         );
  MOAI22M2RA U557 ( .A1(n29), .A2(n9), .B1(dat_next[107]), .B2(n9), .Z(N254)
         );
  MOAI22M2RA U558 ( .A1(n36), .A2(n139), .B1(dat_next[100]), .B2(n138), .Z(
        N247) );
  MOAI22M2RA U559 ( .A1(n37), .A2(n137), .B1(dat_next[99]), .B2(n137), .Z(N246) );
  MOAI22M2RA U560 ( .A1(n44), .A2(n138), .B1(dat_next[92]), .B2(n138), .Z(N239) );
  MOAI22M2RA U561 ( .A1(n45), .A2(n137), .B1(dat_next[91]), .B2(n138), .Z(N238) );
  MOAI22M2RA U562 ( .A1(n52), .A2(n9), .B1(dat_next[84]), .B2(n138), .Z(N231)
         );
  MOAI22M2RA U563 ( .A1(n53), .A2(n137), .B1(dat_next[83]), .B2(n138), .Z(N230) );
  MOAI22M2RA U564 ( .A1(n55), .A2(n9), .B1(dat_next[81]), .B2(n137), .Z(N228)
         );
  MOAI22M2RA U565 ( .A1(n60), .A2(n9), .B1(dat_next[76]), .B2(n137), .Z(N223)
         );
  MOAI22M2RA U566 ( .A1(n61), .A2(n138), .B1(dat_next[75]), .B2(n138), .Z(N222) );
  MOAI22M2RA U567 ( .A1(n68), .A2(n139), .B1(dat_next[68]), .B2(n137), .Z(N215) );
  MOAI22M2RA U568 ( .A1(n69), .A2(n137), .B1(dat_next[67]), .B2(n137), .Z(N214) );
  MOAI22M2RA U569 ( .A1(n73), .A2(n138), .B1(dat_next[63]), .B2(n137), .Z(N210) );
  MOAI22M2RA U570 ( .A1(n76), .A2(n137), .B1(dat_next[60]), .B2(n137), .Z(N207) );
  MOAI22M2RA U571 ( .A1(n77), .A2(n9), .B1(dat_next[59]), .B2(n137), .Z(N206)
         );
  MOAI22M2RA U572 ( .A1(n81), .A2(n9), .B1(dat_next[55]), .B2(n137), .Z(N202)
         );
  MOAI22M2RA U573 ( .A1(n84), .A2(n9), .B1(dat_next[52]), .B2(n137), .Z(N199)
         );
  MOAI22M2RA U574 ( .A1(n85), .A2(n139), .B1(dat_next[51]), .B2(n139), .Z(N198) );
  MOAI22M2RA U575 ( .A1(n87), .A2(n9), .B1(dat_next[49]), .B2(n139), .Z(N196)
         );
  MOAI22M2RA U576 ( .A1(n89), .A2(n138), .B1(dat_next[47]), .B2(n139), .Z(N194) );
  MOAI22M2RA U577 ( .A1(n92), .A2(n138), .B1(dat_next[44]), .B2(n139), .Z(N191) );
  MOAI22M2RA U578 ( .A1(n93), .A2(n138), .B1(dat_next[43]), .B2(n9), .Z(N190)
         );
  MOAI22M2RA U579 ( .A1(n97), .A2(n139), .B1(dat_next[39]), .B2(n139), .Z(N186) );
  MOAI22M2RA U580 ( .A1(n100), .A2(n138), .B1(dat_next[36]), .B2(n139), .Z(
        N183) );
  MOAI22M2RA U581 ( .A1(n101), .A2(n139), .B1(dat_next[35]), .B2(n139), .Z(
        N182) );
  MOAI22M2RA U582 ( .A1(n105), .A2(n137), .B1(dat_next[31]), .B2(n139), .Z(
        N178) );
  MOAI22M2RA U583 ( .A1(n106), .A2(n137), .B1(dat_next[30]), .B2(n139), .Z(
        N177) );
  MOAI22M2RA U584 ( .A1(n108), .A2(n138), .B1(dat_next[28]), .B2(n9), .Z(N175)
         );
  MOAI22M2RA U585 ( .A1(n109), .A2(n137), .B1(dat_next[27]), .B2(n138), .Z(
        N174) );
  MOAI22M2RA U586 ( .A1(n112), .A2(n138), .B1(dat_next[24]), .B2(n137), .Z(
        N171) );
  MOAI22M2RA U587 ( .A1(n113), .A2(n138), .B1(dat_next[23]), .B2(n137), .Z(
        N170) );
  MOAI22M2RA U588 ( .A1(n114), .A2(n138), .B1(dat_next[22]), .B2(n137), .Z(
        N169) );
  MOAI22M2RA U589 ( .A1(n116), .A2(n137), .B1(dat_next[20]), .B2(n137), .Z(
        N167) );
  MOAI22M2RA U590 ( .A1(n117), .A2(n138), .B1(dat_next[19]), .B2(n138), .Z(
        N166) );
  MOAI22M2RA U591 ( .A1(n119), .A2(n138), .B1(dat_next[17]), .B2(n138), .Z(
        N164) );
  MOAI22M2RA U592 ( .A1(n120), .A2(n9), .B1(dat_next[16]), .B2(n138), .Z(N163)
         );
  MOAI22M2RA U593 ( .A1(n121), .A2(n138), .B1(dat_next[15]), .B2(n138), .Z(
        N162) );
  MOAI22M2RA U594 ( .A1(n122), .A2(n138), .B1(dat_next[14]), .B2(n138), .Z(
        N161) );
  MOAI22M2RA U595 ( .A1(n124), .A2(n138), .B1(dat_next[12]), .B2(n138), .Z(
        N159) );
  MOAI22M2RA U596 ( .A1(n125), .A2(n138), .B1(dat_next[11]), .B2(n137), .Z(
        N158) );
  MOAI22M2RA U597 ( .A1(n128), .A2(n137), .B1(dat_next[8]), .B2(n138), .Z(N155) );
  MOAI22M2RA U598 ( .A1(n129), .A2(n137), .B1(dat_next[7]), .B2(n9), .Z(N154)
         );
  MOAI22M2RA U599 ( .A1(n130), .A2(n137), .B1(dat_next[6]), .B2(n138), .Z(N153) );
  MOAI22M2RA U600 ( .A1(n132), .A2(n9), .B1(dat_next[4]), .B2(n9), .Z(N151) );
  MOAI22M2RA U601 ( .A1(n133), .A2(n137), .B1(dat_next[3]), .B2(n9), .Z(N150)
         );
  MOAI22M2RA U602 ( .A1(n136), .A2(n138), .B1(dat_next[0]), .B2(n137), .Z(N147) );
  AO22M1RA U603 ( .A1(n141), .A2(Kin[31]), .B1(rkey_next[31]), .B2(n143), .Z(
        N308) );
  AO22M1RA U604 ( .A1(n141), .A2(Kin[27]), .B1(rkey_next[27]), .B2(n143), .Z(
        N304) );
  AO22M1RA U605 ( .A1(n141), .A2(Kin[19]), .B1(rkey_next[19]), .B2(n143), .Z(
        N296) );
  AO22M1RA U606 ( .A1(n140), .A2(Kin[11]), .B1(rkey_next[11]), .B2(n143), .Z(
        N288) );
  AO22M1RA U607 ( .A1(n141), .A2(Kin[3]), .B1(rkey_next[3]), .B2(n143), .Z(
        N280) );
  MOAI22M2RA U608 ( .A1(n8), .A2(n139), .B1(dat_next[127]), .B2(n138), .Z(N274) );
  MOAI22M2RA U609 ( .A1(n10), .A2(n9), .B1(dat_next[126]), .B2(n9), .Z(N273)
         );
  MOAI22M2RA U610 ( .A1(n11), .A2(n137), .B1(dat_next[125]), .B2(n138), .Z(
        N272) );
  MOAI22M2RA U611 ( .A1(n14), .A2(n139), .B1(dat_next[122]), .B2(n139), .Z(
        N269) );
  MOAI22M2RA U612 ( .A1(n15), .A2(n9), .B1(dat_next[121]), .B2(n9), .Z(N268)
         );
  MOAI22M2RA U613 ( .A1(n16), .A2(n139), .B1(dat_next[120]), .B2(n9), .Z(N267)
         );
  MOAI22M2RA U614 ( .A1(n17), .A2(n137), .B1(dat_next[119]), .B2(n9), .Z(N266)
         );
  MOAI22M2RA U615 ( .A1(n18), .A2(n137), .B1(dat_next[118]), .B2(n9), .Z(N265)
         );
  MOAI22M2RA U616 ( .A1(n19), .A2(n139), .B1(dat_next[117]), .B2(n9), .Z(N264)
         );
  MOAI22M2RA U617 ( .A1(n22), .A2(n9), .B1(dat_next[114]), .B2(n138), .Z(N261)
         );
  MOAI22M2RA U618 ( .A1(n24), .A2(n9), .B1(dat_next[112]), .B2(n9), .Z(N259)
         );
  MOAI22M2RA U619 ( .A1(n25), .A2(n139), .B1(dat_next[111]), .B2(n9), .Z(N258)
         );
  MOAI22M2RA U620 ( .A1(n26), .A2(n137), .B1(dat_next[110]), .B2(n9), .Z(N257)
         );
  MOAI22M2RA U621 ( .A1(n27), .A2(n9), .B1(dat_next[109]), .B2(n9), .Z(N256)
         );
  MOAI22M2RA U622 ( .A1(n30), .A2(n9), .B1(dat_next[106]), .B2(n9), .Z(N253)
         );
  MOAI22M2RA U623 ( .A1(n31), .A2(n139), .B1(dat_next[105]), .B2(n137), .Z(
        N252) );
  MOAI22M2RA U624 ( .A1(n32), .A2(n137), .B1(dat_next[104]), .B2(n137), .Z(
        N251) );
  MOAI22M2RA U625 ( .A1(n33), .A2(n9), .B1(dat_next[103]), .B2(n138), .Z(N250)
         );
  MOAI22M2RA U626 ( .A1(n34), .A2(n9), .B1(dat_next[102]), .B2(n137), .Z(N249)
         );
  MOAI22M2RA U627 ( .A1(n35), .A2(n139), .B1(dat_next[101]), .B2(n138), .Z(
        N248) );
  MOAI22M2RA U628 ( .A1(n38), .A2(n137), .B1(dat_next[98]), .B2(n138), .Z(N245) );
  MOAI22M2RA U629 ( .A1(n39), .A2(n139), .B1(dat_next[97]), .B2(n139), .Z(N244) );
  MOAI22M2RA U630 ( .A1(n40), .A2(n137), .B1(dat_next[96]), .B2(n139), .Z(N243) );
  MOAI22M2RA U631 ( .A1(n41), .A2(n9), .B1(dat_next[95]), .B2(n138), .Z(N242)
         );
  MOAI22M2RA U632 ( .A1(n42), .A2(n9), .B1(dat_next[94]), .B2(n137), .Z(N241)
         );
  MOAI22M2RA U633 ( .A1(n43), .A2(n137), .B1(dat_next[93]), .B2(n138), .Z(N240) );
  MOAI22M2RA U634 ( .A1(n46), .A2(n139), .B1(dat_next[90]), .B2(n9), .Z(N237)
         );
  MOAI22M2RA U635 ( .A1(n47), .A2(n137), .B1(dat_next[89]), .B2(n137), .Z(N236) );
  MOAI22M2RA U636 ( .A1(n48), .A2(n9), .B1(dat_next[88]), .B2(n137), .Z(N235)
         );
  MOAI22M2RA U637 ( .A1(n49), .A2(n139), .B1(dat_next[87]), .B2(n137), .Z(N234) );
  MOAI22M2RA U638 ( .A1(n50), .A2(n138), .B1(dat_next[86]), .B2(n138), .Z(N233) );
  MOAI22M2RA U639 ( .A1(n51), .A2(n9), .B1(dat_next[85]), .B2(n138), .Z(N232)
         );
  MOAI22M2RA U640 ( .A1(n54), .A2(n9), .B1(dat_next[82]), .B2(n137), .Z(N229)
         );
  MOAI22M2RA U641 ( .A1(n56), .A2(n139), .B1(dat_next[80]), .B2(n137), .Z(N227) );
  MOAI22M2RA U642 ( .A1(n57), .A2(n139), .B1(dat_next[79]), .B2(n137), .Z(N226) );
  MOAI22M2RA U643 ( .A1(n58), .A2(n137), .B1(dat_next[78]), .B2(n138), .Z(N225) );
  MOAI22M2RA U644 ( .A1(n59), .A2(n9), .B1(dat_next[77]), .B2(n137), .Z(N224)
         );
  MOAI22M2RA U645 ( .A1(n62), .A2(n137), .B1(dat_next[74]), .B2(n137), .Z(N221) );
  MOAI22M2RA U646 ( .A1(n63), .A2(n9), .B1(dat_next[73]), .B2(n137), .Z(N220)
         );
  MOAI22M2RA U647 ( .A1(n64), .A2(n9), .B1(dat_next[72]), .B2(n137), .Z(N219)
         );
  MOAI22M2RA U648 ( .A1(n65), .A2(n137), .B1(dat_next[71]), .B2(n137), .Z(N218) );
  MOAI22M2RA U649 ( .A1(n66), .A2(n139), .B1(dat_next[70]), .B2(n139), .Z(N217) );
  MOAI22M2RA U650 ( .A1(n67), .A2(n137), .B1(dat_next[69]), .B2(n139), .Z(N216) );
  MOAI22M2RA U651 ( .A1(n70), .A2(n9), .B1(dat_next[66]), .B2(n139), .Z(N213)
         );
  MOAI22M2RA U652 ( .A1(n71), .A2(n139), .B1(dat_next[65]), .B2(n139), .Z(N212) );
  MOAI22M2RA U653 ( .A1(n72), .A2(n137), .B1(dat_next[64]), .B2(n139), .Z(N211) );
  MOAI22M2RA U654 ( .A1(n74), .A2(n9), .B1(dat_next[62]), .B2(n139), .Z(N209)
         );
  MOAI22M2RA U655 ( .A1(n75), .A2(n138), .B1(dat_next[61]), .B2(n139), .Z(N208) );
  MOAI22M2RA U656 ( .A1(n78), .A2(n9), .B1(dat_next[58]), .B2(n139), .Z(N205)
         );
  MOAI22M2RA U657 ( .A1(n79), .A2(n137), .B1(dat_next[57]), .B2(n139), .Z(N204) );
  MOAI22M2RA U658 ( .A1(n80), .A2(n137), .B1(dat_next[56]), .B2(n139), .Z(N203) );
  MOAI22M2RA U659 ( .A1(n82), .A2(n138), .B1(dat_next[54]), .B2(n139), .Z(N201) );
  MOAI22M2RA U660 ( .A1(n83), .A2(n9), .B1(dat_next[53]), .B2(n139), .Z(N200)
         );
  MOAI22M2RA U661 ( .A1(n86), .A2(n138), .B1(dat_next[50]), .B2(n139), .Z(N197) );
  MOAI22M2RA U662 ( .A1(n88), .A2(n138), .B1(dat_next[48]), .B2(n139), .Z(N195) );
  MOAI22M2RA U663 ( .A1(n90), .A2(n138), .B1(dat_next[46]), .B2(n139), .Z(N193) );
  MOAI22M2RA U664 ( .A1(n91), .A2(n138), .B1(dat_next[45]), .B2(n139), .Z(N192) );
  MOAI22M2RA U665 ( .A1(n94), .A2(n138), .B1(dat_next[42]), .B2(n139), .Z(N189) );
  MOAI22M2RA U666 ( .A1(n95), .A2(n138), .B1(dat_next[41]), .B2(n139), .Z(N188) );
  MOAI22M2RA U667 ( .A1(n96), .A2(n137), .B1(dat_next[40]), .B2(n139), .Z(N187) );
  MOAI22M2RA U668 ( .A1(n98), .A2(n138), .B1(dat_next[38]), .B2(n139), .Z(N185) );
  MOAI22M2RA U669 ( .A1(n99), .A2(n9), .B1(dat_next[37]), .B2(n139), .Z(N184)
         );
  MOAI22M2RA U670 ( .A1(n102), .A2(n9), .B1(dat_next[34]), .B2(n139), .Z(N181)
         );
  MOAI22M2RA U671 ( .A1(n103), .A2(n9), .B1(dat_next[33]), .B2(n139), .Z(N180)
         );
  MOAI22M2RA U672 ( .A1(n104), .A2(n9), .B1(dat_next[32]), .B2(n139), .Z(N179)
         );
  MOAI22M2RA U673 ( .A1(n107), .A2(n9), .B1(dat_next[29]), .B2(n139), .Z(N176)
         );
  MOAI22M2RA U674 ( .A1(n110), .A2(n138), .B1(dat_next[26]), .B2(n137), .Z(
        N173) );
  MOAI22M2RA U675 ( .A1(n111), .A2(n138), .B1(dat_next[25]), .B2(n137), .Z(
        N172) );
  MOAI22M2RA U676 ( .A1(n115), .A2(n138), .B1(dat_next[21]), .B2(n137), .Z(
        N168) );
  MOAI22M2RA U677 ( .A1(n118), .A2(n138), .B1(dat_next[18]), .B2(n138), .Z(
        N165) );
  MOAI22M2RA U678 ( .A1(n123), .A2(n9), .B1(dat_next[13]), .B2(n9), .Z(N160)
         );
  MOAI22M2RA U679 ( .A1(n126), .A2(n138), .B1(dat_next[10]), .B2(n9), .Z(N157)
         );
  MOAI22M2RA U680 ( .A1(n127), .A2(n137), .B1(dat_next[9]), .B2(n137), .Z(N156) );
  MOAI22M2RA U681 ( .A1(n131), .A2(n138), .B1(dat_next[5]), .B2(n9), .Z(N152)
         );
  MOAI22M2RA U682 ( .A1(n134), .A2(n139), .B1(dat_next[2]), .B2(n9), .Z(N149)
         );
  MOAI22M2RA U683 ( .A1(n135), .A2(n138), .B1(dat_next[1]), .B2(n138), .Z(N148) );
  AO22M1RA U684 ( .A1(n140), .A2(Kin[127]), .B1(rkey_next[127]), .B2(n143), 
        .Z(N404) );
  AO22M1RA U685 ( .A1(n140), .A2(Kin[126]), .B1(rkey_next[126]), .B2(n143), 
        .Z(N403) );
  AO22M1RA U686 ( .A1(n141), .A2(Kin[125]), .B1(rkey_next[125]), .B2(n143), 
        .Z(N402) );
  AO22M1RA U687 ( .A1(n140), .A2(Kin[124]), .B1(rkey_next[124]), .B2(n142), 
        .Z(N401) );
  AO22M1RA U688 ( .A1(n141), .A2(Kin[123]), .B1(rkey_next[123]), .B2(n143), 
        .Z(N400) );
  AO22M1RA U689 ( .A1(n141), .A2(Kin[122]), .B1(rkey_next[122]), .B2(n143), 
        .Z(N399) );
  AO22M1RA U690 ( .A1(n141), .A2(Kin[121]), .B1(rkey_next[121]), .B2(n143), 
        .Z(N398) );
  AO22M1RA U691 ( .A1(n140), .A2(Kin[120]), .B1(rkey_next[120]), .B2(n142), 
        .Z(N397) );
  AO22M1RA U692 ( .A1(n140), .A2(Kin[119]), .B1(rkey_next[119]), .B2(n143), 
        .Z(N396) );
  AO22M1RA U693 ( .A1(n141), .A2(Kin[118]), .B1(rkey_next[118]), .B2(n142), 
        .Z(N395) );
  AO22M1RA U694 ( .A1(n141), .A2(Kin[117]), .B1(rkey_next[117]), .B2(n143), 
        .Z(N394) );
  AO22M1RA U695 ( .A1(n140), .A2(Kin[116]), .B1(rkey_next[116]), .B2(n142), 
        .Z(N393) );
  AO22M1RA U696 ( .A1(n141), .A2(Kin[115]), .B1(rkey_next[115]), .B2(n142), 
        .Z(N392) );
  AO22M1RA U697 ( .A1(n141), .A2(Kin[114]), .B1(rkey_next[114]), .B2(n142), 
        .Z(N391) );
  AO22M1RA U698 ( .A1(n140), .A2(Kin[113]), .B1(rkey_next[113]), .B2(n142), 
        .Z(N390) );
  AO22M1RA U699 ( .A1(n141), .A2(Kin[112]), .B1(rkey_next[112]), .B2(n142), 
        .Z(N389) );
  AO22M1RA U700 ( .A1(n140), .A2(Kin[111]), .B1(rkey_next[111]), .B2(n142), 
        .Z(N388) );
  AO22M1RA U701 ( .A1(n140), .A2(Kin[110]), .B1(rkey_next[110]), .B2(n142), 
        .Z(N387) );
  AO22M1RA U702 ( .A1(n140), .A2(Kin[109]), .B1(rkey_next[109]), .B2(n142), 
        .Z(N386) );
  AO22M1RA U703 ( .A1(n140), .A2(Kin[108]), .B1(rkey_next[108]), .B2(n142), 
        .Z(N385) );
  AO22M1RA U704 ( .A1(n140), .A2(Kin[107]), .B1(rkey_next[107]), .B2(n142), 
        .Z(N384) );
  AO22M1RA U705 ( .A1(n140), .A2(Kin[106]), .B1(rkey_next[106]), .B2(n142), 
        .Z(N383) );
  AO22M1RA U706 ( .A1(n141), .A2(Kin[105]), .B1(rkey_next[105]), .B2(n142), 
        .Z(N382) );
  AO22M1RA U707 ( .A1(n141), .A2(Kin[104]), .B1(rkey_next[104]), .B2(n142), 
        .Z(N381) );
  AO22M1RA U708 ( .A1(n140), .A2(Kin[103]), .B1(rkey_next[103]), .B2(n142), 
        .Z(N380) );
  AO22M1RA U709 ( .A1(n140), .A2(Kin[102]), .B1(rkey_next[102]), .B2(n142), 
        .Z(N379) );
  AO22M1RA U710 ( .A1(n140), .A2(Kin[101]), .B1(rkey_next[101]), .B2(n142), 
        .Z(N378) );
  AO22M1RA U711 ( .A1(n141), .A2(Kin[100]), .B1(rkey_next[100]), .B2(n142), 
        .Z(N377) );
  AO22M1RA U712 ( .A1(n140), .A2(Kin[99]), .B1(rkey_next[99]), .B2(n142), .Z(
        N376) );
  AO22M1RA U713 ( .A1(n140), .A2(Kin[98]), .B1(rkey_next[98]), .B2(n142), .Z(
        N375) );
  AO22M1RA U714 ( .A1(n140), .A2(Kin[97]), .B1(rkey_next[97]), .B2(n142), .Z(
        N374) );
  AO22M1RA U715 ( .A1(n141), .A2(Kin[96]), .B1(rkey_next[96]), .B2(n142), .Z(
        N373) );
  AO22M1RA U716 ( .A1(n141), .A2(Kin[95]), .B1(rkey_next[95]), .B2(n142), .Z(
        N372) );
  AO22M1RA U717 ( .A1(n141), .A2(Kin[94]), .B1(rkey_next[94]), .B2(n142), .Z(
        N371) );
  AO22M1RA U718 ( .A1(n140), .A2(Kin[93]), .B1(rkey_next[93]), .B2(n142), .Z(
        N370) );
  AO22M1RA U719 ( .A1(n140), .A2(Kin[92]), .B1(rkey_next[92]), .B2(n142), .Z(
        N369) );
  AO22M1RA U720 ( .A1(n141), .A2(Kin[91]), .B1(rkey_next[91]), .B2(n142), .Z(
        N368) );
  AO22M1RA U721 ( .A1(n140), .A2(Kin[90]), .B1(rkey_next[90]), .B2(n142), .Z(
        N367) );
  AO22M1RA U722 ( .A1(n141), .A2(Kin[89]), .B1(rkey_next[89]), .B2(n142), .Z(
        N366) );
  AO22M1RA U723 ( .A1(n141), .A2(Kin[88]), .B1(rkey_next[88]), .B2(n142), .Z(
        N365) );
  AO22M1RA U724 ( .A1(n140), .A2(Kin[87]), .B1(rkey_next[87]), .B2(n142), .Z(
        N364) );
  AO22M1RA U725 ( .A1(n140), .A2(Kin[86]), .B1(rkey_next[86]), .B2(n142), .Z(
        N363) );
  AO22M1RA U726 ( .A1(n141), .A2(Kin[85]), .B1(rkey_next[85]), .B2(n142), .Z(
        N362) );
  AO22M1RA U727 ( .A1(n140), .A2(Kin[84]), .B1(rkey_next[84]), .B2(n142), .Z(
        N361) );
  AO22M1RA U728 ( .A1(n141), .A2(Kin[83]), .B1(rkey_next[83]), .B2(n142), .Z(
        N360) );
  AO22M1RA U729 ( .A1(n141), .A2(Kin[82]), .B1(rkey_next[82]), .B2(n142), .Z(
        N359) );
  AO22M1RA U730 ( .A1(n140), .A2(Kin[81]), .B1(rkey_next[81]), .B2(n142), .Z(
        N358) );
  AO22M1RA U731 ( .A1(n140), .A2(Kin[80]), .B1(rkey_next[80]), .B2(n142), .Z(
        N357) );
  AO22M1RA U732 ( .A1(n141), .A2(Kin[79]), .B1(rkey_next[79]), .B2(n142), .Z(
        N356) );
  AO22M1RA U733 ( .A1(n140), .A2(Kin[78]), .B1(rkey_next[78]), .B2(n142), .Z(
        N355) );
  AO22M1RA U734 ( .A1(n141), .A2(Kin[77]), .B1(rkey_next[77]), .B2(n142), .Z(
        N354) );
  AO22M1RA U735 ( .A1(n140), .A2(Kin[76]), .B1(rkey_next[76]), .B2(n142), .Z(
        N353) );
  AO22M1RA U736 ( .A1(n141), .A2(Kin[75]), .B1(rkey_next[75]), .B2(n142), .Z(
        N352) );
  AO22M1RA U737 ( .A1(n141), .A2(Kin[74]), .B1(rkey_next[74]), .B2(n142), .Z(
        N351) );
  AO22M1RA U738 ( .A1(n140), .A2(Kin[73]), .B1(rkey_next[73]), .B2(n142), .Z(
        N350) );
  AO22M1RA U739 ( .A1(n140), .A2(Kin[72]), .B1(rkey_next[72]), .B2(n142), .Z(
        N349) );
  AO22M1RA U740 ( .A1(n141), .A2(Kin[71]), .B1(rkey_next[71]), .B2(n142), .Z(
        N348) );
  AO22M1RA U741 ( .A1(n140), .A2(Kin[70]), .B1(rkey_next[70]), .B2(n142), .Z(
        N347) );
  AO22M1RA U742 ( .A1(n141), .A2(Kin[69]), .B1(rkey_next[69]), .B2(n142), .Z(
        N346) );
  AO22M1RA U743 ( .A1(n141), .A2(Kin[68]), .B1(rkey_next[68]), .B2(n142), .Z(
        N345) );
  AO22M1RA U744 ( .A1(n140), .A2(Kin[67]), .B1(rkey_next[67]), .B2(n142), .Z(
        N344) );
  AO22M1RA U745 ( .A1(n140), .A2(Kin[66]), .B1(rkey_next[66]), .B2(n142), .Z(
        N343) );
  AO22M1RA U746 ( .A1(n141), .A2(Kin[65]), .B1(rkey_next[65]), .B2(n142), .Z(
        N342) );
  AO22M1RA U747 ( .A1(n141), .A2(Kin[64]), .B1(rkey_next[64]), .B2(n142), .Z(
        N341) );
  AO22M1RA U748 ( .A1(n141), .A2(Kin[63]), .B1(rkey_next[63]), .B2(n142), .Z(
        N340) );
  AO22M1RA U749 ( .A1(n140), .A2(Kin[62]), .B1(rkey_next[62]), .B2(n142), .Z(
        N339) );
  AO22M1RA U750 ( .A1(n141), .A2(Kin[61]), .B1(rkey_next[61]), .B2(n142), .Z(
        N338) );
  AO22M1RA U751 ( .A1(n140), .A2(Kin[60]), .B1(rkey_next[60]), .B2(n142), .Z(
        N337) );
  AO22M1RA U752 ( .A1(n140), .A2(Kin[59]), .B1(rkey_next[59]), .B2(n142), .Z(
        N336) );
  AO22M1RA U753 ( .A1(n140), .A2(Kin[58]), .B1(rkey_next[58]), .B2(n142), .Z(
        N335) );
  AO22M1RA U754 ( .A1(n140), .A2(Kin[57]), .B1(rkey_next[57]), .B2(n142), .Z(
        N334) );
  AO22M1RA U755 ( .A1(n140), .A2(Kin[56]), .B1(rkey_next[56]), .B2(n142), .Z(
        N333) );
  AO22M1RA U756 ( .A1(n140), .A2(Kin[55]), .B1(rkey_next[55]), .B2(n142), .Z(
        N332) );
  AO22M1RA U757 ( .A1(n140), .A2(Kin[54]), .B1(rkey_next[54]), .B2(n142), .Z(
        N331) );
  AO22M1RA U758 ( .A1(n140), .A2(Kin[53]), .B1(rkey_next[53]), .B2(n142), .Z(
        N330) );
  AO22M1RA U759 ( .A1(n140), .A2(Kin[52]), .B1(rkey_next[52]), .B2(n142), .Z(
        N329) );
  AO22M1RA U760 ( .A1(n140), .A2(Kin[51]), .B1(rkey_next[51]), .B2(n142), .Z(
        N328) );
  AO22M1RA U761 ( .A1(n140), .A2(Kin[50]), .B1(rkey_next[50]), .B2(n142), .Z(
        N327) );
  AO22M1RA U762 ( .A1(n140), .A2(Kin[49]), .B1(rkey_next[49]), .B2(n142), .Z(
        N326) );
  AO22M1RA U763 ( .A1(n140), .A2(Kin[48]), .B1(rkey_next[48]), .B2(n142), .Z(
        N325) );
  AO22M1RA U764 ( .A1(n140), .A2(Kin[47]), .B1(rkey_next[47]), .B2(n142), .Z(
        N324) );
  AO22M1RA U765 ( .A1(n140), .A2(Kin[46]), .B1(rkey_next[46]), .B2(n142), .Z(
        N323) );
  AO22M1RA U766 ( .A1(n140), .A2(Kin[45]), .B1(rkey_next[45]), .B2(n142), .Z(
        N322) );
  AO22M1RA U767 ( .A1(n140), .A2(Kin[44]), .B1(rkey_next[44]), .B2(n142), .Z(
        N321) );
  AO22M1RA U768 ( .A1(n141), .A2(Kin[43]), .B1(rkey_next[43]), .B2(n142), .Z(
        N320) );
  AO22M1RA U769 ( .A1(n141), .A2(Kin[42]), .B1(rkey_next[42]), .B2(n142), .Z(
        N319) );
  AO22M1RA U770 ( .A1(n141), .A2(Kin[41]), .B1(rkey_next[41]), .B2(n143), .Z(
        N318) );
  AO22M1RA U771 ( .A1(n141), .A2(Kin[40]), .B1(rkey_next[40]), .B2(n143), .Z(
        N317) );
  AO22M1RA U772 ( .A1(n141), .A2(Kin[39]), .B1(rkey_next[39]), .B2(n143), .Z(
        N316) );
  AO22M1RA U773 ( .A1(n141), .A2(Kin[38]), .B1(rkey_next[38]), .B2(n143), .Z(
        N315) );
  AO22M1RA U774 ( .A1(n141), .A2(Kin[37]), .B1(rkey_next[37]), .B2(n143), .Z(
        N314) );
  AO22M1RA U775 ( .A1(n141), .A2(Kin[36]), .B1(rkey_next[36]), .B2(n143), .Z(
        N313) );
  AO22M1RA U776 ( .A1(n141), .A2(Kin[35]), .B1(rkey_next[35]), .B2(n143), .Z(
        N312) );
  AO22M1RA U777 ( .A1(n141), .A2(Kin[34]), .B1(rkey_next[34]), .B2(n143), .Z(
        N311) );
  AO22M1RA U778 ( .A1(n141), .A2(Kin[33]), .B1(rkey_next[33]), .B2(n143), .Z(
        N310) );
  AO22M1RA U779 ( .A1(n141), .A2(Kin[32]), .B1(rkey_next[32]), .B2(n143), .Z(
        N309) );
  AO22M1RA U780 ( .A1(n141), .A2(Kin[30]), .B1(rkey_next[30]), .B2(n143), .Z(
        N307) );
  AO22M1RA U781 ( .A1(n141), .A2(Kin[29]), .B1(rkey_next[29]), .B2(n143), .Z(
        N306) );
  AO22M1RA U782 ( .A1(n141), .A2(Kin[28]), .B1(rkey_next[28]), .B2(n143), .Z(
        N305) );
  AO22M1RA U783 ( .A1(n141), .A2(Kin[26]), .B1(rkey_next[26]), .B2(n143), .Z(
        N303) );
  AO22M1RA U784 ( .A1(n140), .A2(Kin[25]), .B1(rkey_next[25]), .B2(n143), .Z(
        N302) );
  AO22M1RA U785 ( .A1(n141), .A2(Kin[24]), .B1(rkey_next[24]), .B2(n143), .Z(
        N301) );
  AO22M1RA U786 ( .A1(n140), .A2(Kin[23]), .B1(rkey_next[23]), .B2(n143), .Z(
        N300) );
  AO22M1RA U787 ( .A1(n141), .A2(Kin[22]), .B1(rkey_next[22]), .B2(n143), .Z(
        N299) );
  AO22M1RA U788 ( .A1(n140), .A2(Kin[21]), .B1(rkey_next[21]), .B2(n143), .Z(
        N298) );
  AO22M1RA U789 ( .A1(n141), .A2(Kin[20]), .B1(rkey_next[20]), .B2(n143), .Z(
        N297) );
  AO22M1RA U790 ( .A1(n140), .A2(Kin[18]), .B1(rkey_next[18]), .B2(n143), .Z(
        N295) );
  AO22M1RA U791 ( .A1(n141), .A2(Kin[17]), .B1(rkey_next[17]), .B2(n143), .Z(
        N294) );
  AO22M1RA U792 ( .A1(n140), .A2(Kin[16]), .B1(rkey_next[16]), .B2(n143), .Z(
        N293) );
  AO22M1RA U793 ( .A1(n141), .A2(Kin[15]), .B1(rkey_next[15]), .B2(n143), .Z(
        N292) );
  AO22M1RA U794 ( .A1(n140), .A2(Kin[14]), .B1(rkey_next[14]), .B2(n143), .Z(
        N291) );
  AO22M1RA U795 ( .A1(n141), .A2(Kin[13]), .B1(rkey_next[13]), .B2(n143), .Z(
        N290) );
  AO22M1RA U796 ( .A1(n140), .A2(Kin[12]), .B1(rkey_next[12]), .B2(n143), .Z(
        N289) );
  AO22M1RA U797 ( .A1(n141), .A2(Kin[10]), .B1(rkey_next[10]), .B2(n143), .Z(
        N287) );
  AO22M1RA U798 ( .A1(n140), .A2(Kin[9]), .B1(rkey_next[9]), .B2(n143), .Z(
        N286) );
  AO22M1RA U799 ( .A1(n141), .A2(Kin[8]), .B1(rkey_next[8]), .B2(n143), .Z(
        N285) );
  AO22M1RA U800 ( .A1(n141), .A2(Kin[7]), .B1(rkey_next[7]), .B2(n143), .Z(
        N284) );
  AO22M1RA U801 ( .A1(n141), .A2(Kin[6]), .B1(rkey_next[6]), .B2(n143), .Z(
        N283) );
  AO22M1RA U802 ( .A1(n140), .A2(Kin[5]), .B1(rkey_next[5]), .B2(n143), .Z(
        N282) );
  AO22M1RA U803 ( .A1(n141), .A2(Kin[4]), .B1(rkey_next[4]), .B2(n143), .Z(
        N281) );
  AO22M1RA U804 ( .A1(n140), .A2(Kin[2]), .B1(rkey_next[2]), .B2(n143), .Z(
        N279) );
  AO22M1RA U805 ( .A1(n140), .A2(Kin[1]), .B1(rkey_next[1]), .B2(n143), .Z(
        N278) );
  AO22M1RA U806 ( .A1(n141), .A2(Kin[0]), .B1(rkey_next[0]), .B2(n143), .Z(
        N277) );
  OR2M2R U807 ( .A(sel), .B(n143), .Z(n9) );
  NR2M2R U808 ( .A(n4), .B(n1), .Z(N419) );
  NR2M2R U809 ( .A(n5), .B(n1), .Z(N418) );
  NR2M2R U810 ( .A(n6), .B(n1), .Z(N416) );
  NR2B1M2R U811 ( .NA(rcon[6]), .B(n1), .Z(N422) );
  NR2B1M2R U812 ( .NA(rcon[5]), .B(n1), .Z(N421) );
  NR2B1M2R U813 ( .NA(rcon[4]), .B(n1), .Z(N420) );
  NR2B1M2R U814 ( .NA(rcon[1]), .B(n1), .Z(N417) );
  ND2B1M2R U815 ( .NA(rcon[7]), .B(n7), .Z(N415) );
  INVM2R U816 ( .A(EN), .Z(n144) );
  NR2B1M2R U817 ( .NA(\rnd[7] ), .B(n144), .Z(N15) );
  NR2B1M2R U818 ( .NA(\rnd[6] ), .B(n144), .Z(N14) );
  NR2B1M2R U819 ( .NA(\rnd[5] ), .B(n144), .Z(N13) );
  NR2B1M2R U820 ( .NA(\rnd[4] ), .B(n144), .Z(N12) );
  NR2B1M2R U821 ( .NA(\rnd[3] ), .B(n144), .Z(N11) );
  NR2B1M2R U822 ( .NA(\rnd[2] ), .B(n144), .Z(N10) );
  NR2B1M2R U823 ( .NA(\rnd[8] ), .B(n144), .Z(N16) );
  NR2B1M2R U824 ( .NA(\rnd[1] ), .B(n144), .Z(N9) );
  OR2M2R U825 ( .A(\rnd[9] ), .B(n144), .Z(N7) );
endmodule

