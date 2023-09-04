module test_not (

  );

  reg a;
  wire b;

  not not1 (b,a);

  initial
  begin
    a=0;
    #10 a=1;
    #10 a=0;
  end

  always @(a)
  begin
    $display("a=%b, b=%b", a, b);
  end


  initial
  begin
    $dumpfile("test_not.vcd");
    //this means dump all variables in the design
    $dumpvars(0, test_not);

  end


endmodule
