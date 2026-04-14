module SQ_2SHARE_SILVERWRAP ( clk, a0, a1, r0, r1, b0, b1 );
(* SILVER="[2:0]_0" *)  input [2:0] a0;
(* SILVER="[2:0]_1" *)  input [2:0] a1;
(* SILVER="refresh" *)  input [2:0] r0;
(* SILVER="refresh" *)  input [2:0] r1;
(* SILVER="[2:0]_0" *)  output [2:0] b0;
(* SILVER="[2:0]_1" *)  output [2:0] b1;
(* SILVER="clock" *)  input clk;
  wire   r0_p_r, r1_p_r, n4, n5, n6, n7, n8, RED1_n3, RED1_n2, RED1_n1,
         RED2_n3, RED2_n2, RED2_n1, SQ_instance_n240, SQ_instance_n239,
         SQ_instance_n238, SQ_instance_n237, SQ_instance_n236,
         SQ_instance_n235, SQ_instance_n234, SQ_instance_n233,
         SQ_instance_n232, SQ_instance_n231, SQ_instance_n230,
         SQ_instance_n229, SQ_instance_n228, SQ_instance_n227,
         SQ_instance_n226, SQ_instance_n225, SQ_instance_n224,
         SQ_instance_n223, SQ_instance_n222, SQ_instance_n221,
         SQ_instance_n220, SQ_instance_n219, SQ_instance_n218,
         SQ_instance_n217, SQ_instance_n216, SQ_instance_n215,
         SQ_instance_n214, SQ_instance_n213, SQ_instance_n212,
         SQ_instance_n211, SQ_instance_n210, SQ_instance_n209,
         SQ_instance_n208, SQ_instance_n207, SQ_instance_n206,
         SQ_instance_n205, SQ_instance_n204, SQ_instance_n203,
         SQ_instance_n202, SQ_instance_n201, SQ_instance_n200,
         SQ_instance_n199, SQ_instance_n198, SQ_instance_n197,
         SQ_instance_n196, SQ_instance_n195, SQ_instance_n194,
         SQ_instance_n193, SQ_instance_n192, SQ_instance_n191,
         SQ_instance_n190, SQ_instance_n189, SQ_instance_n188,
         SQ_instance_n187, SQ_instance_n186, SQ_instance_n185,
         SQ_instance_n184, SQ_instance_n183, SQ_instance_n182,
         SQ_instance_n181, SQ_instance_n180, SQ_instance_n179,
         SQ_instance_n178, SQ_instance_n177, SQ_instance_n176,
         SQ_instance_n175, SQ_instance_n174, SQ_instance_n173,
         SQ_instance_n172, SQ_instance_n171, SQ_instance_n170,
         SQ_instance_n169, SQ_instance_n168, SQ_instance_n167,
         SQ_instance_n166, SQ_instance_n165, SQ_instance_n164,
         SQ_instance_n163, SQ_instance_n162, SQ_instance_n161,
         SQ_instance_n160, SQ_instance_n159, SQ_instance_n158,
         SQ_instance_n157, SQ_instance_n156, SQ_instance_n155,
         SQ_instance_n154, SQ_instance_n153, SQ_instance_n152,
         SQ_instance_n151, SQ_instance_n150, SQ_instance_n149,
         SQ_instance_n148, SQ_instance_n147, SQ_instance_n146,
         SQ_instance_n145, SQ_instance_n144, SQ_instance_n143,
         SQ_instance_n142, SQ_instance_n141, SQ_instance_n140,
         SQ_instance_n139, SQ_instance_n138, SQ_instance_n137,
         SQ_instance_n136, SQ_instance_n135, SQ_instance_n134,
         SQ_instance_n133, SQ_instance_n132, SQ_instance_n131,
         SQ_instance_n130, SQ_instance_n129, SQ_instance_n128,
         SQ_instance_n127, SQ_instance_n126, SQ_instance_n125,
         SQ_instance_n124, SQ_instance_n123, SQ_instance_n122,
         SQ_instance_n121, SQ_instance_n120, SQ_instance_n119,
         SQ_instance_n118, SQ_instance_n117, SQ_instance_n116,
         SQ_instance_n115, SQ_instance_n114, SQ_instance_n113,
         SQ_instance_n112, SQ_instance_n111, SQ_instance_n110,
         SQ_instance_n109, SQ_instance_n108, SQ_instance_n107,
         SQ_instance_n106, SQ_instance_n105, SQ_instance_n104,
         SQ_instance_n103, SQ_instance_n102, SQ_instance_n101,
         SQ_instance_n100, SQ_instance_n99, SQ_instance_n98, SQ_instance_n97,
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
         SQ_instance_n4, SQ_instance_n3, SQ_instance_n2, SQ_instance_n1;
  wire   [2:0] a0_r;
  wire   [2:0] a0_mod_r;
  wire   [2:0] a1_r;
  wire   [2:0] a1_mod_r;
  wire   [2:0] a0_sel_r;
  wire   [2:0] a1_sel_r;
  wire   [2:0] a0_sel_rr;
  wire   [2:0] a1_sel_rr;
  wire   [2:0] r0_rr;
  wire   [2:0] r1_rr;
  wire   [2:0] r0_r;
  wire   [2:0] r1_r;
  wire   [2:0] SQ_instance_a0r0a0r1_r;
  wire   [2:0] SQ_instance_a12r0_r;
  wire   [2:0] SQ_instance_a0_r;
  wire   [2:0] SQ_instance_a1sr1;
  wire   [2:0] SQ_instance_a0r0a0r1;
  wire   [2:0] SQ_instance_a12r0;

  DFF_X1 a0_r_reg_2_ ( .D(a0[2]), .CK(clk), .Q(a0_r[2]) );
  DFF_X1 a0_r_reg_1_ ( .D(a0[1]), .CK(clk), .Q(a0_r[1]) );
  DFF_X1 a0_r_reg_0_ ( .D(a0[0]), .CK(clk), .Q(a0_r[0]) );
  DFF_X1 a1_r_reg_2_ ( .D(a1[2]), .CK(clk), .Q(a1_r[2]) );
  DFF_X1 a1_r_reg_1_ ( .D(a1[1]), .CK(clk), .Q(a1_r[1]) );
  DFF_X1 a1_r_reg_0_ ( .D(a1[0]), .CK(clk), .Q(a1_r[0]) );
  DFF_X1 r0_p_r_reg ( .D(n4), .CK(clk), .Q(r0_p_r) );
  DFF_X1 r1_p_r_reg ( .D(n5), .CK(clk), .Q(r1_p_r) );
  DFF_X1 r0_r_reg_2_ ( .D(r0[2]), .CK(clk), .Q(r0_r[2]) );
  DFF_X1 r0_r_reg_1_ ( .D(r0[1]), .CK(clk), .Q(r0_r[1]) );
  DFF_X1 r0_r_reg_0_ ( .D(r0[0]), .CK(clk), .Q(r0_r[0]) );
  DFF_X1 r1_r_reg_2_ ( .D(r1[2]), .CK(clk), .Q(r1_r[2]) );
  DFF_X1 r1_r_reg_1_ ( .D(r1[1]), .CK(clk), .Q(r1_r[1]) );
  DFF_X1 r1_r_reg_0_ ( .D(r1[0]), .CK(clk), .Q(r1_r[0]) );
  DFF_X1 r0_rr_reg_2_ ( .D(r0_r[2]), .CK(clk), .Q(r0_rr[2]) );
  DFF_X1 r0_rr_reg_1_ ( .D(r0_r[1]), .CK(clk), .Q(r0_rr[1]) );
  DFF_X1 r0_rr_reg_0_ ( .D(r0_r[0]), .CK(clk), .Q(r0_rr[0]) );
  DFF_X1 r1_rr_reg_2_ ( .D(r1_r[2]), .CK(clk), .Q(r1_rr[2]) );
  DFF_X1 r1_rr_reg_1_ ( .D(r1_r[1]), .CK(clk), .Q(r1_rr[1]) );
  DFF_X1 r1_rr_reg_0_ ( .D(r1_r[0]), .CK(clk), .Q(r1_rr[0]) );
  DFF_X1 a0_sel_rr_reg_2_ ( .D(a0_sel_r[2]), .CK(clk), .Q(a0_sel_rr[2]) );
  DFF_X1 a0_sel_rr_reg_1_ ( .D(a0_sel_r[1]), .CK(clk), .Q(a0_sel_rr[1]) );
  DFF_X1 a0_sel_rr_reg_0_ ( .D(a0_sel_r[0]), .CK(clk), .Q(a0_sel_rr[0]) );
  DFF_X1 a1_sel_rr_reg_2_ ( .D(a1_sel_r[2]), .CK(clk), .Q(a1_sel_rr[2]) );
  DFF_X1 a1_sel_rr_reg_1_ ( .D(a1_sel_r[1]), .CK(clk), .Q(a1_sel_rr[1]) );
  DFF_X1 a1_sel_rr_reg_0_ ( .D(a1_sel_r[0]), .CK(clk), .Q(a1_sel_rr[0]) );
  OR2_X1 U14 ( .A1(r0_p_r), .A2(r1_p_r), .ZN(n6) );
  OR2_X1 U15 ( .A1(a0_mod_r[2]), .A2(n6), .ZN(a0_sel_r[2]) );
  OR2_X1 U16 ( .A1(a0_mod_r[0]), .A2(n6), .ZN(a0_sel_r[0]) );
  OR2_X1 U17 ( .A1(a1_mod_r[2]), .A2(n6), .ZN(a1_sel_r[2]) );
  OR2_X1 U18 ( .A1(a1_mod_r[1]), .A2(n6), .ZN(a1_sel_r[1]) );
  OR2_X1 U19 ( .A1(a0_mod_r[1]), .A2(n6), .ZN(a0_sel_r[1]) );
  OR2_X1 U20 ( .A1(a1_mod_r[0]), .A2(n6), .ZN(a1_sel_r[0]) );
  OR2_X1 U21 ( .A1(r1[2]), .A2(r1[0]), .ZN(n7) );
  NOR2_X1 U22 ( .A1(r1[1]), .A2(n7), .ZN(n5) );
  OR2_X1 U23 ( .A1(r0[2]), .A2(r0[0]), .ZN(n8) );
  NOR2_X1 U24 ( .A1(r0[1]), .A2(n8), .ZN(n4) );
  OR2_X1 RED1_U7 ( .A1(a0_r[1]), .A2(RED1_n3), .ZN(a0_mod_r[1]) );
  NOR2_X1 RED1_U6 ( .A1(a0_r[0]), .A2(a0_r[2]), .ZN(RED1_n3) );
  OR2_X1 RED1_U5 ( .A1(a0_r[0]), .A2(RED1_n2), .ZN(a0_mod_r[0]) );
  NOR2_X1 RED1_U4 ( .A1(a0_r[2]), .A2(a0_r[1]), .ZN(RED1_n2) );
  OR2_X1 RED1_U3 ( .A1(a0_r[2]), .A2(RED1_n1), .ZN(a0_mod_r[2]) );
  NOR2_X1 RED1_U2 ( .A1(a0_r[0]), .A2(a0_r[1]), .ZN(RED1_n1) );
  OR2_X1 RED2_U7 ( .A1(a1_r[0]), .A2(RED2_n3), .ZN(a1_mod_r[0]) );
  NOR2_X1 RED2_U6 ( .A1(a1_r[2]), .A2(a1_r[1]), .ZN(RED2_n3) );
  OR2_X1 RED2_U5 ( .A1(a1_r[1]), .A2(RED2_n2), .ZN(a1_mod_r[1]) );
  NOR2_X1 RED2_U4 ( .A1(a1_r[0]), .A2(a1_r[2]), .ZN(RED2_n2) );
  OR2_X1 RED2_U3 ( .A1(a1_r[2]), .A2(RED2_n1), .ZN(a1_mod_r[2]) );
  NOR2_X1 RED2_U2 ( .A1(a1_r[0]), .A2(a1_r[1]), .ZN(RED2_n1) );
  NOR2_X1 SQ_instance_U252 ( .A1(SQ_instance_n240), .A2(SQ_instance_n239), 
        .ZN(SQ_instance_a12r0[2]) );
  NOR2_X1 SQ_instance_U251 ( .A1(SQ_instance_n239), .A2(SQ_instance_n238), 
        .ZN(SQ_instance_a12r0[1]) );
  XNOR2_X1 SQ_instance_U250 ( .A(SQ_instance_n237), .B(SQ_instance_n236), .ZN(
        SQ_instance_n238) );
  NOR2_X1 SQ_instance_U249 ( .A1(SQ_instance_n239), .A2(SQ_instance_n235), 
        .ZN(SQ_instance_a12r0[0]) );
  NOR2_X1 SQ_instance_U248 ( .A1(SQ_instance_n235), .A2(SQ_instance_n234), 
        .ZN(SQ_instance_n239) );
  OR2_X1 SQ_instance_U247 ( .A1(SQ_instance_n237), .A2(SQ_instance_n240), .ZN(
        SQ_instance_n234) );
  XOR2_X1 SQ_instance_U246 ( .A(SQ_instance_n233), .B(SQ_instance_n232), .Z(
        SQ_instance_n240) );
  NOR2_X1 SQ_instance_U245 ( .A1(SQ_instance_n231), .A2(SQ_instance_n230), 
        .ZN(SQ_instance_n233) );
  NOR2_X1 SQ_instance_U244 ( .A1(SQ_instance_n236), .A2(SQ_instance_n237), 
        .ZN(SQ_instance_n230) );
  NAND2_X1 SQ_instance_U243 ( .A1(SQ_instance_n229), .A2(SQ_instance_n228), 
        .ZN(SQ_instance_n236) );
  XOR2_X1 SQ_instance_U242 ( .A(SQ_instance_n227), .B(SQ_instance_n226), .Z(
        SQ_instance_n237) );
  XOR2_X1 SQ_instance_U241 ( .A(SQ_instance_n225), .B(a1_sel_rr[0]), .Z(
        SQ_instance_n226) );
  XNOR2_X1 SQ_instance_U240 ( .A(SQ_instance_n229), .B(SQ_instance_n228), .ZN(
        SQ_instance_n235) );
  NAND2_X1 SQ_instance_U239 ( .A1(SQ_instance_n224), .A2(SQ_instance_n223), 
        .ZN(SQ_instance_n228) );
  NAND2_X1 SQ_instance_U238 ( .A1(SQ_instance_n232), .A2(SQ_instance_n231), 
        .ZN(SQ_instance_n223) );
  NAND2_X1 SQ_instance_U237 ( .A1(SQ_instance_n222), .A2(SQ_instance_n221), 
        .ZN(SQ_instance_n231) );
  NAND2_X1 SQ_instance_U236 ( .A1(SQ_instance_n227), .A2(SQ_instance_n220), 
        .ZN(SQ_instance_n221) );
  NAND2_X1 SQ_instance_U235 ( .A1(SQ_instance_n219), .A2(SQ_instance_n225), 
        .ZN(SQ_instance_n220) );
  NOR2_X1 SQ_instance_U234 ( .A1(SQ_instance_n218), .A2(SQ_instance_n217), 
        .ZN(SQ_instance_n227) );
  NAND2_X1 SQ_instance_U233 ( .A1(r0_rr[1]), .A2(a1_sel_rr[0]), .ZN(
        SQ_instance_n222) );
  XOR2_X1 SQ_instance_U232 ( .A(r0_rr[2]), .B(a1_sel_rr[1]), .Z(
        SQ_instance_n232) );
  NAND2_X1 SQ_instance_U231 ( .A1(r0_rr[2]), .A2(a1_sel_rr[1]), .ZN(
        SQ_instance_n224) );
  XOR2_X1 SQ_instance_U230 ( .A(SQ_instance_n218), .B(SQ_instance_n217), .Z(
        SQ_instance_n229) );
  NOR2_X1 SQ_instance_U229 ( .A1(SQ_instance_n216), .A2(SQ_instance_n215), 
        .ZN(SQ_instance_a0r0a0r1[2]) );
  NOR2_X1 SQ_instance_U228 ( .A1(SQ_instance_n215), .A2(SQ_instance_n214), 
        .ZN(SQ_instance_a0r0a0r1[1]) );
  XNOR2_X1 SQ_instance_U227 ( .A(SQ_instance_n213), .B(SQ_instance_n212), .ZN(
        SQ_instance_n214) );
  NOR2_X1 SQ_instance_U226 ( .A1(SQ_instance_n215), .A2(SQ_instance_n211), 
        .ZN(SQ_instance_a0r0a0r1[0]) );
  NOR2_X1 SQ_instance_U225 ( .A1(SQ_instance_n211), .A2(SQ_instance_n210), 
        .ZN(SQ_instance_n215) );
  NAND2_X1 SQ_instance_U224 ( .A1(SQ_instance_n212), .A2(SQ_instance_n209), 
        .ZN(SQ_instance_n210) );
  INV_X1 SQ_instance_U223 ( .A(SQ_instance_n216), .ZN(SQ_instance_n209) );
  XOR2_X1 SQ_instance_U222 ( .A(SQ_instance_n208), .B(SQ_instance_n207), .Z(
        SQ_instance_n216) );
  NAND2_X1 SQ_instance_U221 ( .A1(SQ_instance_n206), .A2(SQ_instance_n205), 
        .ZN(SQ_instance_n207) );
  NAND2_X1 SQ_instance_U220 ( .A1(SQ_instance_n213), .A2(SQ_instance_n212), 
        .ZN(SQ_instance_n206) );
  NOR2_X1 SQ_instance_U219 ( .A1(SQ_instance_n204), .A2(SQ_instance_n203), 
        .ZN(SQ_instance_n213) );
  XOR2_X1 SQ_instance_U218 ( .A(SQ_instance_n202), .B(SQ_instance_n201), .Z(
        SQ_instance_n212) );
  XNOR2_X1 SQ_instance_U217 ( .A(SQ_instance_n200), .B(SQ_instance_n199), .ZN(
        SQ_instance_n201) );
  XNOR2_X1 SQ_instance_U216 ( .A(SQ_instance_n204), .B(SQ_instance_n203), .ZN(
        SQ_instance_n211) );
  XNOR2_X1 SQ_instance_U215 ( .A(SQ_instance_n198), .B(SQ_instance_n197), .ZN(
        SQ_instance_n203) );
  NOR2_X1 SQ_instance_U214 ( .A1(SQ_instance_n196), .A2(SQ_instance_n195), 
        .ZN(SQ_instance_n204) );
  NOR2_X1 SQ_instance_U213 ( .A1(SQ_instance_n205), .A2(SQ_instance_n208), 
        .ZN(SQ_instance_n195) );
  XNOR2_X1 SQ_instance_U212 ( .A(SQ_instance_n194), .B(SQ_instance_n193), .ZN(
        SQ_instance_n208) );
  NOR2_X1 SQ_instance_U211 ( .A1(SQ_instance_n192), .A2(SQ_instance_n191), 
        .ZN(SQ_instance_n205) );
  NOR2_X1 SQ_instance_U210 ( .A1(SQ_instance_n199), .A2(SQ_instance_n202), 
        .ZN(SQ_instance_n191) );
  NOR2_X1 SQ_instance_U209 ( .A1(SQ_instance_n200), .A2(SQ_instance_n190), 
        .ZN(SQ_instance_n192) );
  AND2_X1 SQ_instance_U208 ( .A1(SQ_instance_n199), .A2(SQ_instance_n202), 
        .ZN(SQ_instance_n190) );
  XOR2_X1 SQ_instance_U207 ( .A(SQ_instance_n189), .B(SQ_instance_n188), .Z(
        SQ_instance_n202) );
  XOR2_X1 SQ_instance_U206 ( .A(SQ_instance_n187), .B(SQ_instance_n186), .Z(
        SQ_instance_n188) );
  NAND2_X1 SQ_instance_U205 ( .A1(SQ_instance_n198), .A2(SQ_instance_n197), 
        .ZN(SQ_instance_n199) );
  XOR2_X1 SQ_instance_U204 ( .A(r1_rr[0]), .B(SQ_instance_n185), .Z(
        SQ_instance_n197) );
  XOR2_X1 SQ_instance_U203 ( .A(SQ_instance_n184), .B(SQ_instance_n183), .Z(
        SQ_instance_n198) );
  XNOR2_X1 SQ_instance_U202 ( .A(SQ_instance_n182), .B(SQ_instance_n181), .ZN(
        SQ_instance_n183) );
  XNOR2_X1 SQ_instance_U201 ( .A(SQ_instance_n180), .B(SQ_instance_n179), .ZN(
        SQ_instance_n200) );
  NOR2_X1 SQ_instance_U200 ( .A1(SQ_instance_n194), .A2(SQ_instance_n193), 
        .ZN(SQ_instance_n196) );
  NOR2_X1 SQ_instance_U199 ( .A1(SQ_instance_n178), .A2(SQ_instance_n177), 
        .ZN(SQ_instance_n193) );
  NOR2_X1 SQ_instance_U198 ( .A1(SQ_instance_n180), .A2(SQ_instance_n179), 
        .ZN(SQ_instance_n177) );
  NAND2_X1 SQ_instance_U197 ( .A1(SQ_instance_n176), .A2(a0_sel_rr[2]), .ZN(
        SQ_instance_n179) );
  XOR2_X1 SQ_instance_U196 ( .A(SQ_instance_n174), .B(SQ_instance_n173), .Z(
        SQ_instance_n176) );
  NOR2_X1 SQ_instance_U195 ( .A1(SQ_instance_n178), .A2(SQ_instance_n172), 
        .ZN(SQ_instance_n174) );
  AND2_X1 SQ_instance_U194 ( .A1(SQ_instance_n171), .A2(SQ_instance_n170), 
        .ZN(SQ_instance_n172) );
  NOR2_X1 SQ_instance_U193 ( .A1(SQ_instance_n169), .A2(SQ_instance_n168), 
        .ZN(SQ_instance_n180) );
  NOR2_X1 SQ_instance_U192 ( .A1(SQ_instance_n181), .A2(SQ_instance_n184), 
        .ZN(SQ_instance_n168) );
  NOR2_X1 SQ_instance_U191 ( .A1(SQ_instance_n182), .A2(SQ_instance_n167), 
        .ZN(SQ_instance_n169) );
  AND2_X1 SQ_instance_U190 ( .A1(SQ_instance_n184), .A2(SQ_instance_n181), 
        .ZN(SQ_instance_n167) );
  AND2_X1 SQ_instance_U189 ( .A1(SQ_instance_n166), .A2(SQ_instance_n165), 
        .ZN(SQ_instance_n181) );
  NAND2_X1 SQ_instance_U188 ( .A1(SQ_instance_n164), .A2(SQ_instance_n163), 
        .ZN(SQ_instance_n165) );
  OR2_X1 SQ_instance_U187 ( .A1(SQ_instance_n162), .A2(SQ_instance_n161), .ZN(
        SQ_instance_n163) );
  NAND2_X1 SQ_instance_U186 ( .A1(SQ_instance_n161), .A2(SQ_instance_n162), 
        .ZN(SQ_instance_n166) );
  XOR2_X1 SQ_instance_U185 ( .A(SQ_instance_n160), .B(SQ_instance_n159), .Z(
        SQ_instance_n184) );
  XOR2_X1 SQ_instance_U184 ( .A(SQ_instance_n171), .B(SQ_instance_n170), .Z(
        SQ_instance_n159) );
  NOR2_X1 SQ_instance_U183 ( .A1(SQ_instance_n158), .A2(SQ_instance_n157), 
        .ZN(SQ_instance_n182) );
  NOR2_X1 SQ_instance_U182 ( .A1(SQ_instance_n156), .A2(SQ_instance_n155), 
        .ZN(SQ_instance_n157) );
  NOR2_X1 SQ_instance_U181 ( .A1(SQ_instance_n154), .A2(SQ_instance_n153), 
        .ZN(SQ_instance_n155) );
  NOR2_X1 SQ_instance_U180 ( .A1(SQ_instance_n152), .A2(SQ_instance_n151), 
        .ZN(SQ_instance_n158) );
  NOR2_X1 SQ_instance_U179 ( .A1(SQ_instance_n160), .A2(SQ_instance_n150), 
        .ZN(SQ_instance_n178) );
  NOR2_X1 SQ_instance_U178 ( .A1(SQ_instance_n171), .A2(SQ_instance_n170), 
        .ZN(SQ_instance_n150) );
  NOR2_X1 SQ_instance_U177 ( .A1(SQ_instance_n149), .A2(SQ_instance_n175), 
        .ZN(SQ_instance_n170) );
  NOR2_X1 SQ_instance_U176 ( .A1(SQ_instance_n148), .A2(SQ_instance_n147), 
        .ZN(SQ_instance_n171) );
  NAND2_X1 SQ_instance_U175 ( .A1(a0_sel_rr[1]), .A2(SQ_instance_n146), .ZN(
        SQ_instance_n160) );
  INV_X1 SQ_instance_U174 ( .A(SQ_instance_n173), .ZN(SQ_instance_n146) );
  XOR2_X1 SQ_instance_U173 ( .A(SQ_instance_n151), .B(SQ_instance_n145), .Z(
        SQ_instance_n194) );
  XOR2_X1 SQ_instance_U172 ( .A(SQ_instance_n156), .B(SQ_instance_n152), .Z(
        SQ_instance_n145) );
  INV_X1 SQ_instance_U171 ( .A(SQ_instance_n154), .ZN(SQ_instance_n152) );
  XOR2_X1 SQ_instance_U170 ( .A(SQ_instance_n147), .B(SQ_instance_n148), .Z(
        SQ_instance_n154) );
  NAND2_X1 SQ_instance_U169 ( .A1(a0_sel_rr[2]), .A2(SQ_instance_n144), .ZN(
        SQ_instance_n148) );
  NOR2_X1 SQ_instance_U168 ( .A1(SQ_instance_n143), .A2(SQ_instance_n142), 
        .ZN(SQ_instance_n156) );
  NOR2_X1 SQ_instance_U167 ( .A1(SQ_instance_n186), .A2(SQ_instance_n189), 
        .ZN(SQ_instance_n142) );
  NOR2_X1 SQ_instance_U166 ( .A1(SQ_instance_n187), .A2(SQ_instance_n141), 
        .ZN(SQ_instance_n143) );
  AND2_X1 SQ_instance_U165 ( .A1(SQ_instance_n186), .A2(SQ_instance_n189), 
        .ZN(SQ_instance_n141) );
  NAND2_X1 SQ_instance_U164 ( .A1(SQ_instance_n185), .A2(r1_rr[0]), .ZN(
        SQ_instance_n189) );
  AND2_X1 SQ_instance_U163 ( .A1(a0_sel_rr[0]), .A2(SQ_instance_n144), .ZN(
        SQ_instance_n185) );
  OR2_X1 SQ_instance_U162 ( .A1(SQ_instance_n149), .A2(SQ_instance_n140), .ZN(
        SQ_instance_n186) );
  XOR2_X1 SQ_instance_U161 ( .A(r1_rr[1]), .B(SQ_instance_n139), .Z(
        SQ_instance_n187) );
  INV_X1 SQ_instance_U160 ( .A(SQ_instance_n153), .ZN(SQ_instance_n151) );
  XOR2_X1 SQ_instance_U159 ( .A(SQ_instance_n162), .B(SQ_instance_n138), .Z(
        SQ_instance_n153) );
  XOR2_X1 SQ_instance_U158 ( .A(SQ_instance_n161), .B(SQ_instance_n164), .Z(
        SQ_instance_n138) );
  NOR2_X1 SQ_instance_U157 ( .A1(SQ_instance_n140), .A2(SQ_instance_n173), 
        .ZN(SQ_instance_n164) );
  XOR2_X1 SQ_instance_U156 ( .A(SQ_instance_n137), .B(SQ_instance_n136), .Z(
        SQ_instance_n173) );
  NAND2_X1 SQ_instance_U155 ( .A1(SQ_instance_n135), .A2(SQ_instance_n134), 
        .ZN(SQ_instance_n136) );
  NAND2_X1 SQ_instance_U154 ( .A1(SQ_instance_n133), .A2(SQ_instance_n132), 
        .ZN(SQ_instance_n135) );
  INV_X1 SQ_instance_U153 ( .A(a0_sel_rr[0]), .ZN(SQ_instance_n140) );
  NOR2_X1 SQ_instance_U152 ( .A1(SQ_instance_n139), .A2(SQ_instance_n131), 
        .ZN(SQ_instance_n161) );
  NAND2_X1 SQ_instance_U151 ( .A1(a0_sel_rr[1]), .A2(SQ_instance_n144), .ZN(
        SQ_instance_n139) );
  XNOR2_X1 SQ_instance_U150 ( .A(SQ_instance_n130), .B(SQ_instance_n129), .ZN(
        SQ_instance_n144) );
  NOR2_X1 SQ_instance_U149 ( .A1(SQ_instance_n128), .A2(SQ_instance_n149), 
        .ZN(SQ_instance_n162) );
  XOR2_X1 SQ_instance_U148 ( .A(SQ_instance_n133), .B(SQ_instance_n132), .Z(
        SQ_instance_n149) );
  XOR2_X1 SQ_instance_U147 ( .A(SQ_instance_n127), .B(SQ_instance_n126), .Z(
        SQ_instance_n132) );
  XOR2_X1 SQ_instance_U146 ( .A(a0_sel_rr[1]), .B(SQ_instance_n225), .Z(
        SQ_instance_n126) );
  AND2_X1 SQ_instance_U145 ( .A1(SQ_instance_n130), .A2(SQ_instance_n129), 
        .ZN(SQ_instance_n133) );
  NOR2_X1 SQ_instance_U144 ( .A1(SQ_instance_n125), .A2(SQ_instance_n124), 
        .ZN(SQ_instance_n129) );
  AND2_X1 SQ_instance_U143 ( .A1(SQ_instance_n134), .A2(SQ_instance_n137), 
        .ZN(SQ_instance_n124) );
  XOR2_X1 SQ_instance_U142 ( .A(r0_rr[2]), .B(SQ_instance_n175), .Z(
        SQ_instance_n137) );
  AND2_X1 SQ_instance_U141 ( .A1(SQ_instance_n123), .A2(SQ_instance_n122), 
        .ZN(SQ_instance_n134) );
  NAND2_X1 SQ_instance_U140 ( .A1(SQ_instance_n127), .A2(SQ_instance_n121), 
        .ZN(SQ_instance_n122) );
  NAND2_X1 SQ_instance_U139 ( .A1(SQ_instance_n225), .A2(a0_sel_rr[1]), .ZN(
        SQ_instance_n121) );
  INV_X1 SQ_instance_U138 ( .A(r0_rr[1]), .ZN(SQ_instance_n225) );
  NOR2_X1 SQ_instance_U137 ( .A1(a0_sel_rr[0]), .A2(SQ_instance_n218), .ZN(
        SQ_instance_n127) );
  NAND2_X1 SQ_instance_U136 ( .A1(r0_rr[1]), .A2(SQ_instance_n128), .ZN(
        SQ_instance_n123) );
  NOR2_X1 SQ_instance_U135 ( .A1(r0_rr[2]), .A2(SQ_instance_n175), .ZN(
        SQ_instance_n125) );
  INV_X1 SQ_instance_U134 ( .A(a0_sel_rr[2]), .ZN(SQ_instance_n175) );
  XOR2_X1 SQ_instance_U133 ( .A(SQ_instance_n218), .B(a0_sel_rr[0]), .Z(
        SQ_instance_n130) );
  INV_X1 SQ_instance_U132 ( .A(r0_rr[0]), .ZN(SQ_instance_n218) );
  INV_X1 SQ_instance_U131 ( .A(a0_sel_rr[1]), .ZN(SQ_instance_n128) );
  NOR2_X1 SQ_instance_U130 ( .A1(SQ_instance_n120), .A2(SQ_instance_n119), 
        .ZN(b0[2]) );
  NOR2_X1 SQ_instance_U129 ( .A1(SQ_instance_n119), .A2(SQ_instance_n118), 
        .ZN(b0[1]) );
  XNOR2_X1 SQ_instance_U128 ( .A(SQ_instance_n117), .B(SQ_instance_n116), .ZN(
        SQ_instance_n118) );
  NOR2_X1 SQ_instance_U127 ( .A1(SQ_instance_n119), .A2(SQ_instance_n115), 
        .ZN(b0[0]) );
  NOR2_X1 SQ_instance_U126 ( .A1(SQ_instance_n115), .A2(SQ_instance_n114), 
        .ZN(SQ_instance_n119) );
  NAND2_X1 SQ_instance_U125 ( .A1(SQ_instance_n116), .A2(SQ_instance_n113), 
        .ZN(SQ_instance_n114) );
  INV_X1 SQ_instance_U124 ( .A(SQ_instance_n120), .ZN(SQ_instance_n113) );
  XOR2_X1 SQ_instance_U123 ( .A(SQ_instance_n112), .B(SQ_instance_n111), .Z(
        SQ_instance_n120) );
  NAND2_X1 SQ_instance_U122 ( .A1(SQ_instance_n110), .A2(SQ_instance_n109), 
        .ZN(SQ_instance_n111) );
  NAND2_X1 SQ_instance_U121 ( .A1(SQ_instance_n117), .A2(SQ_instance_n116), 
        .ZN(SQ_instance_n110) );
  NOR2_X1 SQ_instance_U120 ( .A1(SQ_instance_n108), .A2(SQ_instance_n107), 
        .ZN(SQ_instance_n117) );
  XOR2_X1 SQ_instance_U119 ( .A(SQ_instance_n106), .B(SQ_instance_n105), .Z(
        SQ_instance_n116) );
  XNOR2_X1 SQ_instance_U118 ( .A(SQ_instance_n104), .B(SQ_instance_n103), .ZN(
        SQ_instance_n105) );
  XNOR2_X1 SQ_instance_U117 ( .A(SQ_instance_n108), .B(SQ_instance_n107), .ZN(
        SQ_instance_n115) );
  XNOR2_X1 SQ_instance_U116 ( .A(SQ_instance_n102), .B(SQ_instance_n101), .ZN(
        SQ_instance_n107) );
  NOR2_X1 SQ_instance_U115 ( .A1(SQ_instance_n100), .A2(SQ_instance_n99), .ZN(
        SQ_instance_n108) );
  NOR2_X1 SQ_instance_U114 ( .A1(SQ_instance_n109), .A2(SQ_instance_n112), 
        .ZN(SQ_instance_n99) );
  XNOR2_X1 SQ_instance_U113 ( .A(SQ_instance_n98), .B(SQ_instance_n97), .ZN(
        SQ_instance_n112) );
  NOR2_X1 SQ_instance_U112 ( .A1(SQ_instance_n96), .A2(SQ_instance_n95), .ZN(
        SQ_instance_n109) );
  NOR2_X1 SQ_instance_U111 ( .A1(SQ_instance_n103), .A2(SQ_instance_n106), 
        .ZN(SQ_instance_n95) );
  NOR2_X1 SQ_instance_U110 ( .A1(SQ_instance_n104), .A2(SQ_instance_n94), .ZN(
        SQ_instance_n96) );
  AND2_X1 SQ_instance_U109 ( .A1(SQ_instance_n103), .A2(SQ_instance_n106), 
        .ZN(SQ_instance_n94) );
  NAND2_X1 SQ_instance_U108 ( .A1(SQ_instance_n102), .A2(SQ_instance_n101), 
        .ZN(SQ_instance_n106) );
  XOR2_X1 SQ_instance_U107 ( .A(SQ_instance_a0r0a0r1_r[0]), .B(SQ_instance_n93), .Z(SQ_instance_n101) );
  XOR2_X1 SQ_instance_U106 ( .A(SQ_instance_n92), .B(SQ_instance_n91), .Z(
        SQ_instance_n102) );
  XNOR2_X1 SQ_instance_U105 ( .A(SQ_instance_n90), .B(SQ_instance_n89), .ZN(
        SQ_instance_n91) );
  XOR2_X1 SQ_instance_U104 ( .A(SQ_instance_n88), .B(SQ_instance_n87), .Z(
        SQ_instance_n103) );
  XOR2_X1 SQ_instance_U103 ( .A(SQ_instance_n86), .B(SQ_instance_n85), .Z(
        SQ_instance_n87) );
  XNOR2_X1 SQ_instance_U102 ( .A(SQ_instance_n84), .B(SQ_instance_n83), .ZN(
        SQ_instance_n104) );
  NOR2_X1 SQ_instance_U101 ( .A1(SQ_instance_n98), .A2(SQ_instance_n97), .ZN(
        SQ_instance_n100) );
  NOR2_X1 SQ_instance_U100 ( .A1(SQ_instance_n82), .A2(SQ_instance_n81), .ZN(
        SQ_instance_n97) );
  NOR2_X1 SQ_instance_U99 ( .A1(SQ_instance_n84), .A2(SQ_instance_n83), .ZN(
        SQ_instance_n81) );
  NAND2_X1 SQ_instance_U98 ( .A1(SQ_instance_n80), .A2(SQ_instance_a0_r[2]), 
        .ZN(SQ_instance_n83) );
  XOR2_X1 SQ_instance_U97 ( .A(SQ_instance_n79), .B(SQ_instance_n78), .Z(
        SQ_instance_n80) );
  NOR2_X1 SQ_instance_U96 ( .A1(SQ_instance_n77), .A2(SQ_instance_n76), .ZN(
        SQ_instance_n84) );
  NOR2_X1 SQ_instance_U95 ( .A1(SQ_instance_n89), .A2(SQ_instance_n92), .ZN(
        SQ_instance_n76) );
  NOR2_X1 SQ_instance_U94 ( .A1(SQ_instance_n90), .A2(SQ_instance_n75), .ZN(
        SQ_instance_n77) );
  AND2_X1 SQ_instance_U93 ( .A1(SQ_instance_n92), .A2(SQ_instance_n89), .ZN(
        SQ_instance_n75) );
  AND2_X1 SQ_instance_U92 ( .A1(SQ_instance_n74), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n89) );
  NAND2_X1 SQ_instance_U91 ( .A1(SQ_instance_n72), .A2(SQ_instance_n71), .ZN(
        SQ_instance_n73) );
  NAND2_X1 SQ_instance_U90 ( .A1(SQ_instance_n70), .A2(SQ_instance_n69), .ZN(
        SQ_instance_n71) );
  OR2_X1 SQ_instance_U89 ( .A1(SQ_instance_n69), .A2(SQ_instance_n70), .ZN(
        SQ_instance_n74) );
  XOR2_X1 SQ_instance_U88 ( .A(SQ_instance_n68), .B(SQ_instance_n67), .Z(
        SQ_instance_n92) );
  XOR2_X1 SQ_instance_U87 ( .A(SQ_instance_n66), .B(SQ_instance_n65), .Z(
        SQ_instance_n67) );
  NOR2_X1 SQ_instance_U86 ( .A1(SQ_instance_n64), .A2(SQ_instance_n63), .ZN(
        SQ_instance_n90) );
  NOR2_X1 SQ_instance_U85 ( .A1(SQ_instance_n62), .A2(SQ_instance_n61), .ZN(
        SQ_instance_n63) );
  NOR2_X1 SQ_instance_U84 ( .A1(SQ_instance_n60), .A2(SQ_instance_n59), .ZN(
        SQ_instance_n61) );
  NOR2_X1 SQ_instance_U83 ( .A1(SQ_instance_n58), .A2(SQ_instance_n57), .ZN(
        SQ_instance_n64) );
  NOR2_X1 SQ_instance_U82 ( .A1(SQ_instance_n79), .A2(SQ_instance_n78), .ZN(
        SQ_instance_n82) );
  INV_X1 SQ_instance_U81 ( .A(SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n78) );
  NOR2_X1 SQ_instance_U80 ( .A1(SQ_instance_n56), .A2(SQ_instance_n55), .ZN(
        SQ_instance_n79) );
  NOR2_X1 SQ_instance_U79 ( .A1(SQ_instance_n65), .A2(SQ_instance_n68), .ZN(
        SQ_instance_n55) );
  NOR2_X1 SQ_instance_U78 ( .A1(SQ_instance_n66), .A2(SQ_instance_n54), .ZN(
        SQ_instance_n56) );
  AND2_X1 SQ_instance_U77 ( .A1(SQ_instance_n65), .A2(SQ_instance_n68), .ZN(
        SQ_instance_n54) );
  NAND2_X1 SQ_instance_U76 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n68) );
  NAND2_X1 SQ_instance_U75 ( .A1(SQ_instance_a12r0_r[1]), .A2(
        SQ_instance_a0_r[2]), .ZN(SQ_instance_n65) );
  NAND2_X1 SQ_instance_U74 ( .A1(SQ_instance_n53), .A2(
        SQ_instance_a0r0a0r1_r[2]), .ZN(SQ_instance_n66) );
  XOR2_X1 SQ_instance_U73 ( .A(SQ_instance_n57), .B(SQ_instance_n52), .Z(
        SQ_instance_n98) );
  XOR2_X1 SQ_instance_U72 ( .A(SQ_instance_n62), .B(SQ_instance_n58), .Z(
        SQ_instance_n52) );
  INV_X1 SQ_instance_U71 ( .A(SQ_instance_n60), .ZN(SQ_instance_n58) );
  XOR2_X1 SQ_instance_U70 ( .A(SQ_instance_a0r0a0r1_r[2]), .B(SQ_instance_n53), 
        .Z(SQ_instance_n60) );
  AND2_X1 SQ_instance_U69 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[2]), .ZN(SQ_instance_n53) );
  NOR2_X1 SQ_instance_U68 ( .A1(SQ_instance_n51), .A2(SQ_instance_n50), .ZN(
        SQ_instance_n62) );
  NOR2_X1 SQ_instance_U67 ( .A1(SQ_instance_n85), .A2(SQ_instance_n88), .ZN(
        SQ_instance_n50) );
  NOR2_X1 SQ_instance_U66 ( .A1(SQ_instance_n86), .A2(SQ_instance_n49), .ZN(
        SQ_instance_n51) );
  AND2_X1 SQ_instance_U65 ( .A1(SQ_instance_n85), .A2(SQ_instance_n88), .ZN(
        SQ_instance_n49) );
  NAND2_X1 SQ_instance_U64 ( .A1(SQ_instance_n93), .A2(
        SQ_instance_a0r0a0r1_r[0]), .ZN(SQ_instance_n88) );
  AND2_X1 SQ_instance_U63 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[0]), .ZN(SQ_instance_n93) );
  NAND2_X1 SQ_instance_U62 ( .A1(SQ_instance_a12r0_r[1]), .A2(
        SQ_instance_a0_r[0]), .ZN(SQ_instance_n85) );
  XOR2_X1 SQ_instance_U61 ( .A(SQ_instance_a0r0a0r1_r[1]), .B(SQ_instance_n48), 
        .Z(SQ_instance_n86) );
  INV_X1 SQ_instance_U60 ( .A(SQ_instance_n59), .ZN(SQ_instance_n57) );
  XNOR2_X1 SQ_instance_U59 ( .A(SQ_instance_n70), .B(SQ_instance_n47), .ZN(
        SQ_instance_n59) );
  XNOR2_X1 SQ_instance_U58 ( .A(SQ_instance_n72), .B(SQ_instance_n69), .ZN(
        SQ_instance_n47) );
  NAND2_X1 SQ_instance_U57 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n69) );
  NOR2_X1 SQ_instance_U56 ( .A1(SQ_instance_n48), .A2(SQ_instance_n46), .ZN(
        SQ_instance_n72) );
  INV_X1 SQ_instance_U55 ( .A(SQ_instance_a0r0a0r1_r[1]), .ZN(SQ_instance_n46)
         );
  NAND2_X1 SQ_instance_U54 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[1]), .ZN(SQ_instance_n48) );
  NAND2_X1 SQ_instance_U53 ( .A1(SQ_instance_a12r0_r[1]), .A2(
        SQ_instance_a0_r[1]), .ZN(SQ_instance_n70) );
  NOR2_X1 SQ_instance_U52 ( .A1(SQ_instance_n45), .A2(SQ_instance_n44), .ZN(
        SQ_instance_a1sr1[2]) );
  NOR2_X1 SQ_instance_U51 ( .A1(SQ_instance_n44), .A2(SQ_instance_n43), .ZN(
        SQ_instance_a1sr1[1]) );
  XNOR2_X1 SQ_instance_U50 ( .A(SQ_instance_n42), .B(SQ_instance_n41), .ZN(
        SQ_instance_n43) );
  NOR2_X1 SQ_instance_U49 ( .A1(SQ_instance_n44), .A2(SQ_instance_n40), .ZN(
        SQ_instance_a1sr1[0]) );
  NOR2_X1 SQ_instance_U48 ( .A1(SQ_instance_n40), .A2(SQ_instance_n39), .ZN(
        SQ_instance_n44) );
  OR2_X1 SQ_instance_U47 ( .A1(SQ_instance_n42), .A2(SQ_instance_n45), .ZN(
        SQ_instance_n39) );
  XOR2_X1 SQ_instance_U46 ( .A(SQ_instance_n38), .B(SQ_instance_n37), .Z(
        SQ_instance_n45) );
  NOR2_X1 SQ_instance_U45 ( .A1(SQ_instance_n36), .A2(SQ_instance_n35), .ZN(
        SQ_instance_n37) );
  NOR2_X1 SQ_instance_U44 ( .A1(SQ_instance_n41), .A2(SQ_instance_n42), .ZN(
        SQ_instance_n36) );
  NAND2_X1 SQ_instance_U43 ( .A1(SQ_instance_n34), .A2(SQ_instance_n33), .ZN(
        SQ_instance_n41) );
  XOR2_X1 SQ_instance_U42 ( .A(SQ_instance_n32), .B(SQ_instance_n31), .Z(
        SQ_instance_n42) );
  XNOR2_X1 SQ_instance_U41 ( .A(SQ_instance_n30), .B(SQ_instance_n29), .ZN(
        SQ_instance_n31) );
  XNOR2_X1 SQ_instance_U40 ( .A(SQ_instance_n34), .B(SQ_instance_n33), .ZN(
        SQ_instance_n40) );
  NAND2_X1 SQ_instance_U39 ( .A1(SQ_instance_n28), .A2(SQ_instance_n27), .ZN(
        SQ_instance_n33) );
  NAND2_X1 SQ_instance_U38 ( .A1(SQ_instance_n38), .A2(SQ_instance_n35), .ZN(
        SQ_instance_n27) );
  NAND2_X1 SQ_instance_U37 ( .A1(SQ_instance_n26), .A2(SQ_instance_n25), .ZN(
        SQ_instance_n35) );
  NAND2_X1 SQ_instance_U36 ( .A1(SQ_instance_n29), .A2(SQ_instance_n24), .ZN(
        SQ_instance_n25) );
  NAND2_X1 SQ_instance_U35 ( .A1(SQ_instance_n32), .A2(SQ_instance_n30), .ZN(
        SQ_instance_n24) );
  XOR2_X1 SQ_instance_U34 ( .A(SQ_instance_n23), .B(SQ_instance_n22), .Z(
        SQ_instance_n29) );
  NAND2_X1 SQ_instance_U33 ( .A1(a1_sel_rr[2]), .A2(SQ_instance_n21), .ZN(
        SQ_instance_n22) );
  NAND2_X1 SQ_instance_U32 ( .A1(SQ_instance_n20), .A2(SQ_instance_n19), .ZN(
        SQ_instance_n23) );
  NAND2_X1 SQ_instance_U31 ( .A1(SQ_instance_n18), .A2(SQ_instance_n17), .ZN(
        SQ_instance_n19) );
  NAND2_X1 SQ_instance_U30 ( .A1(SQ_instance_n16), .A2(SQ_instance_n15), .ZN(
        SQ_instance_n17) );
  OR2_X1 SQ_instance_U29 ( .A1(SQ_instance_n15), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n20) );
  OR2_X1 SQ_instance_U28 ( .A1(SQ_instance_n30), .A2(SQ_instance_n32), .ZN(
        SQ_instance_n26) );
  XNOR2_X1 SQ_instance_U27 ( .A(SQ_instance_n131), .B(SQ_instance_n14), .ZN(
        SQ_instance_n32) );
  OR2_X1 SQ_instance_U26 ( .A1(SQ_instance_n13), .A2(SQ_instance_n12), .ZN(
        SQ_instance_n30) );
  XOR2_X1 SQ_instance_U25 ( .A(SQ_instance_n11), .B(SQ_instance_n10), .Z(
        SQ_instance_n38) );
  NAND2_X1 SQ_instance_U24 ( .A1(SQ_instance_n10), .A2(SQ_instance_n11), .ZN(
        SQ_instance_n28) );
  NOR2_X1 SQ_instance_U23 ( .A1(SQ_instance_n217), .A2(SQ_instance_n9), .ZN(
        SQ_instance_n11) );
  NOR2_X1 SQ_instance_U22 ( .A1(a1_sel_rr[1]), .A2(SQ_instance_n8), .ZN(
        SQ_instance_n9) );
  INV_X1 SQ_instance_U21 ( .A(SQ_instance_n18), .ZN(SQ_instance_n8) );
  XOR2_X1 SQ_instance_U20 ( .A(SQ_instance_n7), .B(SQ_instance_n6), .Z(
        SQ_instance_n10) );
  XOR2_X1 SQ_instance_U19 ( .A(SQ_instance_n13), .B(SQ_instance_n12), .Z(
        SQ_instance_n34) );
  XOR2_X1 SQ_instance_U18 ( .A(r1_rr[0]), .B(a1_sel_rr[0]), .Z(SQ_instance_n12) );
  XOR2_X1 SQ_instance_U17 ( .A(SQ_instance_n16), .B(SQ_instance_n5), .Z(
        SQ_instance_n13) );
  XOR2_X1 SQ_instance_U16 ( .A(SQ_instance_n18), .B(SQ_instance_n15), .Z(
        SQ_instance_n5) );
  NOR2_X1 SQ_instance_U15 ( .A1(SQ_instance_n219), .A2(SQ_instance_n217), .ZN(
        SQ_instance_n15) );
  INV_X1 SQ_instance_U14 ( .A(a1_sel_rr[2]), .ZN(SQ_instance_n217) );
  NOR2_X1 SQ_instance_U13 ( .A1(SQ_instance_n4), .A2(SQ_instance_n3), .ZN(
        SQ_instance_n18) );
  NOR2_X1 SQ_instance_U12 ( .A1(SQ_instance_n147), .A2(SQ_instance_n2), .ZN(
        SQ_instance_n3) );
  NAND2_X1 SQ_instance_U11 ( .A1(a1_sel_rr[1]), .A2(a1_sel_rr[0]), .ZN(
        SQ_instance_n2) );
  NOR2_X1 SQ_instance_U10 ( .A1(SQ_instance_n7), .A2(SQ_instance_n6), .ZN(
        SQ_instance_n4) );
  NAND2_X1 SQ_instance_U9 ( .A1(SQ_instance_n14), .A2(SQ_instance_n131), .ZN(
        SQ_instance_n6) );
  INV_X1 SQ_instance_U8 ( .A(r1_rr[1]), .ZN(SQ_instance_n131) );
  NOR2_X1 SQ_instance_U7 ( .A1(r1_rr[0]), .A2(SQ_instance_n219), .ZN(
        SQ_instance_n14) );
  XOR2_X1 SQ_instance_U6 ( .A(SQ_instance_n147), .B(SQ_instance_n1), .Z(
        SQ_instance_n7) );
  NAND2_X1 SQ_instance_U5 ( .A1(SQ_instance_n219), .A2(a1_sel_rr[1]), .ZN(
        SQ_instance_n1) );
  INV_X1 SQ_instance_U4 ( .A(a1_sel_rr[0]), .ZN(SQ_instance_n219) );
  INV_X1 SQ_instance_U3 ( .A(r1_rr[2]), .ZN(SQ_instance_n147) );
  NOR2_X1 SQ_instance_U2 ( .A1(SQ_instance_n21), .A2(r1_rr[2]), .ZN(
        SQ_instance_n16) );
  INV_X1 SQ_instance_U1 ( .A(a1_sel_rr[1]), .ZN(SQ_instance_n21) );
  DFF_X1 SQ_instance_FF1_output_reg_0_ ( .D(a0_sel_rr[0]), .CK(clk), .Q(
        SQ_instance_a0_r[0]) );
  DFF_X1 SQ_instance_FF1_output_reg_1_ ( .D(a0_sel_rr[1]), .CK(clk), .Q(
        SQ_instance_a0_r[1]) );
  DFF_X1 SQ_instance_FF1_output_reg_2_ ( .D(a0_sel_rr[2]), .CK(clk), .Q(
        SQ_instance_a0_r[2]) );
  DFF_X1 SQ_instance_FF2_output_reg_0_ ( .D(SQ_instance_a12r0[0]), .CK(clk), 
        .Q(SQ_instance_a12r0_r[0]) );
  DFF_X1 SQ_instance_FF2_output_reg_1_ ( .D(SQ_instance_a12r0[1]), .CK(clk), 
        .Q(SQ_instance_a12r0_r[1]) );
  DFF_X1 SQ_instance_FF2_output_reg_2_ ( .D(SQ_instance_a12r0[2]), .CK(clk), 
        .Q(SQ_instance_a12r0_r[2]) );
  DFF_X1 SQ_instance_FF3_output_reg_0_ ( .D(SQ_instance_a0r0a0r1[0]), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[0]) );
  DFF_X1 SQ_instance_FF3_output_reg_1_ ( .D(SQ_instance_a0r0a0r1[1]), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[1]) );
  DFF_X1 SQ_instance_FF3_output_reg_2_ ( .D(SQ_instance_a0r0a0r1[2]), .CK(clk), 
        .Q(SQ_instance_a0r0a0r1_r[2]) );
  DFF_X1 SQ_instance_FF4_output_reg_0_ ( .D(SQ_instance_a1sr1[0]), .CK(clk), 
        .Q(b1[0]) );
  DFF_X1 SQ_instance_FF4_output_reg_1_ ( .D(SQ_instance_a1sr1[1]), .CK(clk), 
        .Q(b1[1]) );
  DFF_X1 SQ_instance_FF4_output_reg_2_ ( .D(SQ_instance_a1sr1[2]), .CK(clk), 
        .Q(b1[2]) );
endmodule

