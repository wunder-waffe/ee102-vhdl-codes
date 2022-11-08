library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtr4 is
    port(Cin            : IN std_logic;   
         z3, z2, z1, z0 : IN std_logic;
         w3, w2, w1, w0 : IN std_logic;
         t3, t2, t1, t0 : OUT std_logic;
         Cout           : OUT std_logic);
end subtr4;

architecture Behavioral of subtr4 is
signal cp3, cp2, cp1, cp0 : std_logic;

component adder4
    PORT ( Cina     : IN std_logic;
    x3, x2, x1, x0 : IN std_logic;
    y3, y2, y1, y0 : IN std_logic;
    o3, o2, o1, o0 : OUT std_logic;
    COUTF : OUT std_logic) ;
end component;

component compl
     port (x3, x2, x1, x0 : IN std_logic;
           o3, o2, o1, o0 : OUT std_logic);
end component;
begin
com: compl port map ( x3 => w3,  x2 => w2,  x1 => w1,  x0 => w0,
                      o3 => cp3, o2 => cp2, o1 => cp1, o0 => cp0);
                     
add: adder4 port map ( Cina => Cin, 
                       x3 => z3,  x2 => z2,  x1 => z1,  x0 => z0,
                       y3 => cp3, y2 => cp2, y1 => cp1, y0 => cp0,
                       o3 => t3, o2 => t2, o1 => t1, o0 => t0,
                       COUTF => Cout);
end Behavioral;
