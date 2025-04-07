use of constraint mode general syntax---------->          handle name.constraint_block_name.constraint_mode()  //0 to off 
                                                                                                              // 1 to on

class tushar;
  rand bit[4:0]a[];
  constraint c0{a.size() ==9;}
  constraint c1{foreach (a[i])
    (a[i]>10 && a[i]<20) ;}   
  constraint c2{foreach (a[i])
    (a[i]<=9 && a[i]>0);}
    
 function void post_randomize();
    foreach(a[i])
      $display("%d",a[i]);
  endfunction
endclass

module test;
  tushar tu;
  initial begin
    tu=new();
    tu.c1.constraint_mode(0);
    assert(tu.randomize());
    tu.c2.constraint_mode(0);
    tu.c1.constraint_mode(1);
    assert(tu.randomize());
  end
endmodule
