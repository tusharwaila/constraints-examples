//take two 8 bits numbers and a should be greater than b and a=b+1 80% of time and a+b=2 10% of time and should be random for 10% of time

class art;
rand bit[7:0] a;
rand bit[7:0] b;

constraint c1{ a>b;}
constraint c2{a dist {b+1 :=80 ,b+2:=10,a :=10};}

endclass

module test;
art aru;
initial begin
aru = new();
repeat(10)
begin
assert(aru.randomize());
$display("value of 1 is %d---------------value of 2 is %d",aru.a,aru.b);
end
end
endmodule
