class art;
  randc bit[1:0] a;
  logic b;
  function void post_randomize();
    case(a)
      2'b00:b='b0;
      2'b01:b='b1;
      2'b10:b='bx;
      2'b11:b='bz;
    endcase
  endfunction
endclass

module tb;
 art aru;
  initial begin
    aru = new();
    repeat(4)
      begin
      assert(aru.randomize());
    $display("value after randomization are %b",aru.b);
  end
  end
endmodule
  
