library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD is 
	Port(   A : in signed(15 downto 0);
			B : in signed (25 downto 0);
			S : out signed(25 downto 0));
end ADD;


architecture rtl of ADD is
   signal reg : signed (25 downto 0);
begin

    S <= A + B;


end architecture;
