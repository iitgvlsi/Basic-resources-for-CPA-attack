module testbench();
  reg clk;
  reg rst;
  reg [127:0] in;
  reg [127:0] key;
  wire [127:0] out;
  integer i;

aes_12_comp_masoleh g1(in, key, clk, rst, out);
  initial begin
    clk = 1'b0;
    forever #31.25 clk = ~clk;
  end

initial begin
$dumpfile ("aes_unprotected.vcd");
$dumpvars();


      in = 128'h00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_00;
      key = 128'h0123456789abcdef123456789abcdef0;
      rst = 1'b0; 
      #50 rst=1'b1;

      for(i = 0; i<5000; i = i+1) begin
      #690; 
      in= out;
      end

#690;
$finish;
end
endmodule
