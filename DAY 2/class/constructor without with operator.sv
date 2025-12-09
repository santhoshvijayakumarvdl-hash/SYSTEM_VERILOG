
class name;
  int a;
  bit b;
  
  function new ();
    a=5;
     b=1;
  endfunction
  
  function void display();
    $display("%b %b", a,b);
  endfunction
endclass

module tb;
  initial begin
name g1;
    g1=new();

g1.display();
  end
endmodule
    
