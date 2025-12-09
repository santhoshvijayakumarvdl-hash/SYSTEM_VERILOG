
class parent_trans;
  int c;
  bit d;
  
  virtual function void display();
    $display("%b %b",c,d);
  endfunction
 
endclass


class child_trans extends parent_trans;
  int c;
  bit d;
 
  
  function void display();
    $display("%b %b",c,d);
 
  endfunction
endclass


module tb;
  initial begin

    
    parent_trans p1;
    child_trans c1;
    c1=new();
    p1=c1;
    c1.c=9;
    c1.d=1;
    p1.c=7;
    p1.d=0;
    p1.display();
    
    
   
     
    

  end
endmodule
    
