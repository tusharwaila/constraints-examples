class art;
rand int a[];
  constraint c1{a.size()==20;}
constraint c2{foreach (a[i])
               if(i>1)
              a[i]==a[i-1]+a[i-2];
			  else
			  {
			  a[0]==0;
			  a[1]==1;
                }}
function void post_randomize();
foreach(a[i])
$display("%d",a[i]);
endfunction
endclass

module tb;
art ary;
initial begin
ary=new();
assert(ary.randomize());
end
endmodule
