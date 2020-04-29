library IEEE;
use IEEE.std_logic_1164.all;

entity NOT_Gate is
    port (X: in std_logic;
        Y: out std_logic);
end entity;

architecture Bhv of NOT_Gate is
    begin
        Y <= NOT X;
end architecture Bhv;


