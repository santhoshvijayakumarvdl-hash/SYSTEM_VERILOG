
`include "testblock.sv"

module testbench;
  intff intf();
  test tst(intf);

  
  full_adder FA(
    .a(intf.a),
    .b(intf.b),
    .c(intf.c),
    .sum(intf.sum),
    .carry(intf.carry));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end 
endmodule
