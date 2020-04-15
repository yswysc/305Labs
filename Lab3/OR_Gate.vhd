library IEEE;
use IEEE.std_logic_1164.all;

entity OR_Gate is
    port (X, Y: in std_logic;
        Z: out std_logic);
end entity;

architecture Bhv of OR_Gate is
    begin
        process(X,Y)
        begin
            Z <= X or Y;
        end process;
end architecture Bhv;



