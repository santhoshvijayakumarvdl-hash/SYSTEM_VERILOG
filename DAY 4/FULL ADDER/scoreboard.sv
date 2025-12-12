class scoreboard;
  int countc;
  int counte;
  mailbox mon2scb;
   
  function new(mailbox mon2scb);
    this.mon2scb=mon2scb;
    
  endfunction
  
    task main(int count);
    repeat(count) begin
      transaction tr;
      mon2scb.get(tr);
      if(((tr.a^tr.b^tr.c)==tr.sum)&&(((tr.a&tr.b)|(tr.a&tr.b)|(tr.a&tr.b))==tr.carry))
        countc++;
      else
        counte++;
    end
      $display("no of random process = %d",count);
      $display("no of success process = %d",countc);
      $display("no of error process = %d",counte);
  endtask
endclass
