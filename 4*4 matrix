//write a constraint to generate a 4*4 matrix with sum of rows,colums,diagonal equal to 21

 class art;
  rand bit[7:0]a[4][4];
  int i,j;
  constraint row{foreach (a[i])
  {
    a[i].sum(item) with (int'(item))==21;}
               }
    constraint column{foreach (a[i,j])
    {
      if(j==0)
      {
        a[j][i]+a[j+1][i]+a[j+2][i]+a[j+3][i] ==21;}}}
        
        constraint left_digonal{foreach (a[i])
        { if(i==0)
        { a[i][i] +a[i+1][i+1]+a[i+2][i+2]+a[i+3][i+3] ==21;}}}
          
        constraint right_diagonal_20{
                    foreach(a[i]){
                      if(i==3)
                        a[i-3][i]+a[i-2][i-1]+a[i-1][i-2]+a[i][i-3]==21;
                    }
                  }  
          
      
  function void post_randomize();
    for(i=0;i<4;i++)
     begin
      
       for(j=0;j<4;j++)
         $write(a[i][j]);
       $display();
     end
    
    
  endfunction
endclass

module top;
  art ary;
  initial begin
    ary = new();
    assert(ary.randomize() );
  end
endmodule
  
