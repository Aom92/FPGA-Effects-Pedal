library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity AudioBufferTest is 
port( 

			-- CONEXIONES GENERALES DE LA FPGA -- 
			DE10CLK, ADCCLK : in std_logic; -- RELOJES
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


architecture test of AudioBufferTest is

--  ADC
signal adc_valid, adc_sop, adc_eop,adc_ready,adc_csop, adc_ceop : std_logic;
signal adc_rchannel : std_logic_vector(4 downto 0);
signal adc_rdata : std_logic_vector(11 downto 0);
signal adc_cvalid : std_logic;
signal adc_cchannel : std_logic_vector(4 downto 0);


-- RAM

signal reset_dram : std_logic;
signal reset_n : std_logic;
signal memaddress : std_logic_vector (25 downto 0) := "00000000000000000000000000";
signal readrequest, writerequest : std_logic;
signal waitrequest : std_logic;
signal dataIN, dataOUT : std_logic_vector(15 downto 0 );
signal RW_request : std_logic := '0';

--	 display 
signal sal_disp0, sal_disp1, sal_disp2 : std_logic_vector(3 downto 0) := (others => '0');

-- Declaracion de tipos --

type estado_type is (e1, e2, e3, e4);
signal estado_pres : estado_type;
signal estado_sig  : estado_type;


-- LOGIC

signal addressCounter : std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal BufferFull : std_logic;

	
-- Componentes
component ADC is
	  port (
			clk_adc_clk                : in  std_logic                     := 'X';             -- clk
			reset_reset_n              : in  std_logic                     := 'X';             -- reset_n
			adc_command_valid          : in  std_logic                     := 'X';             -- valid
			adc_command_channel        : in  std_logic_vector(4 downto 0)  := (others => 'X'); -- channel
			adc_command_startofpacket  : in  std_logic                     := 'X';             -- startofpacket
			adc_command_endofpacket    : in  std_logic                     := 'X';             -- endofpacket
			adc_command_ready          : out std_logic;                                        -- ready
			adc_response_valid         : out std_logic;                                        -- valid
			adc_response_channel       : out std_logic_vector(4 downto 0);                     -- channel
			adc_response_data          : out std_logic_vector(11 downto 0);                    -- data
			adc_response_startofpacket : out std_logic;                                        -- startofpacket
			adc_response_endofpacket   : out std_logic                                         -- endofpacket
	  );
 end component ADC;	

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
		writerequest <= '1';

		finishWrite := true;
	end function; 


	function SDRAM_read(Address : std_logic_vector(25 downto 0 ); Data : std_logic_vector(15 downto 0))
		return boolean is
		variable finishRead : boolean;
	begin
		memaddress <= Address;
		dataIN <= Data;
		readrequest <= '1';

		finishRead := true;
	end function;

begin
	
	-- Instancias de componenetes. 
	
	u1 : component ADC
        port map (
            ADCCLK                ,    --clk_adc.clk
            DE10RESET              ,      --reset.reset_n
            adc_cvalid          ,     -- adc_command.valid
            adc_cchannel        ,     --.channel
            adc_csop  ,  --             .startofpacket
            adc_ceop    ,    --         .endofpacket
            adc_ready         ,       --.ready
            adc_valid      ,         -- adc_response.valid
            adc_rchannel     ,       --.channel
            adc_rdata        ,       --.data
            adc_sop,  --             	.startofpacket
            adc_eop     --             .endofpacket
        );  
		adc_cvalid <= '1';
		adc_cchannel <= "00001"; -- ??? ESto esta raro, no se cual sea la dedicated analog input pin, usando el canal "1" corresponde al pin 0 de la fpga
		adc_csop <= '1';
		adc_ceop <= '1';
	
	
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

	  
	
-- Transiciones de estados.
	process (DE10cLK, DE10Reset)
	begin
		if DE10Reset = '1' then 
			estado_pres <= e1;
		elsif rising_edge(DE10CLK) then
			estado_pres <= estado_sig;
		end if;
	end process;
	
	
-- Proceso para detectar cuando la memoria se haya llenado. 
	retardo : process(DE10CLK,  memaddress, RW_request )
	begin
		IF rising_edge(DE10CLK) THEN						  
			
			-- Cuando el contador < addressCounter > llega a su valor maximo la señal 
			-- BufferFull se activa y por lo tanto cambiamos de escribir a leer.
			IF (BufferFull = '1' ) THEN							
				
				RW_request <= not RW_request;

				sal_disp0 <= dataOUT(3 downto 0);
				sal_disp1 <= dataOUT(7 downto 4);
				sal_disp2 <= dataOUT(11 downto 8);

			else

				sal_disp0 <= "----";
				sal_disp1 <= "----";
				sal_disp2 <= "----";

			end if;

		END IF; 
	
	end process;


	contadorMemoria : process (DE10CLK)
	begin
		IF rising_edge(DE10CLK) then
			
			addressCounter <= addressCounter + 1;

		END IF;
	end process; 
	  
	  
	fsm : process(estado_pres, RW_request, DE10Reset, waitrequest, adc_valid, adc_rdata, addressCounter, dataIN )	
	
	-- Salidas definidas en este proceso:
	--		memaddress, addressCounter, dataIN,readrequest, writerequest

	begin 
	reset_n <= '1';
		case estado_pres is 
			when e1 =>
				--inicial
				

				if (RW_request = '1') then
					estado_sig <= e2;
				else 
					estado_sig <= e3;
				end if;
				
				if (DE10Reset = '1') then
					memaddress <= "00000000000000000000000000";
				elsif DE10Reset = '0' then 
					memaddress <= addressCounter;
				end if;

				writerequest  <= '0';
				--addressCounter<= "--------------------------";
				dataIN		  <= "----------------";
				readrequest	  <= 'Z';
				writerequest  <= 'Z';
				memaddress    <= "--------------------------";
				
					
			when e2 =>
			-- Lectura
				if ( waitrequest = '0' ) then
					readrequest <= '1';
					--sal_disp0 <= dataOUT(3 downto 0);
					--sal_disp1 <= dataOUT(7 downto 4);
					--sal_disp2 <= dataOUT(11 downto 8);
				else
					readrequest <= '0';
				end if;
				
				estado_sig <= e4;

				writerequest  <= '0';
				--addressCounter<= "--------------------------";
				dataIN		  <= "----------------";
				memaddress    <= "--------------------------";
				writerequest  <= 'Z';
			
			when e3 =>
			-- Escritura		
				if (adc_valid = '1'and waitrequest = '0') then
		
					writerequest <= '1';
					
					dataIN <= X"0" & adc_rdata; 
					--addressCounter := addressCounter + 1;
				
				else
					writerequest <= '0';
					dataIN <= dataIN;
					--addressCounter := addressCounter + 0;
				end if;				
				--dataIN <= X"0000";
				estado_sig <= e4;
				
				memaddress    <= "--------------------------";
				--addressCounter<= "--------------------------";
				dataIN		  <= "----------------";
				readrequest	  <= 'Z';
				writerequest  <= 'Z';


			when e4 =>
				if ( addressCounter >= X"3FFFFFF") then
					--addressCounter := "00000000000000000000000000";	
				else	
					-- CHECK BEHAVIOR, MAY SKIP EVERY OTHER MEMORY ADDRESS WHEN WRRITTING INTO MEMORY.
					--addressCounter := addressCounter + 1;   
				end if;		
					estado_sig <= e1;
				
				memaddress    <= "--------------------------";
				--addressCounter<= "--------------------------";
				dataIN		  <= "----------------";
				readrequest	  <= 'Z';
				writerequest  <= 'Z';
				
		end case;
		
	end process;


	led_out <=  "0000" & adc_rdata;
	-- Salidas hacia los displays 7 segmentos
	
	
	BufferFull <= '1' when memaddress = X"3FFFFFF" else '0';

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






	

end;