library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity reverb_block is
  port (
    clk : in std_logic;
    rst_n : in std_logic;
    in_data : in std_logic_vector(11 downto 0);
    valid : in std_logic;


    out_data : out std_logic_vector(42 downto 0)
  );
end entity;

architecture Behavioral of reverb_block is
    signal sorce_error : std_logic_vector(1 downto 0) := (others => '0');

    signal source_data : std_logic_vector(42 downto 0);
    signal source_data_valid : std_logic := '0';

    component REVERB is
        port (
            ast_sink_data    : in  std_logic_vector(11 downto 0) := (others => '0'); --   avalon_streaming_sink.data
            ast_sink_valid   : in  std_logic                     := '0';             --                        .valid
            ast_sink_error   : in  std_logic_vector(1 downto 0)  := (others => '0'); --                        .error
            ast_source_data  : out std_logic_vector(42 downto 0);                    -- avalon_streaming_source.data
            ast_source_valid : out std_logic;                                        --                        .valid
            ast_source_error : out std_logic_vector(1 downto 0);                     --                        .error
            clk              : in  std_logic                     := '0';             --                     clk.clk
            reset_n          : in  std_logic                     := '0'              --                     rst.reset_n
        );
    end component REVERB;



begin


    REVERB_inst : REVERB
        port map (
            ast_sink_data    => in_data,
            ast_sink_valid   => valid,
            ast_sink_error   => sorce_error,
            ast_source_data  => source_data,
            ast_source_valid => source_data_valid,
            ast_source_error => open,
            clk              => clk,
            reset_n          => rst_n
        );



    process (clk)
    begin

        if rising_edge(clk) then
            --if source_data_valid = '1' then
                out_data <= source_data(42 downto 0);
            --end if;
        end if;
    end process;

end architecture;

