library IEEE;
use IEEE.std_logic_1164.all;

entity FAndGate is
    port (X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of FAndGate is
    begin
        Y <= X(0) AND X(1) AND X(2) AND X(3);
end architecture Bhv;