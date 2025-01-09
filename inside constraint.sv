//constraint with using inside keyword(set membership)

class art;
  rand bit [4:0] a[];
  constraint c1{a.size() ==10;}
  constraint c2{  foreach (a[i])
                     { 
                       a[i] inside {[0:10]};}}
    constraint c3{ unique {a};}
endclass                                         

module test;
  art ary;
  initial begin
    ary = new();
    assert(ary.randomize());
    $display("%p",ary.a);
  end
endmodule
