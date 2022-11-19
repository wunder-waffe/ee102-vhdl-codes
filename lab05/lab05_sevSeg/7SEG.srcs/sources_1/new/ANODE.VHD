LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY anode IS
    PORT (Clock : IN STD_LOGIC;
          anv : OUT STD_LOGIC_VECTOR (1 downto 0));
END anode;
ARCHITECTURE Behavior OF anode IS
    SIGNAL Count : STD_LOGIC_VECTOR (1 DOWNTO 0) ;
    CONSTANT E : STD_LOGIC := '1';
    CONSTANT Resetn : STD_LOGIC := '1';
BEGIN
PROCESS (Clock) IS
BEGIN
    IF Resetn = '0' THEN
        Count <= "00";
        ELSIF (Clock'EVENT AND Clock = '1') THEN
        IF E = '1' THEN
        Count <= Count + 1;
        ELSE
        Count <= Count;
    END IF ;
END IF ;
    END PROCESS ;
    anv(0) <= Count(0);
    anv(1) <= Count(1);
END Behavior ;