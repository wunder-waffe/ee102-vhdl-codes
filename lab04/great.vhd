library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity great is
    port (x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          gt             : OUT std_logic);
end great;

architecture Behavioral of great is
signal con1, con2, con3 : std_logic;
begin
    con1 <= (x3 XNOR y3) AND (x2 XNOR y2); -- 2-bit equal 
    con2 <= (x3 AND (NOT y3)) OR ((x3 XNOR y3) AND x2 AND (NOT y2)); -- 2 bit greater than MSB
    con3 <= (x1 AND (NOT y1)) OR ((x1 XNOR y1) AND x0 AND (NOT y0)); -- 2bit greater than LSB
    gt <= (con1 AND con3) OR con2;
end Behavioral;
