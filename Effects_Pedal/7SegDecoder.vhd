-- Simple 7-segment decoder 
-- Author: Hugo Juárez Pérez, Facultad de ingeniería, UNAM.
-- Date: 24/07/2023
--
-- Description: This is a simple 7-segment decoder, it takes a 4 bit input and
-- outputs that into its correpsonding 7-segment display digit. 
-- 

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity Deco7Seg is
    port(

        data_in : in std_logic_vector(3 downto 0);
        display_out : out std_logic_vector(7 downto 0)
    );
end Deco7Seg;

architecture Behavioral of Deco7Seg is

begin
    with data_in select
        display_out <= X"81" when X"0",
						X"F3" when X"1",
						X"49" when X"2",
						X"61" when X"3",
						X"33" when X"4",
						X"25" when X"5",
						X"05" when X"6",
						X"F1" when X"7",
						X"01" when X"8",
						X"21" when X"9",
						X"11" when X"a",
						X"07" when X"b",
						X"8D" when X"c",
						X"43" when X"d",
						X"0D" when X"e",
						X"1D" when X"f",
						X"FF" when others;
end;
