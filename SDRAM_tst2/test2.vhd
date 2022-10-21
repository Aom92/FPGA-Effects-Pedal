library ieee;

use ieee.std_logic_1164.all;	
use ieee.std_logic_unsigned.all;


entity test2 is
port(
		-- CONEXIONES GENERALES DE LA FPGA -- 
		DE10CLK : in std_logic; -- RELOJ
		RW_switch : in std_logic;
		addrUp, addDw : in std_logic;
		DE10Reset : in std_logic;
		led_out : out std_logic_vector(15 downto 0);
		display0, display1, display2, display3 : out std_logic_vector (7 downto 0);
		
		
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
		DRAM_WE_N : out std_logic


);

end entity;


architecture bh of test2 is
-- Declaracion de Señales -- 
signal reset : std_logic;
signal reset_n : std_logic;
signal memaddress : std_logic_vector (25 downto 0) := "00000000000000000000000000";

signal sal_disp0, sal_disp1, sal_disp2, sal_disp3 : std_logic_vector(3 downto 0) := (others => '0');


-- Señales de Control 
signal readrequest, writerequest : std_logic;
signal waitrequest : std_logic;

-- Señales de Datos -- 
signal dataIN, dataOUT : std_logic_vector(15 downto 0 );
signal Arriba, Abajo, Aumentar, Disminuir : std_logic;

-- Declaracion de tipos --

type estado_type is (e1, e2, e3, e4);
signal estado_pres : estado_type;
signal estado_sig  : estado_type;


-- Declaracion de Componenetes --

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

begin
-- Instancias de Componenetes --
	DRAM : component SDRAMtest
        port map (
            reset   ,                                        -- reset
            DE10CLK        ,                               -- clk
            memaddress     , -- address
            readrequest    ,            -- read
            waitrequest    ,                                     -- waitrequest
            dataOUT        ,                    -- readdata
            writerequest   ,            -- write
            dataIN         , -- writedata
            reset_n        ,             -- reset_n
            DRAM_CLK       ,                                        -- clk
            DRAM_ADDR      ,                    -- addr
            DRAM_BA        ,                     -- ba
            DRAM_CAS_N     ,                                        -- cas_n
            DRAM_CKE       ,                                        -- cke
            DRAM_CS_N      ,                                       -- cs_n
            DRAM_DQ        , -- dq
            DRAM_DQM       ,                     -- dqm
            DRAM_RAS_N     ,                                  -- ras_n
            DRAM_WE_N                                           -- we_n
        );

-- Maquina de Estado --
	-- Transiciones de estados.
	process (DE10cLK, DE10Reset)
	begin
		if DE10Reset = '1' then 
			estado_pres <= e1;
		elsif rising_edge(DE10CLK) then
		
			if ( addrUp = '0' and arriba = '1' ) then
				Aumentar <= '1';
			else
				Aumentar <= '0';
			
			end if;
			
			if (addDw = '0' and abajo = '1') then
				Disminuir <= '1';
			else 
			
				Disminuir <= '0';
			end if;
			
			
			arriba <= AddrUp;
		
			estado_pres <= estado_sig;
		end if;
	end process;
	
	
	fsm : process(estado_pres, RW_switch, addDw, addrUp)	
	variable UpPress, DwPress : std_logic := '1';
	begin 
	
		case estado_pres is 
			
			when e1 =>
				--inicial
				reset <= '0';
				reset_n <= '1';
				
				if (RW_switch = '1') then
					estado_sig <= e2;
				else 
					estado_sig <= e3;
				end if;
				
				if (DE10Reset = '1') then
					memaddress <= "00000000000000000000000000";
				end if;
				
				
			when e2 =>
			-- Lectura
				
				readrequest <= '1';
				writerequest <= '0';
				
				if ( waitrequest = '0' ) then
					
					led_out <= dataOUT;
					--readrequest <= '0';
					
				end if;
				
				estado_sig <= e4;
			
			when e3 =>
			-- Escritura
				
				readrequest <= '0';
				writerequest <= '1';
				
				if (waitrequest = '0') then
					dataIN <= X"0185";
					--writerequest <= '0';
				end if;
				
				--dataIN <= X"0000";
				estado_sig <= e4;
				
				
			when e4 =>
				
				if ( AddrUp = '0' and waitrequest = '1') then
						
					memaddress <= memaddress + 1;
		
				end if;
				
				
				if (addDw = '0' and waitrequest = '1') then
					memaddress <= memaddress - 1;
				end if;
				
				estado_sig <= e1;
			--
		
		end case;
		
	end process;
	

	


-- Fin Maquina de Estados. 


-- Salidas hacia los displays 7 segmentos
	sal_disp0 <= memaddress(3 downto 0);
	sal_disp1 <= memaddress(7 downto 4);
	sal_disp2 <= memaddress(11 downto 8);
	sal_disp3 <= memaddress(15 downto 12);
	

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

with sal_disp3 select
		display3 <= X"81" when X"0",
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