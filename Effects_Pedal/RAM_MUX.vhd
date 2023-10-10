library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity RAM_MUX is
  port (
    -- CONTROL -- 
    Enable1     : in std_logic; 
    Enable2     : in std_logic;

    -- INPUT --
    
    addrA       : in std_logic_vector(25 downto 0);
    rd_op1      : in std_logic;
    wrt_op1     : in std_logic;
    wrt_buffA   : in std_logic_vector(15 downto 0);

    
    addrB       : in std_logic_vector(25 downto 0);
    rd_op2      : in std_logic;
    wrt_op2     : in std_logic;
    wrt_buffB   : in std_logic_vector(15 downto 0);

    -- OUTPUT --
    
    addr        : out std_logic_vector(25 downto 0);
    rd_op       : out std_logic;
    wrt_op      : out std_logic;
    wrt_buff    : out std_logic_vector(15 downto 0)
    
  );
end entity;

architecture Behavioral of RAM_MUX is
begin

    process(Enable1, Enable2)
    begin 

        if(Enable1 = '1' and Enable2 = '1') then
            -- INVALID STATE--
           
            addr        <= (others => 'X');
            rd_op       <= 'X';
            wrt_op      <= 'X';
            wrt_buff    <= (others => 'X');
        else
            -- VALID MUTEX STATES -- 
            if(Enable1 = '1') then
                
                addr        <= addrA;
                rd_op       <= rd_op1;
                wrt_op      <= wrt_op1;
                wrt_buff    <= wrt_buffA;
            
            end if;

            if(Enable2 = '1') then
               
                addr        <= addrB;
                rd_op       <= rd_op2;
                wrt_op      <= wrt_op2;
                wrt_buff    <= wrt_buffB;

            end if;


        end if;
    end process;


end architecture;