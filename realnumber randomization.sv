class art;
rand int a;
  real number;
  constraint c1{a inside {[20:100]};}
  function void post_randomize();
    number = a/7.0;
  endfunction
endclass

module tb;
  art ary;
  initial begin
    ary = new();
    repeat(7)
    begin
      assert(ary.randomize());
      //$display("------by apke apne debugger bhaiya-----");
      $display("values are %f ",ary.number);
    end
  end
endmodule
  
