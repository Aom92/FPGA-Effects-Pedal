	component SDRAMtest is
		port (
			reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
			master_controller_address     : in    std_logic_vector(25 downto 0) := (others => 'X'); -- address
			master_controller_read        : in    std_logic                     := 'X';             -- read
			master_controller_waitrequest : out   std_logic;                                        -- waitrequest
			master_controller_readdata    : out   std_logic_vector(15 downto 0);                    -- readdata
			master_controller_write       : in    std_logic                     := 'X';             -- write
			master_controller_writedata   : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			avalon_reset_reset            : out   std_logic;                                        -- reset
			de10_clk_clk                  : in    std_logic                     := 'X';             -- clk
			sdram_clk_clk                 : out   std_logic;                                        -- clk
			sdram_wire_addr               : out   std_logic_vector(12 downto 0);                    -- addr
			sdram_wire_ba                 : out   std_logic_vector(1 downto 0);                     -- ba
			sdram_wire_cas_n              : out   std_logic;                                        -- cas_n
			sdram_wire_cke                : out   std_logic;                                        -- cke
			sdram_wire_cs_n               : out   std_logic;                                        -- cs_n
			sdram_wire_dq                 : inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
			sdram_wire_dqm                : out   std_logic_vector(1 downto 0);                     -- dqm
			sdram_wire_ras_n              : out   std_logic;                                        -- ras_n
			sdram_wire_we_n               : out   std_logic                                         -- we_n
		);
	end component SDRAMtest;

	u0 : component SDRAMtest
		port map (
			reset_reset_n                 => CONNECTED_TO_reset_reset_n,                 --             reset.reset_n
			master_controller_address     => CONNECTED_TO_master_controller_address,     -- master_controller.address
			master_controller_read        => CONNECTED_TO_master_controller_read,        --                  .read
			master_controller_waitrequest => CONNECTED_TO_master_controller_waitrequest, --                  .waitrequest
			master_controller_readdata    => CONNECTED_TO_master_controller_readdata,    --                  .readdata
			master_controller_write       => CONNECTED_TO_master_controller_write,       --                  .write
			master_controller_writedata   => CONNECTED_TO_master_controller_writedata,   --                  .writedata
			avalon_reset_reset            => CONNECTED_TO_avalon_reset_reset,            --      avalon_reset.reset
			de10_clk_clk                  => CONNECTED_TO_de10_clk_clk,                  --          de10_clk.clk
			sdram_clk_clk                 => CONNECTED_TO_sdram_clk_clk,                 --         sdram_clk.clk
			sdram_wire_addr               => CONNECTED_TO_sdram_wire_addr,               --        sdram_wire.addr
			sdram_wire_ba                 => CONNECTED_TO_sdram_wire_ba,                 --                  .ba
			sdram_wire_cas_n              => CONNECTED_TO_sdram_wire_cas_n,              --                  .cas_n
			sdram_wire_cke                => CONNECTED_TO_sdram_wire_cke,                --                  .cke
			sdram_wire_cs_n               => CONNECTED_TO_sdram_wire_cs_n,               --                  .cs_n
			sdram_wire_dq                 => CONNECTED_TO_sdram_wire_dq,                 --                  .dq
			sdram_wire_dqm                => CONNECTED_TO_sdram_wire_dqm,                --                  .dqm
			sdram_wire_ras_n              => CONNECTED_TO_sdram_wire_ras_n,              --                  .ras_n
			sdram_wire_we_n               => CONNECTED_TO_sdram_wire_we_n                --                  .we_n
		);

