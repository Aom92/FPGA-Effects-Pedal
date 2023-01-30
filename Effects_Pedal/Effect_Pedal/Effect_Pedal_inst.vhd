	component Effect_Pedal is
		port (
			clk_clk                          : in  std_logic                     := 'X'; -- clk
			reset_reset_n                    : in  std_logic                     := 'X'; -- reset_n
			adc_0_sample_clk_clk             : out std_logic;                            -- clk
			adc_0_adc_response_valid         : out std_logic;                            -- valid
			adc_0_adc_response_startofpacket : out std_logic;                            -- startofpacket
			adc_0_adc_response_endofpacket   : out std_logic;                            -- endofpacket
			adc_0_adc_response_empty         : out std_logic_vector(0 downto 0);         -- empty
			adc_0_adc_response_channel       : out std_logic_vector(4 downto 0);         -- channel
			adc_0_adc_response_data          : out std_logic_vector(11 downto 0)         -- data
		);
	end component Effect_Pedal;

	u0 : component Effect_Pedal
		port map (
			clk_clk                          => CONNECTED_TO_clk_clk,                          --                clk.clk
			reset_reset_n                    => CONNECTED_TO_reset_reset_n,                    --              reset.reset_n
			adc_0_sample_clk_clk             => CONNECTED_TO_adc_0_sample_clk_clk,             --   adc_0_sample_clk.clk
			adc_0_adc_response_valid         => CONNECTED_TO_adc_0_adc_response_valid,         -- adc_0_adc_response.valid
			adc_0_adc_response_startofpacket => CONNECTED_TO_adc_0_adc_response_startofpacket, --                   .startofpacket
			adc_0_adc_response_endofpacket   => CONNECTED_TO_adc_0_adc_response_endofpacket,   --                   .endofpacket
			adc_0_adc_response_empty         => CONNECTED_TO_adc_0_adc_response_empty,         --                   .empty
			adc_0_adc_response_channel       => CONNECTED_TO_adc_0_adc_response_channel,       --                   .channel
			adc_0_adc_response_data          => CONNECTED_TO_adc_0_adc_response_data           --                   .data
		);

