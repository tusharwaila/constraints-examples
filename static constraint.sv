class art;
  rand bit [3:0] a;
  static constraint c2{a>3;}
endclass

module test;
   art ary;
   art aryy;
   initial begin
     ary =new();
     repeat(5)
      begin
        assert(ary.randomize());
        $display("before a= %d ",ary.a);
        ary.c2.constraint_mode(0);
         assert(ary.randomize());
        $display("a= %d ",ary.a);
      end
   end
endmodule
  
