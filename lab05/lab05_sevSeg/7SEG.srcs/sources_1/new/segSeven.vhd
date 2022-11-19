library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity segSeven is
    port(CLK   : IN std_logic;
         sw    : IN std_logic_vector (13 downto 0);
         seg   : OUT std_logic_vector (6 downto 0);
         an    : OUT std_logic_vector (3 downto 0));
end segSeven;

architecture Behavioral of segSeven is
signal clk18 : std_logic;
signal rp0,rp1,rp2,rp3, rpint : std_logic_vector (3 downto 0);
signal anvec : std_logic_vector (1 downto 0);
signal finalT : std_logic_vector (6 downto 0);

component divider
port (Clock   : IN std_logic;
      clk18   : OUT std_logic);
end component;

component switchTran
    port(sws   : IN std_logic_vector (13 downto 0);
         rep0 : OUT std_logic_vector (3 downto 0);
         rep1 : OUT std_logic_vector (3 downto 0);
         rep2 : OUT std_logic_vector (3 downto 0);
         rep3 : OUT std_logic_vector (3 downto 0));
end component;

component anode
    port (Clock : IN STD_LOGIC;
          anv : OUT STD_LOGIC_VECTOR (1 downto 0));
end component;

component TranTran
    port(a : IN std_logic_vector (3 downto 0);
         b : OUT std_logic_vector (6 downto 0));
end component;

begin

divid: divider port map (Clock => CLK, clk18 => clk18);

translate: switchTran port map (sws => sw, 
                                rep0 => rp0,
                                rep1 => rp1,
                                rep2 => rp2,
                                rep3 => rp3);
                                
anod: anode port map (Clock => clk18, anv => anvec);

trant: TranTran port map (a => rpint, b => seg);

process (CLK18) is
begin
if rising_edge(CLK18) then
    case anvec is
        when "00" =>
            rpint <= rp0;
            an <= "1110";
        when "01" =>
            rpint <= rp1;
            an <= "1101";
        when "10" =>
            rpint <= rp2;
            an <= "1011";
        when "11" =>
            rpint <= rp3;
            an <= "0111";
        when others =>
            rpint <= "1100";
        end case;
end if;
end process;

end Behavioral;