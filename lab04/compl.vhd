library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity compl is
    port (x3, x2, x1, x0 : IN std_logic;
         o3, o2, o1, o0 : OUT std_logic);
end compl;

architecture Behavioral of compl is
begin

o0 <= x0;
o1 <= x0 XOR x1;
o2 <= x2 XOR (x0 OR x1);
o3 <= x3 XOR (x0 OR x1 OR x2);

end Behavioral;
