class constrain;
  rand bit[8:0] c1;
  rand bit a;
  constraint c2{ c1>100;
                c1>150;
               }
  function void display();
    $display("%d ", this.c1);
  endfunction
endclass

module tb;
  initial begin
  constrain h;
  h=new();
    repeat(10)begin
  
      h.randomize ();
    h.display();
    end
  end
endmodule
  
  
