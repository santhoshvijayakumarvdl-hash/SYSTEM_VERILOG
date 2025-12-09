
class name;
  int a;
  bit b;
  
  function new (int a,
  bit b);
    this.a=a;
     this.b=b;
  endfunction
  
  function void display();
    $display("%b %b", a,b);
  endfunction
endclass

module tb;
  initial begin
name g1;
    g1=new(5,1);

g1.display();
  end
endmodule
    
