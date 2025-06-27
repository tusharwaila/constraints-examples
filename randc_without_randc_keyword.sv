class packet;
rand bit[1:0]y;
 
  bit[1:0]q[$];
  
  constraint c1{!(y inside {q});}
  
  function void post_randomize();
    q.push_back(y);
    if(q.size()==4)
      q.delete();
  endfunction
endclass

module tb;
packet pkt;
initial begin
  pkt=new();
  repeat(10)
   begin
  assert(pkt.randomize());
  $display("%p",pkt.y);
   end
   end  
endmodule
