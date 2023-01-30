library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity RAM_controller is
  port (
    -- RELOJES -- 
    DE10CLK : std_logic;

    -- CONEXIONES A LA RAM --
    DRAM_CLK : out std_logic;
    DRAM_ADDR : out std_logic_vector(12 downto 0);
    DRAM_BA : out std_logic_vector (1 downto 0);
    DRAM_CAS_N,
    DRAM_CKE,
    DRAM_CS_N : out std_logic;
    DRAM_DQ : inout std_logic_vector(15 downto 0) := (others => 'X');
    DRAM_DQM : out std_logic_vector(1 downto 0);
    DRAM_RAS_N : out std_logic;
    DRAM_WE_N : out std_logic;

    -- CONEXIONES AL DEL CONTROLADOR DE LA RAM --
    address : in std_logic_vector(25 downto 0) := "00000000000000000000000000";
    read_op , write_op : in std_logic;
    read_buff : out std_logic_vector(15 downto 0);
    write_buff : in std_logic_vector(15 downto 0)

  );
end entity;


architecture rtl of RAM_controller is
    -- RAM Signals
    signal reset_dram : std_logic;
    signal fread : boolean;
    signal reset_n : std_logic;
    signal memaddress : std_logic_vector (25 downto 0) := "00000000000000000000000000";
    signal readrequest, writerequest : std_logic;
    signal waitrequest : std_logic;
    signal dataIN, dataOUT : std_logic_vector(15 downto 0 );
    signal RW_request : std_logic := '0';

    component SDRAMtest is
        port (
            avalon_reset_reset            : out   std_logic;                                        -- reset
            de10_clk_clk                  : in    std_logic                     := 'X';             -- clk
            master_controller_address     : in    std_logic_vector(25 downto 0) := (others => 'X'); -- address
            master_controller_read        : in    std_logic                     := 'X';             -- read
            master_controller_waitrequest : out   std_logic;                                        -- waitrequest
            master_controller_readdata    : out   std_logic_vector(15 downto 0);                    -- readdata
            master_controller_write       : in    std_logic                     := 'X';             -- write
            master_controller_writedata   : in    std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
            reset_reset_n                 : in    std_logic                     := 'X';             -- reset_n
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

    	-- Funciones
	function SDRAM_write(Address : std_logic_vector(25 downto 0); Data : std_logic_vector(15 downto 0)) 
		return boolean is 
		variable finishWrite : boolean;
	begin
		memaddress <= Address;
		dataIN <= Data;
		readrequest <= '0' ;
		writerequest <= '1';
		finishWrite := true;
		--memaddress <= memaddress + 1;
		return finishWrite ;
	end function; 


	function SDRAM_read(Address : std_logic_vector(25 downto 0 ))
		return boolean is
		variable finishRead : boolean;
	begin
		memaddress <= Address;
		
		writerequest <= '0' ;
		readrequest <= '1';

        
		finishRead := true;

		
		return finishRead;
	end function;
begin

	DRAM : component SDRAMtest
	  port map (
			reset_dram   ,        -- reset
			DE10CLK        , -- clk
			memaddress     , -- address
			readrequest    , -- read
			waitrequest    , -- waitrequest
			dataOUT        , -- readdata
			writerequest   , -- write
			dataIN         , -- writedata
			reset_n        , -- reset_n
			DRAM_CLK       , -- clk
			DRAM_ADDR      , -- addr
			DRAM_BA        , -- ba
			DRAM_CAS_N     , -- cas_n
			DRAM_CKE       , -- cke
			DRAM_CS_N      , -- cs_n
			DRAM_DQ        , -- dq
			DRAM_DQM       , -- dqm
			DRAM_RAS_N     , -- ras_n
			DRAM_WE_N        -- we_n
	  );

    read_buff <= dataOUT;
    dataIN <= write_buff;
    memaddress <= address;
    readrequest <= read_op;
    writerequest <= write_op;


--controlador : process (DE10CLK) is
--variable fread, fwrite : boolean;
--begin
--    if rising_edge(DE10CLK) then
--        if read_op = '1' and write_op = '0' then
--          fread := SDRAM_read(memaddress);
--        end if--
--        if write_op = '1' and read_op = '0' then
--          fwrite := SDRAM_write(memaddress, write_buff);
--        end if;
--    end if--
--end process;


end architecture;