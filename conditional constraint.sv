class art;
 randc bit [10:0] addr;
rand bit[2:0]   mode;
//method1
constraint c1{if(addr>1 && addr<1000)
               mode < 4;
			   else if(addr>1700 && addr<2000)
			   mode >5;}
endclass
//method2
/*constraint c1{ (addr inside {[1:1000]} -> mode <4;
                addr inside {[1700 :2000]} -> mode >5;} 
*/
//change mode variable size [4:0]
/*constraint c1{ addr inside {[1:1000]} -> mode inside{[1:10]};
                addr inside {[1700 :2000]} -> mode inside{[20:30]};} 
*/
module top;
art aru;
initial begin
aru =new();
repeat(100)
begin
assert(aru.randomize());
$display("address is %d and mode value is %d",aru.addr,aru.mode);
end
end
endmodule
