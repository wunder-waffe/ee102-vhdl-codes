library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity equal is
    port (x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          eq             : OUT std_logic);
end equal;
architecture Behavioral of equal is
begin

eq <= (x3 XNOR y3) AND (x2 XNOR y2) AND (x1 XNOR y1) AND (x0 XNOR y0);

end Behavioral;
