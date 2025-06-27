//generate pattern 01002000300004000005

class packet;
  rand bit[3:0]a[];
  bit[2:0] count=1;
  constraint c1{a.size==20;}
  function void post_randomize();
    for(int i=0;i<20;i++) 
     begin
       repeat(count)
         begin
         a[i]=0;
          i++;
         end
       a[i]=count;
       count++;
     end
    
endfunction
  
  
endclass

module tb;
packet pkt;
initial begin
pkt=new();
assert(pkt.randomize());
  $display("%p",pkt.a);
end
endmodule   
