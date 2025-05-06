//if we off static constraint with constraint mode then it will be off for all the instances
//as in the below example the constraint is off for obj1 but will get off for obj2 instance also but if we make c2 as non static it will only get off for obj1 instance and not for obj2 instance
class ABC;
  rand bit [3:0]  a;
  
  // "c1" is non-static, but "c2" is static
  constraint c1 { a > 5; }
 static constraint c2 { a < 12; }
endclass

module tb;
  initial begin
    ABC obj1 = new;
    ABC obj2 = new;
    
    // Turn non-static constraint
    obj1.c2.constraint_mode(0);
    
    for (int i = 0; i < 5; i++) begin
      obj1.randomize();
      obj2.randomize();
      $display ("obj1.a = %0d, obj2.a = %0d", obj1.a, obj2.a);
    end
  end
endmodule
