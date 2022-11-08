library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity shiftL is
    port (x3, x2, x1, x0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
          
end shiftL;

architecture Behavioral of shiftL is
begin
    o3 <= x2;
    o2 <= x1;
    o1 <= x0;
    o0 <= '0';
end Behavioral;
