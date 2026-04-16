module SQ_2SHARE_PROLEADWRAP ( clk, a0, a1, r0, r1, b0, b1 );
  input [1:0] a0;
  input [1:0] a1;
  input [1:0] r0;
  input [1:0] r1;
  output [1:0] b0;
  output [1:0] b1;
  input clk;
  wire   SQ_instance_n96, SQ_instance_n95, SQ_instance_n94, SQ_instance_n93,
         SQ_instance_n92, SQ_instance_n91, SQ_instance_n90, SQ_instance_n89,
         SQ_instance_n88, SQ_instance_n87, SQ_instance_n86, SQ_instance_n85,
         SQ_instance_n84, SQ_instance_n83, SQ_instance_n82, SQ_instance_n81,
         SQ_instance_n80, SQ_instance_n79, SQ_instance_n78, SQ_instance_n77,
         SQ_instance_n76, SQ_instance_n75, SQ_instance_n74, SQ_instance_n73,
         SQ_instance_n72, SQ_instance_n71, SQ_instance_n70, SQ_instance_n69,
         SQ_instance_n68, SQ_instance_n67, SQ_instance_n66, SQ_instance_n65,
         SQ_instance_n64, SQ_instance_n63, SQ_instance_n62, SQ_instance_n61,
         SQ_instance_n60, SQ_instance_n59, SQ_instance_n58, SQ_instance_n57,
         SQ_instance_n56, SQ_instance_n55, SQ_instance_n54, SQ_instance_n53,
         SQ_instance_n52, SQ_instance_n51, SQ_instance_n50, SQ_instance_n49,
         SQ_instance_n48, SQ_instance_n47, SQ_instance_n46, SQ_instance_n45,
         SQ_instance_n44, SQ_instance_n43, SQ_instance_n42, SQ_instance_n41,
         SQ_instance_n40, SQ_instance_n39, SQ_instance_n38, SQ_instance_n37,
         SQ_instance_n36, SQ_instance_n35, SQ_instance_n34, SQ_instance_n33,
         SQ_instance_n32, SQ_instance_n31, SQ_instance_n30, SQ_instance_n29,
         SQ_instance_n28, SQ_instance_n27, SQ_instance_n26, SQ_instance_n25,
         SQ_instance_n24, SQ_instance_n23, SQ_instance_n22, SQ_instance_n21,
         SQ_instance_n20, SQ_instance_n19, SQ_instance_n18, SQ_instance_n17,
         SQ_instance_n16, SQ_instance_n15, SQ_instance_n14, SQ_instance_n13,
         SQ_instance_n12, SQ_instance_n11, SQ_instance_n10, SQ_instance_n9,
         SQ_instance_n8, SQ_instance_n7, SQ_instance_n6, SQ_instance_n5,
         SQ_instance_n4, SQ_instance_n3, SQ_instance_n2, SQ_instance_n1;
  wire   [1:0] SQ_instance_a0r0a0r1_r;
  wire   [1:0] SQ_instance_a12r0_r;
  wire   [1:0] SQ_instance_a0_r;
  wire   [1:0] SQ_instance_a1sr1;
  wire   [1:0] SQ_instance_a0r0a0r1;
  wire   [1:0] SQ_instance_a12r0;

  NOR2_X1 SQ_instance_U104 ( .A1(SQ_instance_n96), .A2(SQ_instance_n95), .ZN(
        SQ_instance_a12r0[0]) );
  NOR2_X1 SQ_instance_U103 ( .A1(SQ_instance_n94), .A2(SQ_instance_n93), .ZN(
        SQ_instance_a0r0a0r1[0]) );
  NOR2_X1 SQ_instance_U102 ( .A1(SQ_instance_n92), .A2(SQ_instance_n91), .ZN(
        SQ_instance_n93) );
  NOR2_X1 SQ_instance_U101 ( .A1(SQ_instance_n90), .A2(SQ_instance_n89), .ZN(
        SQ_instance_n91) );
  NOR2_X1 SQ_instance_U100 ( .A1(SQ_instance_n88), .A2(SQ_instance_n87), .ZN(
        b0[0]) );
  XOR2_X1 SQ_instance_U99 ( .A(SQ_instance_n86), .B(SQ_instance_n85), .Z(
        SQ_instance_n87) );
  NOR2_X1 SQ_instance_U98 ( .A1(SQ_instance_n84), .A2(SQ_instance_n2), .ZN(
        SQ_instance_a1sr1[1]) );
  XNOR2_X1 SQ_instance_U97 ( .A(SQ_instance_n81), .B(r1[1]), .ZN(
        SQ_instance_n83) );
  XOR2_X1 SQ_instance_U96 ( .A(SQ_instance_n4), .B(SQ_instance_n3), .Z(
        SQ_instance_n84) );
  NAND2_X1 SQ_instance_U95 ( .A1(a1[0]), .A2(a1[1]), .ZN(SQ_instance_n81) );
  NOR2_X1 SQ_instance_U94 ( .A1(a1[0]), .A2(a1[1]), .ZN(SQ_instance_n80) );
  NOR2_X1 SQ_instance_U93 ( .A1(SQ_instance_n79), .A2(SQ_instance_n78), .ZN(
        SQ_instance_a1sr1[0]) );
  XNOR2_X1 SQ_instance_U92 ( .A(SQ_instance_n77), .B(SQ_instance_n76), .ZN(
        SQ_instance_n78) );
  AND2_X1 SQ_instance_U91 ( .A1(SQ_instance_n75), .A2(r1[1]), .ZN(
        SQ_instance_n77) );
  NOR2_X1 SQ_instance_U90 ( .A1(r1[1]), .A2(SQ_instance_n75), .ZN(
        SQ_instance_n79) );
  XNOR2_X1 SQ_instance_U89 ( .A(SQ_instance_n82), .B(a1[1]), .ZN(
        SQ_instance_n75) );
  AND2_X1 SQ_instance_U88 ( .A1(SQ_instance_n88), .A2(SQ_instance_n74), .ZN(
        b0[1]) );
  NAND2_X1 SQ_instance_U87 ( .A1(SQ_instance_n86), .A2(SQ_instance_n85), .ZN(
        SQ_instance_n74) );
  NOR2_X1 SQ_instance_U86 ( .A1(SQ_instance_n73), .A2(SQ_instance_n72), .ZN(
        SQ_instance_n86) );
  NOR2_X1 SQ_instance_U85 ( .A1(SQ_instance_n72), .A2(SQ_instance_n71), .ZN(
        SQ_instance_n88) );
  NOR2_X1 SQ_instance_U84 ( .A1(SQ_instance_n70), .A2(SQ_instance_n69), .ZN(
        SQ_instance_n71) );
  AND2_X1 SQ_instance_U83 ( .A1(SQ_instance_n85), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n69) );
  AND2_X1 SQ_instance_U82 ( .A1(SQ_instance_n68), .A2(SQ_instance_n67), .ZN(
        SQ_instance_n73) );
  XOR2_X1 SQ_instance_U81 ( .A(SQ_instance_n66), .B(SQ_instance_n65), .Z(
        SQ_instance_n85) );
  NAND2_X1 SQ_instance_U80 ( .A1(SQ_instance_n64), .A2(SQ_instance_n63), .ZN(
        SQ_instance_n70) );
  NAND2_X1 SQ_instance_U79 ( .A1(SQ_instance_n66), .A2(SQ_instance_n65), .ZN(
        SQ_instance_n63) );
  XNOR2_X1 SQ_instance_U78 ( .A(SQ_instance_n62), .B(SQ_instance_n61), .ZN(
        SQ_instance_n65) );
  XNOR2_X1 SQ_instance_U77 ( .A(SQ_instance_n60), .B(SQ_instance_n59), .ZN(
        SQ_instance_n61) );
  INV_X1 SQ_instance_U76 ( .A(SQ_instance_n58), .ZN(SQ_instance_n66) );
  NOR2_X1 SQ_instance_U75 ( .A1(SQ_instance_n58), .A2(SQ_instance_n64), .ZN(
        SQ_instance_n72) );
  XNOR2_X1 SQ_instance_U74 ( .A(SQ_instance_n68), .B(SQ_instance_n67), .ZN(
        SQ_instance_n64) );
  NAND2_X1 SQ_instance_U73 ( .A1(SQ_instance_n57), .A2(SQ_instance_n56), .ZN(
        SQ_instance_n67) );
  NAND2_X1 SQ_instance_U72 ( .A1(SQ_instance_n62), .A2(SQ_instance_n55), .ZN(
        SQ_instance_n56) );
  INV_X1 SQ_instance_U71 ( .A(SQ_instance_n59), .ZN(SQ_instance_n55) );
  NAND2_X1 SQ_instance_U70 ( .A1(SQ_instance_n54), .A2(SQ_instance_n53), .ZN(
        SQ_instance_n62) );
  NAND2_X1 SQ_instance_U69 ( .A1(SQ_instance_n52), .A2(SQ_instance_n51), .ZN(
        SQ_instance_n53) );
  NAND2_X1 SQ_instance_U68 ( .A1(SQ_instance_n50), .A2(SQ_instance_n49), .ZN(
        SQ_instance_n51) );
  OR2_X1 SQ_instance_U67 ( .A1(SQ_instance_n49), .A2(SQ_instance_n50), .ZN(
        SQ_instance_n54) );
  OR2_X1 SQ_instance_U66 ( .A1(SQ_instance_n60), .A2(SQ_instance_n59), .ZN(
        SQ_instance_n57) );
  NAND2_X1 SQ_instance_U65 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n59) );
  NAND2_X1 SQ_instance_U64 ( .A1(SQ_instance_n48), .A2(
        SQ_instance_a0r0a0r1_r[1]), .ZN(SQ_instance_n60) );
  XNOR2_X1 SQ_instance_U63 ( .A(SQ_instance_n50), .B(SQ_instance_n47), .ZN(
        SQ_instance_n68) );
  XNOR2_X1 SQ_instance_U62 ( .A(SQ_instance_n52), .B(SQ_instance_n49), .ZN(
        SQ_instance_n47) );
  NAND2_X1 SQ_instance_U61 ( .A1(SQ_instance_a0r0a0r1_r[0]), .A2(
        SQ_instance_n46), .ZN(SQ_instance_n49) );
  XOR2_X1 SQ_instance_U60 ( .A(SQ_instance_a0r0a0r1_r[1]), .B(SQ_instance_n48), 
        .Z(SQ_instance_n52) );
  AND2_X1 SQ_instance_U59 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[1]), .ZN(SQ_instance_n48) );
  NAND2_X1 SQ_instance_U58 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n50) );
  XNOR2_X1 SQ_instance_U57 ( .A(SQ_instance_a0r0a0r1_r[0]), .B(SQ_instance_n46), .ZN(SQ_instance_n58) );
  AND2_X1 SQ_instance_U56 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[0]), .ZN(SQ_instance_n46) );
  AND2_X1 SQ_instance_U55 ( .A1(SQ_instance_n96), .A2(SQ_instance_n95), .ZN(
        SQ_instance_a12r0[1]) );
  XNOR2_X1 SQ_instance_U54 ( .A(SQ_instance_n45), .B(SQ_instance_n44), .ZN(
        SQ_instance_n95) );
  NOR2_X1 SQ_instance_U53 ( .A1(SQ_instance_n43), .A2(SQ_instance_n42), .ZN(
        SQ_instance_n96) );
  NOR2_X1 SQ_instance_U52 ( .A1(SQ_instance_n41), .A2(SQ_instance_n40), .ZN(
        SQ_instance_n42) );
  NAND2_X1 SQ_instance_U51 ( .A1(SQ_instance_n39), .A2(SQ_instance_n38), .ZN(
        SQ_instance_n40) );
  NAND2_X1 SQ_instance_U50 ( .A1(r0[0]), .A2(a1[1]), .ZN(SQ_instance_n39) );
  NOR2_X1 SQ_instance_U49 ( .A1(SQ_instance_n45), .A2(SQ_instance_n44), .ZN(
        SQ_instance_n41) );
  XNOR2_X1 SQ_instance_U48 ( .A(r0[0]), .B(a1[1]), .ZN(SQ_instance_n44) );
  NOR2_X1 SQ_instance_U47 ( .A1(SQ_instance_n37), .A2(SQ_instance_n43), .ZN(
        SQ_instance_n45) );
  NOR2_X1 SQ_instance_U46 ( .A1(SQ_instance_n36), .A2(SQ_instance_n82), .ZN(
        SQ_instance_n37) );
  INV_X1 SQ_instance_U45 ( .A(a1[0]), .ZN(SQ_instance_n82) );
  NOR2_X1 SQ_instance_U44 ( .A1(SQ_instance_n35), .A2(SQ_instance_n38), .ZN(
        SQ_instance_n43) );
  XNOR2_X1 SQ_instance_U43 ( .A(r0[1]), .B(a1[0]), .ZN(SQ_instance_n38) );
  AND2_X1 SQ_instance_U42 ( .A1(SQ_instance_n94), .A2(SQ_instance_n90), .ZN(
        SQ_instance_a0r0a0r1[1]) );
  XNOR2_X1 SQ_instance_U41 ( .A(SQ_instance_n34), .B(SQ_instance_n33), .ZN(
        SQ_instance_n90) );
  NOR2_X1 SQ_instance_U40 ( .A1(SQ_instance_n32), .A2(SQ_instance_n89), .ZN(
        SQ_instance_n94) );
  NOR2_X1 SQ_instance_U39 ( .A1(SQ_instance_n31), .A2(SQ_instance_n33), .ZN(
        SQ_instance_n89) );
  NOR2_X1 SQ_instance_U38 ( .A1(SQ_instance_n92), .A2(SQ_instance_n30), .ZN(
        SQ_instance_n32) );
  XOR2_X1 SQ_instance_U37 ( .A(SQ_instance_n31), .B(SQ_instance_n29), .Z(
        SQ_instance_n30) );
  NOR2_X1 SQ_instance_U36 ( .A1(SQ_instance_n34), .A2(SQ_instance_n33), .ZN(
        SQ_instance_n92) );
  XOR2_X1 SQ_instance_U35 ( .A(r1[0]), .B(SQ_instance_n28), .Z(SQ_instance_n33) );
  NOR2_X1 SQ_instance_U34 ( .A1(SQ_instance_n27), .A2(SQ_instance_n26), .ZN(
        SQ_instance_n34) );
  NAND2_X1 SQ_instance_U33 ( .A1(SQ_instance_n25), .A2(SQ_instance_n24), .ZN(
        SQ_instance_n26) );
  NAND2_X1 SQ_instance_U32 ( .A1(r1[1]), .A2(SQ_instance_n23), .ZN(
        SQ_instance_n24) );
  NAND2_X1 SQ_instance_U31 ( .A1(SQ_instance_n22), .A2(SQ_instance_n21), .ZN(
        SQ_instance_n23) );
  NAND2_X1 SQ_instance_U30 ( .A1(SQ_instance_n20), .A2(SQ_instance_n19), .ZN(
        SQ_instance_n25) );
  NOR2_X1 SQ_instance_U29 ( .A1(SQ_instance_n18), .A2(SQ_instance_n17), .ZN(
        SQ_instance_n19) );
  NOR2_X1 SQ_instance_U28 ( .A1(r0[1]), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n17) );
  NOR2_X1 SQ_instance_U27 ( .A1(SQ_instance_n29), .A2(SQ_instance_n31), .ZN(
        SQ_instance_n27) );
  XNOR2_X1 SQ_instance_U26 ( .A(SQ_instance_n22), .B(SQ_instance_n15), .ZN(
        SQ_instance_n31) );
  XOR2_X1 SQ_instance_U25 ( .A(r1[1]), .B(SQ_instance_n21), .Z(SQ_instance_n15) );
  NAND2_X1 SQ_instance_U24 ( .A1(a0[1]), .A2(SQ_instance_n14), .ZN(
        SQ_instance_n21) );
  NAND2_X1 SQ_instance_U23 ( .A1(SQ_instance_n13), .A2(SQ_instance_n20), .ZN(
        SQ_instance_n22) );
  NOR2_X1 SQ_instance_U22 ( .A1(SQ_instance_n12), .A2(SQ_instance_n11), .ZN(
        SQ_instance_n20) );
  NOR2_X1 SQ_instance_U21 ( .A1(r0[1]), .A2(SQ_instance_n10), .ZN(
        SQ_instance_n11) );
  INV_X1 SQ_instance_U20 ( .A(SQ_instance_n9), .ZN(SQ_instance_n12) );
  INV_X1 SQ_instance_U19 ( .A(SQ_instance_n8), .ZN(SQ_instance_n13) );
  OR2_X1 SQ_instance_U18 ( .A1(SQ_instance_n28), .A2(SQ_instance_n76), .ZN(
        SQ_instance_n29) );
  INV_X1 SQ_instance_U17 ( .A(r1[0]), .ZN(SQ_instance_n76) );
  NAND2_X1 SQ_instance_U16 ( .A1(SQ_instance_n14), .A2(a0[0]), .ZN(
        SQ_instance_n28) );
  XNOR2_X1 SQ_instance_U15 ( .A(SQ_instance_n7), .B(SQ_instance_n6), .ZN(
        SQ_instance_n14) );
  NAND2_X1 SQ_instance_U14 ( .A1(r0[1]), .A2(SQ_instance_n9), .ZN(
        SQ_instance_n6) );
  NAND2_X1 SQ_instance_U13 ( .A1(SQ_instance_n5), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n9) );
  NOR2_X1 SQ_instance_U12 ( .A1(SQ_instance_n36), .A2(SQ_instance_n18), .ZN(
        SQ_instance_n5) );
  INV_X1 SQ_instance_U11 ( .A(a0[1]), .ZN(SQ_instance_n18) );
  INV_X1 SQ_instance_U10 ( .A(r0[1]), .ZN(SQ_instance_n36) );
  NAND2_X1 SQ_instance_U9 ( .A1(SQ_instance_n8), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n7) );
  NAND2_X1 SQ_instance_U8 ( .A1(r0[0]), .A2(SQ_instance_n10), .ZN(
        SQ_instance_n16) );
  INV_X1 SQ_instance_U7 ( .A(a0[0]), .ZN(SQ_instance_n10) );
  NAND2_X1 SQ_instance_U6 ( .A1(a0[0]), .A2(SQ_instance_n35), .ZN(
        SQ_instance_n8) );
  INV_X1 SQ_instance_U5 ( .A(r0[0]), .ZN(SQ_instance_n35) );
  XNOR2_X1 SQ_instance_U4 ( .A(r1[0]), .B(SQ_instance_n80), .ZN(SQ_instance_n4) );
  OR2_X1 SQ_instance_U3 ( .A1(SQ_instance_n81), .A2(r1[1]), .ZN(SQ_instance_n3) );
  XNOR2_X1 SQ_instance_U2 ( .A(SQ_instance_n83), .B(SQ_instance_n1), .ZN(
        SQ_instance_n2) );
  AND2_X1 SQ_instance_U1 ( .A1(r1[0]), .A2(SQ_instance_n82), .ZN(
        SQ_instance_n1) );
  DFF_X1 SQ_instance_FF1_output_reg_0_ ( .D(a0[0]), .CK(clk), .Q(
        SQ_instance_a0_r[0]) );
  DFF_X1 SQ_instance_FF1_output_reg_1_ ( .D(a0[1]), .CK(clk), .Q(
        SQ_instance_a0_r[1]) );
  DFF_X1 SQ_instance_FF2_output_reg_0_ ( .D(SQ_instance_a12r0[0]), .CK(clk), 
        .Q(SQ_instance_a12r0_r[0]) );
  DFF_X1 SQ_instance_FF2_output_reg_1_ ( .D(SQ_instance_a12r0[1]), .CK(clk), 
        .Q(SQ_instance_a12r0_r[1]) );
  DFF_X1 SQ_instance_FF3_output_reg_0_ ( .D(SQ_instance_a0r0a0r1[0]), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[0]) );
  DFF_X1 SQ_instance_FF3_output_reg_1_ ( .D(SQ_instance_a0r0a0r1[1]), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[1]) );
  DFF_X1 SQ_instance_FF4_output_reg_0_ ( .D(SQ_instance_a1sr1[0]), .CK(clk), 
        .Q(b1[0]) );
  DFF_X1 SQ_instance_FF4_output_reg_1_ ( .D(SQ_instance_a1sr1[1]), .CK(clk), 
        .Q(b1[1]) );
endmodule

