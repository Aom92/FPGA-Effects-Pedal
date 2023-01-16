library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity EffectPedal is 
port( 

			-- CONEXIONES GENERALES DE LA FPGA -- 
			DE10CLK : in std_logic; -- RELOJES
			DE10Reset : in std_logic;
			led_out : out std_logic_vector(15 downto 0);
			display0, display1, display2, display3 : out std_logic_vector (7 downto 0);


			-- CONEXIONES AL RAM DRIVER --

			-- CONEXIONES AL DEL CONTROLADOR DE LA RAM --
			address : out std_logic_vector(25 downto 0) := "00000000000000000000000000";
			read_op , write_op : out std_logic;
			read_buff : in std_logic_vector(15 downto 0);
			write_buff : out std_logic_vector(15 downto 0);

			-- CONEXIONES PARA DEL ADC.
			adc_valid : in std_logic;
			adc_rdata : in std_logic_vector(11 downto 0);
			adc_rchannel : in std_logic_vector(4 downto 0);

			--CONEXIONES PARA DAC
			Audio_Out : out std_logic_vector(15 downto 0)
			
			




	);

end entity;


architecture test of EffectPedal is

--	 display 
signal sal_disp0, sal_disp1, sal_disp2,sal_disp3 : std_logic_vector(3 downto 0) := (others => '0');


-- LOGIC

signal addressCounter : std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal BufferFull : std_logic := '0';
signal write_done : boolean;
	
begin
	
	-- Instancias de componenetes. 
	--# INSTANCIA NUEVA DEL CONVERTIDOR A/D. AHORA UTILIZA EL MODULO ADC CON SECUENCIADOR E INTERFAZ AVALON MM.
	-- Ventajas: Requerimos menor cantidad de señales. Permite ver la señal desde el System Console. 
	-- Desventaja: Aumenta el tiempo de Compilacion al triple ( 30 segundos a 1 minuto con 55 segundos)



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
	
	
	



	-- PROCESOS CONCURRENTES

	led_out <=  "0000" & adc_rdata;
	-- Salidas hacia los displays 7 segmentos
	--BufferFull <= not BufferFull when memaddress = X"3FFFFFF";
	sal_disp3 <= X"F" when BufferFull = '1' else X"0";

	address <= addressCounter;	  
	

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

		if (addressCounter > X"B71B0") then --0xB71B0 = 750k, grabamos 750k muestras equivale a 5 segundos aprox. según la explicacion anterior. 
		
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
			-- ESCRITURA	
					sal_disp0 <= adc_rdata(3 downto 0);
					sal_disp1 <= adc_rdata(7 downto 4);
					sal_disp2 <= adc_rdata(11 downto 8);

					write_op <= '1';
					read_op <= '0';
					write_buff <= X"0" & adc_rdata;
					Audio_Out <= X"0" & adc_rdata;

			elsif (BufferFull = '1' and adc_valid = '1' and adc_rchannel = "00001") then
			-- LECTURA 
					read_op <= '1';
					write_op <= '0';

					sal_disp0 <= adc_rdata(3 downto 0);
					sal_disp1 <= adc_rdata(7 downto 4);
					sal_disp2 <= adc_rdata(11 downto 8);
					--Audio_Out <= dataOUT(15 downto 4); -- ??? Problemas de Endianess. 
					Audio_Out <= read_buff + adc_rdata;
			
				

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