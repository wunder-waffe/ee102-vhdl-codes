LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY divider IS
    PORT (Clock : IN STD_LOGIC;
          clk18 : OUT STD_LOGIC);
END divider;
ARCHITECTURE Behavior OF divider IS
    SIGNAL Count : STD_LOGIC_VECTOR (17 DOWNTO 0) ;
    CONSTANT E : STD_LOGIC := '1';
    CONSTANT Resetn : STD_LOGIC := '1';
BEGIN
PROCESS (Clock) IS
BEGIN
IF Resetn = '0' THEN
        Count <= "000000000000000000";
        ELSIF (Clock'EVENT AND Clock = '1') THEN
        IF E = '1' THEN
        Count <= Count + 1;
        ELSE
        Count <= Count;
        END IF ;
    END IF ;
    END PROCESS ;

    clk18 <= Count(17);

END Behavior ;