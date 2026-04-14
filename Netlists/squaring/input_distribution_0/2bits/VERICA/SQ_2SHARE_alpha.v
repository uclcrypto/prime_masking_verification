module SQ_2SHARE_SILVERWRAP ( clk, a0, a1, r0, r1, b0, b1 );
  input [1:0] a0;
  input [1:0] a1;
  input [1:0] r0;
  input [1:0] r1;
  output [1:0] b0;
  output [1:0] b1;
  input clk;
  wire   N2, N3, r0_p_r, r1_p_r, n2, RED1_n1, RED2_n1, SQ_instance_n97,
         SQ_instance_n96, SQ_instance_n95, SQ_instance_n94, SQ_instance_n93,
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
         SQ_instance_n4, SQ_instance_n3, SQ_instance_n2, SQ_instance_n1,
         SQ_instance_add_x_2_n6, SQ_instance_add_x_6_n6,
         SQ_instance_add_x_11_n6, SQ_instance_a1sr1_1_,
         SQ_instance_a0r0a0r1_1_, SQ_instance_a12r0_1_;
  wire   [1:0] a0_r;
  wire   [1:0] a0_mod_r;
  wire   [1:0] a1_r;
  wire   [1:0] a1_mod_r;
  wire   [1:0] a0_sel_r;
  wire   [1:0] a1_sel_r;
  wire   [1:0] a0_sel_rr;
  wire   [1:0] a1_sel_rr;
  wire   [1:0] r0_rr;
  wire   [1:0] r1_rr;
  wire   [1:0] r0_r;
  wire   [1:0] r1_r;
  wire   [1:0] SQ_instance_a0r0a0r1_r;
  wire   [1:0] SQ_instance_a12r0_r;
  wire   [1:0] SQ_instance_a0_r;

  DFF_X1 a0_r_reg_1_ ( .D(a0[1]), .CK(clk), .Q(a0_r[1]) );
  DFF_X1 a0_r_reg_0_ ( .D(a0[0]), .CK(clk), .Q(a0_r[0]) );
  DFF_X1 a1_r_reg_1_ ( .D(a1[1]), .CK(clk), .Q(a1_r[1]) );
  DFF_X1 a1_r_reg_0_ ( .D(a1[0]), .CK(clk), .Q(a1_r[0]) );
  DFF_X1 r0_p_r_reg ( .D(N2), .CK(clk), .Q(r0_p_r) );
  DFF_X1 r1_p_r_reg ( .D(N3), .CK(clk), .Q(r1_p_r) );
  DFF_X1 r0_r_reg_1_ ( .D(r0[1]), .CK(clk), .Q(r0_r[1]) );
  DFF_X1 r0_r_reg_0_ ( .D(r0[0]), .CK(clk), .Q(r0_r[0]) );
  DFF_X1 r1_r_reg_1_ ( .D(r1[1]), .CK(clk), .Q(r1_r[1]) );
  DFF_X1 r1_r_reg_0_ ( .D(r1[0]), .CK(clk), .Q(r1_r[0]) );
  DFF_X1 r0_rr_reg_1_ ( .D(r0_r[1]), .CK(clk), .Q(r0_rr[1]) );
  DFF_X1 r0_rr_reg_0_ ( .D(r0_r[0]), .CK(clk), .Q(r0_rr[0]) );
  DFF_X1 r1_rr_reg_1_ ( .D(r1_r[1]), .CK(clk), .Q(r1_rr[1]) );
  DFF_X1 r1_rr_reg_0_ ( .D(r1_r[0]), .CK(clk), .Q(r1_rr[0]) );
  DFF_X1 a0_sel_rr_reg_1_ ( .D(a0_sel_r[1]), .CK(clk), .Q(a0_sel_rr[1]) );
  DFF_X1 a0_sel_rr_reg_0_ ( .D(a0_sel_r[0]), .CK(clk), .Q(a0_sel_rr[0]) );
  DFF_X1 a1_sel_rr_reg_1_ ( .D(a1_sel_r[1]), .CK(clk), .Q(a1_sel_rr[1]) );
  DFF_X1 a1_sel_rr_reg_0_ ( .D(a1_sel_r[0]), .CK(clk), .Q(a1_sel_rr[0]) );
  AND2_X1 U10 ( .A1(r1[1]), .A2(r1[0]), .ZN(N3) );
  AND2_X1 U11 ( .A1(r0[1]), .A2(r0[0]), .ZN(N2) );
  NOR2_X1 U12 ( .A1(r0_p_r), .A2(r1_p_r), .ZN(n2) );
  AND2_X1 U13 ( .A1(n2), .A2(a0_mod_r[1]), .ZN(a0_sel_r[1]) );
  AND2_X1 U14 ( .A1(n2), .A2(a1_mod_r[1]), .ZN(a1_sel_r[1]) );
  AND2_X1 U15 ( .A1(n2), .A2(a0_mod_r[0]), .ZN(a0_sel_r[0]) );
  AND2_X1 U16 ( .A1(n2), .A2(a1_mod_r[0]), .ZN(a1_sel_r[0]) );
  NOR2_X1 RED1_U4 ( .A1(a0_r[1]), .A2(RED1_n1), .ZN(a0_mod_r[0]) );
  AND2_X1 RED1_U3 ( .A1(a0_r[1]), .A2(RED1_n1), .ZN(a0_mod_r[1]) );
  INV_X1 RED1_U2 ( .A(a0_r[0]), .ZN(RED1_n1) );
  NOR2_X1 RED2_U4 ( .A1(a1_r[1]), .A2(RED2_n1), .ZN(a1_mod_r[0]) );
  AND2_X1 RED2_U3 ( .A1(a1_r[1]), .A2(RED2_n1), .ZN(a1_mod_r[1]) );
  INV_X1 RED2_U2 ( .A(a1_r[0]), .ZN(RED2_n1) );
  NAND2_X1 SQ_instance_U105 ( .A1(SQ_instance_n97), .A2(SQ_instance_n96), .ZN(
        SQ_instance_add_x_11_n6) );
  NAND2_X1 SQ_instance_U104 ( .A1(SQ_instance_n95), .A2(SQ_instance_n94), .ZN(
        SQ_instance_n96) );
  NAND2_X1 SQ_instance_U103 ( .A1(r1_rr[0]), .A2(SQ_instance_n93), .ZN(
        SQ_instance_n94) );
  NAND2_X1 SQ_instance_U102 ( .A1(SQ_instance_n92), .A2(r1_rr[1]), .ZN(
        SQ_instance_n93) );
  NAND2_X1 SQ_instance_U101 ( .A1(SQ_instance_n91), .A2(SQ_instance_n90), .ZN(
        SQ_instance_n97) );
  NAND2_X1 SQ_instance_U100 ( .A1(r1_rr[1]), .A2(SQ_instance_n89), .ZN(
        SQ_instance_n90) );
  NAND2_X1 SQ_instance_U99 ( .A1(SQ_instance_n88), .A2(SQ_instance_n87), .ZN(
        b0[0]) );
  NAND2_X1 SQ_instance_U98 ( .A1(SQ_instance_n86), .A2(SQ_instance_n85), .ZN(
        SQ_instance_n87) );
  NOR2_X1 SQ_instance_U97 ( .A1(SQ_instance_n84), .A2(SQ_instance_n83), .ZN(
        SQ_instance_n88) );
  NAND2_X1 SQ_instance_U96 ( .A1(SQ_instance_n82), .A2(SQ_instance_n81), .ZN(
        SQ_instance_add_x_6_n6) );
  NAND2_X1 SQ_instance_U95 ( .A1(SQ_instance_n80), .A2(SQ_instance_n79), .ZN(
        SQ_instance_n81) );
  NOR2_X1 SQ_instance_U94 ( .A1(SQ_instance_n78), .A2(SQ_instance_n77), .ZN(
        SQ_instance_n82) );
  NAND2_X1 SQ_instance_U93 ( .A1(SQ_instance_n76), .A2(SQ_instance_n75), .ZN(
        SQ_instance_add_x_2_n6) );
  NAND2_X1 SQ_instance_U92 ( .A1(SQ_instance_n74), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n75) );
  NOR2_X1 SQ_instance_U91 ( .A1(SQ_instance_n72), .A2(SQ_instance_n71), .ZN(
        SQ_instance_n76) );
  NOR2_X1 SQ_instance_U90 ( .A1(SQ_instance_n72), .A2(SQ_instance_n70), .ZN(
        SQ_instance_a12r0_1_) );
  NOR2_X1 SQ_instance_U89 ( .A1(SQ_instance_n69), .A2(SQ_instance_n68), .ZN(
        SQ_instance_n70) );
  NOR2_X1 SQ_instance_U88 ( .A1(SQ_instance_n67), .A2(SQ_instance_n71), .ZN(
        SQ_instance_n68) );
  NOR2_X1 SQ_instance_U87 ( .A1(SQ_instance_n74), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n71) );
  XOR2_X1 SQ_instance_U86 ( .A(r0_rr[0]), .B(a1_sel_rr[1]), .Z(SQ_instance_n74) );
  NOR2_X1 SQ_instance_U85 ( .A1(SQ_instance_n67), .A2(SQ_instance_n66), .ZN(
        SQ_instance_n72) );
  NAND2_X1 SQ_instance_U84 ( .A1(SQ_instance_n69), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n66) );
  NAND2_X1 SQ_instance_U83 ( .A1(r0_rr[1]), .A2(a1_sel_rr[0]), .ZN(
        SQ_instance_n73) );
  AND2_X1 SQ_instance_U82 ( .A1(r0_rr[0]), .A2(a1_sel_rr[1]), .ZN(
        SQ_instance_n69) );
  NOR2_X1 SQ_instance_U81 ( .A1(r0_rr[1]), .A2(a1_sel_rr[0]), .ZN(
        SQ_instance_n67) );
  NOR2_X1 SQ_instance_U80 ( .A1(SQ_instance_n78), .A2(SQ_instance_n65), .ZN(
        SQ_instance_a0r0a0r1_1_) );
  NOR2_X1 SQ_instance_U79 ( .A1(SQ_instance_n64), .A2(SQ_instance_n63), .ZN(
        SQ_instance_n65) );
  NOR2_X1 SQ_instance_U78 ( .A1(SQ_instance_n77), .A2(SQ_instance_n62), .ZN(
        SQ_instance_n63) );
  NOR2_X1 SQ_instance_U77 ( .A1(SQ_instance_n61), .A2(SQ_instance_n60), .ZN(
        SQ_instance_n62) );
  NOR2_X1 SQ_instance_U76 ( .A1(SQ_instance_n80), .A2(SQ_instance_n79), .ZN(
        SQ_instance_n77) );
  NAND2_X1 SQ_instance_U75 ( .A1(SQ_instance_n60), .A2(SQ_instance_n61), .ZN(
        SQ_instance_n79) );
  NAND2_X1 SQ_instance_U74 ( .A1(SQ_instance_n59), .A2(SQ_instance_n58), .ZN(
        SQ_instance_n61) );
  NAND2_X1 SQ_instance_U73 ( .A1(SQ_instance_n57), .A2(SQ_instance_n56), .ZN(
        SQ_instance_n58) );
  INV_X1 SQ_instance_U72 ( .A(SQ_instance_n55), .ZN(SQ_instance_n56) );
  OR2_X1 SQ_instance_U71 ( .A1(SQ_instance_n55), .A2(SQ_instance_n54), .ZN(
        SQ_instance_n59) );
  XOR2_X1 SQ_instance_U70 ( .A(SQ_instance_n53), .B(SQ_instance_n52), .Z(
        SQ_instance_n60) );
  XOR2_X1 SQ_instance_U69 ( .A(SQ_instance_n51), .B(SQ_instance_n50), .Z(
        SQ_instance_n80) );
  INV_X1 SQ_instance_U68 ( .A(SQ_instance_n49), .ZN(SQ_instance_n64) );
  NOR2_X1 SQ_instance_U67 ( .A1(SQ_instance_n48), .A2(SQ_instance_n49), .ZN(
        SQ_instance_n78) );
  NAND2_X1 SQ_instance_U66 ( .A1(SQ_instance_n50), .A2(SQ_instance_n51), .ZN(
        SQ_instance_n49) );
  XNOR2_X1 SQ_instance_U65 ( .A(SQ_instance_n57), .B(SQ_instance_n47), .ZN(
        SQ_instance_n51) );
  XNOR2_X1 SQ_instance_U64 ( .A(SQ_instance_n55), .B(SQ_instance_n54), .ZN(
        SQ_instance_n47) );
  NAND2_X1 SQ_instance_U63 ( .A1(r1_rr[1]), .A2(SQ_instance_n46), .ZN(
        SQ_instance_n54) );
  NAND2_X1 SQ_instance_U62 ( .A1(a0_sel_rr[1]), .A2(SQ_instance_n45), .ZN(
        SQ_instance_n55) );
  XOR2_X1 SQ_instance_U61 ( .A(r0_rr[1]), .B(SQ_instance_n44), .Z(
        SQ_instance_n45) );
  NAND2_X1 SQ_instance_U60 ( .A1(SQ_instance_n43), .A2(SQ_instance_n42), .ZN(
        SQ_instance_n57) );
  NAND2_X1 SQ_instance_U59 ( .A1(SQ_instance_n53), .A2(SQ_instance_n52), .ZN(
        SQ_instance_n42) );
  NOR2_X1 SQ_instance_U58 ( .A1(SQ_instance_n89), .A2(SQ_instance_n41), .ZN(
        SQ_instance_n52) );
  INV_X1 SQ_instance_U57 ( .A(r1_rr[0]), .ZN(SQ_instance_n89) );
  NAND2_X1 SQ_instance_U56 ( .A1(SQ_instance_n40), .A2(SQ_instance_n39), .ZN(
        SQ_instance_n43) );
  XNOR2_X1 SQ_instance_U55 ( .A(r1_rr[0]), .B(SQ_instance_n41), .ZN(
        SQ_instance_n50) );
  NAND2_X1 SQ_instance_U54 ( .A1(SQ_instance_n38), .A2(a0_sel_rr[0]), .ZN(
        SQ_instance_n41) );
  XOR2_X1 SQ_instance_U53 ( .A(r0_rr[0]), .B(SQ_instance_n37), .Z(
        SQ_instance_n38) );
  INV_X1 SQ_instance_U52 ( .A(SQ_instance_n53), .ZN(SQ_instance_n48) );
  XOR2_X1 SQ_instance_U51 ( .A(SQ_instance_n40), .B(SQ_instance_n39), .Z(
        SQ_instance_n53) );
  XOR2_X1 SQ_instance_U50 ( .A(r1_rr[1]), .B(SQ_instance_n46), .Z(
        SQ_instance_n39) );
  NOR2_X1 SQ_instance_U49 ( .A1(SQ_instance_n36), .A2(SQ_instance_n35), .ZN(
        SQ_instance_n46) );
  NOR2_X1 SQ_instance_U48 ( .A1(SQ_instance_n34), .A2(SQ_instance_n33), .ZN(
        SQ_instance_n35) );
  INV_X1 SQ_instance_U47 ( .A(SQ_instance_n44), .ZN(SQ_instance_n34) );
  NAND2_X1 SQ_instance_U46 ( .A1(a0_sel_rr[1]), .A2(SQ_instance_n37), .ZN(
        SQ_instance_n36) );
  NOR2_X1 SQ_instance_U45 ( .A1(SQ_instance_n32), .A2(SQ_instance_n31), .ZN(
        SQ_instance_n40) );
  NAND2_X1 SQ_instance_U44 ( .A1(SQ_instance_n30), .A2(a0_sel_rr[0]), .ZN(
        SQ_instance_n31) );
  XOR2_X1 SQ_instance_U43 ( .A(r0_rr[1]), .B(a0_sel_rr[1]), .Z(SQ_instance_n30) );
  NOR2_X1 SQ_instance_U42 ( .A1(SQ_instance_n33), .A2(SQ_instance_n37), .ZN(
        SQ_instance_n32) );
  NAND2_X1 SQ_instance_U41 ( .A1(r0_rr[1]), .A2(SQ_instance_n29), .ZN(
        SQ_instance_n37) );
  NAND2_X1 SQ_instance_U40 ( .A1(a0_sel_rr[1]), .A2(SQ_instance_n44), .ZN(
        SQ_instance_n29) );
  NAND2_X1 SQ_instance_U39 ( .A1(r0_rr[0]), .A2(SQ_instance_n28), .ZN(
        SQ_instance_n44) );
  NOR2_X1 SQ_instance_U38 ( .A1(r0_rr[0]), .A2(SQ_instance_n28), .ZN(
        SQ_instance_n33) );
  INV_X1 SQ_instance_U37 ( .A(a0_sel_rr[0]), .ZN(SQ_instance_n28) );
  NOR2_X1 SQ_instance_U36 ( .A1(SQ_instance_n84), .A2(SQ_instance_n27), .ZN(
        b0[1]) );
  NOR2_X1 SQ_instance_U35 ( .A1(SQ_instance_n26), .A2(SQ_instance_n25), .ZN(
        SQ_instance_n27) );
  NOR2_X1 SQ_instance_U34 ( .A1(SQ_instance_n83), .A2(SQ_instance_n24), .ZN(
        SQ_instance_n25) );
  NOR2_X1 SQ_instance_U33 ( .A1(SQ_instance_n23), .A2(SQ_instance_n22), .ZN(
        SQ_instance_n24) );
  NOR2_X1 SQ_instance_U32 ( .A1(SQ_instance_n86), .A2(SQ_instance_n85), .ZN(
        SQ_instance_n83) );
  NAND2_X1 SQ_instance_U31 ( .A1(SQ_instance_n23), .A2(SQ_instance_n22), .ZN(
        SQ_instance_n85) );
  NAND2_X1 SQ_instance_U30 ( .A1(SQ_instance_n21), .A2(SQ_instance_n20), .ZN(
        SQ_instance_n22) );
  NAND2_X1 SQ_instance_U29 ( .A1(SQ_instance_n19), .A2(SQ_instance_n18), .ZN(
        SQ_instance_n20) );
  NAND2_X1 SQ_instance_U28 ( .A1(SQ_instance_n17), .A2(SQ_instance_n18), .ZN(
        SQ_instance_n21) );
  XOR2_X1 SQ_instance_U27 ( .A(SQ_instance_n16), .B(SQ_instance_n15), .Z(
        SQ_instance_n86) );
  AND2_X1 SQ_instance_U26 ( .A1(SQ_instance_n26), .A2(SQ_instance_n23), .ZN(
        SQ_instance_n84) );
  XOR2_X1 SQ_instance_U25 ( .A(SQ_instance_n14), .B(SQ_instance_n13), .Z(
        SQ_instance_n23) );
  XOR2_X1 SQ_instance_U24 ( .A(SQ_instance_n12), .B(SQ_instance_n11), .Z(
        SQ_instance_n13) );
  AND2_X1 SQ_instance_U23 ( .A1(SQ_instance_n15), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n26) );
  XOR2_X1 SQ_instance_U22 ( .A(SQ_instance_n18), .B(SQ_instance_n10), .Z(
        SQ_instance_n16) );
  XOR2_X1 SQ_instance_U21 ( .A(SQ_instance_n17), .B(SQ_instance_n19), .Z(
        SQ_instance_n10) );
  NAND2_X1 SQ_instance_U20 ( .A1(SQ_instance_n9), .A2(SQ_instance_n8), .ZN(
        SQ_instance_n19) );
  NAND2_X1 SQ_instance_U19 ( .A1(SQ_instance_n12), .A2(SQ_instance_n7), .ZN(
        SQ_instance_n8) );
  NAND2_X1 SQ_instance_U18 ( .A1(SQ_instance_n14), .A2(SQ_instance_n11), .ZN(
        SQ_instance_n7) );
  XNOR2_X1 SQ_instance_U17 ( .A(SQ_instance_a0r0a0r1_r[1]), .B(SQ_instance_n6), 
        .ZN(SQ_instance_n12) );
  OR2_X1 SQ_instance_U16 ( .A1(SQ_instance_n11), .A2(SQ_instance_n14), .ZN(
        SQ_instance_n9) );
  NAND2_X1 SQ_instance_U15 ( .A1(SQ_instance_n5), .A2(
        SQ_instance_a0r0a0r1_r[0]), .ZN(SQ_instance_n14) );
  NAND2_X1 SQ_instance_U14 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n11) );
  NOR2_X1 SQ_instance_U13 ( .A1(SQ_instance_n4), .A2(SQ_instance_n6), .ZN(
        SQ_instance_n17) );
  NAND2_X1 SQ_instance_U12 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[1]), .ZN(SQ_instance_n6) );
  INV_X1 SQ_instance_U11 ( .A(SQ_instance_a0r0a0r1_r[1]), .ZN(SQ_instance_n4)
         );
  AND2_X1 SQ_instance_U10 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n18) );
  XOR2_X1 SQ_instance_U9 ( .A(SQ_instance_a0r0a0r1_r[0]), .B(SQ_instance_n5), 
        .Z(SQ_instance_n15) );
  AND2_X1 SQ_instance_U8 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[0]), .ZN(SQ_instance_n5) );
  NAND2_X1 SQ_instance_U7 ( .A1(SQ_instance_n3), .A2(SQ_instance_n2), .ZN(
        SQ_instance_a1sr1_1_) );
  NAND2_X1 SQ_instance_U6 ( .A1(r1_rr[0]), .A2(SQ_instance_n92), .ZN(
        SQ_instance_n2) );
  AND2_X1 SQ_instance_U5 ( .A1(a1_sel_rr[0]), .A2(a1_sel_rr[1]), .ZN(
        SQ_instance_n92) );
  XOR2_X1 SQ_instance_U4 ( .A(r1_rr[1]), .B(SQ_instance_n1), .Z(SQ_instance_n3) );
  NOR2_X1 SQ_instance_U3 ( .A1(SQ_instance_n95), .A2(r1_rr[0]), .ZN(
        SQ_instance_n1) );
  INV_X1 SQ_instance_U2 ( .A(SQ_instance_n91), .ZN(SQ_instance_n95) );
  XOR2_X1 SQ_instance_U1 ( .A(a1_sel_rr[0]), .B(a1_sel_rr[1]), .Z(
        SQ_instance_n91) );
  DFF_X1 SQ_instance_FF1_output_reg_0_ ( .D(a0_sel_rr[0]), .CK(clk), .Q(
        SQ_instance_a0_r[0]) );
  DFF_X1 SQ_instance_FF1_output_reg_1_ ( .D(a0_sel_rr[1]), .CK(clk), .Q(
        SQ_instance_a0_r[1]) );
  DFF_X1 SQ_instance_FF2_output_reg_0_ ( .D(SQ_instance_add_x_2_n6), .CK(clk), 
        .Q(SQ_instance_a12r0_r[0]) );
  DFF_X1 SQ_instance_FF2_output_reg_1_ ( .D(SQ_instance_a12r0_1_), .CK(clk), 
        .Q(SQ_instance_a12r0_r[1]) );
  DFF_X1 SQ_instance_FF3_output_reg_0_ ( .D(SQ_instance_add_x_6_n6), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[0]) );
  DFF_X1 SQ_instance_FF3_output_reg_1_ ( .D(SQ_instance_a0r0a0r1_1_), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[1]) );
  DFF_X1 SQ_instance_FF4_output_reg_0_ ( .D(SQ_instance_add_x_11_n6), .CK(clk), 
        .Q(b1[0]) );
  DFF_X1 SQ_instance_FF4_output_reg_1_ ( .D(SQ_instance_a1sr1_1_), .CK(clk), 
        .Q(b1[1]) );
endmodule

