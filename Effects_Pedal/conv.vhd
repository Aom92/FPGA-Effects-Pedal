--Entidad para realizar la convolución de dos señales en VHDL. (in progress)...

-- Hugo Juárez 2023.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conv is
  port (
    clk : in std_logic;
    reset : in std_logic;
    x : in std_logic_vector(15 downto 0);
    h : in std_logic_vector(15 downto 0);
    y : out std_logic_vector(31 downto 0)
  );
end entity conv;

architecture rtl of conv is
  signal x_reg : std_logic_vector(15 downto 0);
  signal h_reg : std_logic_vector(15 downto 0);
  signal y_reg : unsigned(31 downto 0);

  signal address : unsigned (15 downto 0);
begin
  process(clk)
  begin
    if rising_edge(clk) then
      if reset = '1' then
        x_reg <= (others => '0');
        h_reg <= (others => '0');
        y_reg <= (others => '0');
      else
        x_reg <= x;
        h_reg <= h;
        y_reg <=  unsigned(x_reg) * unsigned(h_reg);
      end if;
    end if;
  end process;

  process(clk)
  begin
    if rising_edge(clk) then

    end if;


  end process;
  
  y <= std_logic_vector(y_reg);
end architecture rtl;
