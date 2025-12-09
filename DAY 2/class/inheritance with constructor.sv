
class name;
  int c;
  bit d;
  
  function new (int c,bit d);
   this.c=c;
    this.d=d;
    $display("%b %b",c,d);
  endfunction
 
endclass


class name2 extends name;
  int c;
  bit d;
 
  
  function new(int c1,bit d1,int c,bit d);
    super.new(c1,d1);
    this.c=c;
    this.d=d;
    $display("%b %b",c,d);
 
  endfunction
endclass


module tb;
  initial begin
    name2 g1;
    g1=new(3,0,5,1);
    
   
     
    

  end
endmodule
    
