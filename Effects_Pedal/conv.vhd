--Entidad para realizar la convolución de dos señales en VHDL. (in progress)...

-- Hugo Juárez 2023.
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;

entity conv is
  port (
    clk : in std_logic;
    reset : in std_logic;
    valid : out std_logic;
    x : in std_logic_vector(15 downto 0);
    h : in std_logic_vector(15 downto 0);
    y : out std_logic_vector(31 downto 0)
  );
end entity conv;

architecture rtl of conv is
  signal x_reg : std_logic_vector(15 downto 0);
  signal h_reg : std_logic_vector(15 downto 0);
  signal y_reg : unsigned(31 downto 0);

  signal temp : std_logic_vector(31 downto 0);

  signal address : unsigned (15 downto 0);
  
begin
  process (clk, reset)
  variable intermediate_result : std_logic_vector(31 downto 0);
    begin
        if reset = '1' then
            temp <= (others => '0');
            valid <= '0';
        elsif rising_edge(clk) then
            temp <= (others => '0');
            valid <= '1';
            for i in 0 to 15 loop
                
            end loop;
            y <= (temp);
        end if;
    end process;

  process(clk)
  begin
    if rising_edge(clk) then

    end if;


  end process;
  
end architecture rtl;
