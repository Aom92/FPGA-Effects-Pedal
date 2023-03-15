library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity test_bench is
end entity test_bench;

architecture behavior of test_bech is
    component ADC_simple
        port(
            ADC_CLK : in std_logic;
            ADC_RESET : in std_logic;
            adc_data : out std_logic_vector(11 downto 0 );
            valid_data : out std_logic;
            adc_channel : out std_logic_vector(4 downto 0)
        );
    end component;

    component FIR
        port(
            ast_sink_data    : in  std_logic_vector(11 downto 0) := (others => '0'); --   avalon_streaming_sink.data
            ast_sink_valid   : in  std_logic                     := '0';             --                        .valid
            ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
            ast_source_data  : out std_logic_vector(50 downto 0);                    -- avalon_streaming_source.data
            ast_source_valid : out std_logic;                                        --                        .valid
            ast_source_error : out std_logic_vector(1 downto 0);                     --                        .error
            clk              : in  std_logic                     := '0';             --                     clk.clk
            reset_n          : in  std_logic                     := '0'              --                     rst.reset_n
        );
    end component;
    
    component DAC
        port(
            Reloj : in std_logic;
			D : in std_logic_vector (15 downto 0);
			S : out std_logic
        );
    end component;

    signal data_in : signed (12 downto 0);
    signal CLK : std_logic;
    signal reset : std_logic;
    signal audioData : std_logic_vector(11 downto 0);
    signal valid_adc : std_logic;
    signal adc_rchannel : std_logic_vector(4 downto 0);

    signal sink_error_in : std_logic := '0'; 
    signal sink_error : std_logic_vector(1 downto 0)  := (others => '0');
    signal filter_out : std_logic_vector(50 downto 0);
    signal filter_valid : std_logic;
    signal filter_error: std_logic;
    signal AudioOUT : std_logic;



begin

    ADC : entity work.ADC_simple(bh)
        port map (CLK,
                 reset,
                 audioData,
                 valid_adc,
                 adc_rchannel
                 );

    Filter : entity work.REVERB(rtl)
        port map(
                audioData,
                valid_adc,
                filter_error,
                filter_out,
                filter_valid,
                sink_error,
                CLK,
                reset

        );
    
    clock <= not clock after 10 ns;
    reset <= '1', '0' after 1000 ns;
    --DigOUT : entity work.DAC(Behavioral)
    --   port map();


end;
