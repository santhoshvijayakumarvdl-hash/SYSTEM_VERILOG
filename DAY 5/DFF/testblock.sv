`include "environment.sv"
`include "interface.sv"
program test(intff intf);
  environment env;
  initial begin
    env=new(intf);
    env.test_run();
  end 
endprogram
  
