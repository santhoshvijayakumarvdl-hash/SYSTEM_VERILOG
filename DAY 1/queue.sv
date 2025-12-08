//ARRAY MANIPULATION METHODS

module tb;
  int queue[$];
  int queueb[$:3];
  int i;
  
  
  initial begin
    queue='{1,2,3};
    
    queue.insert(1,2);
    $display(queue);
    queue.delete(1);
    $display(queue);
    queue.delete();
    $display("%d",queue.size());
    queue.push_back(7);
    $display(queue);
    queue.push_front(9);
    $display(queue);
    queue.pop_front();
     $display(queue);
    queue.pop_front();
     $display(queue);
    queue={1,2,3,4,5};
    queue.shuffle();
    $display(queue);
    
    
    
    
  
    
  end
 endmodule
      
      
    
    
  
  
