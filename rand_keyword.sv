
class transaction;
  rand bit [3:0]a;
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


/*output:
The value of a is = 9
The value of a is = 11
The value of a is = 10
The value of a is = 7
The value of a is = 0
The value of a is = 3
The value of a is = 10
The value of a is = 3
The value of a is = 0
The value of a is = 9
*/
