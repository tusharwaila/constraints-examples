class art;
rand bit[7:0]a[];
randc int count;
constraint c0{count inside{[0:7]};}
constraint c1{a.size==8;}
constraint c3{foreach(a[i])
              if(i!=count)
			  a[i]==0;
			  else
			  a[i]==1;
               }
function void post_randomize();
foreach(a[i])
$write("%d",a[i]);
$display();
endfunction
endclass

module tb;
art ary;
initial begin
ary=new();
repeat(7)
begin
assert(ary.randomize);
end
end
endmodule
