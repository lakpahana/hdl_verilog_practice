module orgate(output o, input a,b);
  assign o = a | b;
endmodule

//test bench for orgate
module orgate_tb();
  reg a,b;
  wire o;
  orgate orgate_inst(o,a,b);
  initial
  begin
    a = 0;
    b = 0;
    #10 a = 1;
    #10 b = 1;
    #10 a = 0;
    #10 b = 0;
    #10 $finish;
  end

  always @(o)
  begin
    $display("o = %b",o);
  end

endmodule


