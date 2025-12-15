class driver;
  mailbox gen2dri;
  int count;
  virtual intff vif;
  transaction tr;
  function new(mailbox gen2dri,virtual intff vif);
    this.gen2dri=gen2dri;
    this.vif=vif;  
  endfunction
  task main(int count);
    repeat(count)begin
      #1
      gen2dri.get(tr);
      vif.d<=tr.d;
      
      
      #1
      tr.display("driver name");
    end
  endtask
endclass
      
      
