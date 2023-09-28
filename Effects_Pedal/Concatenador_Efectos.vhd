library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity Concatenador_Efectos is
  port (
    CLK : in std_logic;
    Effect1 : in signed(15 downto 0);
    Effect2 : in signed(15 downto 0);
    Effect3 : in signed(15 downto 0);
    Effect4 : in signed(15 downto 0);

    Audio_Out : out signed(15 downto 0) := (others => '0')
  );
end entity;

architecture Behavioral of Concatenador_Efectos is
  
begin
    process(CLK)
    begin
    if rising_edge(CLK) then
        Audio_Out <= Effect1 + Effect2 + Effect3 + Effect4;
    end if;
    end process;



end architecture;