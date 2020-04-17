library IEEE;
use IEEE.std_logic_1164.all;

entity NineAndGate is
    port (X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of NineAndGate is
    begin
        Y <= X(0) AND (NOT X(1)) AND (NOT X(2)) AND  X(3);
end architecture Bhv;