
class name;
  int a;
  bit b;
  
  function new ();
    a=5;
     b=1;
  endfunction
  
  
  
  function void display();
    $display("%b %b ",a,b);
  endfunction
endclass


class name2;
  int c;
  bit d;
  name n1;
  
  function new();
    c=6;
     d=0;
    n1=new();
  endfunction
  
  
  
  
  function void display();
    $display("%b %b %b %b",n1.a,n1.b,c,d);
  endfunction
endclass


module tb;
  initial begin
    name2 g1,g2;
    g1=new();
    g2=new g1;
    g2.display();
    g2.n1.a=10;
    g2.n1.b=0;
    g2.c=7;
    g2.d=1;
    g1.display();
    

  end
endmodule
    
