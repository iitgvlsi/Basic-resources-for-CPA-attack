/*-------------------------------------------------------------------------
 Top module for AES on ZUIHO

 File name   : chip_zuiho_aes.v
 Version     : 1.0
 Created     : JUN/12/2012
 Last update : MAY/10/2013
 Desgined by : Toshihiro Katashita
 

 Copyright (C) 2012, 2013 AIST
 
 By using this code, you agree to the following terms and conditions.
 
 This code is copyrighted by AIST ("us").
 
 Permission is hereby granted to copy, reproduce, redistribute or
 otherwise use this code as long as: there is no monetary profit gained
 specifically from the use or reproduction of this code, it is not sold,
 rented, traded or otherwise marketed, and this copyright notice is
 included prominently in any copy made.
 
 We shall not be liable for any damages, including without limitation
 direct, indirect, incidental, special or consequential damages arising
 from the use of this code.
 
 When you publish any results arising from the use of this code, we will
 appreciate it if you can cite our webpage.
 (http://www.risec.aist.go.jp/project/sasebo/)
 -------------------------------------------------------------------------*/


// Cryptographic FPGA clock = 24 MHz / 8 = 3 MHz
`define CLOCK_DIVIDE 1.5
//================================================ CHIP_ZUIHO_AES
module CHIP_ZUIHO_AES
  (// USB FT2232H
   inout  wire [7:0] usb_d,
   input  wire 	     usb_rxfn, usb_txen,
   output wire 	     usb_rdn, usb_wr, usb_siwua,

   // LED, dip switch, clock and reset
   output wire 	     gpio_startn, gpio_endn, gpio_exec,
   output wire [9:0] led,
   input  wire 	     clkin, rstnin,
   output wire 	     osc_en_b);
   
   //------------------------------------------------
   // Internal clock
   wire          clk, rst;

   // USB in/out FIFO
   wire [7:0]    usb_wd,                     usb_rd;
   wire          usb_we, usb_ful, usb_aful,  usb_re, usb_emp, usb_aemp;
   
   wire [7:0]    sf_wd,                  sf_rd;
   wire          sf_we, sf_ful, sf_aful, sf_re, sf_emp, sf_aemp;

   // AIST LSI local bus emulation
   wire [15:0]   lbus_a, lbus_do, lbus_di;
   wire          lbus_wrn, lbus_rdn;
      
   // Cipher module
   wire [127:0] blk_kin, blk_din, blk_dout;
   wire         blk_krdy, blk_kvld, blk_drdy, blk_dvld;
   wire         blk_encdec, blk_en, blk_rstn, blk_busy;
   reg          blk_drdy_delay;

   //------------------------------------------------   
   assign osc_en_b  = 1'b1;

   assign usb_siwua = 1'b0;

   assign led[0]    = rstnin;
   assign led[1]    = rst;
   assign led[2]    = blk_rstn;
   assign led[3]    = blk_encdec;
   assign led[4]    = 1'b0;
   assign led[5]    = 1'b0;
   assign led[6]    = 1'b0;
   assign led[7]    = 1'b0;
   assign led[8]    = 1'b0;
   assign led[9]    = 1'b0;

   //------------------------------------------------ Control device emulation
   CTRL_FTDI_USB ctr_ftdi_usb
     (.usb_d(usb_d), .usb_rdn(usb_rdn), .usb_wr(usb_wr),
      .usb_rxfn(usb_rxfn), .usb_txen(usb_txen),
      .wd(usb_wd), .we(usb_we), .ful(usb_ful), .aful(usb_aful),
      .rd(usb_rd), .re(usb_re), .emp(usb_emp), .aemp(usb_aemp),
      .clk(clk), .rst(rst));

   SYNCFIFO_8x31 fifo_rd // PC -> DEVICE 
     (.wd(usb_wd), .we(usb_we), .ful(usb_ful), .aful(usb_aful),
      .rd(sf_rd),  .re(sf_re),  .emp(sf_emp),  .aemp(sf_aemp),
      .cnt(), .clk(clk), .rst(rst));

   SYNCFIFO_8x31 fifo_wr // DEVICE -> PC
     (.wd(sf_wd),  .we(sf_we),  .ful(sf_ful),  .aful(sf_aful),
      .rd(usb_rd), .re(usb_re), .emp(usb_emp), .aemp(usb_aemp),
      .cnt(), .clk(clk), .rst(rst));

   CTRL_LBUS ctrl_lbus
     (.wd(sf_wd), .we(sf_we), .ful(sf_ful), .aful(sf_aful),
      .rd(sf_rd), .re(sf_re), .emp(sf_emp), .aemp(sf_aemp),

      .lbus_a(lbus_a), .lbus_di(lbus_di), .lbus_do(lbus_do),
      .lbus_wrn(lbus_wrn), .lbus_rdn(lbus_rdn),

      .clk(clk), .rst(rst));

   //------------------------------------------------ AIST LSI emulation
   LBUS_IF lbus_if
     (.lbus_a(lbus_a), .lbus_di(lbus_di), .lbus_do(lbus_do),
      .lbus_wr(lbus_wrn), .lbus_rd(lbus_rdn),
      
      .blk_kin(blk_kin), .blk_din(blk_din), .blk_dout(blk_dout),
      .blk_krdy(blk_krdy), .blk_drdy(blk_drdy), 
      .blk_kvld(blk_kvld), .blk_dvld(blk_dvld),
      .blk_encdec(blk_encdec), .blk_en(blk_en), .blk_rstn(blk_rstn),

      .clk(clk), .rst(rst));

   //------------------------------------------------
   assign gpio_startn = ~blk_drdy;
   assign gpio_endn   = 1'b0; //~blk_dvld;
   assign gpio_exec   = 1'b0; //blk_busy;

   always @(posedge clk) blk_drdy_delay <= blk_drdy;

   AES_Composite_enc AES_Composite_enc
     (.Kin(blk_kin), .Din(blk_din), .Dout(blk_dout),
      .Krdy(blk_krdy), .Drdy(blk_drdy_delay), .Kvld(blk_kvld), .Dvld(blk_dvld),
      /*.EncDec(blk_encdec),*/ .EN(blk_en), .BSY(blk_busy),
      .CLK(clk), .RSTn(blk_rstn));
   
   //------------------------------------------------
   MK_CLKRST mk_clkrst (.clkin(clkin), .rstnin(rstnin),
                        .clk(clk), .rst(rst));
   
endmodule // CHIP_ZUIHO_AES



//================================================ MK_CLKRST
module MK_CLKRST 
  (input  wire clkin, rstnin,
   output wire clk, rst);
   //synthesis attribute keep_hierarchy of MK_CLKRST is no;
   
   //------------------------------------------------
   wire   rst_dll;
   wire   refclk;
   wire   clk1x, clk1x_dcm, clkdv_dcm, locked;

   //------------------------------------------------ dll reset
   assign rst_dll = ~rstnin;

   //------------------------------------------------ clock
   IBUFG u10 (.I(clkin), .O(refclk)); 

   DCM_SP #(.CLKIN_PERIOD(41.666),  // Source clock: 24 MHz
            .CLKDV_DIVIDE(`CLOCK_DIVIDE), // 24 / 8 = 3 MHz
            .CLK_FEEDBACK("1X"))
   u11 (.CLKIN(refclk), .CLKFB(clk1x), .RST(rst_dll),
        .PSEN(1'b0), .PSINCDEC (1'b0), .PSCLK(1'b0), .DSSEN(1'b0),
        .CLK0(clk1x_dcm),     .CLKDV(clkdv_dcm),
        .CLK90(), .CLK180(), .CLK270(),
        .CLK2X(), .CLK2X180(), .CLKFX(), .CLKFX180(),
        .STATUS(), .LOCKED(locked), .PSDONE());
   
   BUFG  u12 (.I(clk1x_dcm), .O(clk1x));
   BUFG  u13 (.I(clkdv_dcm), .O(clk));

   //------------------------------------------------ reset
   MK_RST u20 (.locked(locked&rstnin), .clk(clk),  .rst(rst));
endmodule // MK_CLKRST



//================================================ MK_RST
module MK_RST 
  (input  wire locked, clk,
   output wire rst);
   //synthesis attribute keep_hierarchy of MK_RST is no;
   
   //------------------------------------------------
   reg [15:0] cnt;
   
   //------------------------------------------------
   always @(posedge clk or negedge locked) 
     if (~locked)    cnt <= 16'h0;
     else if (~&cnt) cnt <= cnt + 16'h1;

   assign rst = ~&cnt;
endmodule // MK_RST
