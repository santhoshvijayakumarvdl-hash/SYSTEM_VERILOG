//DYNAMIC ARRAY



module tb;
  int dynarr[];
  
  
  initial begin
    
    //size
    dynarr='{1,2,3};
    $display("%d",dynarr.size());
    
    
    //resize
    dynarr=new[7](dynarr);
    $display("%d",dynarr.size());
    foreach(dynarr[i])
      $display("%d",dynarr[i]); 
    
    
    //override
    dynarr=new[6];
    foreach(dynarr[i])
      $display("%d",dynarr[i]); 
    
    
    //delete
    dynarr.delete();
    $display("size=%d",dynarr.size());
    
  end

                  endmodule
