// Code your testbench here
// or browse Examples
class transaction;
  rand bit [3:0]a;
  rand bit [3:0]b;
  rand bit [3:0]c;
  bit [4:0]d;
  endclass


module tb();
  transaction t1;
  initial begin
    t1=new();
    for(int i=0;i<10;i++)
  begin
  
    t1.randomize();
    #10;
    $display("a= %0d, b=%0d, c=%0d",t1.a,t1.b,t1.c);
  end
  end
endmodule
