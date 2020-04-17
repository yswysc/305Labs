library IEEE;
use IEEE.std_logic_1164.all;

entity AND_Four is
    port (A, B, C, D: in std_logic;
        Z: out std_logic);
end entity;

architecture Bhv of AND_Four is
    begin
        Z <= A and B and C and D;
end architecture Bhv;



