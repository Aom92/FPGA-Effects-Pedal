library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity Tremolo is
    generic (
        data_width : integer := 16
    );
    port (
        CLK : in std_logic;
        RST : in std_logic;
        -- INPUT SIGNALS
        input_audio : in unsigned(data_width-1 downto 0);
        sample_valid : in std_logic;
        enable : in std_logic;
        --CONEXIONES PARA DAC
        Audio_Out : out std_logic_vector(15 downto 0)
    );
end entity;

architecture Behavioral of Tremolo is
  
    component Oscilator is
        port (
            clk       : in  std_logic                     := 'X';             -- clk
            clken     : in  std_logic                     := 'X';             -- clken
            phi_inc_i : in  std_logic_vector(31 downto 0) := (others => 'X'); -- phi_inc_i
            fsin_o    : out std_logic_vector(15 downto 0);                    -- fsin_o
            reset_n   : in std_logic := 'X'


        );
    end component Oscilator;

signal PHI_INC : std_logic_vector(31 downto 0) := X"00000635"; 
signal tremolo_wave : std_logic_vector(15 downto 0) := (others => 'X');

signal result : signed (31 downto 0); 
begin

    PHI_INC <=X"00000635";

     -- PROCESOS CONCURRENTES
     Audio_Out <= std_logic_vector(result)(31 downto 16);

     NCO1 : component Oscilator
        port map (
            clk       => CLK,       -- clk.clk
            clken     => enable ,     --  in.clken
            phi_inc_i => PHI_INC, --    .phi_inc_i
            fsin_o    => tremolo_wave,   -- out.fsin_o
            reset_n   => RST
        );


    Multiplicar : process(clk, tremolo_wave)
    begin

        if rising_edge(CLK) then
            if(sample_valid ='1') then

                result <= signed(tremolo_wave) * signed(input_audio);

            end if;
        end if;
    end process;

   
end architecture;