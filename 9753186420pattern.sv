class art;
rand int a[];
constraint a_size{a.size()==10;}

constraint c{ foreach(a[i])
              if(i<5)
              a[i]==(10 -(i+(i+1)));
			  else
			  a[i]== (10 - (2*(i-4)));
			  }
	endclass

			
module top;
art aru;
initial begin
aru = new();
assert(aru.randomize());
$display("apke apne debugger bhaiya");
$display("values are %p",aru.a);
end
endmodule
