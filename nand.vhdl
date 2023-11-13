library ieee;
use ieee.std_logic_1164.all;

entity nand_gate is
  port
  (
    x, y : in std_logic;
    z    : out std_logic;

  );
end nand_gate;

architecture data_nand of nand_gate is
begin
  z <= not (x and y);

end data_nand;