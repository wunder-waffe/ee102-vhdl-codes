library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Translate switch inputs to decimal, take each digit of the decimal and convert back to binary. BCD Converter
entity switchTran is
    port(sws   : IN std_logic_vector (13 downto 0);
         rep0 : OUT std_logic_vector (3 downto 0);
         rep1 : OUT std_logic_vector (3 downto 0);
         rep2 : OUT std_logic_vector (3 downto 0);
         rep3 : OUT std_logic_vector (3 downto 0));
         
end switchTran;
architecture Behavioral of switchTran is
signal inter_int : integer;
signal digi0     : integer; --LSB
signal digi1     : integer;
signal digi2     : integer;
signal digi3     : integer; --MSB
begin
inter_int <= to_integer(unsigned(sws));

digi0 <= (inter_int mod 10 );
digi1 <= ((inter_int/10) mod 10);
digi2 <= ((inter_int/100) mod 10);
digi3 <= ((inter_int/1000) mod 10);

process(inter_int) is
begin
if inter_int > 9999 then
    rep0 <= "1010";
    rep1 <= "1011";
    rep2 <= "1100"; -- High Z 
    rep3 <= "1100"; -- High Z 
else
    rep0  <=  std_logic_vector(to_unsigned(digi0, rep0'length));
    rep1  <=  std_logic_vector(to_unsigned(digi1, rep1'length));
    rep2  <=  std_logic_vector(to_unsigned(digi2, rep2'length));
    rep3  <=  std_logic_vector(to_unsigned(digi3, rep3'length));
end if;
end process;
end Behavioral;
