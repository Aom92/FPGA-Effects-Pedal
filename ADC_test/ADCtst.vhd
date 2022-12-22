library ieee;

use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity ADCtst is
	port
	(
		-- Input ports
		CLK,ADCLK	: in  std_logic;
		RESET : in std_logic;

		-- Output ports
		leds : out unsigned(11 downto 0);
		display0, display1, display2 : out std_logic_vector (7 downto 0)

	);
end ADCtst;

architecture bh of ADCtst is

--  ADC
signal adc_valid, adc_sop, adc_eop,adc_ready,adc_csop, adc_ceop : std_logic;
signal adc_rchannel : std_logic_vector(4 downto 0);
signal adc_rdata : std_logic_vector(11 downto 0);

signal adc_cvalid : std_logic;
signal adc_cchannel : std_logic_vector(4 downto 0);
signal adc_rempty : std_logic_vector(0 downto 0);

--	 display 
signal sal_disp0, sal_disp1, sal_disp2 : std_logic_vector(3 downto 0) := (others => '0');


    component ADC is
        port (
           	adc_response_valid         : out std_logic;                            -- valid
           	adc_response_startofpacket : out std_logic;                            -- startofpacket
           	adc_response_endofpacket   : out std_logic;                            -- endofpacket
           	adc_response_empty         : out std_logic_vector(0 downto 0);         -- empty
           	adc_response_channel       : out std_logic_vector(4 downto 0);         -- channel
           	adc_response_data          : out std_logic_vector(11 downto 0);        -- data
            clk_adc_clk                : in  std_logic                     := 'X'; -- clk
            reset_reset_n              : in  std_logic                     := 'X'  -- reset_n
        );
    end component ADC;	

begin

	u0 : component ADC
        port map (
            adc_valid,
			adc_sop,
			adc_eop,
			adc_rempty,
			adc_rchannel,
			adc_rdata,
			ADCLK,
			RESET
        );

		  
			--adc_cvalid <= '1';
			--adc_cchannel <= "00001"; -- ??? ESto esta raro, no se cual sea la dedicated analog input pin, usando el canal "1" corresponde al pin 0 de la fpga
			--adc_csop <= '1';
			--adc_ceop <= '1';



	adc_read : process(clk)
	begin
		if(rising_edge(clk)) then
			
			
			if( adc_valid = '1') then
				
				leds <= unsigned(adc_rdata);	
				
				sal_disp0 <= adc_rdata(3 downto 0);
				sal_disp1 <= adc_rdata(7 downto 4);
				sal_disp2 <= adc_rdata(11 downto 8);
			end if;
		
		end if;
	end process;
	

	
-- Decodificadores para los displays 7 segmentos.
with sal_disp0 select
		display0 <= X"81" when X"0",
						X"F3" when X"1",
						X"49" when X"2",
						X"61" when X"3",
						X"33" when X"4",
						X"25" when X"5",
						X"05" when X"6",
						X"F1" when X"7",
						X"01" when X"8",
						X"21" when X"9",
						X"11" when X"a",
						X"07" when X"b",
						X"8D" when X"c",
						X"43" when X"d",
						X"0D" when X"e",
						X"1D" when X"f",
						X"FF" when others;
						
with sal_disp1 select
		display1 <= X"81" when X"0",
						X"F3" when X"1",
						X"49" when X"2",
						X"61" when X"3",
						X"33" when X"4",
						X"25" when X"5",
						X"05" when X"6",
						X"F1" when X"7",
						X"01" when X"8",
						X"21" when X"9",
						X"11" when X"a",
						X"07" when X"b",
						X"8D" when X"c",
						X"43" when X"d",
						X"0D" when X"e",
						X"1D" when X"f",
						X"FF" when others;

with sal_disp2 select
		display2 <= X"81" when X"0",
						X"F3" when X"1",
						X"49" when X"2",
						X"61" when X"3",
						X"33" when X"4",
						X"25" when X"5",
						X"05" when X"6",
						X"F1" when X"7",
						X"01" when X"8",
						X"21" when X"9",
						X"11" when X"a",
						X"07" when X"b",
						X"8D" when X"c",
						X"43" when X"d",
						X"0D" when X"e",
						X"1D" when X"f",
						X"FF" when others;

end bh;