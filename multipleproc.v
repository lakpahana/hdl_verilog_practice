module multiple();

  // 1 bit variable with initial value 0
  reg x = 1'b0;
  // 1 bit variable with initial value 1
  reg y = 1'b1;
  reg z;

  always @(z)
  begin
    $display("x = %b, y = %b, z = %b", x, y, z);
  end

  initial
  begin
    #2;
    z = x ^ y; //this means z = x XOR y
    #10;
    y=0;
    z = x | y;
    #10;
    z = ~z; //this means z = NOT z
    #10;
  end

endmodule
