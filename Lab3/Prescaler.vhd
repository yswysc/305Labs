-- Prescaler to convert 1MHz to 1Hz
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Prescaler is
    port (Clk, Start : in std_logic;
        Clk_Out : out std_logic);
end entity;

architecture Bhv of Prescaler is
    signal Clk_Out_i : std_logic;
    begin
        process(Clk, Start)
        variable halfM : integer range 0 to 5*10**5 - 1;
        variable is_start : std_logic := '0';
        begin
            if (rising_edge(Clk)) then
                if (is_start /= Start) then 
                    if (Start = '1') then
                        Clk_Out_i <= '1';
                    else
                        Clk_Out_i <= '0';
                    end if;
                    halfM:= 0;
                    is_start:= Start;
                elsif (halfM = 5*10**5 - 1) then
                    Clk_Out_i <= not Clk_Out_i;
                    halfM:= 0;
                else
                    halfM:= halfM + 1;
                end if;
            end if;
            Clk_Out <= Clk_Out_i;
        end process;
end architecture Bhv;
