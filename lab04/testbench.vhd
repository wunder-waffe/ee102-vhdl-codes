library IEEE;
use IEEE.STD_LOGIC_1164.ALL

entity testbench is
--  Port ( );
end testbench;

architecture Behavioral of testbench is
component ALU 
port(
A3, A2, A1, A0         : IN std_logic; 
B3, B2, B1, B0         : IN std_logic;
sel                    : IN std_logic_vector(2 downto 0);
CinC                   : IN std_logic;
Outt                   : OUT std_logic_vector(3 downto 0);
Coutco                 : OUT std_logic);
end component;

signal A3, A2, A1, A0         : std_logic;
signal B3, B2, B1, B0         : std_logic;
signal sel                    : std_logic_vector (3 downto 0);
signal CinC                   : std_logic;
signal Outt                   : std_logic_vector (3 downto 0);
signal Coutco                 : std_logic;

begin
uut: ALU port map (A3 => A3, A2 => A2, A1 => A1, A0 => A0,
                   B3 => B3, B2 => B2, B1 => B1, B0 => B0,
                   sel => sel,
                   CinC => CinC,
                   Outt => Outt,
                   Coutco => Coutco);
                   
sim: process
begin
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "000"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "001"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "010"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "011"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0'; 
sel <= "100"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0'; 
sel <= "101"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "110"; CinC <= '0';
wait for 10ns;
A3 <= '1'; A2 <= '1'; A1 <= '1'; A0 <= '1';
B3 <= '0'; B2 <= '1'; B1 <= '1'; B0 <= '0';
sel <= "111"; CinC <= '0';
wait for 10ns;
end process;

end;
