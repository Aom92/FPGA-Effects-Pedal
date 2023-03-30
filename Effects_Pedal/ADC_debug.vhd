library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity ADC_db is
  
  port (
    ADC_CLK : in std_logic;
    ADC_RESET : in std_logic;

    adc_data : out std_logic_vector(11 downto 0 );
    valid_data : out std_logic;
    adc_channel : out std_logic_vector(4 downto 0)
  );
end entity;

architecture rtl of ADC_db is
    --  ADC
    signal adc_valid, adc_sop, adc_eop,adc_ready,adc_csop, adc_ceop : std_logic;
    signal adc_rempty : std_logic_vector(0 downto 0 );
    signal adc_rchannel : std_logic_vector(4 downto 0);
    signal adc_rdata : std_logic_vector(11 downto 0);
    signal adc_cvalid : std_logic;
    signal adc_cchannel : std_logic_vector(4 downto 0);
-- Componentes
component ADC_debug is
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
    end component ADC_debug;	
begin
    -- Instancias de componenetes. 
	--# INSTANCIA NUEVA DEL CONVERTIDOR A/D. AHORA UTILIZA EL MODULO ADC CON SECUENCIADOR E INTERFAZ AVALON MM.
	-- Ventajas: Requerimos menor cantidad de señales. Permite ver la señal desde el System Console. 
	-- Desventaja: Aumenta el tiempo de Compilacion al triple ( 30 segundos a 1 minuto con 55 segundos)
	debugger : component ADC_debug
        port map (
            adc_valid,
			adc_sop,
			adc_eop,
			adc_rempty,
			adc_rchannel,
			adc_rdata,
			ADC_CLK,
			ADC_RESET
        );

    adc_data <= adc_rdata;
    valid_data <= adc_valid;
    adc_channel <= adc_rchannel;
    
end architecture;