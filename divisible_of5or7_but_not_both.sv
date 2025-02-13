class art;
rand bit[7:0] vary;

constraint c1{(vary%5==0)||(vary%7==0);}
constraint c3{!(vary%5==0 && vary%7 ==0);}
constraint c2{vary inside {[5:100]};}
function void post_randomize();
$display("values are = %d",vary);
endfunction
endclass

module test;
art aru;
initial begin
aru = new();
  repeat(50)
assert(aru.randomize());
end
endmodule
