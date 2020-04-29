-- This file is for question 2
library IEEE;
use IEEE.std_logic_1164.all;

entity test2 is
port(
    clk, w:       in std_logic;
    x, y:         in std_logic_vector (13 downto 0);
    a_out, b_out: out std_logic_vector (13 downto 0));
end entity test2;

architecture b1 of test2 is
begin
    process
    begin
        wait until (rising_edge (clk));
        if w = '1' then
            a_out <= x;
        else
            a_out <= y;
        end if;

        b_out <= x;
    end process;
end architecture b1;
