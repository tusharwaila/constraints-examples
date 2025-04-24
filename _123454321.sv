class art;
rand bit[2:0]a[];
constraint c1{a.size==9;}
constraint c2{foreach (a[i])
               if(i<5)
			   a[i]==i+1;
			   else
			   a[i]==a.size-i;
             }
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
