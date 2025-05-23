//you have a 4x4 matrix in which 1 row elements will be random and from 2 row onwards the first element of the row should be the sum of all the elements of the previous row and other elements should be same as in the prevoius row in the same column

// 	   2	   8	  15	   1
// 	  26	   8	  15	   1
// 	  50	   8	  15	   1
// 	  74	   8	  15	   1

class art;
  rand bit[7:0]a[4][4];
 
  constraint c1{foreach(a[i,j])
                a[i][j] inside {[1:20]}
                ;}
  
constraint c2{foreach(a[i,j])
              if(j!=0 && i>0)
			  a[i][j]==a[i-1][j];


             }
function void post_randomize();
for(int i=0;i<3;i++)
begin
                  for(int j=0;j<4;j++)
                    begin  
					  if(j==0)
                        begin
                       a[i+1][j]=a[i][j]+a[i][j+1]+a[i][j+2]+a[i][j+3]; 
                        end
				    end
end   
    
  for(int i=0;i<4;i++)
      begin
        for(int j=0;j<4;j++)
          begin
            $write("\t %d",a[i][j]);  
          end
        $display("");
      end
	  $display("apke debugger bhaiya");
endfunction
endclass


module tb;
art ary;
initial begin  
  ary=new();
  assert(ary.randomize());
end  
endmodule
