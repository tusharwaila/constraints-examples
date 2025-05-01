class art;
rand bit a[];
bit count=0;
constraint c1{a.size()==12;}

function void post_randomize();
for(int i=0;i<12;i++)
begin
      if(i%2==0)               //for change to 000111 write 3,for change to 00001111 write 4;
	          begin
			       if(count==0)
				   begin
				   a[i]=0;
				   count++;
				   end
				   else
				   begin
				   a[i]=1;
				   count++;
			       end
			  end
     else
	     begin
		 a[i]=a[i-1];
		 end
end
for(int i=0;i<12;i++)
$write("%d",a[i]);
endfunction
endclass

module tb;
art ary;
initial begin
ary =new();
assert(ary.randomize());
end
endmodule
