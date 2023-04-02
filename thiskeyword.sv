`timescale 1ns / 1ps
 
class temp;
 
bit [3:0] a;
 
function get_data(input bit [3:0] a);
this.a = a;
endfunction
 
endclass
 
 
module tb();
 
temp t1;
bit [3:0] data;
 
initial begin
t1 = new();
t1.get_data(4'b1010);
data = t1.a;
#10;
$display("Value of data member : %0b",data);
end
 
endmodule
 
