class constrain;
  rand bit[8:0] c1;
  rand bit a;
  constraint c2{soft c1>100;}
  function void display();
    $display("%d ", this.c1);
  endfunction
endclass

module tb;
  initial begin
  constrain h;
  h=new();
    repeat(10)begin
  
      h.randomize with { c1 < 50; };
    h.display();
    end
  end
endmodule
  
  
