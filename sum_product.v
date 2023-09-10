module sum_product();
  integer a;
  integer b;
  integer sum;

  real x,y;
  real prod_real;

  initial
  begin
    a = 5;
    b = 10;
    sum = a + b;
    $display("sum = %d",sum);


    x = 5.5;
    y = 10.5;
    prod_real = x * y;
    $display("prod_real = %f",prod_real);
  end

endmodule

