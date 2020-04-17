library IEEE;
use IEEE.std_logic_1164.all;

entity FiveAndGate is
    port (X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of FiveAndGate is
    begin
        Y <= X(0) AND (NOT X(1)) AND X(2) AND (NOT X(3)); -- Five in binary is 0101 but because we used "downto" which means from X(3) downto X(0)
end architecture Bhv;