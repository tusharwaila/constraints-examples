class art;
rand int a;

  constraint c1{a inside {[100:999]};}
  constraint c2{(a/100)==(a%10);}
function void post_randomize();
$display("%d",a);
endfunction
endclass

module tb;
art ary;
initial begin
ary=new();
  repeat(10)
assert(ary.randomize());
end
endmodule
