module addertb();
  reg a, b;
  wire out;
  
  adder DUT (a, b, out);
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
    a = 0;
    b = 0;
    #5;
    a = 1;
   	b = 0;
    #5;
    a = 0;
    b = 1;
    #5;
    a = 1;
    b = 1;
    #5;
    $finish;
  end
endmodule
