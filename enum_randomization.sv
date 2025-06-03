/*output
value of op is read
value of pwrite is 0
value of paddr is  5
value of pwdata is  0

value of op is write
value of pwrite is 1
value of paddr is 11
value of pwdata is  8

value of op is write
value of pwrite is 1
value of paddr is  9
value of pwdata is  9

value of op is read
value of pwrite is 0
value of paddr is 15
value of pwdata is  0

value of op is write
value of pwrite is 1
value of paddr is 10
value of pwdata is  5
*/

class packet;
typedef enum bit{write,read}operation;
randc operation op;
rand bit[3:0] paddr;
rand bit[3:0] pwdata;
rand bit pwrite;

constraint c1{if(op==write)
                {
				pwrite==1;
				paddr<16;
				pwdata<10;
				}
				else
				{
				pwrite==0;
				paddr<16;
				pwdata==0;
                }
				}

function void post_randomize();
$display("value of op is %s",op.name);
$display("value of pwrite is %d",pwrite);
$display("value of paddr is %d",paddr);
$display("value of pwdata is %d",pwdata);

endfunction

endclass

module tb;
packet p;
initial begin
p=new();
repeat(5)
p.randomize();
end
endmodule
