library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity Preamp is
  
  port (
    CLK : in std_logic;
    -- Input from ADC
    ADC_DATA : in std_logic_vector(11 downto 0);
    sample_valid : in std_logic;
    enable : in std_logic;
    -- Output to DAC
    Audio_out : out std_logic_vector(15 downto 0)
  );
end entity;

architecture Behavioral of Preamp is
signal audioMix : signed (25 downto 0) := (others => '0');
begin

-- PROCESOS CONCURRENTES
    Audio_out <= std_logic_vector(audioMix)(15 downto 0);

    process(CLK)
    begin
        if rising_edge(CLK) then
            if enable = '1' then
                if sample_valid = '1' then
                    audioMix <= "00" & signed(ADC_DATA)*100;
                end if;
            else
                audioMix <= (others => '0');
            end if;
        end if;
    end process;

end architecture;