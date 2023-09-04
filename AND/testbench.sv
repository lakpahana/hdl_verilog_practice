module tb();
  reg x,y;
  wire z;
  //from this point on, the and1 module will be instantiated
  //the .o(z) means that the output of the and1 module is z
  //the .a(x) means that the input a of the and1 module is x
  //the .b(y) means that the input b of the and1 module is y
  //the and1 module is instantiated with the name and1
  //the and1 module is instantiated with the name and1

  andgate and1 (.o(z), .a(x), .b(y));

  initial
  begin
    x=0;
    y=0;
    // #1 means 1 time unit delay
    #1 x=0;
    y=1;
    #1 x=1;
    y=0;
    #1 x=1;
    y=1;

  end

  //from this point on, the always block will be executed
  //every time unit (1 time unit delay) until the end of the simulation
  //the @(*) means that the always block will be executed
  //every time that any of the variables inside the always block changes
  //the $display will print the values of the variables

  always@(*)
  begin
    $display(x, y, z);
  end

endmodule

