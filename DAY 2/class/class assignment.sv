
/*class name;
  int a;
  bit b;
  
  function new ();
    a=5;
     b=1;
  endfunction
  
  
  
  function void display();
    $display("%b %b ",a,b);
  endfunction
endclass*/


class name2;
  int c;
  bit d;
 
  
  function new();
    c=6;
     d=0;
   
  endfunction
  
  
  
  
  function void display();
    $display("%b %b ",c,d);
  endfunction
endclass


module tb;
  initial begin
    name2 g1,g2;
    g1=new();
    g2=g1;
    g1.display();
  
    g2.c=7;
    g2.d=1;
    g1.display();
    

  end
endmodule
    
