library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;


entity EffectPedal is 
generic (
    SAMPLE_WIDTH  : positive := 12;
    PHASE_SHIFT   : positive := 8;
    FEEDBACK_GAIN : positive := 14
  );
port( 

			-- RELOJES y RESETS -- 
			DE10CLK : in std_logic; -- RELOJES
			DE10Reset : in std_logic;

			-- SALIDAS VISUALES --
			led_out : out std_logic_vector(9 downto 0);
			display0, display1, display2, display3 : out std_logic_vector (3 downto 0);
			-- ENTRADAS DE CONTROL --
			delay_enable : in std_logic;
			phase_enable : in std_logic;
			distort_enable : in std_logic;
			octave_enable : in std_logic;
			--reverb_enable : in std_logic;

			-- CONEXIONES AL DELAY FIFO -- 
			--fifo_empty : in std_logic;
			--fifo_full  : in std_logic;
			--fifo_read  : out std_logic;
			--fifo_write : out std_logic;

			-- CONEXIONES AL DEL CONTROLADOR DE LA RAM --
			address : out std_logic_vector(25 downto 0) := "00000000000000000000000000";
			read_op , write_op : out std_logic;
			read_buff : in unsigned(15 downto 0);
			write_buff : out std_logic_vector(15 downto 0);

			-- CONEXIONES PARA DEL ADC.
			adc_valid : in std_logic;
			adc_rdata : in unsigned(11 downto 0);
			adc_channel : in std_logic_vector(4 downto 0);

			--CONEXIONES PARA DAC
			Audio_Out : out std_logic_vector(15 downto 0)
			
	);

end entity;


architecture test of EffectPedal is

--	 display 
signal sal_disp0, sal_disp1, sal_disp2,sal_disp3 : std_logic_vector(3 downto 0) := (others => '0');


-- LOGIC

--signal addressCounter : std_logic_vector(25 downto 0) := "00000000000000000000000000";
signal addressCounter : integer range 0 to 67108863;
signal BufferFull : std_logic := '0';
signal write_done : boolean;
constant SAMPLE_DELAY : integer :=  16#124F8#;
constant DELAY_TIME : integer := 16#36EE8#;

signal audioMix : unsigned (31 downto 0 ) := (others => '0');

-- PHASER


signal phase      : unsigned (30 downto 0) := (others => '0');
signal feedback   : unsigned (30 downto 0) := (others => '0');
signal filtered   : unsigned (30 downto 0) := (others => '0');
signal delayed    : unsigned (30 downto 0) := (others => '0');
signal cos_phase  : unsigned (30 downto 0) := (others => '0');
signal output_int : integer;
constant PI       : real := 3.14159265358979323846;
constant TWO_PI   : real := 6.283185307179586;
constant MAX_VAL  : integer := 1023;
constant MIN_VAL  : integer := -2048;
constant PI_OVER_SAMPLE_WIDTH : real := PI / (2.0 ** PHASE_SHIFT);
constant INTERPOLATION_FACTOR : natural := 2;
-- DISTORSION
constant THRESHOLD_P : integer := 2113;
constant THRESHOLD_N : integer := 1983;
signal phase_offset : unsigned (30 downto 0);
signal audio_int : integer;
signal voltaje_in : integer;
signal audio_dist : unsigned (11 downto 0);


-- OCTAVER
signal counter : integer range 0 to 1 := 0;
signal sample_hold : unsigned (11 downto 0) := (others => '0');
signal oct_out : unsigned (11 downto 0) := (others => '0');


begin
	
	-- PROCESOS CONCURRENTES
	sal_disp3 <= X"F" when BufferFull = '1' else X"0";
	led_out <= std_logic_vector(adc_rdata(9 downto 0));
	display0 <= std_logic_vector(adc_rdata)(3 downto 0);
	display1 <= std_logic_vector(adc_rdata)(7 downto 4);
	display2 <= std_logic_vector(adc_rdata)(11 downto 8);


	--led_out <=  "0000" & adc_rdata;
	-- Salidas hacia los displays 7 segmentos
	--BufferFull <= not BufferFull when memaddress = X"3FFFFFF";

	

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

		if (addressCounter > DELAY_TIME) then --0xB71B0 = 750k, grabamos 750k muestras equivale a 5 segundos aprox. según la explicacion anterior. 
		
			BufferFull <= not BufferFull;
			
		end if;

	end if;
  end process;

-- Proceso contador de memoria, que se activa cada que hay una lectura valida del ADC.
	contadorMemoria : process (DE10CLK)
	begin
		IF rising_edge(DE10CLK) then

			if (adc_valid = '1' and adc_channel = "00001" ) then

				if octave_enable = '1' then

					addressCounter <= addressCounter + 2;

				else 

					addressCounter <= addressCounter + 1;

				end if;

				-- Revisar (?) : Convertir en constante el valor maximo que almacena
				if addressCounter > DELAY_TIME then --
					addressCounter <= 0;
				end if;
			else
				addressCounter <= addressCounter + 0;
			end if;

		END IF;
	end process; 

-- Proceso para detectar cuando la memoria se haya llenado. 
	Efectos : process(DE10CLK )
	variable fread : boolean;
	variable sample_escaled : std_logic_vector (15 downto 0 );
	variable sample_out : std_logic_vector (15 downto 0);
	variable factor1 : integer := 1;
	begin
		IF rising_edge(DE10CLK) THEN						  
			address <= std_logic_vector(to_unsigned(addressCounter, address'length));
			
			-- Cuando el contador < addressCounter > llega a su valor maximo la señal 
			-- BufferFull se activa y por lo tanto cambiamos de escribir a leer.
			if delay_enable = '1' then
				
				IF (BufferFull = '0' and adc_valid = '1' and adc_channel = "00001" ) THEN							
				-- ESCRITURA	
						
						read_op <= '0';
						write_op <= '1';
											
						--write_buff <= ( X"0" & std_logic_vector(adc_rdata) );
						-- EXTENSION y NORMALIZACIÓN:
						
						write_buff <= std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0);
						audioMix <= (( read_buff*100) + unsigned(std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0))*100);

				elsif (BufferFull = '1' and adc_valid = '1' and adc_channel = "00001" ) then
				-- LECTURA 
						write_op <= '0';
						read_op <= '1';
						

						--Audio_Out <= dataOUT(15 downto 4); -- ??? Problemas de Endianess. 
						audioMix <= (( read_buff*100)  + unsigned(std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0))*75)  ;
				
					

				end if;
			
			else
				
				if (adc_valid = '1' and adc_channel = "00001") then
				  audioMix <= ( unsigned(std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0))*100);
				end if;
				-- OUT CLEAN AUDIO --
				
			end if;
				
			-- CODIGO DE MUESTRA BASADO EN UNA INTERACCION CON CHATGPT
			if phase_enable = '1' then

				--if (adc_valid = '1' and adc_channel = "00001") then
				--	filtered <= adc_rdata + feedback;
				--	phase(1) <= phase(0) + phase_offset;
				--	if phase(1) >= TWO_PI then
				--		phase(1) <= phase(1) - TWO_PI;
				--	end if;
				--	cos_phase <= unsigned(resize(round((cos(PI * phase(1) / (2 ** PHASE_SHIFT)) + 1.0) * MAX_VAL / 2.0), cos_phase'length));
				--	delayed <= filtered * cos_phase;
				--	feedback <= unsigned(resize(round(delayed * FEEDBACK_GAIN / (2.0 ** (SAMPLE_WIDTH - 1))), feedback'length));
				--	output_int <= integer(resize(round(delayed / (2.0 ** (SAMPLE_WIDTH - 1))), output_int'length));
				--	audioMix <= unsigned(output_int);
				--	phase(0) <= phase(1);
				--end if;

			end if;

			-- Distorcion
			if distort_enable = '1' then
				
				voltaje_in <= to_integer(adc_rdata)/4095 * 5;  --Valor del voltaje de entrada
				audio_int <= to_integer(adc_rdata); 
				
				if (adc_valid = '1' and adc_channel = "00001") then
					
					if adc_rdata > 2196 then
						audio_int <= audio_int + 2196;

					
				
					else
						audio_int <= to_integer(adc_rdata); 
					
					end if;
					
					
					audioMix <= to_unsigned(audio_int,16)*100;
					
				  	--audioMix <= X"00000" & shift_right(adc_rdata,4);
				end if;

			end if;

			--Octavador +1 Octave
			if octave_enable = '1' then

				-- Segunda opcion DOWNSAMPLER
				--if (adc_valid = '1' and adc_channel = "00001") then
--
				--	sample_hold <= adc_rdata;
				--	counter <= counter + 1;
--
				--	if counter = 0 then
				--		oct_out <= sample_hold;
				--	else
				--		oct_out <= adc_rdata;
				--	end if;
--
				--	
				--end if;
				--audioMix <= ( unsigned(std_logic_vector(oct_out)(11) & X"0" & std_logic_vector(oct_out)(10 downto 0))*100);
				--
				-- primera opcion ESCRIBIR AL BUFFER.
				read_op <= '0';
				write_op <= '1';
				write_buff <= std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0);


				-- LECTURA INSTANEA AL BUFFER.
				write_op <= '0';
				read_op <= '1';
				audioMix <= (( read_buff*100)  + unsigned(std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0))*75);
				--Desde otro proceso se estan leyendo al doble de velocidad. veremos que sucede

			
			end if;
			

			
		END IF; 
	end process;


--phase_offset <= unsigned(resize(round(PHASE_SHIFT * PI_OVER_SAMPLE_WIDTH / PI), phase_offset'length));

Audio_Out <= std_logic_vector(audioMix)(15 downto 0);

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