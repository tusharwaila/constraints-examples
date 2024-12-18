//try by giving different variable as argument during randomization in the module and see the result
class art;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [3:0] c;

endclass

module test;
   art ary;
   initial begin
     ary =new();
     repeat(5)
      begin
        assert(ary.randomize(c) with {c>5 && c<10;});
     $display("a=%d   b=%d    c=%d",ary.a,ary.b,ary.c); 
      end
   end
endmodule
