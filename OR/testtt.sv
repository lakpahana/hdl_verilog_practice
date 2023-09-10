module Four_bit_adder(Num_1, Num_2, C_in, Out, C_out);
  input [3:0] Num_1;
  input [3:0] Num_2;
  input C_in;
  output [3:0] Out;
  output C_out;
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

