library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity Octave is
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

architecture Behavioral of Octave is
    -- OCTAVER
    signal reset_address : std_logic := '0';
    signal play_octave : boolean;
    signal addressCounter : integer range 0 to 67108863; -- TODO: Parametrizar despues

    constant OCTAVE_BUFFER : integer := 3072;
    

    signal audioMix : unsigned (31 downto 0 ) := (others => '0');
begin


    -- PROCESOS CONCURRENTES
    Audio_out <= std_logic_vector(audioMix)(15 downto 0);

    ContadorMemoria : process(CLK)
    begin
        if rising_edge(CLK) then

            if(reset_address = '1') then
                addressCounter <= 0;
                reset_address <= '0';
            end if;

            if(sample_valid = '1') then
                if enable='1' then

                    if play_octave = true then
						addressCounter <= addressCounter + 2;

						if addressCounter > OCTAVE_BUFFER then --
							addressCounter <= 0;
							play_octave <= false;
						end if;

					else
                         -- Cambiar el valor máximo del contador de memoria 
                        addressCounter <= addressCounter + 1;

                        if addressCounter > OCTAVE_BUFFER then --
                            addressCounter <= 0;
                            play_octave <= true;
                        end if;

                    end if;
        
                end if;
            
            else

                addressCounter <= addressCounter + 0;
            end if;

        end if;
    end process;

    Octaver: process(CLK)
    begin

        if addressCounter < OCTAVE_BUFFER/2 then
            IF (sample_valid = '1'  ) THEN							
            -- ESCRITURA		
            read_op <= '0';
            write_op <= '1';
            --write_buff <= std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0);
            write_buff <=  std_logic_vector(input_audio) & X"0";
            END IF;
            elsif addressCounter >= OCTAVE_BUFFER/2  and addressCounter <= OCTAVE_BUFFER then
                IF (sample_valid = '1'  ) THEN							
                -- ESCRITURA		
                read_op <= '0';
                write_op <= '1';
                --write_buff <= std_logic_vector(adc_rdata)(11) & X"0" & std_logic_vector(adc_rdata)(10 downto 0);
                write_buff <= std_logic_vector(input_audio) & X"0";
                END IF;
            elsif addressCounter > OCTAVE_BUFFER then
                reset_address <= '1';
                
            end if;

            if play_octave = true then
                -- LECTURA 
                write_op <= '0';
                read_op <= '1';
                --Audio_Out <= dataOUT(15 downto 4); -- ??? Problemas de Endianess. 
                audioMix <= read_buff*1;
            end if;


    end process;


end architecture;