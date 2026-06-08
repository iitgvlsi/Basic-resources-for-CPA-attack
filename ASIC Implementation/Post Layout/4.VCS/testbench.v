module testbench();
  reg CLK;
  reg RSTn;
  reg EN;
  reg [127:0] Din;
  reg [127:0] Kin;
  wire [127:0] Dout;
  integer i;

AES_Composite_enc g1(Kin, Din, Dout, EN, CLK, RSTn);
  initial begin
    CLK = 1'b0;
    forever #31.25 CLK = ~CLK;
  end

initial begin
$dumpfile ("aes_unprotected.vcd");
$dumpvars();


      Din = 128'h00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00;
      Kin = 128'h0123456789abcdef123456789abcdef0;
      RSTn = 1'b0; EN = 1'b0;
      #50 RSTn=1'b1;
      #10 EN=1'b1;

      for(i = 0; i<5000; i = i+1) begin
      #690; 
      Din= Dout;
      EN = 1'b0;
      #60 EN=1'b1;
      end

#690
$finish;
end
endmodule
