library IEEE;
use IEEE.std_logic_1164.all;
entity twobitcomparator is
  port
  (
    A, B       : in std_logic_vector(1 downto 0);
    F1, F2, F3 : out std_logic;
  );
end twobitcomparator;
architecture twobitarch of twobitcomparator is
begin

  F1 <= (A(1) xnor B(1)) and(A(0) xnor B(0));
  F2 <= (A(1) xnor B(1)) or ((A(1) xnor B(1)) and (A(0) xnor B(0)));
  F3 <= (A(1) xnor B(1)) or ((A(1) xnor B(1)) and (A(0) xnor B(0)));
end twobitarch;