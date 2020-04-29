library IEEE;
use IEEE.std_logic_1164.all;

entity q3b is
    port (Clk, Reset, Enable: in std_logic;
        Q : out std_logic_vector(2 downto 0));
end entity q3b;

architecture bhv of q3b is
    signal t_Reset : std_logic;
    signal t_Q : std_logic_vector(2 downto 0);

    component counter_3 is
        port (Clk, Reset, Enable: in std_logic;
            Q : out std_logic_vector(2 downto 0));
    end component counter_3;

    begin
        DUT_counter_3 : counter_3 port map (Clk, t_Reset, Enable, t_Q);
        t_Reset <= Reset OR ((NOT t_Q(2)) AND t_Q(1) AND t_Q(0));
        Q <= t_Q;
end architecture bhv;
