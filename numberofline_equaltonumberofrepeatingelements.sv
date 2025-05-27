write a code to generate the following pattern?
          1
          2          2
          3          3          3
          4          4          4          4
          5          5          5          5          5
          6          6          6          6          6          6
          7          7          7          7          7          7          7
          8          8          8          8          8          8          8          8
          9          9          9          9          9          9          9          9          9


  class packet;
rand bit[7:0]a[];

constraint c1{a.size()==9;}

function void post_randomize();
for(int i=0;i<a.size;i++)
begin
    for(int j=0;j<i+1;j++)
	begin
    $write("%d",i+1);
    end
$display("");
end
endfunction

endclass

module tb;
packet pkt;
initial begin
pkt=new();
assert(pkt.randomize());
end
endmodule 
