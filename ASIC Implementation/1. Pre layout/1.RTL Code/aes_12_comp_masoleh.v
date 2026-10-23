`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2023 06:29:04 PM
// Design Name: 
// Module Name: aes_12_comp
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


`timescale 1ns / 1ps

module aes_12_comp_masoleh(in,key,clk,rst,out);
input [127:0] in,key; // plain text and key
input clk,rst;
output [127:0] out; // cipher text

reg [11:0] i; //counter
reg [127:0] din,kin;
reg [7:0] x;
wire [7:0] r;
wire [127:0] dout,kout;

//Instantiations
aes_core dut1(din,kout,i[10],dout);
key_gen dut2(kin,r,kout);
//aes_fsm dut3(clk,rst,i);

//Input 
always@(posedge(clk))
 begin
  if(rst) din<=128'd0;
  else begin if(i[0]==1)  din<=in^key;   else  din<=dout; end
 end
 
//Key 
always@(posedge(clk))
 begin
  if(rst)  kin<=128'd0;
  else begin if(i[0]==1)  kin<=key;    else kin<=kout;  end
 end
  
 //Rcons generation 
assign r=(rst || i[1]==1)?8'b0000_0001:x;
 
  //Function for Rcons 
always@(posedge(clk))
 begin
  if(rst) x<=8'b0000_0001; else x<=(r[7]==0)?{r[6:0],1'b0}:{r[6:0],1'b0}^8'h1B;  
 end

always@(posedge(clk))
 begin
  if(rst) i<=12'b000000_000001;
  else i<={i[10:0],i[11]};
 end

  //Output 
assign out=din;
 
endmodule

//************************************************************************************************

module aes_core(din,k,s,dout);
input [127:0] din,k;
input s;
output [127:0] dout;

wire [7:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15; //inputs to byte-substitution block
wire [7:0] b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15; //outputs of byte-substitution block

wire [127:0] rx; //input to row-shift block
wire [127:0] rs; //output after row-shift
wire [31:0] mx0,mx1,mx2,mx3; //input to mix-column block
wire [31:0] my0,my1,my2,my3; //output of mix-column block

// S-BOX (BYTE SUBSTITUTION MODULE)
Newlight_sbox f1(a0,b0);
Newlight_sbox f2(a1,b1);
Newlight_sbox f3(a2,b2);
Newlight_sbox f4(a3,b3);
Newlight_sbox f5(a4,b4);
Newlight_sbox f6(a5,b5);
Newlight_sbox f7(a6,b6);
Newlight_sbox f8(a7,b7);
Newlight_sbox f9(a8,b8);
Newlight_sbox f10(a9,b9);
Newlight_sbox f11(a10,b10);
Newlight_sbox f12(a11,b11);
Newlight_sbox f13(a12,b12);
Newlight_sbox f14(a13,b13);
Newlight_sbox f15(a14,b14);
Newlight_sbox f16(a15,b15);

//ROW-SHIFT MODULE
row_shift f17(rx,rs);

//MIX-COLUMN MODULE
mixcol f18(mx0,my0);
mixcol f19(mx1,my1);
mixcol f20(mx2,my2);
mixcol f21(mx3,my3);

wire [127:0] w;

assign w=din;
// (STEP-1: Byte Substitution)
assign {a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15}=w;

// (STEP-2: Row Shift Operation)
assign rx={b0,b1,b2,b3,b4,b5,b6,b7,b8,b9,b10,b11,b12,b13,b14,b15};

// (STEP-3: Mix Column Operation)
assign {mx0,mx1,mx2,mx3}=rs;

assign dout=(s==0)?{my0,my1,my2,my3}^k:rs^k;
endmodule

//**********************************************************************************************

/*module aes_fsm(clk,rst,count);
input clk,rst;
output reg [11:0] count;

reg [1:0] ps,ns;
parameter s0=2'b00, s1=2'b01, s2=2'b10, s3=2'b11;

//Present State logic  
always@(posedge(clk))
 begin
  if(rst) ps<=s0;
  else ps<=ns;
  end
 
//Next State Logic 
always@(*)
 begin
 case(ps)
 s0: begin
     ns=s1;
     end
 s1: begin
     if(count[10]==0)  ns=s2;
     else  ns=s0;
     end
 s2: begin
     ns=s1;
     end
 default: begin
          ns=s0;
          end
 endcase
 end
 
 //counter logic
 always@(posedge(clk))
 begin
  if(rst) count<=12'b000000_000001;
  else if(ns) count<={count[10:0],count[11]};
 end
endmodule*/

//********************************************************************************************

module key_gen(ki,r,ko);
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
Newlight_sbox s1(gw31[31:24],gw32[31:24]);
Newlight_sbox s2(gw31[23:16],gw32[23:16]);
Newlight_sbox s3(gw31[15:8],gw32[15:8]);
Newlight_sbox s4(gw31[7:0],gw32[7:0]);


//Step-3: XOR with Rcon
assign gw33=gw32^rcon;

//key-scheduling
assign W0=gw33^w0;
assign W1=W0^w1;
assign W2=W1^w2;
assign W3=W2^w3;

assign ko={W0,W1,W2,W3};

endmodule

//***********************************************************************************************
// Masoleh S-Box

module Newlight_sbox( input [7:0] g,
                      output [7:0] s
    );
    
wire y1,y2,y3,y4,y5,y6,y7,y8,y9,y10,y11,y12,y13,y14,y15,y16,y17,y18;
wire l1,l2,l3,l4;
wire x1,x2,x3,x4;
wire r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;

In_tf m1 (.g(g),.a0(y1),.a1(y2),.a2(y3),.a3(y4),.b0(y5),.b1(y6),.b2(y7),.b3(y8),
          .a01(y9),.a02(y10),.a13(y11),.a23(y12),.ap(y13),.b01(y14),.b02(y15),.b13(y16),.b23(y17),.bp(y18)   );
          
expo_comp m2 (.a0(y1) ,.a1(y2),.a2(y3),.a3(y4),.b0(y5),.b1(y6),.b2(y7),.b3(y8),
           .a01(y9),.a02(y10),.a13(y11),.a23(y12),.ap(y13),.b01(y14),.b02(y15),.b13(y16),.b23(y17),.bp(y18),.d0(l1),.d1(l2),.d2(l3),.d3(l4));
Inv_4 m3 (   .d0(l1),.d1(l2),.d2(l3),.d3(l4),.e0(x1),.e1(x2),.e2(x3),.e3(x4)  );
mul_out m4 ( .e0(x1),.e1(x2),.e2(x3),.e3(x4),.a0(y1),.a1(y2),.a2(y3),.a3(y4),.b0(y5),.b1(y6),.b2(y7),.b3(y8),
             .a01(y9),.a02(y10),.a13(y11),.a23(y12),.ap(y13),.b01(y14),.b02(y15),.b13(y16),.b23(y17),.bp(y18),
             .w0(r1),.w1(r2),.w2(r3),.w3(r4),.w4(r5),.w5(r6),.z0(r7),.z1(r8),.z2(r9),.z3(r10),.z4(r11),.z5(r12) );
out_tf m5 (  .w0(r1),.w1(r2),.w2(r3),.w3(r4),.w4(r5),.w5(r6),.z0(r7),.z1(r8),.z2(r9),.z3(r10),.z4(r11),.z5(r12),.s(s));            
             
endmodule

module expo_comp( input a0,a1,a2,a3,b0,b1,b2,b3,a01,a02,a13,a23,ap,b01,b02,b13,b23,bp,
                  output d0,d1,d2,d3  );


assign d0 = ~(a01&b01)^(~(a02&b02))^(~(a0&b0))^(~(a13|b13));
assign d1 = ~(a01&b01)^(~(a02|b02))^(~(a1&b1))^(~(ap&bp));
assign d2 = ~(a2|b2)^(~(a13&b13))^(~(a23&b23))^(~(a02&b02));
assign d3 = ~(a3&b3)^(~(ap&bp))^(~(a23|b23))^(~(a02&b02));                 
endmodule


module In_tf(input [7:0] g,
             output a0,a1,a2,a3,b0,b1,b2,b3,
             output a01,a02,a13,a23,ap,b01,b02,b13,b23,bp
             );
             wire t0,t1;
assign a0 = b3^g[4];
assign a1 = a13^a3;
assign a2 = b3^g[7];
assign a3 = b3^g[1];

assign b0 = g[0];
assign b1 = b01^g[0];
assign b2 = b0^b02;
assign b3 = b23^b2;

assign a01 = a23^ap;
assign a02 = g[7]^g[4];
assign a13 = g[7]^g[2];
assign a23 = g[7]^g[1];
assign ap = g[4]^g[2];

assign b01 = t0^a01;
assign b02 = t1^g[6];
assign b13 = b02^bp;
assign b23 = t1^g[5];
assign bp = b23^b01;

assign t0 = g[3]^g[2];
assign t1 = t0^g[1]; 

endmodule


module Inv_4( input d0,d1,d2,d3,
              output e0,e1,e2,e3 );
   assign e0 = d3&(d0^d1) | d2&((~d0)|d3);
   assign e1 = (~d2)&d3&(d0^~d1) | d2&(d1|(~d3));           
   assign e2 = d1&(d2^d3) | d0&((~d2)|d1);   
   assign e3 = (~d0)&d1&(d2^~d3) | d0&(d3 | (~d1));       
endmodule

module mul_out( input a0,a1,a2,a3,b0,b1,b2,b3,a01,a02,a13,a23,ap,b01,b02,b13,b23,bp,
                      e0,e1,e2,e3,
                output w0,w1,w2,w3,w4,w5,
                output z0,z1,z2,z3,z4,z5      
    );
  wire e02,e13;

assign  e02 = e0^e2;
assign  e13 = e1^e3;

assign w0 = ~(b1&e0)^(~(b01&e1)); 
assign w1 = ~(b0&e1)^(~(b01&e0));
assign w2 = ~(b3&e2)^(~(b23&e3));
assign w3 = ~(b2&e3)^(~(b23&e2));
assign w4 = ~(b13&e13)^(~(b02&e02));
assign w5 = ~(bp&e13)^(~(b13&e02));

assign z0 = ~(a1&e0)^(~(a01&e1));
assign z1 = ~(a0&e1)^(~(a01&e0));
assign z2 = ~(a3&e2)^(~(a23&e3));
assign z3 = ~(a2&e3)^(~(a23&e2));
assign z4 = ~(a13&e13)^(~(a02&e02));
assign z5 = ~(ap&e13)^(~(a13&e02));   
endmodule


module out_tf( input w0,w1,w2,w3,w4,w5,
               input z0,z1,z2,z3,z4,z5,
               output [7:0] s
                                         );
 wire t2,t3,t4,t5,t6;                                        
  
 assign t2 = w3^z1^z5;                                        
 assign t3 = w0^w2;
 assign t4 = w3^w5;
 assign t5 = w0^w4;  
 assign t6 = t5^z2;
 
 assign s[7] = t2^w5;
 assign s[6] = t4^~s[4];
 assign s[5] = t6^~z4;
 assign s[4] = t2^w1;
 assign s[3] = t3^s[4];
 assign s[2] = t6^z0^s[7];
 assign s[1] = t5^t4^s[0];
 assign s[0] = ~(t3^z3^z5);
                                      
endmodule

// **********************************************************************************************
//***********************************************************************************************

module row_shift(sb,rs);
input [127:0] sb;
output reg [127:0] rs;

always@(sb)
begin
             //Bytes-1,5,9,13 have no row shift
       rs[127:120] = sb[127:120]; // byte-1
       rs[119:112] = sb[87:80]; // new byte-2 
       rs[111:104] = sb[47:40]; // new byte-3
       rs[103:96]  = sb[7:0];   // new byte-4
             
       rs[95:88]   = sb[95:88]; // byte-5
       rs[87:80]   = sb[55:48]; // new byte-6
       rs[79:72]   = sb[15:8];  // new byte-7
       rs[71:64]   = sb[103:96];// new byte-8
             
       rs[63:56]   = sb[63:56]; // byte-9
       rs[55:48]   = sb[23:16]; // new byte-10
       rs[47:40]   = sb[111:104];// new byte-11
       rs[39:32]   = sb[71:64]; // new byte-12
             
       rs[31:24]   = sb[31:24]; // byte-13
       rs[23:16]   = sb[119:112]; // new byte-14
       rs[15:8]    = sb[79:72]; // new byte-15
       rs[7:0]     = sb[39:32]; // new byte-16 
end                 
endmodule

//********************************************************************************************

module mixcol(x,y);
input [31:0] x;
output reg [31:0] y;

reg [7:0] a,b,c,d,xa,xb,xc,xd;
reg [7:0] A,B,C,D;

always@(x)
begin
//4-input words
 a=x[31:24]; //MSB byte
 b=x[23:16];
 c=x[15:8];
 d=x[7:0]; //LSB byte
 
//2x operation
 xa=(a[7]==0)?(a<<1):(a<<1)^(8'h1B);
 xb=(b[7]==0)?(b<<1):(b<<1)^(8'h1B);
 xc=(c[7]==0)?(c<<1):(c<<1)^(8'h1B);
 xd=(d[7]==0)?(d<<1):(d<<1)^(8'h1B);
 
//4-output words
 A=xa^(b^c^d)^xb; //MSB byte
 B=xb^(c^d^a)^xc;
 C=xc^(d^a^b)^xd;
 D=xd^(a^b^c)^xa; //LSB byte
 
//final output
  y={A,B,C,D};
end

endmodule
