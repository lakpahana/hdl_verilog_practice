module Four_bit_adder(
    input [3:0] Num_1,
    input [3:0] Num_2,
    input C_in,
    output [3:0] Out,
    output C_out
  );
  wire [3:0] c;
  wire [3:0] s;
  assign c[0] = C_in;
  assign s[0] = Num_1[0] ^ Num_2[0] ^ C_in;
  assign c[1] = (Num_1[0] & Num_2[0]) | (Num_1[0] & C_in) | (Num_2[0] & C_in);
  assign s[1] = Num_1[1] ^ Num_2[1] ^ c[1];
  assign c[2] = (Num_1[1] & Num_2[1]) | (Num_1[1] & c[1]) | (Num_2[1] & c[1]);
  assign s[2] = Num_1[2] ^ Num_2[2] ^ c[2];
  assign c[3] = (Num_1[2] & Num_2[2]) | (Num_1[2] & c[2]) | (Num_2[2] & c[2]);
  assign s[3] = Num_1[3] ^ Num_2[3] ^ c[3];
  assign C_out = c[3];
  assign Out = s;
endmodule

module tb;


  reg [3:0] A, B;
  reg Cin;
  wire [3:0] Sum;
  wire Cout;


  Four_bit_adder uut (
                   .Num_1(A),
                   .Num_2(B),
                   .C_in(Cin),
                   .Out(Sum),
                   .C_out(Cout)
                 );

  reg clk = 0;
  always #5 clk = ~clk;

  initial
  begin


    A = 4'b0000;
    B = 4'b0000;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0000;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0001;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0001;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0010;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0010;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0011;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0011;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0100;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0100;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0101;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0101;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0110;
    Cin = 0;
    #10;
    A = 4'b0000;
    B = 4'b0110;
    Cin = 1;
    #10;
    A = 4'b0000;
    B = 4'b0111;
    Cin = 0;
    #10;



    $finish;
  end

  always @(posedge clk)
  begin
    $display("A=%b, B=%b, Cin=%b, Sum=%b, Cout=%b", A, B, Cin, Sum, Cout);
  end


endmodule
