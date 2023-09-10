module CD4017
  (
    clk,
    reset,
    clock_en,
    outputs,
    carry_out
  );
  
  input     logic       clk;
  input     logic       reset;
  input     logic       clock_en;
  output    logic       carry_out;
  output    logic [9:0] outputs;

  logic [9:0] counter;
  logic       carry_out;

  always_ff @(posedge clk)
  begin
    if (reset)
    begin
      counter <= 0;
      carry_out <= 0;
    end
    else if (clock_en)
    begin
      counter <= counter + 1;
      carry_out <= counter == 8;
    end
  end





  reg [9:0] check ;

  check = (counter == 4'b0000) ? 10'b0000000001 :
        (counter == 4'b0001) ? 10'b0000000010 :
        (counter == 4'b0010) ? 10'b0000000100 :
        (counter == 4'b0011) ? 10'b0000001000 :
        (counter == 4'b0100) ? 10'b0000010000 :
        (counter == 4'b0101) ? 10'b0000100000 :
        (counter == 4'b0110) ? 10'b0001000000 :
        (counter == 4'b0111) ? 10'b0010000000 :
        (counter == 4'b1000) ? 10'b0100000000 :
        (counter == 4'b1001) ? 10'b1000000000 : 10'b0000000000;

  assign outputs = check;

endmodule
