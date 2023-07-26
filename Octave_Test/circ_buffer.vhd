library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity circ_buffer is
    generic (
        WIDTH : integer := 8;
        DEPTH : integer := 8
    );
  port (
    clk : in std_logic;
    rst : in std_logic;
    data_in : in std_logic_vector(WIDTH-1 downto 0);
    data_out : out std_logic_vector(WIDTH-1 downto 0);
    wr_en : in std_logic;
    rd_en : in std_logic;
    buff_full : out std_logic;
    buff_empty : out std_logic

    );
end entity;


architecture behavioral of circ_buffer is
  type ram is array (0 to DEPTH-1) of std_logic_vector(WIDTH-1  downto 0 );
  signal memory : ram := (others => (others => '0'));

  signal full :  std_logic := '0';
  signal empty :  std_logic := '1';
  signal wr_ptr : integer range 0 to DEPTH-1;
  signal rd_ptr : integer range 0 to DEPTH-1;

  

begin

    process(clk, rst)
    begin
        if rst = '1' then
        -- reset logic
            data_out <= (others => '0');
            full <= '0';
            empty <= '1';

        elsif rising_edge(clk) then
        -- sequential logic
            if wr_en = '1' then
                -- write logic

                if full = '0' then
                    memory(wr_ptr) <= data_in;
                    
                    if wr_ptr = DEPTH-1 then
                        full <= '1';
                    else
                        wr_ptr <= wr_ptr + 1;
                    end if;
                end if;
            end if;
            if rd_en = '1' then
                -- read logic
                if empty = '0' then
                    data_out <= memory(rd_ptr);
                    rd_ptr <= rd_ptr + 1;
                    if rd_ptr = DEPTH-1 then
                        empty <= '1';
                    end if;
                end if;
            end if;


        end if;
    end process;

    buff_full <= full;
    buff_empty <= empty;



end architecture;