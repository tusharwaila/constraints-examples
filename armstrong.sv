class art;
rand int a;
constraint c2{ a==   (((a/100)**3)+ (((a/10)%10)**3)  + ((a%10)**3))
			   ;}
constraint c3{ a inside {[100:999]};}
endclass

module top;
art arr;

initial begin
arr = new();
repeat(5)
begin
assert(arr.randomize());
$display("%p",arr.a);
end
end
endmodule
