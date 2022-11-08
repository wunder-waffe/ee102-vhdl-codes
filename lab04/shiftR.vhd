library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftR is
    port (x3, x2, x1, x0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
end shiftR;

architecture Behavioral of shiftR is
begin
    o3 <= '0';
    o2 <= x3;
    o1 <= x2;
    o0 <= x1;
end Behavioral;
