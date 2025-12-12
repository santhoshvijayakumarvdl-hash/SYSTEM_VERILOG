
class monitor;
  transaction tr;
  virtual intff vif;
  mailbox mon2scb;
   
  function new(mailbox mon2scb,virtual intff vif);
    this.mon2scb=mon2scb;
    this.vif=vif;
  endfunction
  
  task main(int count);
    repeat(count) begin
       tr = new();  
      tr.a=vif.a;
      tr.b=vif.b;
      tr.c=vif.c;
      tr.sum=vif.sum;
      tr.carry=vif.carry;
      mon2scb.put(tr);
      tr.display("Monitor Name");
    end
  endtask
endclass

      
    
