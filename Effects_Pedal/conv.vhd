--Entidad para realizar la convolución de dos señales en VHDL. (in progress)...

-- Hugo Juárez 2023.
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity conv is
  port (
    SIGNAL_A : IN std_logic_vector;
    IR_SIGNAL : IN std_logic_vector;
    ENABLE_L  : IN std_logic;

    IR_SIGNAL_ADDRESS : out std_logic_vector;
    CONV : OUT std_logic_vector
  );
end entity;

architecture rtl of conv is
  
begin
end architecture;