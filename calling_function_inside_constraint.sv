class art;
  rand bit[5:0] s_addr;
  rand bit[5:0] e_addr;
  constraint valid_e_addr{e_addr == addr_calc(s_addr);}
  
  function bit[5:0] addr_calc(bit[3:0] s_addr);
    if(s_addr >20)
      addr_calc =0;
    else
      addr_calc = s_addr *5;
  endfunction
  
endclass

module test;
art ary;
  initial begin
    ary=new();
    repeat(5)
      begin
        //assert(pkt.randomize() with {s_addr>20;});
        assert(ary.randomize() with {s_addr<8;});
        $display("\t start_addr=%0d,end_addr=%0d",ary.s_addr,ary.e_addr);
      end
  end
endmodule
