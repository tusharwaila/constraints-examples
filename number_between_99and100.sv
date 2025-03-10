class art;
  randc int a;
  real b;
  constraint c1{a inside {[990:1000]};}
  function void post_randomize();
    b=(a/10.0);
    $display("%d",a); 
    $display("%f",b); 
  endfunction
 
endclass

module tb;
art ary;
  initial begin
  ary =new;
    repeat(10)
    assert(ary.randomize());
  end
endmodule
