write a code to print the following pattern??
          1
          1          2
          1          2          3
          1          2          3          4
          1          2          3          4          5
          1          2          3          4          5          6
          1          2          3          4          5          6          7
          1          2          3          4          5          6          7          8
          1          2          3          4          5          6          7          8          9

class packet;
rand bit[7:0]a[];

constraint c1{a.size==9;}

function void post_randomize();
for(int i=0;i<a.size;i++)
begin
    for(int j=0;j<i+1;j++)
	begin
     $write("%d",j+1);
	end
	$display("");
end
endfunction

endclass

module test;
packet pkt;
initial begin
pkt =new();
assert(pkt.randomize());
end
endmodule
