class transaction;
  
  rand bit [1:0]a;
  
  
  
endclass
module tb();
  transaction t1;
  initial begin
    t1=new();
    assert(!t1.randomize())
     else
       $fatal("The vlaue a is false");
    #10;
    $display("The value of a is %0d",t1.a);
    
    
 
  end
endmodule
/*Fatal: "testbench.sv", 14: tb.unnamed$$_0: at time 0 ns
The vlaue a is false
$finish called from file "testbench.sv", line 14.
$finish at simulation time  */ 
