*								  *
	 *						*	
			*				*		
				*		*			
					*				
				*		*			
			*				*		
		*						*	
	*								*

class art;
rand int a[3][3];

function void post_randomize();
for(int i=0;i<9;i++)
begin
for(int j=0;j<9;j++)
begin
if(i==j || i+j==8)
$write("\t*");
else
$write("\t");
end
$display("");
end
endfunction

endclass

module tb;
art ary;
initial begin
ary=new();
assert(ary.randomize());
end
endmodule


	

