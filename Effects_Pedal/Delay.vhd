-- Delay utilizando la memoria SDRAM de la FPGA.
-- Autor: Hugo Juarez Perez
-- Fecha de Edición: 25/09/2023


-- EXPLICACION:
-- La Lógica de las muestras es que:
-- Tenemos 64 MB de RAM, la cual tiene una organización de 32M x 16. Lo cual significa que tenemos:
--		32M (33 554 432) localidades de memoria, cada una de 16 bits (2 bytes).
-- 		32M x 2 bytes = 64 MB de memoria. 
-- Con una tasa de muestreo de 50 kHz, estamos guardando aprox. 50k muestras de 2 bytes cada segundo.
-- Si contamos con espacio para guardar 32M de muestras nos tomaria: 	(32 K**K) / (50k/s) = 671.08 segundos escribir en toda la memoria.
-- Esto nos da un total de 11.18 minutos de grabación de audio.
-- Entonces, si se busca un "delay" de 3 segundos debemos guardar: 50k * 3 = 150k muestras solamente.
-- siguiendo esta logica, con 2**16 muestras guardamos 1.31 minutos de audio.


library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity Delay is
    generic (
        data_width : integer := 16
    );
    port (
        -- RELOJES
        CLK : in std_logic;
        -- SEÑALES DE ENTRADA
        input_audio : in unsigned(data_width-1 downto 0);
        sample_valid : in std_logic;
        enable : in std_logic;
        --CONEXIONES PARA DAC (Salida de audio)
        Audio_Out : out std_logic_vector(15 downto 0);

        -- CONEXIONES AL DEL CONTROLADOR DE LA RAM --
        address : out std_logic_vector(25 downto 0) := "00000000000000000000000000";
        read_op , write_op : out std_logic;
        read_buff : in unsigned(15 downto 0);
        write_buff : out std_logic_vector(15 downto 0)
    );
end entity;

architecture Behavioral of Delay is
    -- DELAY 
    signal addressCounter : integer range 0 to 67108863;
    signal BufferFull : std_logic := '0';
    constant DELAY_TIME : integer := 16#36EE8#;

    signal audioMix : unsigned (31 downto 0 ) := (others => '0');

begin

    -- PROCESOS CONCURRENTES
    Audio_Out <= std_logic_vector(audioMix)(15 downto 0);

    isRamFill : process(CLK)
    begin
        if rising_edge(CLK) then
            if (addressCounter > DELAY_TIME) then
                BufferFull <= not BufferFull;
            end if;
        end if;
    end process;


    contadorMemoria : process(CLK)
    -- proceso contador de memoria, se activa cada que hay una lectura valida del ADC
    begin
        if rising_edge(CLK) then
            if(sample_valid='1') then
                -- DELAY COUNTER
                addressCounter <= addressCounter + 1;
                
                if addressCounter > DELAY_TIME then
                    addressCounter <= 0;
                end if;
            
            else
                addressCounter <= addressCounter + 0;
            end if;
        end if;
    end process;

    delayEffect : process(CLK)
    begin 
        if rising_edge(CLK) then
            --Update Address Pointer
            address <= std_logic_vector(to_unsigned(addressCounter, address'length));

            -- Cuando el contador < addressCounter > llega a su valor máximo la señal
            -- < BufferFull > se activa y se cambia de realizar una escritura a una lectura. 
            if enable = '1' then
                if (BufferFull = '0' and sample_valid = '1' ) then							
				    -- ESCRITURA	
                    read_op <= '0';
                    write_op <= '1';
                    -- EXTENSION y NORMALIZACIÓN:
                    write_buff <= std_logic_vector(input_audio)(11) & X"0" & std_logic_vector(input_audio)(10 downto 0);
                    audioMix <= (( read_buff*100) + unsigned(std_logic_vector(input_audio)(11) & X"0" & std_logic_vector(input_audio)(10 downto 0))*100);

				elsif (BufferFull = '1' and sample_valid = '1' ) then
                    -- LECTURA 
                    write_op <= '0';
                    read_op <= '1';
                    audioMix <= (( read_buff*100)  + unsigned(std_logic_vector(input_audio)(11) & X"0" & std_logic_vector(input_audio)(10 downto 0))*75)  ;
            
				else
                    -- OUT CLEAN AUDIO --
					if (sample_valid = '1' ) then
					audioMix <= ( unsigned(std_logic_vector(input_audio)(11) & X"0" & std_logic_vector(input_audio)(10 downto 0))*100);
					end if;
					
				end if;	
            end if;
        end if;
    end process;
end architecture;