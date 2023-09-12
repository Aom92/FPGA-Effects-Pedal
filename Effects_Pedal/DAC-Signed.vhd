--Basado en el codigo de FPGA4Fun.com
--https://www.fpga4fun.com/PWM_DAC_2.html
--Esto es una variacion del otro DAC Sigma-Delta de Primer orden. 
--Trabaja con valores con signo, representados en complemento a dos.


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity DAC_signed is
	generic(
		data_width : integer 
	);
	Port( Reloj : in std_logic;
			D : in signed (data_width-1 downto 0);
			S : out std_logic);
end DAC_signed;

architecture Behavioral of DAC_signed is
signal PWM_Acumulador : signed (data_width downto 0);
begin 
	process (Reloj)	
	begin	
		if rising_edge(Reloj) then
			
			--Cambiar el tipo de dato a signed, y realizar la summa operara con los valores correctos.
			PWM_Acumulador <= "0" & PWM_Acumulador(data_width-1 downto 0) + D;

		end if;
		
	end process;
	S <= PWM_Acumulador(data_width);
	
end Behavioral;
