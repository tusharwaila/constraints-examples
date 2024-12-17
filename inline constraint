//inline constraint are written using with keyword
class art;
  randc bit[4:0] a;
  
  endclass

module test;
  art ary;
  initial begin
    ary = new();
    repeat(15)
      begin
        assert(ary.randomize() with {a>10 && a<19;})
    $display("%d",ary.a);
      end
  end
endmodule
