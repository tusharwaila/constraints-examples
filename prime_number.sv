class art;
int a[$];
int unsigned count =0;

function void post();
for(int i=1;i<=300;i++)//for any range give here
begin
for(int j=1;j<=i;j++)
if(i%j==0)
begin
count++;
end
if(count==2)
begin
a.push_back(i);
count =0;
end
else
count=0;
end
endfunction
endclass

module tb;
art ary;
initial begin
ary = new();
ary.post();
$display("%p",ary.a);
end
endmodule
