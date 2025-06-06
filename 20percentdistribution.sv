//write a constraint to generate 1101 20% time
 
  class packet;
rand bit[3:0]a;

constraint c1{a dist{11:=20,a:=80};}


function void post_randomize();
$display("%b",a);
endfunction

endclass

module tb;
packet pk;
initial begin
pk=new();
repeat(10)
assert(pk.randomize());
end
endmodule
