	component DOWNSAMPLER is
		port (
			ast_sink_data    : in  std_logic_vector(12 downto 0) := (others => 'X'); -- data
			ast_sink_valid   : in  std_logic                     := 'X';             -- valid
			ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => 'X'); -- error
			ast_source_data  : out std_logic_vector(25 downto 0);                    -- data
			ast_source_valid : out std_logic;                                        -- valid
			ast_source_error : out std_logic_vector(1 downto 0);                     -- error
			clk              : in  std_logic                     := 'X';             -- clk
			reset_n          : in  std_logic                     := 'X'              -- reset_n
		);
	end component DOWNSAMPLER;

	u0 : component DOWNSAMPLER
		port map (
			ast_sink_data    => CONNECTED_TO_ast_sink_data,    --   avalon_streaming_sink.data
			ast_sink_valid   => CONNECTED_TO_ast_sink_valid,   --                        .valid
			ast_sink_error   => CONNECTED_TO_ast_sink_error,   --                        .error
			ast_source_data  => CONNECTED_TO_ast_source_data,  -- avalon_streaming_source.data
			ast_source_valid => CONNECTED_TO_ast_source_valid, --                        .valid
			ast_source_error => CONNECTED_TO_ast_source_error, --                        .error
			clk              => CONNECTED_TO_clk,              --                     clk.clk
			reset_n          => CONNECTED_TO_reset_n           --                     rst.reset_n
		);

