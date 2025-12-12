class transaction;
  rand bit a;
  rand bit b;
  rand bit  c;
  bit sum;
  bit carry;
  function void display(string name);
    $display("%s", name);
    $display("a=%b b=%b c=%c sum=%c carry=%c", a,b,c,sum,carry);
  endfunction
endclass
