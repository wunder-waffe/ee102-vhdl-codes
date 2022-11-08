LIBRARY ieee ;
    USE ieee.std_logic_1164.all ;
    
ENTITY adder4 IS
    PORT ( Cina     : IN std_logic;
    x3, x2, x1, x0 : IN std_logic;
    y3, y2, y1, y0 : IN std_logic;
    o3, o2, o1, o0 : OUT std_logic;
    COUTF : OUT std_logic) ;
    
END adder4 ;
ARCHITECTURE Structure OF adder4 IS
SIGNAL c1, c2, c3 : std_logic ;

COMPONENT fulladd
PORT ( Cin, x, y : IN std_logic;
         s, Coutt : OUT std_logic );
END COMPONENT ;

BEGIN

stage0: fulladd PORT MAP ( Cin => Cina, x => x0, y => y0, s => o0, Coutt => c1 ) ;
stage1: fulladd PORT MAP ( Cin => c1, x => x1, y => y1, s => o1, Coutt => c2 ) ;
stage2: fulladd PORT MAP ( Cin => c2, x => x2, y => y2, s => o2, Coutt => c3 ) ;
stage3: fulladd PORT MAP (
Cin => c3, x => x3, y => y3, s => o3, Coutt => COUTF ) ;
END Structure ;