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
    h : in std_logic_vector(31 downto 0);
    y : out unsigned(31 downto 0);
    y_trunc : out unsigned (15 downto 0);
    rom_address : out std_logic_vector(15 downto 0 )
  );
end entity conv;

architecture rtl of conv is
  signal x_reg : std_logic_vector(15 downto 0);
  signal h_reg : std_logic_vector(15 downto 0);
  signal y_reg : unsigned(31 downto 0);

  signal temp : unsigned(31 downto 0);

  signal addressCounter : integer range 0 to 59070;
  
begin
  process (clk, reset)
  variable intermediate_result : std_logic_vector(1 downto 0);
    begin
	 
		
	 
	 
        if reset = '1' then
            temp <= (others => '0');
            valid <= '0';
        elsif rising_edge(clk) then
            
            valid <= '1';
            for i in 0 to 15 loop
                 intermediate_result := (x(i)) & (h(i));
                 --temp <= temp  *(h);
                 temp <= unsigned(temp) + unsigned(intermediate_result);
            end loop;
            y <= (temp);
            
        end if;
    end process;

  process(clk)
  begin
    if rising_edge(clk) then
      --if(valid = '1') then
        addressCounter <= addressCounter + 1;
      --end if;
    end if;


  end process;

  rom_address <= std_logic_vector(to_unsigned(addressCounter, rom_address'length));
  
end architecture rtl;
