class art;
  rand int a[];
  constraint c1{a.size() ==10;}
  constraint c2{foreach (a[i])
    if(i%2==0)
         a[i]==0;
    else
      a[i]==((i+1)/2);
               }
  function void post_randomize();
    $display("%p",a); 
  endfunction
 
endclass

module tb;
art ary;
  initial begin
  ary =new;
    assert(ary.randomize());
  end
endmodule
