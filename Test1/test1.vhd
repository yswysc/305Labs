-- This file is for question 2
library IEEE;
use IEEE.std_logic_1164.all;

entity test1 is
port(
    clk, w:       in std_logic;
    x, y:         in std_logic_vector (9 downto 0);
    a_out, b_out: out std_logic_vector (9 downto 0));
end entity test1;

architecture b1 of test1 is
begin
    process (w, x, y)
    begin
        if w = '1' then
            a_out <= x;
        else
            a_out <= y;
        end if;
    end process;

    process (clk)
    begin
        if (rising_edge(clk)) then
            b_out <= x;
        end if;
    end process;
end architecture b1;
