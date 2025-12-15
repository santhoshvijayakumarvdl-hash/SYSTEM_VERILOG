class transaction;
  rand bit d;
  bit rst;
  bit d_out;
  function void display(string name);
    $display("%s", name);
    $display("d=%b rst=%b d_out=%b",d,rst,d_out);
  endfunction
endclass
