library IEEE;
use IEEE.std_logic_1164.all;

entity q1a_wgen is
    port (X: in std_logic;
		A, B, C : out std_logic);
end entity q1a_wgen;

architecture bhv of q1a_wgen is
    signal aa, bb : std_logic;
    begin
        process
        begin
            aa <= '0', '1' after 2 ns, '0' after 6 ns, '1' after 8 ns;
            bb <= '0', '1' after 4 ns, '0' after 6 ns, '1' after 8 ns;
            wait for 10 ns;
        end process;
        A <= aa;
        B <= bb;
        C <= (NOT X) AND (aa XOR bb);
end architecture bhv;