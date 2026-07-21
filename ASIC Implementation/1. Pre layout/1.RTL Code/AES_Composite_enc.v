`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2022 01:18:55 PM
// Design Name: 
// Module Name: aes_table_enc
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



//================================================ AES_Composite_enc
module AES_Composite_enc
  (Kin, Din, Dout,EN, CLK, RSTn);

   //------------------------------------------------
   input  [127:0] Kin;  // Key input
   input [127:0]  Din;  // Data input
   output [127:0] Dout; // Data output
   input          CLK;  // System clock
   input          RSTn; // Reset (Low active)
   input          EN;
   //------------------------------------------------
   reg [127:0]    dat, rkey;
   wire [127:0]   dat_next, rkey_next;
   reg [9:0]      rnd;  
   reg [7:0]      rcon; 
   reg            sel;  // Indicate final round
  // reg            Dvld, Kvld, BSY;
   wire           rst;
   wire [127:0] sout;
   reg [127:0] seed,cntm;

   //------------------------------------------------
   assign rst = ~RSTn;
     
    
   AES_Core aes_core 
     (.din(dat),  .dout(dat_next),  .kin(rkey_next), .sel(sel), .seed(seed), .sout(sout), .rnd(rnd), .cntm(cntm));
   KeyExpantion keyexpantion 
     (.ki(rkey), .ko(rkey_next), .r(rcon));
   
   always @(posedge CLK or posedge rst) begin
      if (rst)             rnd <= 10'b0000_0000_01;
      else if(EN)          rnd <= {rnd[8:0], rnd[9]};
      else                 rnd <= 10'b0000_0000_01;
   end
   
   always @(posedge CLK or posedge rst) begin
      if (rst)     sel <= 0;
      else if (EN) sel <= rnd[9];
   end
   
   always @(posedge CLK or posedge rst) begin
      if (rst)                 dat <= 128'd0;
      else if (EN) begin
              if (~rnd[0]|sel) dat <= dat_next;
              else             dat <= Din ^ Kin;
      end
   end
   //assign Dout = rnd[0]?dat:128'd0;
   assign Dout = dat;
   
//   always @(posedge CLK or posedge rst) begin
//      if (rst)              key <= Kin;
//      else                  key <= Kin;
//   end

   always @(posedge CLK or posedge rst) begin
      if (rst)            rkey <= 128'd0;
      else if (EN) begin
               if(rnd[0]) rkey <= Kin;
               else       rkey <= rkey_next;
      end 
      end
      
   always @(posedge CLK or posedge rst) begin
     if (rst)          rcon <= 8'h01; 
     else if (~rnd[0] && EN) rcon <= xtime(rcon);
     else              rcon <= 8'h01;
     end 
   
   function [7:0] xtime;
      input [7:0] x;
      xtime = (x[7]==1'b0)? {x[6:0],1'b0} : {x[6:0],1'b0} ^ 8'h1B;
   endfunction
   
//   always@(posedge CLK or posedge rst) begin
//   if(rst) j<=j+1'd1;
//   end
   
//   always@(posedge CLK or posedge rst) begin
//  if(rst)  seed <= 128'h8965963659964636325658963256935;
//  else  if (EN &&(rnd[1] || sel)) seed<=sout;
//   end
 
    always@(posedge CLK or posedge rst) begin
  if(rst)  seed <= 128'h8965963659964636325658963256935;
  else     seed<=sout;
   end
   
   always@(posedge CLK or posedge rst) begin
  if(rst)  cntm <= 128'h6013_6db5_f7b6_7829_c85c_300d_64bd_522e;
    end
   
 endmodule // AES_Composite_enc



//================================================ KeyExpantion
module KeyExpantion (ki, ko, r);
input [127:0] ki;
input [7:0] r;
output [127:0] ko;

wire [31:0] rcon;
wire [31:0] w0,w1,w2,w3,gw31,gw32,gw33;
wire [31:0] W0,W1,W2,W3;

assign rcon={r,24'd0};
assign w0=ki[127:96];
assign w1=ki[95:64];
assign w2=ki[63:32];
assign w3=ki[31:0];

//g-FUNCTION 

//Step-1: 1-bit circular left shift
assign gw31= {w3[23:0],w3[31:24]};  

//Step-2: S-box substitution
    cmt_sbox s1(gw31[31:24],gw32[31:24]);
    cmt_sbox s2(gw31[23:16],gw32[23:16]);
    cmt_sbox s3(gw31[15:8],gw32[15:8]);
    cmt_sbox s4(gw31[7:0],gw32[7:0]);


//Step-3: XOR with Rcon
assign gw33=gw32^rcon;

//key-scheduling
assign W0=gw33^w0;
assign W1=W0^w1;
assign W2=W1^w2;
assign W3=W2^w3;

assign ko={W0,W1,W2,W3};

endmodule // KeyExpantion



//================================================ AES_Core
module AES_Core (din, dout, kin, sel, seed, sout, rnd, cntm);

   //------------------------------------------------
   input  [127:0] din, kin;
   input [127:0] seed, cntm;
   input          sel;
   input  [9:0]   rnd;
   output [127:0] dout;
   output [127:0] sout;
   
   //------------------------------------------------
   wire [7:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15; //inputs to byte-substitution block
   wire [7:0] b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15; //outputs of byte-substitution block
   
   wire [31:0] sb0, sb1, sb2, sb3, // SubBytes
               sr0, sr1, sr2, sr3, // ShiftRows
               sc0, sc1, sc2, sc3, // MixColumns
               sk0, sk1, sk2, sk3, // AddRoundKey
                s0,  s1,  s2,  s3, s4, s5, s6, s7, // seed
                c0,  c1,  c2,  c3, c4, c5, c6, c7; //cm inputs
   //------------------------------------------------
   assign {a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15}=din;
   
//   assign c0 = (rnd[1] | sel)?cntm[127:96]:c0;
//   assign c1 = (rnd[1] | sel)?cntm[ 95:64]:c1;
//   assign c2 = (rnd[1] | sel)?cntm[ 63:32]:c2;
//   assign c3 = (rnd[1] | sel)?cntm[ 31: 0]:c3;
//   //seed
//   assign s0 = (rnd[1] | sel)?seed[127:96]:s0;
//   assign s1 = (rnd[1] | sel)?seed[ 95:64]:s1;
//   assign s2 = (rnd[1] | sel)?seed[ 63:32]:s2;
//   assign s3 = (rnd[1] | sel)?seed[ 31: 0]:s3;
   
   assign c0 = cntm[127:96];
   assign c1 = cntm[ 95:64];
   assign c2 = cntm[ 63:32];
   assign c3 = cntm[ 31: 0];
   //seed
   assign s0 = seed[127:96];
   assign s1 = seed[ 95:64];
   assign s2 = seed[ 63:32];
   assign s3 = seed[ 31: 0];
   
   // SubBytes
    cmt_sbox f1(a0,b0);
    cmt_sbox f2(a1,b1);
    cmt_sbox f3(a2,b2);
    cmt_sbox f4(a3,b3);
    cmt_sbox f5(a4,b4);
    cmt_sbox f6(a5,b5);
    cmt_sbox f7(a6,b6);
    cmt_sbox f8(a7,b7);
    cmt_sbox f9(a8,b8);
    cmt_sbox f10(a9,b9);
    cmt_sbox f11(a10,b10);
    cmt_sbox f12(a11,b11);
    cmt_sbox f13(a12,b12);
    cmt_sbox f14(a13,b13);
    cmt_sbox f15(a14,b14);
    cmt_sbox f16(a15,b15);
   
   // Counter-measure Block
//   cm cm1(c0,s0,sout[255:224]);
//   cm cm2(c1,s1,sout[223:192]);
//   cm cm3(c2,s2,sout[191:160]);
//   cm cm4(c3,s3,sout[159:128]);
//   cm cm5(c4,s4,sout[127:96]);
//   cm cm6(c5,s5,sout[95:64]);
//   cm cm7(c6,s6,sout[63:32]);
//   cm cm8(c7,s7,sout[31:0]);

   cm cm1(c0,s0,sout[127:96]);
   cm cm2(c1,s1,sout[95:64]);
   cm cm3(c2,s2,sout[63:32]);
   cm cm4(c3,s3,sout[31:0]); 
     
   assign {sb0,sb1,sb2,sb3}={b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15};

   // ShiftRows
   assign sr0 = {sb0[31:24], sb1[23:16], sb2[15: 8], sb3[ 7: 0]};
   assign sr1 = {sb1[31:24], sb2[23:16], sb3[15: 8], sb0[ 7: 0]};
   assign sr2 = {sb2[31:24], sb3[23:16], sb0[15: 8], sb1[ 7: 0]};
   assign sr3 = {sb3[31:24], sb0[23:16], sb1[15: 8], sb2[ 7: 0]};

   // MixColumns
   MixColumns MC0 (sr0, sc0);
   MixColumns MC1 (sr1, sc1);
   MixColumns MC2 (sr2, sc2);
   MixColumns MC3 (sr3, sc3);

   // AddRoundKey
   assign sk0 = (sel) ? sr0 ^ kin[127:96] : sc0 ^ kin[127:96];
   assign sk1 = (sel) ? sr1 ^ kin[ 95:64] : sc1 ^ kin[ 95:64];
   assign sk2 = (sel) ? sr2 ^ kin[ 63:32] : sc2 ^ kin[ 63:32];
   assign sk3 = (sel) ? sr3 ^ kin[ 31: 0] : sc3 ^ kin[ 31: 0];

   // state -> dout
   assign dout = {sk0, sk1, sk2, sk3};
endmodule // AES_Core


//********************************************************************************************************************
// Countermeasure Block
//module cm(a,s,b);
//input [31:0] a,s;
//output [31:0] b;

//wire [255:0] a1,b1,sd;

//expansion e1(a,a1); // expanded to 32 bits
//expansion e2(s,sd);
//pseudo_fib dut2(a1,sd,b1);
//compression dut3(b1,sd,b);

//endmodule

//module expansion(x,y);
//input [31:0] x;
//output [255:0] y;
//wire [31:0] x1;
//wire [63:0] x2,x3;
//wire [127:0] x4,x5;

////Expansion 
//assign x1[0]=x[0];
//assign x1[15:1]=x[15:1]^x[14:0];
//assign x1[31:16]=x[31:16]^x[30:15];

//assign x2={x1,x};

//assign x3[0]=x2[0];
//assign x3[15:1]=x2[15:1]^x2[14:0];
//assign x3[31:16]=x2[31:16]^x2[30:15];
//assign x3[47:32]=x2[47:32]^x2[46:31];
//assign x3[63:48]=x2[63:48]^x2[62:47];

//assign x4 = {x2,x3};

//assign x5[0]=x4[0];
//assign x5[15:1]=x4[15:1]^x4[14:0];
//assign x5[31:16]=x4[31:16]^x4[30:15];
//assign x5[47:32]=x4[47:32]^x4[46:31];
//assign x5[63:48]=x4[63:48]^x4[62:47];
//assign x5[79:64]=x4[79:64]^x4[78:63];
//assign x5[95:80]=x4[95:80]^x4[94:79];
//assign x5[111:96]=x4[111:96]^x4[110:95];
//assign x5[127:112]=x4[127:112]^x4[126:111];

//assign y={x4,x5};
//endmodule

//module pseudo_fib(p,s,q);
//input [255:0] p,s;
//output [255:0] q;

//wire [255:0] p1;
 
//noninv uut1(p[15:0],p1[15:0]);
//noninv uut2(p[31:16],p1[31:16]);
//noninv uut3(p[47:32],p1[47:32]);
//noninv uut4(p[63:48],p1[63:48]);
//noninv uut5(p[79:64],p1[79:64]);
//noninv uut6(p[95:80],p1[95:80]);
//noninv uut7(p[111:96],p1[111:96]);
//noninv uut8(p[127:112],p1[127:112]);
//noninv uut9(p[143:128],p1[143:128]);
//noninv uut10(p[159:144],p1[159:144]);
//noninv uut11(p[175:160],p1[175:160]);
//noninv uut12(p[191:176],p1[191:176]);
//noninv uut13(p[207:192],p1[207:192]);
//noninv uut14(p[223:208],p1[223:208]);
//noninv uut15(p[239:224],p1[239:224]);
//noninv uut16(p[255:240],p1[255:240]);

//assign q[255:224]=s[223:192]^p1[191:160];
//assign q[223:192]=s[191:160]^p1[159:128];
//assign q[191:160]=s[159:128]^p1[127:96];
//assign q[159:128]=s[127:96]^p1[95:64];
//assign q[127:96]=s[95:64]^p1[63:32];
//assign q[95:64]=s[63:32]^p1[31:0];
//assign q[63:32]=s[31:0]^p1[255:224];
//assign q[31:0]=s[255:224]^p1[223:192];
//endmodule

//    module noninv(y,z);
//    input [15:0] y;
//    output reg [15:0] z;
    
//    reg [11:0] y1;
    
//    always@(y)
//    begin
//     y1=y[11:0]^(12'b111111111101);
//     z={y1[11:0],4'd0};
//    end
//    endmodule

////Compression
//module compression(o,s,p);
//input [255:0] o,s;
//output reg [31:0] p;
//integer i;
//wire [255:0] o1;
//wire [127:0] o2;

//assign o1={o[5:0],o[249:6],o[255:250]};
//assign o2=s[191:64]^o1[127:0];

//    always@(o2) begin
//    for(i=0;i<32;i=i+1)
//    p[i]=s[i>>8]^o2[i>>4];
//    end
//endmodule

// Countermeasure Block
module cm(a,s,b);
input [31:0] a,s;
output [31:0] b;

wire [127:0] a1,b1,sd;

expansion e1(a,a1); // expanded to 32 bits
expansion e2(s,sd);
pseudo_fib dut2(a1,sd,b1);
compression dut3(b1,sd,b);

endmodule

module expansion(x,y);
input [31:0] x;
output [127:0] y;
wire [31:0] x1;
wire [63:0] x2,x3;

//Expansion 
assign x1[0]=x[0];
assign x1[15:1]=x[15:1]^x[14:0];
assign x1[31:16]=x[31:16]^x[30:15];

assign x2={x1,x};

assign x3[0]=x2[0];
assign x3[15:1]=x2[15:1]^x2[14:0];
assign x3[31:16]=x2[31:16]^x2[30:15];
assign x3[47:32]=x2[47:32]^x2[46:31];
assign x3[63:48]=x2[63:48]^x2[62:47];

assign y = {x2,x3};

endmodule

module pseudo_fib(p,s,q);
input [127:0] p,s;
output [127:0] q;

wire [127:0] p1; 
noninv uut1(p[15:0],p1[15:0]);
noninv uut2(p[31:16],p1[31:16]);
noninv uut3(p[47:32],p1[47:32]);
noninv uut4(p[63:48],p1[63:48]);
noninv uut5(p[79:64],p1[79:64]);
noninv uut6(p[95:80],p1[95:80]);
noninv uut7(p[111:96],p1[111:96]);
noninv uut8(p[127:112],p1[127:112]);

assign q[127:96]=s[95:64]^p1[63:32];
assign q[95:64]=s[63:32]^p1[31:0];
assign q[63:32]=s[31:0]^p1[127:96];
assign q[31:0]=s[127:96]^p1[95:64];
endmodule

module noninv(y,z);
input [15:0] y;
output reg [15:0] z;

always@(y)
begin
 z={y[11:0],4'd0};
end
endmodule

//Compression
module compression(o,s,p);
input [127:0] o,s;
output reg [31:0] p;
integer i;
wire [127:0] o1;
wire [63:0] o2;

assign o1={o[5:0],o[127:6]};
assign o2=s[127:64]^o1[63:0];

always@(o2) begin
for(i=0;i<32;i=i+1)
p[i]=o2[2*i];
end
endmodule
//================================================ MixColumns
module MixColumns(x, y);

   //------------------------------------------------
   input  [31:0]  x;
   output [31:0]  y;

   //------------------------------------------------
   wire [7:0]    a0, a1, a2, a3;
   wire [7:0]    b0, b1, b2, b3;

   assign a0 = x[31:24];
   assign a1 = x[23:16];
   assign a2 = x[15: 8];
   assign a3 = x[ 7: 0];

   assign b0 = xtime(a0);
   assign b1 = xtime(a1);
   assign b2 = xtime(a2);
   assign b3 = xtime(a3);

   assign y[31:24] =    b0 ^ a1^b1 ^ a2    ^ a3;
   assign y[23:16] = a0        ^b1 ^ a2^b2 ^ a3;
   assign y[15: 8] = a0    ^ a1        ^b2 ^ a3^b3;
   assign y[ 7: 0] = a0^b0 ^ a1    ^ a2        ^b3;
  
   function [7:0] xtime;
      input [7:0] x;
      xtime = (x[7]==1'b0)? {x[6:0],1'b0} : {x[6:0],1'b0} ^ 8'h1B;
   endfunction
   
endmodule // MixColumns

   

//================================================ SubBytes
//module SubBytes (x, y);

//   //------------------------------------------------
//   input  [31:0] x;
//   output [31:0] y;

//   //------------------------------------------------
//   wire [31:0] 	s;

//   //------------------------------------------------
//   GF_MULINV_8 u3 (.x(x[31:24]), .y(s[31:24]));
//   GF_MULINV_8 u2 (.x(x[23:16]), .y(s[23:16]));
//   GF_MULINV_8 u1 (.x(x[15: 8]), .y(s[15: 8]));
//   GF_MULINV_8 u0 (.x(x[ 7: 0]), .y(s[ 7: 0]));
 
//   assign y = {mat_at(s[31:24]), mat_at(s[23:16]), 
//	       mat_at(s[15: 8]), mat_at(s[ 7: 0])};
    
//   //------------------------------------------------ Affine matrix
//   function [7:0] mat_at;
//      input [7:0] x;
//      begin
//	 mat_at[0] = ~(x[7] ^ x[6] ^ x[5] ^ x[4] ^ x[0]);
//	 mat_at[1] = ~(x[7] ^ x[6] ^ x[5] ^ x[1] ^ x[0]);
//	 mat_at[2] =   x[7] ^ x[6] ^ x[2] ^ x[1] ^ x[0];
//	 mat_at[3] =   x[7] ^ x[3] ^ x[2] ^ x[1] ^ x[0];
//	 mat_at[4] =   x[4] ^ x[3] ^ x[2] ^ x[1] ^ x[0];
//	 mat_at[5] = ~(x[5] ^ x[4] ^ x[3] ^ x[2] ^ x[1]);
//	 mat_at[6] = ~(x[6] ^ x[5] ^ x[4] ^ x[3] ^ x[2]);
//	 mat_at[7] =   x[7] ^ x[6] ^ x[5] ^ x[4] ^ x[3];
//      end
//   endfunction
//endmodule // SubBytes



///*-------------------------------------------------------------------------
// Thanks for great works of pioneers!
// This code is developed by refering following papers.
//  [1] A.Satoh, S.Morioka, K.Takano, S.Munetoh, "A compact Rijndael Hardware Architecture with S-box Optimization," ASIACRYPT 2001, LNCS 2248, pp.239-254, 2001.
//  [2] D. Canright, "A Very Compact Rijndael S-box," 2005.
//  [3] Edwin NC Mui, "Practical Implementation of Rijndael S-Box Using Combinational Logic," 2007.
 
// Following paper may help to find different polynomials.
//  [1] N.Mentens, L.Batina, B.Preneel, I.Vervauwhede, "A Systematic Evaluation of Compact Hardware Implementations for the Rijndael S-Box," LNCS 3376, pp.323-333, 2005.
//-------------------------------------------------------------------------*/

////================================================ GF_MULINV_8
//module GF_MULINV_8 (x, y);

//   //------------------------------------------------
//   input  [7:0] x;
//   output [7:0] y;
   
//   //------------------------------------------------
//   wire [7:0] 	xt, yt;
//   wire [3:0] 	g1, g0, g1_g0, p, pi;
   
//   //------------------------------------------------
//   // GF(2^8) -> GF(2^2^2) transform
//   assign xt = mat_x(x);

//   // Multipricative inversion in GF(2^2^2)
//   assign {g1, g0} = xt;
//   assign g1_g0    = g1 ^ g0;

//   assign p = gf_mul4_lambda(gf_sq4(g1)) ^ gf_mul4(g1_g0, g0);
//   GF_MULINV_4 u0 (p, pi);
   
//   assign yt[7:4]  = gf_mul4(g1, pi);
//   assign yt[3:0]  = gf_mul4(g1_g0, pi);
   
//   // GF(2^2^2) -> GF(2^8) inverse transform
//   assign y = mat_xi(yt);
	     
//   //------------------------------------------------ 
//   // Isomorphism matrix (lambda = 4'b1100, phi = 2'b10)
//   function [7:0] mat_x;
//      input [7:0] x;
//      begin
//	 mat_x[7] =  x[7]        ^ x[5];
//	 mat_x[6] =  x[7] ^ x[6]        ^ x[4] ^ x[3] ^ x[2] ^ x[1];
//	 mat_x[5] =  x[7]        ^ x[5]        ^ x[3] ^ x[2];
//	 mat_x[4] =  x[7]        ^ x[5]        ^ x[3] ^ x[2] ^ x[1];
//	 mat_x[3] =  x[7] ^ x[6]                      ^ x[2] ^ x[1];
//	 mat_x[2] =  x[7]               ^ x[4] ^ x[3] ^ x[2] ^ x[1];
//	 mat_x[1] =         x[6]        ^ x[4]               ^ x[1];
//	 mat_x[0] =         x[6]                             ^ x[1] ^ x[0];
//      end
//   endfunction
      
//   function [7:0] mat_xi;
//      input [7:0] x;
//      begin
//	 mat_xi[7] =  x[7] ^ x[6] ^ x[5]                      ^ x[1];
//	 mat_xi[6] =         x[6]                      ^ x[2];
//	 mat_xi[5] =         x[6] ^ x[5]                      ^ x[1];
//	 mat_xi[4] =         x[6] ^ x[5] ^ x[4]        ^ x[2] ^ x[1];
//	 mat_xi[3] =                x[5] ^ x[4] ^ x[3] ^ x[2] ^ x[1];
//	 mat_xi[2] =  x[7]               ^ x[4] ^ x[3] ^ x[2] ^ x[1];
//	 mat_xi[1] =                x[5] ^ x[4];
//	 mat_xi[0] =         x[6] ^ x[5] ^ x[4]        ^ x[2]        ^ x[0];
//      end
//   endfunction
   
//   //------------------------------------------------ Square 
//   function [3:0] gf_sq4;
//      input [3:0] x;
//      begin
//	 gf_sq4[0] = x[3] ^ x[1] ^ x[0];
//	 gf_sq4[1] = x[2] ^ x[1];
//	 gf_sq4[2] = x[3] ^ x[2];
//	 gf_sq4[3] = x[3];      
//      end
//   endfunction // gf_sq4

//   //------------------------------------------------ Multiply
//   function [3:0] gf_mul4;
//      input [3:0] x, y;
//      begin
//	 gf_mul4[3] = x[3]&y[3] ^ x[3]&y[1] ^ x[1]&y[3] ^ 
//		      x[2]&y[3] ^ x[2]&y[1] ^ x[0]&y[3] ^
//		      x[3]&y[2] ^ x[3]&y[0] ^ x[1]&y[2];
	 
//	 gf_mul4[2] = x[3]&y[3] ^ x[3]&y[1] ^ x[1]&y[3] ^
//		      x[2]&y[2] ^ x[2]&y[0] ^ x[0]&y[2];
	 
//	 gf_mul4[1] = x[2]&y[3] ^ x[3]&y[2] ^ x[2]&y[2]^
//		      x[1]&y[1] ^ x[0]&y[1] ^ x[1]&y[0];
	 
//	 gf_mul4[0] = x[3]&y[3] ^ x[2]&y[3] ^ x[3]&y[2]^
//		      x[1]&y[1] ^ x[0]&y[0];   
//      end
//   endfunction

//   // lambda = 4'b1100
//   function [3:0] gf_mul4_lambda;
//      input [3:0] x;
//      begin
//	 gf_mul4_lambda[3] = x[2] ^ x[0];
//	 gf_mul4_lambda[2] = x[3] ^ x[2] ^ x[1] ^ x[0];
//	 gf_mul4_lambda[1] = x[3];
//	 gf_mul4_lambda[0] = x[2];
//      end
//   endfunction

//endmodule // GF_MULINV_8



////================================================ GF_MULINV_4
//module GF_MULINV_4 (x, y);

//   //------------------------------------------------
//   input  [3:0] x;
//   output [3:0] y;
   
//   //------------------------------------------------
//   wire [1:0] 	g1, g0, g1_g0, p, pi;

   
//   //------------------------------------------------
//   // Multipricative inversion in GF(2^2)
//   assign {g1, g0} = x;
//   assign g1_g0    = g1 ^ g0;

//   assign p        = gf_mul2_phi(gf_sq2(g1)) ^ gf_mul2(g1_g0, g0);
//   assign pi       = gf_inv2(p);

//   assign y[3:2]   = gf_mul2(g1, pi);
//   assign y[1:0]   = gf_mul2(g1_g0, pi);
   
//   //------------------------------------------------ Square
//   function [1:0] gf_sq2;
//      input [1:0] x;
//      begin
//	 gf_sq2[1] = x[1];
//	 gf_sq2[0] = x[1] ^ x[0];
//      end
//   endfunction // case

//   //------------------------------------------------ Multiply
//   function [1:0] gf_mul2;
//      input [1:0] x, y;
//      begin
//	 gf_mul2[1] = x[1]&y[1] ^ x[0]&y[1] ^ x[1]&y[0];
//	 gf_mul2[0] = x[1]&y[1] ^ x[0]&y[0];
//      end
//   endfunction // case

//   // phi = 2'b10
//   function [1:0] gf_mul2_phi;
//      input [1:0] x;
//      begin
//	 gf_mul2_phi[1] = x[1] ^ x[0];
//	 gf_mul2_phi[0] = x[1];
//      end
//   endfunction // case

//   //------------------------------------------------ Multiplicative inversion
//   function [1:0] gf_inv2;
//      input [1:0] x;
//      begin
//	 gf_inv2[1] = x[1];
//	 gf_inv2[0] = x[1] ^ x[0];
//      end
//   endfunction // case
//endmodule // GF_MULINV4

// Maximov's S-Box
module cmt_sbox(t,a);
input [7:0] t;
output [7:0] a;
wire U0,U1,U2,U3,U4,U5,U6,U7;
wire R0,R1,R2,R3,R4,R5,R6,R7;

wire T20, T21, T22, T10, T11, T12, T13, T0, T1, T2, T3, T4;

wire Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17;

wire X0, X1, X2, X3;

wire Y0, Y1, Y2, Y3, Y00, Y01, Y02, Y13, Y23;
 
wire N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15, N16, N17;

wire Z24, Z66;

wire H0, H1, H2, H3, H4, H5, H6, H7, H8, H9, H10, H11, H12, H13, H14, H15, H16, H17, H18;

assign U0 = t[7];
assign U1 = t[6];
assign U2 = t[5];
assign U3 = t[4];
assign U4 = t[3];
assign U5 = t[2];
assign U6 = t[1];
assign U7 = t[0];



// File: ftop.b
assign Z24 = U3 ^ U4;
assign Q17 = U1 ^ U7;
assign Q16 = U5 ^ Q17;
assign Q0 = Z24 ^ Q16;
assign Z66 = U1 ^ U6;
assign Q7 = Z24 ^ Z66;
assign Q2 = U2 ^ Q0;
assign Q1 = Q7 ^ Q2;
assign Q3 = U0 ^ Q7;
assign Q4 = U0 ^ Q2;
assign Q5 = U1 ^ Q4;
assign Q6 = U2 ^ U3;
assign Q10 = Q6 ^ Q7;
assign Q8 = U0 ^ Q10;
assign Q9 = Q8 ^ Q2;
assign Q12 = Z24 ^ Q17;
assign Q15 = U7 ^ Q4;
assign Q13 = Z24 ^ Q15;
assign Q14 = Q15 ^ Q0;
assign Q11 = U5;



// File: mulx.a
assign T20 = ~(Q6 & Q12);
assign T21 = ~(Q3 & Q14);
assign T22 = ~(Q1 & Q16);
assign T10 = ((~(Q3 | Q14)) ^ (~(Q0 & Q7)));
assign T11 = ((~(Q4 | Q13)) ^ (~(Q10 & Q11)));
assign T12 = ((~(Q2 | Q17)) ^ (~(Q5 & Q9)));
assign T13 = ((~(Q8 | Q15)) ^ (~(Q2 & Q17)));
assign X0 = T10 ^ (T20 ^ T22);
assign X1 = T11 ^ (T21 ^ T20);
assign X2 = T12 ^ (T21 ^ T22);
assign X3 = T13 ^ (T21 ^ (~(Q4 & Q13)));

//File: inv.a
assign T0 = (~(X0 & X2));
assign T1 = (~(X1 | X3));
assign T2 = T0 ~^ T1;
assign Y0 = X2? T2 : X3; //Y0 = MUX(X2, T2, X3)
assign Y2 = X0? T2 : X1;//Y2 = MUX(X0, T2, X1)
assign T3 = X1? X2 : 1; //T3 = MUX(X1, X2, 1)
assign Y1 = T2? X3 : T3;//Y1 = MUX(T2, X3, T3)
assign T4 = X3? X0 : 1; //T4 = MUX(X3, X0, 1)
assign Y3 = T2 ? X1 : T4;//Y3 = MUX(T2, X1, T4)

//# File: s0.a
//@inv.a
assign Y02 = Y2 ^ Y0;
assign Y13 = Y3 ^ Y1;
assign Y23 = Y3 ^ Y2;
assign Y01 = Y1 ^ Y0;
assign Y00 = Y02 ^ Y13;

//# File: muln.a
assign N0 = (~(Y01 &  Q11));
assign N1 = (~(Y0  &  Q12));
assign N2 = (~(Y1  &  Q0));
assign N3 = (~(Y23 &  Q17));
assign N4 = (~(Y2  &  Q5));
assign N5 = (~(Y3  &  Q15));
assign N6 = (~(Y13 &  Q14));
assign N7 = (~(Y00 &  Q16));
assign N8 = (~(Y02 &  Q13));
assign N9 = (~(Y01 &  Q7));
assign N10 = (~(Y0 &  Q10));
assign N11 = (~(Y1 &  Q6));
assign N12 = (~(Y23 &  Q2));
assign N13 = (~(Y2  &  Q9));
assign N14 = (~(Y3  &  Q8));
assign N15 = (~(Y13 &  Q3));
assign N16 = (~(Y00 &  Q1));
assign N17 = (~(Y02 &  Q4));

//# File: fbot.b
assign H0 = N1 ^ N5;
assign H1 = N4 ^ H0;
assign R2 = N2 ~^ H1;
assign H2 = N9 ^ N15;
assign H3 = N11 ^ N17;
assign R6 = H2 ~^ H3;
assign H4 = N11 ^ N14;
assign H5 = N9 ^ N12;
assign R5 = H4 ^ H5;
assign H6 = N16 ^ H2;
assign H7 = R2 ^ R6;
assign H8 = N10 ^ H7;
assign R7 = H6 ~^ H8;
assign H9 = N8 ^ H1;
assign H10 = N13 ^ H8;
assign R3 = H5 ^ H10;
assign H11 = H9 ^ H10;
assign H12 = N7 ^ H11;
assign H13 = H4 ^ H12;
assign R4 = N1 ^ H13;
assign H14 = N0 ~^ R7;
assign H15 = H9 ^ H14;
assign H16 = H7 ^ H15;
assign R1 = N6 ~^ H16;
assign H17 = N4 ^ H14;
assign H18 = N3 ^ H17;
assign R0 = H13 ^ H18;

assign a[7] = R0;
assign a[6] = R1;
assign a[5] = R2;
assign a[4] = R3;
assign a[3] = R4;
assign a[2] = R5;
assign a[1] = R6;
assign a[0] = R7;

endmodule