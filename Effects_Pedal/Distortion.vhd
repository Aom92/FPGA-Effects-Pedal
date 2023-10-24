-- Distorcion simple por hard clipping.
-- Autor: Hugo Juarez Perez
-- Fecha de Edicion: 24/09/2023
library ieee;
    use ieee.std_logic_1164.all;
    use ieee.std_logic_unsigned.all;
    use ieee.numeric_std.all;

entity Distortion is
    generic (
        data_width : integer := 16
    );
    port (
        CLK : in std_logic;
        -- INPUT SIGNALS
        input_audio : in unsigned(data_width-1 downto 0);
        sample_valid : in std_logic;
        enable : in std_logic;
        --CONEXIONES PARA DAC
        Audio_Out : out std_logic_vector(15 downto 0)
    );
end entity;

architecture Behavioral of Distortion is
    -- DISTORSION PARAMETERS
    signal audio_int : integer;
    --signal voltaje_in : integer;
    signal audioMix : unsigned (31 downto 0 ) := (others => '0');

begin

    -- PROCESOS CONCURRENTES
    Audio_out <= std_logic_vector(audioMix)(15 downto 0) when enable = '1' else std_logic_vector(input_audio);

    process(CLK)
    begin
        if rising_edge(CLK) then
            if enable = '1' then
                --voltaje_in <= to_integer(input_audio)/4095 * 5;
                audio_int <= to_integer(input_audio);
                if(sample_valid = '1') then

                    if input_audio > 2196 then
                        audio_int <= audio_int + 2196;
                    else
                        audio_int <= to_integer(input_audio);
                    end if;

                    audioMix <= to_unsigned(audio_int, data_width)*100;

                end if;
            else
                


            end if;



        end if;
    end process;

end architecture;