library ieee;
use ieee.std_logic_1164.all;

entity Octave is
  port (
    clk       : in  std_logic;
    reset     : in  std_logic;
    input     : in  std_logic_vector(15 downto 0);
    output1   : out std_logic_vector(15 downto 0);
    
    output2   : out std_logic_vector(15 downto 0)
  );
end entity Octave;

architecture Behavioral of Octave is
  signal sample_hold : std_logic_vector(15 downto 0);
  signal counter : integer range 0 to 1 := 0;
begin
  process (clk, reset,counter)
  begin
    if reset = '1' then
      sample_hold <= (others => '0');
      output1 <= (others => '0');
      output2 <= (others => '0');
    elsif rising_edge(clk) then
      sample_hold <= input;
      

      if counter = 0 then
        output1 <= sample_hold;
      else
        output1 <= input;
      end if;
      
      --output2 <= sample_hold;
      
    end if;
      
  end process;
  process(  clk, reset)
  begin
    if rising_edge(clk) then
    
        counter <= counter + 1;
    
    end if;
  end process;
end architecture Behavioral;
