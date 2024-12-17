class art;
  rand int a;
  
  constraint c1{a dist {7 :=18, [11:20] :=3};}
endclass

module test;
  art ary;
  initial begin
    ary = new();
    repeat(15)
      begin
    assert(ary.randomize());
    $display("%d",ary.a);
      end
  end
endmodule
