class transaction;
randc bit [4:0] a;
 
constraint c1 {a > 7;};
constraint c2 {a < 15;};
endclass
 
module tb();
transaction t1,t2;
integer i;
bit [4:0] data1,data2;
 
initial begin
t1 = new();
t2 = new();
 
 
for(i =0; i < 10; i++) begin
t1.randomize();
t2.randomize();

#10;
  $display("value of t1 : %0d and t2: %0d",t1.a,t2.a);
end
end
endmodule

/*value of t1 : 10 and t2: 11
value of t1 : 11 and t2: 14
value of t1 : 9 and t2: 10
value of t1 : 12 and t2: 8
value of t1 : 14 and t2: 12
value of t1 : 13 and t2: 13
value of t1 : 8 and t2: 9
value of t1 : 14 and t2: 12
value of t1 : 12 and t2: 10
value of t1 : 10 and t2: 9*/
