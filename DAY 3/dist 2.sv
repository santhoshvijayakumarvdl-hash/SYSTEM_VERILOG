class constrain;
  rand bit[3:0] c1;
  rand bit a;
  constraint c2{c1 dist{1:=6,[2:5]:=4};}
  function void display();
    $display("%d ", this.c1);
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
  
  
