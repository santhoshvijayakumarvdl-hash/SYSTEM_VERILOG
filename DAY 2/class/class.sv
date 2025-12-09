
class name;
  int a;
  bit b;
  function void display();
    $display("%b %b", a,b);
  endfunction
endclass

module tb;
  initial begin




name g1;
g1=new();
g1.a=5;
g1.b=1;
g1.display();
  end
endmodule
    
