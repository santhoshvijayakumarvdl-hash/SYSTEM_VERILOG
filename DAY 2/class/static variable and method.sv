
class name;
  static int a=5;
  static bit b=1;
  
   function new();
    a++;
     b++;
  endfunction
  
  function void display();
    $display("%b %b", a,b);
  endfunction
endclass

module tb;
  name g1[3];
  initial begin
    
    
    
    
    foreach(g1[i]) begin
      g1[i]=new();
    end
    
    
    g1[0].display();
      


  end
endmodule
    
