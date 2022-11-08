LIBRARY ieee ;
USE ieee.std_logic_1164.all ;

ENTITY fulladd IS
    PORT ( Cin, x, y : IN std_logic ;
           s, Coutt : OUT std_logic ) ;
END fulladd ;

ARCHITECTURE LogicFunc OF fulladd IS
BEGIN
    s <= x XOR y XOR Cin ;
    Coutt <= (x AND y) OR (Cin AND x) OR (Cin AND y) ;
END LogicFunc ;