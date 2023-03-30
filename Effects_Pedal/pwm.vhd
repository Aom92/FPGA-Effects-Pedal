--Codigo tomado de FPGA4Fun.com
--https://www.fpga4fun.com/PWM_DAC_2.html
-- ??? Esto es un DAC Sigma-Delta de Primer orden. 
-- Cual es la frecuencia optima para el reloj ? 
-- 50 Mhz - THD es demasiado alto.
-- 10 Mhz - THD alto.
-- 10 Mhz > X Mhz - THD ??? Que valor requeriré  

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DAC is 
	Port( Reloj, valid : in std_logic;
			D : in std_logic_vector (38 downto 0);
			S : out std_logic);
end DAC;

architecture Behavioral of DAC is
signal PWM_Acumulador : std_logic_vector(39 downto 0);
begin 
	process (Reloj)	
	begin	
		if rising_edge(Reloj) then
			
			PWM_Acumulador <= ( "0" & PWM_Acumulador(38 downto 0) ) + ( "0" & D  ) ;
			
		
		end if;
		
	end process;
	S <= PWM_Acumulador(39);
	
end Behavioral;


