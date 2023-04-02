// Code your testbench here
// or browse Examples
class datahide;
  local bit [3:0] data=4'b1111; 
  function void dp();
    $display(" %b",this.data); 
    
  endfunction
  
endclass

module tb();
  bit [3:0] bir;
 datahide d1;
  initial begin
  d1=new;
    d1.dp();
  
  end
  
  
endmodule
