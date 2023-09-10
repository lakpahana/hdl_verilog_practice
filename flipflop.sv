//module for jkff
//input is clk, j, k
module jkff(clk, j, k, q, qbar);
  input clk, j, k;
  output q, qbar;
  reg q, qbar;
  always @(posedge clk)
  begin
    if(j==1 && k==0)
      q=1;
    else if(j==0 && k==1)
      q=0;
    else if(j==1 && k==1)
      q=~q;
  end
  assign qbar=~q;

endmodule


//testbench

module jkff_tb;
  reg clk, j, k;
  wire q, qbar;
  jkff jkff1(clk, j, k, q, qbar);
  initial
  begin
    clk=0;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10;
    j=0;
    k=0;
    #10;
    j=1;
    k=0;
    #10;
    j=0;
    k=1;
    #10;
    j=1;
    k=1;
    #10
     $finish;
  end
  always
    #5 clk=~clk;
endmodule
