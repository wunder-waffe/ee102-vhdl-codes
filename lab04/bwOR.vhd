library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bwOR is
   port (x3, x2, x1, x0 : IN std_logic;
         y3, y2, y1, y0 : IN std_logic;
         o3, o2, o1, o0 : OUT std_logic);
end bwOR;

architecture Behavioral of bwOR is
begin

o3 <= x3 OR y3;
o2 <= x2 OR y2;
o1 <= x1 OR y1;
o0 <= x0 OR y0;

end Behavioral;
