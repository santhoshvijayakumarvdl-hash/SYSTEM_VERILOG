//ASSOCIATIVE arrays



module tb;
  int asscarr[int];
  int i;
  
  
  initial begin
    
    asscarr[7]=45;
    asscarr[8]=45;
    asscarr[9]=45;
    asscarr[2]=45;
    
    //size
    
    $display("%d",asscarr.size());
    
    //num of entries
    
    $display("%d",asscarr.num());
    
    //exists- exists(index)
    $display("%b",asscarr.exists(8));
    $display("%b",asscarr.exists(0));
             
    //first,last
    asscarr.first(i);
    $display("%d", i);
    asscarr.last(i);
    $display("%d", i); // asscarr.first() in display gives error
    
    //previous,next
    i=9;
    asscarr.prev(i);
    $display("%d", i);
    i=2;
    asscarr.next(i);
    $display("%d", i);
    
    //delete
    asscarr.delete();
    $display("%d", asscarr.size());
    
  end
endmodule




/*

          4
          4
00000000000000000000000000000001
00000000000000000000000000000000
          2
          9
          8
          7
          0

          */
      
      
    
    
  
  
