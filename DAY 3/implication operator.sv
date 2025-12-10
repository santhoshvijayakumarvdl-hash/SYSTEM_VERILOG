class constrain;
  rand bit[7:0] c1;
  rand bit a;
  constraint c2{(a==1)-> c1>100;}
  function void display();
    $display("%d %b", this.c1, this.a);
  endfunction
endclass

module tb;
  initial begin
  constrain h;
  h=new();
    repeat(10)begin
    h.randomize();
    h.display();
    end
  end
endmodule
  
  
