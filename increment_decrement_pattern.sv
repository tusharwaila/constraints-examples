write a code to generate the below pattern??
          1
          1          2
          1          2          3
          1          2          3          4
          1          2          3          4
          1          2          3
          1          2
          1
class packet;
rand bit[7:0]a[4];

function void post_randomize();
begin
for(int i=0;i<4;i++)
begin
    for(int j=0;j<i+1;j++)
	 begin
	     $write("%d",j+1);
     end
$display("");
end
end
begin
for(int i=4;i>0;i--)
begin
     for(int j=0;j<i;j++)
	 begin
	     $write("%d",j+1);
	 end
$display("");
end
end
endfunction

endclass


module tb;
packet pk;
initial begin
pk=new();
assert(pk.randomize());
end
endmodule
