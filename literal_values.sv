module literal_values();
  reg[7:0] my_var; //this means my_var is an 8-bit variable (8 bits wide) with initial value 0 (all bits are 0)

  initial
  begin
    my_var = 8'd137; //this means my_var is an 8-bit variable (8 bits wide) with initial value 137 (decimal)
    $display("my_var = %d", my_var);
    //137 in hex is 89
    my_var = 8'h89; //this means my_var is an 8-bit variable (8 bits wide) with initial value 89 (hexadecimal)
    $display("my_var = %h", my_var);
    //137 in binary is 10001001
    my_var = 8'b10001001; //this means my_var is an 8-bit variable (8 bits wide) with initial value 10001001 (binary)
    $display("my_var = %b", my_var);
    //assign 12bit binary to 8bit variable
    my_var = 8'b10001001_0001; //this means my_var is an 8-bit variable (8 bits wide) with initial value 00010001 (binary)
    $display("my_var = %b", my_var);
    //this displays 00010001 because the 8 most significant bits are truncated (removed)
  end
endmodule
