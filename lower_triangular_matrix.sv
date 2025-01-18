//try to get the output shown below
	7	    0	    0	  0 
 	11	  27	  0	  0 
 	57	  63	 92	  0 
 	107	  117	 290	700 

class art;
  rand int a[4][4];
  function void post_randomize();
    for(int i=0;i<4;i++)
      begin
        for(int j=0;j<4;j++)
          begin
            $write("\t%0d",a[i][j]);
          end
        $display();
      end
  endfunction
  
  constraint c1{foreach (a[i,j])
  {
    if(j>i)
    {
      a[i][j] == 0;
    }
      else if(i==1 && j==1)
    {
      a[i][j] == 27;}
        else if(i==2 && j==1)
    {
      a[i][j] == 63;}
          
          else if(i==3 && j==1)
    {
      a[i][j] == 117;}
            else if(i==2 && j==2)
    {
      a[i][j] == 92;}
             
              else if(i==3 && j==2)
    {
      a[i][j] == 290;}
                
     
        else if(i==0 && j==0)
    {
      a[i][j] == 7;}
            
          else if(i==1 && j==0)
    {
      a[i][j] == 11;}
                
            else if(i==2 && j==0)
    {
      a[i][j] == 57;}
                
              else if(i==3 && j==0)
    {
      a[i][j] == 107;}
              else
              {a[i][j]==700;}
     
        
  }}
    endclass
    module top;
      art aru;
      initial begin
        aru = new();
         $display("apke apne debugger bhaiya");
        assert(aru.randomize());
      end
    endmodule
