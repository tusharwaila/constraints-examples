class art;
  rand int a[];
  constraint c1{a.size() ==4;}
  constraint c2{foreach (a[i])
    a[i]==(((10)**(i+1))-1);}
    function void post_randomize();       
      $display("%p",a);
    endfunction
  endclass
    
  module tb;
 art ary;
    initial begin
      ary=new();
      assert(ary.randomize());
    end
  endmodule
