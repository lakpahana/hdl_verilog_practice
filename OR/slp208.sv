// Task 1

module Four_bit_adder (Num_1, Num_2, C_in, Out, C_out);
  // Defining inputs and outputs
  input [3:0] Num_1, Num_2;
  input C_in;
  output [3:0] Out;
  output C_out;

  // Adding two numbers and carry in bit
  // Assigning highest bit to the carry out and rest to the out
  assign {C_out, Out} = Num_1 + Num_2 + C_in;
endmodule


//Task 2

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
  logic [9:0] counter1;

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

  assign counter1 = (counter == 4'b0000) ? 10'b0000000001 :
         (counter == 4'b0001) ? 10'b0000000010 :
         (counter == 4'b0010) ? 10'b0000000100 :
         (counter == 4'b0011) ? 10'b0000001000 :
         (counter == 4'b0100) ? 10'b0000010000 :
         (counter == 4'b0101) ? 10'b0000100000 :
         (counter == 4'b0110) ? 10'b0001000000 :
         (counter == 4'b0111) ? 10'b0010000000 :
         (counter == 4'b1000) ? 10'b0100000000 :
         (counter == 4'b1001) ? 10'b1000000000 : 10'b0000000000;

  assign outputs=counter1;

endmodule

//Task 3

module DM71LS161A (
    input Clear,
    input Clock,
    input Load,
    input En_P,
    input En_T,
    input [3:0] D_in,
    output reg [3:0] D_out,
    output Cout
  );

  reg [3:0] counter_reg;
  wire [3:0] next_counter;


  always @(posedge Clock or posedge Clear)
  begin
    if (Clear)
      counter_reg <= 4'b0000;
    else if (Load)
      counter_reg <= D_in;
    else if (En_T)
      counter_reg <= next_counter;
  end


  always @(*)
  begin
    if (En_P)
      next_counter = D_in;
    else if (En_T)
      next_counter = counter_reg + 1;
  end


  assign Cout = counter_reg[3];
  always @(posedge Clock)
  begin
    if (En_P || Load)
      D_out <= D_in;
    else if (En_T)
      D_out <= counter_reg;
  end

endmodule
