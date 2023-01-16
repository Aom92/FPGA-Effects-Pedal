library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity AudioBufferTest is 
port( 

			-- CONEXIONES GENERALES DE LA FPGA -- 
			DE10CLK, ADCCLK : in std_logic; -- RELOJES
			DE10Reset : in std_logic;
			led_out : out std_logic_vector(15 downto 0);
			display0, display1, display2, display3 : out std_logic_vector (7 downto 0);

			--CONEXIONES PARA DAC
			Audio_Out : out std_logic_vector(15 downto 0);
			
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
signal adc_rempty : std_logic_vector(0 downto 0 );
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
signal sal_disp0, sal_disp1, sal_disp2,sal_disp3 : std_logic_vector(3 downto 0) := (others => '0');


-- LOGIC

signal addressCounter : std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal BufferFull : std_logic := '0';
signal write_done : boolean;
	
-- Componentes
component ADC is
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
		
		writerequest <= '0' after 15 ns;
		readrequest <= '1';

		finishRead := true;

		
		return finishRead;
	end function;

begin
	
	-- Instancias de componenetes. 
	--# INSTANCIA NUEVA DEL CONVERTIDOR A/D. AHORA UTILIZA EL MODULO ADC CON SECUENCIADOR E INTERFAZ AVALON MM.
	-- Ventajas: Requerimos menor cantidad de señales. Permite ver la señal desde el System Console. 
	-- Desventaja: Aumenta el tiempo de Compilacion al triple ( 30 segundos a 1 minuto con 55 segundos)
	u0 : component ADC
        port map (
            adc_valid,
			adc_sop,
			adc_eop,
			adc_rempty,
			adc_rchannel,
			adc_rdata,
			ADCCLK,
			DE10RESET
        );

	-- # INSTANCIA ANTERIOR DEL CONVERTIDOR A/D. UTILIZANDO UNICAMENTE EL MODULO:  ADC CORE 
	--u1 : component ADC
    --    port map (
    --        ADCCLK                ,    --clk_adc.clk
    --        DE10RESET              ,      --reset.reset_n
    --        adc_cvalid          ,     -- adc_command.valid
    --        adc_cchannel        ,     --.channel
    --        adc_csop  ,  --             .startofpacket
    --        adc_ceop    ,    --         .endofpacket
    --        adc_ready         ,       --.ready
    --        adc_valid      ,         -- adc_response.valid
    --        adc_rchannel     ,       --.channel
    --        adc_rdata        ,       --.data
    --        adc_sop,  --             	.startofpacket
    --        adc_eop     --             .endofpacket
    --    );  
	--	adc_cvalid <= '1';
	--	adc_cchannel <= "00001"; -- ??? ESto esta raro, no se cual sea la dedicated analog input pin, usando el canal "1" corresponde al pin 0 de la fpga
	--							 -- !!! La DE10-Lite no cuenta con el canal 0 dedicado a lecturas analogicas, por tanto se comienza desde el canal 1.
	--	adc_csop <= '1';
	--	adc_ceop <= '1';
	
	
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



	-- PROCESOS CONCURRENTES

	led_out <=  "0000" & adc_rdata;
	-- Salidas hacia los displays 7 segmentos
	--BufferFull <= not BufferFull when memaddress = X"3FFFFFF";
	sal_disp3 <= X"F" when BufferFull = '1' else X"0";	  
	

	bufferFullProc : process(DE10CLK)
  begin
	if rising_edge (DE10CLK) then
		
		-- La Lógica de las muestras es que:
		-- Tenemos 64 MB de RAM, la cual tiene una organización de 32M x 16. Lo cual significa que tenemos:
		--		32M (33 554 432) localidades de memoria, cada una de 16 bits (2 bytes).
		-- 		32M x 2 bytes = 64 MB de memoria. 
		-- Con una tasa de muestreo de 50 kHz, estamos guardando aprox. 50k muestras de 2 bytes cada segundo.
		-- Si contamos con espacio para guardar 32M de muestras nos tomaria: 	(32 K**K) / (50k/s) = 671.08 segundos escribir en toda la memoria.
		-- Esto nos da un total de 11.18 minutos de grabación de audio.
		-- Entonces, si se busca un "delay" de 3 segundos debemos guardar: 50k * 3 = 150k muestras solamente.
		-- siguiendo esta logica, con 2**16 muestras guardamos 1.31 minutos de audio.

		if (memaddress > X"B71B0") then --0xB71B0 = 750k, grabamos 750k muestras equivale a 5 segundos aprox. según la explicacion anterior. 
		
			BufferFull <= not BufferFull;
			
		end if;

	end if;
  end process;

-- Proceso contador de memoria, que se activa cada que hay una lectura valida del ADC.
	contadorMemoria : process (DE10CLK)
	begin
		IF rising_edge(DE10CLK) then

			if (adc_valid = '1' and adc_rchannel = "00001" ) then
				addressCounter <= addressCounter + 1;


				-- Revisar (?) : Convertir en constante el valor maximo que almacena
				if addressCounter > X"B71B0" then --
					addressCounter <= "00000000000000000000000000";
				end if;
			else
				addressCounter <= addressCounter + 0;
			end if;

		END IF;
	end process; 

-- Proceso para detectar cuando la memoria se haya llenado. 
	retardo : process(DE10CLK )
	variable fread : boolean;
	begin
		IF rising_edge(DE10CLK) THEN						  
			
			-- Cuando el contador < addressCounter > llega a su valor maximo la señal 
			-- BufferFull se activa y por lo tanto cambiamos de escribir a leer.
			IF (BufferFull = '0' and adc_valid = '1' and adc_rchannel = "00001") THEN							
				write_done <= SDRAM_write(addressCounter	, X"0" & adc_rdata  );

					sal_disp0 <= dataIN(3 downto 0);
					sal_disp1 <= dataIN(7 downto 4);
					sal_disp2 <= dataIN(11 downto 8);
					Audio_Out <= X"0" & adc_rdata;
			elsif (BufferFull = '1' and adc_valid = '1' and adc_rchannel = "00001") then
					fread := SDRAM_read(addressCounter);
					sal_disp0 <= dataOUT(3 downto 0);
					sal_disp1 <= dataOUT(7 downto 4);
					sal_disp2 <= dataOUT(11 downto 8);
					--Audio_Out <= dataOUT(15 downto 4); -- ??? Problemas de Endianess. 
					Audio_Out <= dataOUT + adc_rdata;
			
				

			end if;

		END IF; 
	
	end process;


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





	

end;