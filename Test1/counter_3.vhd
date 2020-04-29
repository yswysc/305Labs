-- This file is for question 3 (a)
library IEEE;
use IEEE.std_logic_1164.all;

entity counter_3 is
    port (Clk, Reset, Enable: in std_logic;
        Q : out std_logic_vector(2 downto 0));
end entity counter_3;

architecture bhv of counter_3 is
    signal Q_i : std_logic_vector(2 downto 0);
    begin
        process(Clk, Reset, Enable)
        begin
            if (rising_edge(clk)) then
                if (Reset = '1') then
                    Q_i(0) <= NOT Reset;
                    Q_i(1) <= NOT Reset;
                    Q_i(2) <= NOT Reset;
                elsif (Enable = '1') then
                    Q_i(0) <= Q_i(1);
                    Q_i(1) <= Q_i(2);
                    Q_i(2) <= NOT Q_i(0);
                end if;
            end if;
        end process;
        Q <= Q_i;
end architecture bhv;