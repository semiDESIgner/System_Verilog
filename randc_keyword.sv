class transaction;
  randc bit [3:0]a;
  endclass


module tb();
  transaction t1;
  initial begin
    t1=new();
    for(int i=0;i<10;i++)
  begin
  
    t1.randomize();
    #10;
    $display("The value of a is = %0d",t1.a);
  end
  end
endmodule
/*
output:

The value of a is = 14
The value of a is = 4
The value of a is = 3
The value of a is = 15
The value of a is = 10
The value of a is = 0
The value of a is = 1
The value of a is = 13
The value of a is = 2
The value of a is = 7
*/
