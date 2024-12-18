//solve before constraint is use for more occurence of the event

class art;
    rand bit a;
    rand bit [3:0] b;
  constraint c2{solve a before b;}
    constraint c1{(a==1) -> b==0;}
endclass 

module tb;
 art ary;
  initial begin
    ary =new();
    repeat(10)
      begin
          assert(ary.randomize());
        $display("%d %d",ary.a,ary.b);
      end
  end
endmodule
       
