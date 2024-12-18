//bidirectional constraint
class art;
  rand bit [2:0] a;
  rand bit [2:0] b;
  rand bit [2:0] c;
  
  constraint c1{a>b;}
  constraint c2{b<c;}
  
endclass

module test;
   art ary;
   initial begin
     ary =new();
     assert(ary.randomize());
     $display("a=%d   b=%d    c=%d",ary.a,ary.b,ary.c); 
   end
endmodule
