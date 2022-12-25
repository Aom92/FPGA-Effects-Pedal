library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity PWM is 
	Port( Reloj : in std_logic;
			D : in std_logic_vector (11 downto 0);
			S : out std_logic);
end PWM;

architecture Behavioral of PWM is
signal PWM_Acumulador : std_logic_vector(12 downto 0);
begin 
	process (Reloj)	
	begin	
		if rising_edge(Reloj) then
		
		PWM_Acumulador <= ( "0" & PWM_Acumulador(11 downto 0) ) + ( "0" & D  ) ;
		
		end if;
		
	end process;
	S <= PWM_Acumulador(12);
	
end Behavioral;


