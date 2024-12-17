//use of soft constraint 

class father;
  rand bit [3:0]a ;
  constraint c2{soft a>7;}
endclass

class child extends father;
   constraint c1{a<7;}
endclass
  
module test;
 child cha;
    initial begin
          cha =new();
          assert(cha.randomize());
          $display("%d",cha.a);
     end
endmodule
  
