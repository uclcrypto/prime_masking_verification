/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : V-2023.12
// Date      : Thu Apr 16 10:05:21 2026
/////////////////////////////////////////////////////////////


module SQ_2SHARE_PROLEADWRAP ( clk, a0, a1, r0, r1, b0, b1 );
  input [2:0] a0;
  input [2:0] a1;
  input [2:0] r0;
  input [2:0] r1;
  output [2:0] b0;
  output [2:0] b1;
  input clk;
  wire   net862, net863, net864, net865, net866, net867, net868, net869,
         net870, net871, net872, net873, net874, net875, net876, net877,
         net878, net879, Add1_n5, Add1_n4, Add2_n5, Add2_n4, Add3_n5, Add3_n4,
         Add4_n5, Add4_n4, Sub1_n5, Sub1_n4, Sub2_n5, Sub2_n4,
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
  wire   [2:0] a0p1;
  wire   [2:0] a1p1;
  wire   [2:0] r0p1;
  wire   [2:0] r1p1;
  wire   [2:0] b0p1;
  wire   [2:0] b1p1;
  wire   [2:0] SQ_instance_a0r0a0r1_r;
  wire   [2:0] SQ_instance_a12r0_r;
  wire   [2:0] SQ_instance_a0_r;
  wire   [2:0] SQ_instance_a1sr1;
  wire   [2:0] SQ_instance_a0r0a0r1;
  wire   [2:0] SQ_instance_a12r0;

  NAND2_X1 Add1_U5 ( .A1(a0[0]), .A2(Add1_n5), .ZN(a0p1[0]) );
  NAND2_X1 Add1_U4 ( .A1(a0[2]), .A2(a0[1]), .ZN(Add1_n5) );
  XOR2_X1 Add1_U3 ( .A(a0[1]), .B(a0[0]), .Z(a0p1[1]) );
  XNOR2_X1 Add1_U2 ( .A(a0[2]), .B(Add1_n4), .ZN(a0p1[2]) );
  NAND2_X1 Add1_U1 ( .A1(a0[1]), .A2(a0[0]), .ZN(Add1_n4) );
  NAND2_X1 Add2_U5 ( .A1(a1[0]), .A2(Add2_n5), .ZN(a1p1[0]) );
  NAND2_X1 Add2_U4 ( .A1(a1[2]), .A2(a1[1]), .ZN(Add2_n5) );
  XOR2_X1 Add2_U3 ( .A(a1[1]), .B(a1[0]), .Z(a1p1[1]) );
  XNOR2_X1 Add2_U2 ( .A(a1[2]), .B(Add2_n4), .ZN(a1p1[2]) );
  NAND2_X1 Add2_U1 ( .A1(a1[1]), .A2(a1[0]), .ZN(Add2_n4) );
  NAND2_X1 Add3_U5 ( .A1(r0[0]), .A2(Add3_n5), .ZN(r0p1[0]) );
  NAND2_X1 Add3_U4 ( .A1(r0[2]), .A2(r0[1]), .ZN(Add3_n5) );
  XOR2_X1 Add3_U3 ( .A(r0[1]), .B(r0[0]), .Z(r0p1[1]) );
  XNOR2_X1 Add3_U2 ( .A(r0[2]), .B(Add3_n4), .ZN(r0p1[2]) );
  NAND2_X1 Add3_U1 ( .A1(r0[1]), .A2(r0[0]), .ZN(Add3_n4) );
  NAND2_X1 Add4_U5 ( .A1(r1[0]), .A2(Add4_n5), .ZN(r1p1[0]) );
  NAND2_X1 Add4_U4 ( .A1(r1[2]), .A2(r1[1]), .ZN(Add4_n5) );
  XOR2_X1 Add4_U3 ( .A(r1[1]), .B(r1[0]), .Z(r1p1[1]) );
  XNOR2_X1 Add4_U2 ( .A(r1[2]), .B(Add4_n4), .ZN(r1p1[2]) );
  NAND2_X1 Add4_U1 ( .A1(r1[1]), .A2(r1[0]), .ZN(Add4_n4) );
  NOR2_X1 Sub1_U5 ( .A1(b0p1[0]), .A2(Sub1_n5), .ZN(b0[0]) );
  NOR2_X1 Sub1_U4 ( .A1(b0p1[2]), .A2(b0p1[1]), .ZN(Sub1_n5) );
  XNOR2_X1 Sub1_U3 ( .A(b0p1[0]), .B(b0p1[1]), .ZN(b0[1]) );
  XOR2_X1 Sub1_U2 ( .A(b0p1[2]), .B(Sub1_n4), .Z(b0[2]) );
  NOR2_X1 Sub1_U1 ( .A1(b0p1[0]), .A2(b0p1[1]), .ZN(Sub1_n4) );
  NOR2_X1 Sub2_U5 ( .A1(b1p1[0]), .A2(Sub2_n5), .ZN(b1[0]) );
  NOR2_X1 Sub2_U4 ( .A1(b1p1[2]), .A2(b1p1[1]), .ZN(Sub2_n5) );
  XNOR2_X1 Sub2_U3 ( .A(b1p1[0]), .B(b1p1[1]), .ZN(b1[1]) );
  XOR2_X1 Sub2_U2 ( .A(b1p1[2]), .B(Sub2_n4), .Z(b1[2]) );
  NOR2_X1 Sub2_U1 ( .A1(b1p1[0]), .A2(b1p1[1]), .ZN(Sub2_n4) );
  XOR2_X1 SQ_instance_U226 ( .A(SQ_instance_n214), .B(SQ_instance_n213), .Z(
        SQ_instance_a12r0[0]) );
  XOR2_X1 SQ_instance_U225 ( .A(SQ_instance_n212), .B(SQ_instance_n211), .Z(
        SQ_instance_a12r0[1]) );
  XNOR2_X1 SQ_instance_U224 ( .A(SQ_instance_n210), .B(SQ_instance_n209), .ZN(
        SQ_instance_a12r0[2]) );
  NOR2_X1 SQ_instance_U223 ( .A1(SQ_instance_n208), .A2(SQ_instance_n207), 
        .ZN(SQ_instance_n210) );
  NOR2_X1 SQ_instance_U222 ( .A1(SQ_instance_n212), .A2(SQ_instance_n211), 
        .ZN(SQ_instance_n207) );
  XOR2_X1 SQ_instance_U221 ( .A(SQ_instance_n206), .B(SQ_instance_n205), .Z(
        SQ_instance_n211) );
  XNOR2_X1 SQ_instance_U220 ( .A(r0p1[1]), .B(a1p1[0]), .ZN(SQ_instance_n205)
         );
  NAND2_X1 SQ_instance_U219 ( .A1(SQ_instance_n214), .A2(SQ_instance_n213), 
        .ZN(SQ_instance_n212) );
  NAND2_X1 SQ_instance_U218 ( .A1(SQ_instance_n204), .A2(SQ_instance_n203), 
        .ZN(SQ_instance_n213) );
  NAND2_X1 SQ_instance_U217 ( .A1(SQ_instance_n209), .A2(SQ_instance_n208), 
        .ZN(SQ_instance_n203) );
  XNOR2_X1 SQ_instance_U216 ( .A(r0p1[2]), .B(SQ_instance_n202), .ZN(
        SQ_instance_n209) );
  NAND2_X1 SQ_instance_U215 ( .A1(r0p1[2]), .A2(a1p1[1]), .ZN(SQ_instance_n204) );
  XNOR2_X1 SQ_instance_U214 ( .A(r0p1[0]), .B(SQ_instance_n201), .ZN(
        SQ_instance_n214) );
  NAND2_X1 SQ_instance_U213 ( .A1(SQ_instance_n200), .A2(SQ_instance_n199), 
        .ZN(SQ_instance_n208) );
  NAND2_X1 SQ_instance_U212 ( .A1(SQ_instance_n206), .A2(SQ_instance_n198), 
        .ZN(SQ_instance_n199) );
  NAND2_X1 SQ_instance_U211 ( .A1(SQ_instance_n197), .A2(SQ_instance_n196), 
        .ZN(SQ_instance_n198) );
  NOR2_X1 SQ_instance_U210 ( .A1(SQ_instance_n195), .A2(SQ_instance_n201), 
        .ZN(SQ_instance_n206) );
  NAND2_X1 SQ_instance_U209 ( .A1(r0p1[1]), .A2(a1p1[0]), .ZN(SQ_instance_n200) );
  XOR2_X1 SQ_instance_U208 ( .A(SQ_instance_n194), .B(SQ_instance_n193), .Z(
        SQ_instance_a0r0a0r1[0]) );
  XOR2_X1 SQ_instance_U207 ( .A(SQ_instance_n192), .B(SQ_instance_n191), .Z(
        SQ_instance_a0r0a0r1[1]) );
  XNOR2_X1 SQ_instance_U206 ( .A(SQ_instance_n190), .B(SQ_instance_n189), .ZN(
        SQ_instance_a0r0a0r1[2]) );
  NAND2_X1 SQ_instance_U205 ( .A1(SQ_instance_n188), .A2(SQ_instance_n187), 
        .ZN(SQ_instance_n189) );
  NAND2_X1 SQ_instance_U204 ( .A1(SQ_instance_n192), .A2(SQ_instance_n191), 
        .ZN(SQ_instance_n188) );
  XOR2_X1 SQ_instance_U203 ( .A(SQ_instance_n186), .B(SQ_instance_n185), .Z(
        SQ_instance_n191) );
  XNOR2_X1 SQ_instance_U202 ( .A(SQ_instance_n184), .B(SQ_instance_n183), .ZN(
        SQ_instance_n185) );
  NOR2_X1 SQ_instance_U201 ( .A1(SQ_instance_n194), .A2(SQ_instance_n193), 
        .ZN(SQ_instance_n192) );
  XNOR2_X1 SQ_instance_U200 ( .A(SQ_instance_n182), .B(SQ_instance_n181), .ZN(
        SQ_instance_n193) );
  NOR2_X1 SQ_instance_U199 ( .A1(SQ_instance_n180), .A2(SQ_instance_n179), 
        .ZN(SQ_instance_n194) );
  NOR2_X1 SQ_instance_U198 ( .A1(SQ_instance_n187), .A2(SQ_instance_n190), 
        .ZN(SQ_instance_n179) );
  NOR2_X1 SQ_instance_U197 ( .A1(SQ_instance_n178), .A2(SQ_instance_n177), 
        .ZN(SQ_instance_n187) );
  NOR2_X1 SQ_instance_U196 ( .A1(SQ_instance_n184), .A2(SQ_instance_n186), 
        .ZN(SQ_instance_n177) );
  NOR2_X1 SQ_instance_U195 ( .A1(SQ_instance_n183), .A2(SQ_instance_n176), 
        .ZN(SQ_instance_n178) );
  AND2_X1 SQ_instance_U194 ( .A1(SQ_instance_n184), .A2(SQ_instance_n186), 
        .ZN(SQ_instance_n176) );
  NAND2_X1 SQ_instance_U193 ( .A1(SQ_instance_n182), .A2(SQ_instance_n181), 
        .ZN(SQ_instance_n186) );
  XOR2_X1 SQ_instance_U192 ( .A(r1p1[0]), .B(SQ_instance_n175), .Z(
        SQ_instance_n181) );
  XNOR2_X1 SQ_instance_U191 ( .A(SQ_instance_n174), .B(SQ_instance_n173), .ZN(
        SQ_instance_n182) );
  XOR2_X1 SQ_instance_U190 ( .A(SQ_instance_n172), .B(SQ_instance_n171), .Z(
        SQ_instance_n173) );
  XOR2_X1 SQ_instance_U189 ( .A(SQ_instance_n170), .B(SQ_instance_n169), .Z(
        SQ_instance_n184) );
  XOR2_X1 SQ_instance_U188 ( .A(SQ_instance_n168), .B(SQ_instance_n167), .Z(
        SQ_instance_n169) );
  XNOR2_X1 SQ_instance_U187 ( .A(SQ_instance_n166), .B(SQ_instance_n165), .ZN(
        SQ_instance_n183) );
  NOR2_X1 SQ_instance_U186 ( .A1(SQ_instance_n164), .A2(SQ_instance_n163), 
        .ZN(SQ_instance_n180) );
  XNOR2_X1 SQ_instance_U185 ( .A(SQ_instance_n164), .B(SQ_instance_n163), .ZN(
        SQ_instance_n190) );
  NOR2_X1 SQ_instance_U184 ( .A1(SQ_instance_n162), .A2(SQ_instance_n161), 
        .ZN(SQ_instance_n163) );
  NOR2_X1 SQ_instance_U183 ( .A1(SQ_instance_n166), .A2(SQ_instance_n165), 
        .ZN(SQ_instance_n161) );
  NAND2_X1 SQ_instance_U182 ( .A1(SQ_instance_n160), .A2(a0p1[2]), .ZN(
        SQ_instance_n165) );
  XNOR2_X1 SQ_instance_U181 ( .A(SQ_instance_n158), .B(SQ_instance_n157), .ZN(
        SQ_instance_n160) );
  NOR2_X1 SQ_instance_U180 ( .A1(SQ_instance_n162), .A2(SQ_instance_n156), 
        .ZN(SQ_instance_n158) );
  NOR2_X1 SQ_instance_U179 ( .A1(SQ_instance_n155), .A2(SQ_instance_n154), 
        .ZN(SQ_instance_n156) );
  NOR2_X1 SQ_instance_U178 ( .A1(SQ_instance_n153), .A2(SQ_instance_n152), 
        .ZN(SQ_instance_n166) );
  AND2_X1 SQ_instance_U177 ( .A1(SQ_instance_n171), .A2(SQ_instance_n172), 
        .ZN(SQ_instance_n152) );
  NOR2_X1 SQ_instance_U176 ( .A1(SQ_instance_n174), .A2(SQ_instance_n151), 
        .ZN(SQ_instance_n153) );
  NOR2_X1 SQ_instance_U175 ( .A1(SQ_instance_n172), .A2(SQ_instance_n171), 
        .ZN(SQ_instance_n151) );
  NAND2_X1 SQ_instance_U174 ( .A1(SQ_instance_n150), .A2(SQ_instance_n149), 
        .ZN(SQ_instance_n171) );
  NAND2_X1 SQ_instance_U173 ( .A1(SQ_instance_n148), .A2(SQ_instance_n147), 
        .ZN(SQ_instance_n149) );
  NAND2_X1 SQ_instance_U172 ( .A1(SQ_instance_n146), .A2(SQ_instance_n145), 
        .ZN(SQ_instance_n147) );
  OR2_X1 SQ_instance_U171 ( .A1(SQ_instance_n145), .A2(SQ_instance_n146), .ZN(
        SQ_instance_n150) );
  XNOR2_X1 SQ_instance_U170 ( .A(SQ_instance_n154), .B(SQ_instance_n144), .ZN(
        SQ_instance_n172) );
  XOR2_X1 SQ_instance_U169 ( .A(SQ_instance_n155), .B(SQ_instance_n143), .Z(
        SQ_instance_n144) );
  NOR2_X1 SQ_instance_U168 ( .A1(SQ_instance_n142), .A2(SQ_instance_n141), 
        .ZN(SQ_instance_n174) );
  AND2_X1 SQ_instance_U167 ( .A1(SQ_instance_n140), .A2(SQ_instance_n139), 
        .ZN(SQ_instance_n141) );
  NOR2_X1 SQ_instance_U166 ( .A1(SQ_instance_n138), .A2(SQ_instance_n137), 
        .ZN(SQ_instance_n142) );
  NOR2_X1 SQ_instance_U165 ( .A1(SQ_instance_n140), .A2(SQ_instance_n139), 
        .ZN(SQ_instance_n137) );
  NOR2_X1 SQ_instance_U164 ( .A1(SQ_instance_n143), .A2(SQ_instance_n136), 
        .ZN(SQ_instance_n162) );
  AND2_X1 SQ_instance_U163 ( .A1(SQ_instance_n155), .A2(SQ_instance_n154), 
        .ZN(SQ_instance_n136) );
  NAND2_X1 SQ_instance_U162 ( .A1(a0p1[2]), .A2(SQ_instance_n135), .ZN(
        SQ_instance_n154) );
  NAND2_X1 SQ_instance_U161 ( .A1(SQ_instance_n134), .A2(r1p1[2]), .ZN(
        SQ_instance_n155) );
  NAND2_X1 SQ_instance_U160 ( .A1(a0p1[1]), .A2(SQ_instance_n157), .ZN(
        SQ_instance_n143) );
  XOR2_X1 SQ_instance_U159 ( .A(SQ_instance_n140), .B(SQ_instance_n133), .Z(
        SQ_instance_n164) );
  XOR2_X1 SQ_instance_U158 ( .A(SQ_instance_n139), .B(SQ_instance_n138), .Z(
        SQ_instance_n133) );
  NOR2_X1 SQ_instance_U157 ( .A1(SQ_instance_n132), .A2(SQ_instance_n131), 
        .ZN(SQ_instance_n138) );
  NOR2_X1 SQ_instance_U156 ( .A1(SQ_instance_n167), .A2(SQ_instance_n170), 
        .ZN(SQ_instance_n131) );
  NOR2_X1 SQ_instance_U155 ( .A1(SQ_instance_n168), .A2(SQ_instance_n130), 
        .ZN(SQ_instance_n132) );
  AND2_X1 SQ_instance_U154 ( .A1(SQ_instance_n167), .A2(SQ_instance_n170), 
        .ZN(SQ_instance_n130) );
  NAND2_X1 SQ_instance_U153 ( .A1(SQ_instance_n135), .A2(a0p1[0]), .ZN(
        SQ_instance_n170) );
  NAND2_X1 SQ_instance_U152 ( .A1(SQ_instance_n175), .A2(r1p1[0]), .ZN(
        SQ_instance_n167) );
  AND2_X1 SQ_instance_U151 ( .A1(a0p1[0]), .A2(SQ_instance_n129), .ZN(
        SQ_instance_n175) );
  XNOR2_X1 SQ_instance_U150 ( .A(SQ_instance_n128), .B(SQ_instance_n127), .ZN(
        SQ_instance_n168) );
  XOR2_X1 SQ_instance_U149 ( .A(r1p1[2]), .B(SQ_instance_n134), .Z(
        SQ_instance_n139) );
  AND2_X1 SQ_instance_U148 ( .A1(a0p1[2]), .A2(SQ_instance_n129), .ZN(
        SQ_instance_n134) );
  XNOR2_X1 SQ_instance_U147 ( .A(SQ_instance_n146), .B(SQ_instance_n126), .ZN(
        SQ_instance_n140) );
  XNOR2_X1 SQ_instance_U146 ( .A(SQ_instance_n145), .B(SQ_instance_n148), .ZN(
        SQ_instance_n126) );
  AND2_X1 SQ_instance_U145 ( .A1(a0p1[0]), .A2(SQ_instance_n157), .ZN(
        SQ_instance_n148) );
  XNOR2_X1 SQ_instance_U144 ( .A(SQ_instance_n125), .B(SQ_instance_n124), .ZN(
        SQ_instance_n157) );
  NAND2_X1 SQ_instance_U143 ( .A1(SQ_instance_n123), .A2(SQ_instance_n122), 
        .ZN(SQ_instance_n124) );
  NAND2_X1 SQ_instance_U142 ( .A1(SQ_instance_n121), .A2(SQ_instance_n120), 
        .ZN(SQ_instance_n123) );
  OR2_X1 SQ_instance_U141 ( .A1(SQ_instance_n127), .A2(SQ_instance_n128), .ZN(
        SQ_instance_n145) );
  NAND2_X1 SQ_instance_U140 ( .A1(a0p1[1]), .A2(SQ_instance_n129), .ZN(
        SQ_instance_n127) );
  XNOR2_X1 SQ_instance_U139 ( .A(SQ_instance_n119), .B(SQ_instance_n118), .ZN(
        SQ_instance_n129) );
  NAND2_X1 SQ_instance_U138 ( .A1(a0p1[1]), .A2(SQ_instance_n135), .ZN(
        SQ_instance_n146) );
  XNOR2_X1 SQ_instance_U137 ( .A(SQ_instance_n121), .B(SQ_instance_n120), .ZN(
        SQ_instance_n135) );
  XOR2_X1 SQ_instance_U136 ( .A(SQ_instance_n117), .B(SQ_instance_n116), .Z(
        SQ_instance_n120) );
  XNOR2_X1 SQ_instance_U135 ( .A(a0p1[1]), .B(r0p1[1]), .ZN(SQ_instance_n116)
         );
  AND2_X1 SQ_instance_U134 ( .A1(SQ_instance_n119), .A2(SQ_instance_n118), 
        .ZN(SQ_instance_n121) );
  NOR2_X1 SQ_instance_U133 ( .A1(SQ_instance_n115), .A2(SQ_instance_n114), 
        .ZN(SQ_instance_n118) );
  AND2_X1 SQ_instance_U132 ( .A1(SQ_instance_n122), .A2(SQ_instance_n125), 
        .ZN(SQ_instance_n114) );
  XNOR2_X1 SQ_instance_U131 ( .A(r0p1[2]), .B(a0p1[2]), .ZN(SQ_instance_n125)
         );
  AND2_X1 SQ_instance_U130 ( .A1(SQ_instance_n113), .A2(SQ_instance_n112), 
        .ZN(SQ_instance_n122) );
  NAND2_X1 SQ_instance_U129 ( .A1(SQ_instance_n117), .A2(SQ_instance_n111), 
        .ZN(SQ_instance_n112) );
  NAND2_X1 SQ_instance_U128 ( .A1(SQ_instance_n196), .A2(a0p1[1]), .ZN(
        SQ_instance_n111) );
  NOR2_X1 SQ_instance_U127 ( .A1(a0p1[0]), .A2(SQ_instance_n195), .ZN(
        SQ_instance_n117) );
  INV_X1 SQ_instance_U126 ( .A(r0p1[0]), .ZN(SQ_instance_n195) );
  OR2_X1 SQ_instance_U125 ( .A1(SQ_instance_n196), .A2(a0p1[1]), .ZN(
        SQ_instance_n113) );
  INV_X1 SQ_instance_U124 ( .A(r0p1[1]), .ZN(SQ_instance_n196) );
  NOR2_X1 SQ_instance_U123 ( .A1(r0p1[2]), .A2(SQ_instance_n159), .ZN(
        SQ_instance_n115) );
  INV_X1 SQ_instance_U122 ( .A(a0p1[2]), .ZN(SQ_instance_n159) );
  XNOR2_X1 SQ_instance_U121 ( .A(r0p1[0]), .B(a0p1[0]), .ZN(SQ_instance_n119)
         );
  XOR2_X1 SQ_instance_U120 ( .A(SQ_instance_n110), .B(SQ_instance_n109), .Z(
        b0p1[0]) );
  XOR2_X1 SQ_instance_U119 ( .A(SQ_instance_n108), .B(SQ_instance_n107), .Z(
        b0p1[1]) );
  XNOR2_X1 SQ_instance_U118 ( .A(SQ_instance_n106), .B(SQ_instance_n105), .ZN(
        b0p1[2]) );
  NAND2_X1 SQ_instance_U117 ( .A1(SQ_instance_n104), .A2(SQ_instance_n103), 
        .ZN(SQ_instance_n105) );
  NAND2_X1 SQ_instance_U116 ( .A1(SQ_instance_n108), .A2(SQ_instance_n107), 
        .ZN(SQ_instance_n104) );
  XOR2_X1 SQ_instance_U115 ( .A(SQ_instance_n102), .B(SQ_instance_n101), .Z(
        SQ_instance_n107) );
  XNOR2_X1 SQ_instance_U114 ( .A(SQ_instance_n100), .B(SQ_instance_n99), .ZN(
        SQ_instance_n101) );
  NOR2_X1 SQ_instance_U113 ( .A1(SQ_instance_n110), .A2(SQ_instance_n109), 
        .ZN(SQ_instance_n108) );
  XNOR2_X1 SQ_instance_U112 ( .A(SQ_instance_n98), .B(SQ_instance_n97), .ZN(
        SQ_instance_n109) );
  NOR2_X1 SQ_instance_U111 ( .A1(SQ_instance_n96), .A2(SQ_instance_n95), .ZN(
        SQ_instance_n110) );
  NOR2_X1 SQ_instance_U110 ( .A1(SQ_instance_n103), .A2(SQ_instance_n106), 
        .ZN(SQ_instance_n95) );
  NOR2_X1 SQ_instance_U109 ( .A1(SQ_instance_n94), .A2(SQ_instance_n93), .ZN(
        SQ_instance_n103) );
  NOR2_X1 SQ_instance_U108 ( .A1(SQ_instance_n100), .A2(SQ_instance_n102), 
        .ZN(SQ_instance_n93) );
  NOR2_X1 SQ_instance_U107 ( .A1(SQ_instance_n99), .A2(SQ_instance_n92), .ZN(
        SQ_instance_n94) );
  AND2_X1 SQ_instance_U106 ( .A1(SQ_instance_n100), .A2(SQ_instance_n102), 
        .ZN(SQ_instance_n92) );
  NAND2_X1 SQ_instance_U105 ( .A1(SQ_instance_n98), .A2(SQ_instance_n97), .ZN(
        SQ_instance_n102) );
  XOR2_X1 SQ_instance_U104 ( .A(SQ_instance_a0r0a0r1_r[0]), .B(SQ_instance_n91), .Z(SQ_instance_n97) );
  XNOR2_X1 SQ_instance_U103 ( .A(SQ_instance_n90), .B(SQ_instance_n89), .ZN(
        SQ_instance_n98) );
  XNOR2_X1 SQ_instance_U102 ( .A(SQ_instance_n88), .B(SQ_instance_n87), .ZN(
        SQ_instance_n89) );
  XOR2_X1 SQ_instance_U101 ( .A(SQ_instance_n86), .B(SQ_instance_n85), .Z(
        SQ_instance_n100) );
  XOR2_X1 SQ_instance_U100 ( .A(SQ_instance_n84), .B(SQ_instance_n83), .Z(
        SQ_instance_n85) );
  XNOR2_X1 SQ_instance_U99 ( .A(SQ_instance_n82), .B(SQ_instance_n81), .ZN(
        SQ_instance_n99) );
  NOR2_X1 SQ_instance_U98 ( .A1(SQ_instance_n80), .A2(SQ_instance_n79), .ZN(
        SQ_instance_n96) );
  XNOR2_X1 SQ_instance_U97 ( .A(SQ_instance_n80), .B(SQ_instance_n79), .ZN(
        SQ_instance_n106) );
  NOR2_X1 SQ_instance_U96 ( .A1(SQ_instance_n78), .A2(SQ_instance_n77), .ZN(
        SQ_instance_n79) );
  NOR2_X1 SQ_instance_U95 ( .A1(SQ_instance_n82), .A2(SQ_instance_n81), .ZN(
        SQ_instance_n77) );
  NAND2_X1 SQ_instance_U94 ( .A1(SQ_instance_n76), .A2(SQ_instance_a0_r[2]), 
        .ZN(SQ_instance_n81) );
  XNOR2_X1 SQ_instance_U93 ( .A(SQ_instance_n75), .B(SQ_instance_a12r0_r[2]), 
        .ZN(SQ_instance_n76) );
  NOR2_X1 SQ_instance_U92 ( .A1(SQ_instance_n74), .A2(SQ_instance_n73), .ZN(
        SQ_instance_n82) );
  NOR2_X1 SQ_instance_U91 ( .A1(SQ_instance_n87), .A2(SQ_instance_n72), .ZN(
        SQ_instance_n73) );
  INV_X1 SQ_instance_U90 ( .A(SQ_instance_n88), .ZN(SQ_instance_n72) );
  INV_X1 SQ_instance_U89 ( .A(SQ_instance_n71), .ZN(SQ_instance_n87) );
  NOR2_X1 SQ_instance_U88 ( .A1(SQ_instance_n90), .A2(SQ_instance_n70), .ZN(
        SQ_instance_n74) );
  NOR2_X1 SQ_instance_U87 ( .A1(SQ_instance_n88), .A2(SQ_instance_n71), .ZN(
        SQ_instance_n70) );
  NAND2_X1 SQ_instance_U86 ( .A1(SQ_instance_n69), .A2(SQ_instance_n68), .ZN(
        SQ_instance_n71) );
  NAND2_X1 SQ_instance_U85 ( .A1(SQ_instance_n67), .A2(SQ_instance_n66), .ZN(
        SQ_instance_n68) );
  NAND2_X1 SQ_instance_U84 ( .A1(SQ_instance_n65), .A2(SQ_instance_n64), .ZN(
        SQ_instance_n66) );
  OR2_X1 SQ_instance_U83 ( .A1(SQ_instance_n64), .A2(SQ_instance_n65), .ZN(
        SQ_instance_n69) );
  XNOR2_X1 SQ_instance_U82 ( .A(SQ_instance_n63), .B(SQ_instance_n62), .ZN(
        SQ_instance_n88) );
  XOR2_X1 SQ_instance_U81 ( .A(SQ_instance_n61), .B(SQ_instance_n60), .Z(
        SQ_instance_n62) );
  NOR2_X1 SQ_instance_U80 ( .A1(SQ_instance_n59), .A2(SQ_instance_n58), .ZN(
        SQ_instance_n90) );
  NOR2_X1 SQ_instance_U79 ( .A1(SQ_instance_n57), .A2(SQ_instance_n56), .ZN(
        SQ_instance_n58) );
  NOR2_X1 SQ_instance_U78 ( .A1(SQ_instance_n55), .A2(SQ_instance_n54), .ZN(
        SQ_instance_n59) );
  NOR2_X1 SQ_instance_U77 ( .A1(SQ_instance_n53), .A2(SQ_instance_n52), .ZN(
        SQ_instance_n54) );
  NOR2_X1 SQ_instance_U76 ( .A1(SQ_instance_n75), .A2(SQ_instance_n51), .ZN(
        SQ_instance_n78) );
  INV_X1 SQ_instance_U75 ( .A(SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n51) );
  NOR2_X1 SQ_instance_U74 ( .A1(SQ_instance_n50), .A2(SQ_instance_n49), .ZN(
        SQ_instance_n75) );
  NOR2_X1 SQ_instance_U73 ( .A1(SQ_instance_n60), .A2(SQ_instance_n63), .ZN(
        SQ_instance_n49) );
  NOR2_X1 SQ_instance_U72 ( .A1(SQ_instance_n61), .A2(SQ_instance_n48), .ZN(
        SQ_instance_n50) );
  AND2_X1 SQ_instance_U71 ( .A1(SQ_instance_n60), .A2(SQ_instance_n63), .ZN(
        SQ_instance_n48) );
  NAND2_X1 SQ_instance_U70 ( .A1(SQ_instance_a12r0_r[1]), .A2(
        SQ_instance_a0_r[2]), .ZN(SQ_instance_n63) );
  NAND2_X1 SQ_instance_U69 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n60) );
  NAND2_X1 SQ_instance_U68 ( .A1(SQ_instance_n47), .A2(
        SQ_instance_a0r0a0r1_r[2]), .ZN(SQ_instance_n61) );
  XNOR2_X1 SQ_instance_U67 ( .A(SQ_instance_n52), .B(SQ_instance_n46), .ZN(
        SQ_instance_n80) );
  XNOR2_X1 SQ_instance_U66 ( .A(SQ_instance_n55), .B(SQ_instance_n53), .ZN(
        SQ_instance_n46) );
  INV_X1 SQ_instance_U65 ( .A(SQ_instance_n57), .ZN(SQ_instance_n53) );
  XOR2_X1 SQ_instance_U64 ( .A(SQ_instance_n65), .B(SQ_instance_n45), .Z(
        SQ_instance_n57) );
  XNOR2_X1 SQ_instance_U63 ( .A(SQ_instance_n67), .B(SQ_instance_n64), .ZN(
        SQ_instance_n45) );
  NAND2_X1 SQ_instance_U62 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n64) );
  AND2_X1 SQ_instance_U61 ( .A1(SQ_instance_n44), .A2(
        SQ_instance_a0r0a0r1_r[1]), .ZN(SQ_instance_n67) );
  NAND2_X1 SQ_instance_U60 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[2]), .ZN(SQ_instance_n65) );
  NOR2_X1 SQ_instance_U59 ( .A1(SQ_instance_n43), .A2(SQ_instance_n42), .ZN(
        SQ_instance_n55) );
  NOR2_X1 SQ_instance_U58 ( .A1(SQ_instance_n83), .A2(SQ_instance_n86), .ZN(
        SQ_instance_n42) );
  NOR2_X1 SQ_instance_U57 ( .A1(SQ_instance_n84), .A2(SQ_instance_n41), .ZN(
        SQ_instance_n43) );
  AND2_X1 SQ_instance_U56 ( .A1(SQ_instance_n83), .A2(SQ_instance_n86), .ZN(
        SQ_instance_n41) );
  NAND2_X1 SQ_instance_U55 ( .A1(SQ_instance_a0_r[0]), .A2(
        SQ_instance_a12r0_r[1]), .ZN(SQ_instance_n86) );
  NAND2_X1 SQ_instance_U54 ( .A1(SQ_instance_n91), .A2(
        SQ_instance_a0r0a0r1_r[0]), .ZN(SQ_instance_n83) );
  AND2_X1 SQ_instance_U53 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[0]), .ZN(SQ_instance_n91) );
  XNOR2_X1 SQ_instance_U52 ( .A(SQ_instance_a0r0a0r1_r[1]), .B(SQ_instance_n44), .ZN(SQ_instance_n84) );
  AND2_X1 SQ_instance_U51 ( .A1(SQ_instance_a0_r[1]), .A2(
        SQ_instance_a12r0_r[0]), .ZN(SQ_instance_n44) );
  INV_X1 SQ_instance_U50 ( .A(SQ_instance_n56), .ZN(SQ_instance_n52) );
  XNOR2_X1 SQ_instance_U49 ( .A(SQ_instance_a0r0a0r1_r[2]), .B(SQ_instance_n47), .ZN(SQ_instance_n56) );
  AND2_X1 SQ_instance_U48 ( .A1(SQ_instance_a12r0_r[0]), .A2(
        SQ_instance_a0_r[2]), .ZN(SQ_instance_n47) );
  XOR2_X1 SQ_instance_U47 ( .A(SQ_instance_n40), .B(SQ_instance_n39), .Z(
        SQ_instance_a1sr1[0]) );
  XOR2_X1 SQ_instance_U46 ( .A(SQ_instance_n38), .B(SQ_instance_n37), .Z(
        SQ_instance_a1sr1[1]) );
  XNOR2_X1 SQ_instance_U45 ( .A(SQ_instance_n36), .B(SQ_instance_n35), .ZN(
        SQ_instance_a1sr1[2]) );
  NOR2_X1 SQ_instance_U44 ( .A1(SQ_instance_n34), .A2(SQ_instance_n33), .ZN(
        SQ_instance_n36) );
  NOR2_X1 SQ_instance_U43 ( .A1(SQ_instance_n38), .A2(SQ_instance_n37), .ZN(
        SQ_instance_n33) );
  XNOR2_X1 SQ_instance_U42 ( .A(SQ_instance_n32), .B(SQ_instance_n31), .ZN(
        SQ_instance_n37) );
  XOR2_X1 SQ_instance_U41 ( .A(SQ_instance_n30), .B(SQ_instance_n29), .Z(
        SQ_instance_n31) );
  NAND2_X1 SQ_instance_U40 ( .A1(SQ_instance_n40), .A2(SQ_instance_n39), .ZN(
        SQ_instance_n38) );
  NAND2_X1 SQ_instance_U39 ( .A1(SQ_instance_n28), .A2(SQ_instance_n27), .ZN(
        SQ_instance_n39) );
  NAND2_X1 SQ_instance_U38 ( .A1(SQ_instance_n35), .A2(SQ_instance_n34), .ZN(
        SQ_instance_n27) );
  XOR2_X1 SQ_instance_U37 ( .A(SQ_instance_n26), .B(SQ_instance_n25), .Z(
        SQ_instance_n35) );
  NAND2_X1 SQ_instance_U36 ( .A1(SQ_instance_n25), .A2(SQ_instance_n26), .ZN(
        SQ_instance_n28) );
  NOR2_X1 SQ_instance_U35 ( .A1(SQ_instance_n24), .A2(SQ_instance_n201), .ZN(
        SQ_instance_n26) );
  INV_X1 SQ_instance_U34 ( .A(a1p1[2]), .ZN(SQ_instance_n201) );
  NOR2_X1 SQ_instance_U33 ( .A1(a1p1[1]), .A2(SQ_instance_n23), .ZN(
        SQ_instance_n24) );
  INV_X1 SQ_instance_U32 ( .A(SQ_instance_n22), .ZN(SQ_instance_n23) );
  XOR2_X1 SQ_instance_U31 ( .A(SQ_instance_n21), .B(SQ_instance_n20), .Z(
        SQ_instance_n25) );
  XOR2_X1 SQ_instance_U30 ( .A(SQ_instance_n19), .B(SQ_instance_n18), .Z(
        SQ_instance_n40) );
  NAND2_X1 SQ_instance_U29 ( .A1(SQ_instance_n17), .A2(SQ_instance_n16), .ZN(
        SQ_instance_n34) );
  NAND2_X1 SQ_instance_U28 ( .A1(SQ_instance_n29), .A2(SQ_instance_n15), .ZN(
        SQ_instance_n16) );
  NAND2_X1 SQ_instance_U27 ( .A1(SQ_instance_n32), .A2(SQ_instance_n30), .ZN(
        SQ_instance_n15) );
  XOR2_X1 SQ_instance_U26 ( .A(SQ_instance_n14), .B(SQ_instance_n13), .Z(
        SQ_instance_n29) );
  NAND2_X1 SQ_instance_U25 ( .A1(SQ_instance_n202), .A2(a1p1[2]), .ZN(
        SQ_instance_n13) );
  NAND2_X1 SQ_instance_U24 ( .A1(SQ_instance_n12), .A2(SQ_instance_n11), .ZN(
        SQ_instance_n14) );
  NAND2_X1 SQ_instance_U23 ( .A1(SQ_instance_n22), .A2(SQ_instance_n10), .ZN(
        SQ_instance_n11) );
  NAND2_X1 SQ_instance_U22 ( .A1(SQ_instance_n9), .A2(SQ_instance_n8), .ZN(
        SQ_instance_n10) );
  OR2_X1 SQ_instance_U21 ( .A1(SQ_instance_n8), .A2(SQ_instance_n9), .ZN(
        SQ_instance_n12) );
  INV_X1 SQ_instance_U20 ( .A(SQ_instance_n7), .ZN(SQ_instance_n8) );
  OR2_X1 SQ_instance_U19 ( .A1(SQ_instance_n30), .A2(SQ_instance_n32), .ZN(
        SQ_instance_n17) );
  XOR2_X1 SQ_instance_U18 ( .A(r1p1[1]), .B(SQ_instance_n6), .Z(
        SQ_instance_n32) );
  OR2_X1 SQ_instance_U17 ( .A1(SQ_instance_n19), .A2(SQ_instance_n18), .ZN(
        SQ_instance_n30) );
  XNOR2_X1 SQ_instance_U16 ( .A(r1p1[0]), .B(SQ_instance_n197), .ZN(
        SQ_instance_n18) );
  XNOR2_X1 SQ_instance_U15 ( .A(SQ_instance_n7), .B(SQ_instance_n5), .ZN(
        SQ_instance_n19) );
  XOR2_X1 SQ_instance_U14 ( .A(SQ_instance_n22), .B(SQ_instance_n9), .Z(
        SQ_instance_n5) );
  NOR2_X1 SQ_instance_U13 ( .A1(r1p1[2]), .A2(SQ_instance_n202), .ZN(
        SQ_instance_n9) );
  INV_X1 SQ_instance_U12 ( .A(a1p1[1]), .ZN(SQ_instance_n202) );
  NOR2_X1 SQ_instance_U11 ( .A1(SQ_instance_n4), .A2(SQ_instance_n3), .ZN(
        SQ_instance_n22) );
  NOR2_X1 SQ_instance_U10 ( .A1(SQ_instance_n197), .A2(SQ_instance_n2), .ZN(
        SQ_instance_n3) );
  NAND2_X1 SQ_instance_U9 ( .A1(r1p1[2]), .A2(a1p1[1]), .ZN(SQ_instance_n2) );
  AND2_X1 SQ_instance_U8 ( .A1(SQ_instance_n20), .A2(SQ_instance_n21), .ZN(
        SQ_instance_n4) );
  AND2_X1 SQ_instance_U7 ( .A1(SQ_instance_n6), .A2(SQ_instance_n128), .ZN(
        SQ_instance_n21) );
  INV_X1 SQ_instance_U6 ( .A(r1p1[1]), .ZN(SQ_instance_n128) );
  NOR2_X1 SQ_instance_U5 ( .A1(r1p1[0]), .A2(SQ_instance_n197), .ZN(
        SQ_instance_n6) );
  XOR2_X1 SQ_instance_U4 ( .A(r1p1[2]), .B(SQ_instance_n1), .Z(SQ_instance_n20) );
  NAND2_X1 SQ_instance_U3 ( .A1(SQ_instance_n197), .A2(a1p1[1]), .ZN(
        SQ_instance_n1) );
  INV_X1 SQ_instance_U2 ( .A(a1p1[0]), .ZN(SQ_instance_n197) );
  NAND2_X1 SQ_instance_U1 ( .A1(a1p1[0]), .A2(a1p1[2]), .ZN(SQ_instance_n7) );
  DFF_X1 SQ_instance_FF1_output_reg_0_ ( .D(a0p1[0]), .CK(clk), .Q(
        SQ_instance_a0_r[0]) );
  DFF_X1 SQ_instance_FF1_output_reg_1_ ( .D(a0p1[1]), .CK(clk), .Q(
        SQ_instance_a0_r[1]) );
  DFF_X1 SQ_instance_FF1_output_reg_2_ ( .D(a0p1[2]), .CK(clk), .Q(
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
        .Q(b1p1[0]) );
  DFF_X1 SQ_instance_FF4_output_reg_1_ ( .D(SQ_instance_a1sr1[1]), .CK(clk), 
        .Q(b1p1[1]) );
  DFF_X1 SQ_instance_FF4_output_reg_2_ ( .D(SQ_instance_a1sr1[2]), .CK(clk), 
        .Q(b1p1[2]) );
endmodule

