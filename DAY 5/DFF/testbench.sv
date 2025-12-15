
`include "testblock.sv"

module testbench;
  intff intf();
  test tst(intf);
 
    
  initial begin
    
    intf.clk = 1'b0;
    intf.rst=1;
    #2 intf.rst=0;
  end
  
  always #1 intf.clk <= ~intf.clk;
  
  
  d_ff DF(
    .clk(intf.clk),
    .rst(intf.rst),
    .d(intf.d),
    .d_out(intf.d_out)
  );
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end 
endmodule
