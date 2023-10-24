library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity multiply is 
	Port(   A : in signed(15 downto 0);
			B : in signed (15 downto 0);
			S : out signed(25 downto 0));
end multiply;


architecture rtl of multiply is
   signal reg : signed (31 downto 0);
begin

    reg <= A * B;
	

end architecture;
