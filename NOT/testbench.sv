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

  initial
  begin
    $monitor("a=%b, b=%b", a, b);
  end

  always @(a)
  begin
    $display("a=%b, b=%b", a, b);
  end

endmodule
