
class name;
  int c;
  bit d;
  
  function new ();
    c=5;
     d=1;
  endfunction
  
  
  
  function void display();
    $display("%b %b ",c,d);
  endfunction
endclass


class name2 extends name;
  int c;
  bit d;
 
  
  function new();
    c=6;
     d=0;
 
  endfunction
  
  
  
  function void adisplay();
    super.display();
    $display("%b %b",c,d);
  endfunction
endclass


module tb;
  initial begin
    name2 g1;
    g1=new();
    g1.display();
   
     
    

  end
endmodule
    
