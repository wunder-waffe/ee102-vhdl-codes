library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU is
    port(A3, A2, A1, A0         : IN std_logic;
         B3, B2, B1, B0         : IN std_logic;
         sel                    : IN std_logic_vector(2 downto 0);
         CinC                   : IN std_logic;
         Outt                   : OUT std_logic_vector(3 downto 0);
         Coutco                  : OUT std_logic);
end ALU;

architecture Behavioral of ALU is
-- Initialise all result signals, 
--signal sel_vec : std_logic_vector (2 downto 0);
signal 
res_add,
res_sub,
res_orb,
res_and,
res_gtr,
res_eql,
res_shr,
res_shl,
res_others : std_logic_vector (3 downto 0);

signal couta, couts   : std_logic;

component adder4
port (  Cina            : IN std_logic;
         x3, x2, x1, x0 : IN std_logic;
         y3, y2, y1, y0 : IN std_logic;
         o3, o2, o1, o0 : OUT std_logic;
         COUTF          : OUT std_logic) ;
end component;

component subtr4
port(    Cin            : IN std_logic;   
         z3, z2, z1, z0 : IN std_logic;
         w3, w2, w1, w0 : IN std_logic;
         t3, t2, t1, t0 : OUT std_logic;
         Cout           : OUT std_logic);
end component;

component bwOR
port (   x3, x2, x1, x0 : IN std_logic;
         y3, y2, y1, y0 : IN std_logic;
         o3, o2, o1, o0 : OUT std_logic);
end component;

component bwAND
port (    x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
end component;

component great
port(     x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          gt             : OUT std_logic);
end component;

component equal
port     (x3, x2, x1, x0 : IN std_logic;
          y3, y2, y1, y0 : IN std_logic;
          eq             : OUT std_logic);
end component;

component shiftR
port (    x3, x2, x1, x0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
end component;

component shiftL
    port (x3, x2, x1, x0 : IN std_logic;
          o3, o2, o1, o0 : OUT std_logic);
end component;

                     
begin
res_gtr(1) <= '0';
res_gtr(2) <= '0';
res_gtr(3) <= '0';
res_eql(1) <= '0';
res_eql(2) <= '0';
res_eql(3) <= '0';
res_others <= "0000";


alu0: adder4 port map (Cina => CinC, x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                       y3 => B3, y2=>B2, y1=>B1, y0=>B0,
                       o3=>res_add(3), o2=>res_add(2), o1=>res_add(1), o0 => res_add(0),
                       COUTF => couta);
alu1: subtr4 port map (Cin => CinC,
                       z3 => A3, z2 => A2, z1 => A1, z0 => A0,                                 
                       w3 => B3, w2 => B2, w1 => B1, w0 => B0,                                
                       t3 => res_sub(3), t2 => res_sub(2), t1 => res_sub(1), t0 => res_sub(0), 
                       Cout => couts) ;
alu2: bwOR port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                     y3  => B3, y2 => B2, y1  => B1, y0  => B0,
                     o3  => res_orb(3), o2 => res_orb(2), o1=> res_orb(1), o0=> res_orb(0));
alu3: bwAND port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                     y3  => B3, y2 => B2, y1  => B1, y0  => B0,
                     o3  => res_and(3), o2 => res_and(2), o1=> res_and(1), o0=> res_and(0));                                                                                                       
alu4: great port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                      y3  => B3, y2 => B2, y1  => B1, y0  => B0,
                      gt  => res_gtr(0));
alu5: equal port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                      y3  => B3, y2 => B2, y1  => B1, y0  => B0,
                      eq  => res_eql(0)); 
alu6: shiftR port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                       o3 =>res_shr(3) , o2 => res_shr(2), o1=> res_shr(1), o0=> res_shr(0));
alu7: shiftL port map (x3 => A3, x2 => A2, x1 => A1, x0 => A0,
                       o3 =>res_shl(3) , o2 => res_shl(2), o1=> res_shl(1), o0=> res_shl(0));       
                                                                             
with sel select Outt <=
res_add when "000",
res_sub when "001",
res_orb when "010",
res_and when "011",
res_gtr when "100",
res_eql when "101",
res_shr when "110",
res_shl when "111",
res_others when others;

with sel select Coutco <=
couta when "000",
--couts when "001",
'0' when others;

end Behavioral;
