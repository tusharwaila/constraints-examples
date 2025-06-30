/*generate the pattern shown below
  1
  7	   2
 	12	 8	  3
 	16	 13	  9	  4
 	19	 17	 14	 10	  5
  21	 20	 18	 15	 11	  6*/

class packet;
  bit [3:0]count='d6;
  bit [3:0]count1='d6;
  bit [3:0]count2='d6;
  bit [3:0]count3='d6;
  bit [3:0]count4='d6;
  
rand bit [7:0]a[6][6];
function void post_randomize();
foreach (a[i,j])
begin
  if(i>0 && j==0)
   begin
     a[i][j]=a[i-1][j]+count;
     count--;
   end
 else if(i==0 && j==0)
    begin
    a[i][j]=1;
    end
  else if(i==j && i>0)
    begin
      a[i][j]=a[i-1][j-1]+1;
     end
  else if(i>1 && j==1)
    begin
      a[i][j]=a[i-1][j]+count1;
      count1--;
    end
  else if(i>2 && j==2)
    begin
      a[i][j]=a[i-1][j]+count2;
      count2--;
    end
  else if(i>3 && j==3)
    begin
      a[i][j]=a[i-1][j]+count3;
      count3--;
    end
  else if(i>4 && j==4)
    begin
      a[i][j]=a[i-1][j]+count4;
      count4--;
    end
end  
for(int i=0;i<6;i++)
  begin
    for(int j=0;j<i+1;j++)
      begin
        $write("\t%d",a[i][j]);
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
  
  
