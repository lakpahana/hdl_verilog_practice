module two_andgates_one_output();

  reg a,b,c;
  wire o1,y;

  andgate u1(o1,a,b);
  andgate u2(y,o1,c);

  initial
  begin
    a=0;
    b=0;
    c=0;
    #10 a=0;
    b=0;
    c=0;
    #10 a=0;
    b=0;
    c=1;
    #10 a=0;
    b=1;
    c=0;
    #10 a=0;
    b=1;
    c=1;
    #10 a=1;
    b=0;
    c=0;
    #10 a=1;
    b=0;
    c=1;
    #10 a=1;
    b=1;
    c=0;
    #10 a=1;
    b=1;
    c=1;
    #10 $finish;
  end

  always@(a or b or c)
  begin
    $display("a=%b b=%b c=%b y=%b",a,b,c,y);
  end

endmodule
