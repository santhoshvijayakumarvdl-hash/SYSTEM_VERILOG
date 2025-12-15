module d_ff(input clk,rst,d, output reg d_out);
  always@(posedge clk)begin
    if(rst)
      d_out<=0;
    else d_out<=d;
  end
      
endmodule
