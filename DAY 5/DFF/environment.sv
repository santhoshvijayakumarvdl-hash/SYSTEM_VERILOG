`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "scoreboard.sv"


class environment;
  generator gen;
  driver dri;
  monitor mon;
  scoreboard scb;
  mailbox gen2dri;
  mailbox mon2scb;
  int count=100;
  virtual intff vif;
  function new(virtual intff vif);
    this.vif=vif;
    gen2dri=new();
    mon2scb=new();
    gen=new(gen2dri);
    dri=new(gen2dri,vif);
    mon=new(mon2scb,vif);
    scb=new(mon2scb);
  endfunction
  
  task test_run();
    fork
      gen.main(count);
      dri.main(count);
      mon.main(count);
      scb.main(count);
    join
  endtask
endclass
      
    
    
