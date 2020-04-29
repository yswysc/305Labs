library IEEE;
use IEEE.std_logic_1164.all;

entity AND_Gate is
    port (X, Y: in std_logic;
        Z: out std_logic);
end entity;

architecture Bhv of AND_Gate is
    begin
        Z <= X and Y;
end architecture Bhv;


