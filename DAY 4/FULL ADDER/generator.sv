`include "transaction.sv"
class generator;
  transaction tr;
  mailbox gen2dri;
  int count;
  function new(mailbox gen2dri);
    this.gen2dri=gen2dri;
  endfunction
  task main(int count);
    repeat(count) begin
      tr=new();
      tr.randomize();
      tr.display("generator name");
      gen2dri.put(tr);
    end 
  endtask
endclass
  
