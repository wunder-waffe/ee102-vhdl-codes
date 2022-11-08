library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bwAND is
    port (x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
end bwAND;

architecture Behavioral of bwAND is
begin

o3 <= x3 AND y3;
o2 <= x2 AND y2;
o1 <= x1 AND y1;
o0 <= x0 AND y0;

end Behavioral;
