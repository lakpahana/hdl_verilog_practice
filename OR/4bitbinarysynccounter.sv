//DM71LS1614A 4-bit synchronous binary counter
//this should be able load,clear,enable,and count in binary from 0 to 15 folllowing clock pulses while providing counter outputs
//and ripple carry outputs
module DM71LS161A (Clear, Clock, Load, En_P, En_T, D_in, D_out, Cout);

  input Clear, Clock, Load, En_P, En_T;
  input [3:0] D_in;
  output reg [3:0] D_out;
  output Cout;

  reg [3:0] Q;
  reg [3:0] Q_next;
  reg Cout_next;

  always @ (Clear or Clock or Load or En_P or En_T or D_in)
  begin
    if (Clear == 1)
    begin
      Q_next = 4'b0000;
      Cout_next = 1'b0;
    end
    else if (Load == 1)
    begin
      Q_next = D_in;
      Cout_next = 1'b0;
    end
    else if (En_P == 1)
    begin
      Q_next = Q + 1;
      Cout_next = 1'b0;
    end
    else if (En_T == 1)
    begin
      Q_next = Q;
      Cout_next = 1'b1;
    end
    else
    begin
      Q_next = Q;
      Cout_next = 1'b0;
    end
  end

  
  always @ (posedge Clock)
  begin
    Q <= Q_next;
    Cout <= Cout_next;
  end

  assign D_out = Q;




endmodule

