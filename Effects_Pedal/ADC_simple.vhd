library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity ADC_simple is
  
  port (
    ADC_CLK : in std_logic;
    ADC_RESET : in std_logic;

    adc_data : out std_logic_vector(11 downto 0 );
    valid_data : out std_logic;
    adc_channel : out std_logic_vector(4 downto 0)
  );
end entity;

architecture bh of ADC_simple is 
--  ADC
signal adc_valid, adc_sop, adc_eop,adc_ready,adc_csop, adc_ceop : std_logic;
signal adc_rempty : std_logic_vector(0 downto 0 );
signal adc_rchannel : std_logic_vector(4 downto 0);
signal adc_rdata : std_logic_vector(11 downto 0);
signal adc_cvalid : std_logic;
signal adc_cchannel : std_logic_vector(4 downto 0);

-- Componentes

  


component ADC is
  port (
    adc_command_valid          : in  std_logic                     := '0';             --  adc_command.valid
    adc_command_channel        : in  std_logic_vector(4 downto 0)  := (others => '0'); --             .channel
    adc_command_startofpacket  : in  std_logic                     := '0';             --             .startofpacket
    adc_command_endofpacket    : in  std_logic                     := '0';             --             .endofpacket
    adc_command_ready          : out std_logic;                                        --             .ready
    adc_response_valid         : out std_logic;                                        -- adc_response.valid
    adc_response_startofpacket : out std_logic;                                        --             .startofpacket
    adc_response_endofpacket   : out std_logic;                                        --             .endofpacket                 
    adc_response_channel       : out std_logic_vector(4 downto 0);                     --             .channel
    adc_response_data          : out std_logic_vector(11 downto 0);                    --             .data
    clk_adc_clk                : in  std_logic                     := '0';             --      clk_adc.clk
    reset_reset_n              : in  std_logic                     := '0'              --        reset.reset_n
  );
end component ADC;	


begin
  --   # INSTANCIA ANTERIOR DEL CONVERTIDOR A/D. UTILIZANDO UNICAMENTE EL MODULO:  ADC CORE 
	u1 : component ADC
        port map (
            adc_cvalid          ,     -- adc_command.valid
            adc_cchannel        ,     --.channel
            adc_csop  ,  --             .startofpacket
            adc_ceop    ,    --         .endofpacket
            adc_ready         ,       --.ready
            adc_valid      ,         -- adc_response.valid
            adc_sop,  --             	.startofpacket
            adc_eop,     --             .endofpacket
            adc_rchannel     ,       --.channel
            adc_rdata        ,       --.data
            ADC_CLK                ,    --clk_adc.clk
            ADC_RESET                    --reset.reset_n
        );  
		adc_cvalid <= '1';
		adc_cchannel <= "00001"; -- ??? ESto esta raro, no se cual sea la dedicated analog input pin, usando el canal "1" corresponde al pin 0 de la fpga
								 -- !!! La DE10-Lite no cuenta con el canal 0 dedicado a lecturas analogicas, por tanto se comienza desde el canal 1.
		adc_csop <= '1';
		adc_ceop <= '1';
    

    adc_data <= adc_rdata;
    valid_data <= adc_valid;
    adc_channel <= adc_rchannel;

end architecture;