// Code your testbench here
// or browse Examples
class dataa;
  bit [3:0] data1;
  bit [3:0] data2;
  function new(input [3:0]a,input [3:0]b);
    this.data1=a;
    this.data2=b;
  endfunction
  
  extern function void display();
  endclass
    function void dataa::display();
      $display(" The value id=s    %0b ,  %0b",this.data1,this.data2); 
      
    endfunction
    
    module tb();
      
      dataa d1;
      initial begin
        d1=new(4'b0011,4'b0001);
        d1.display();
        
      end
      
      
      
    endmodule
