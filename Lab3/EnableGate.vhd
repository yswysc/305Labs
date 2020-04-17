library IEEE;
use IEEE.std_logic_1164.all;

entity EnableGate is
    port (Start, Time_out: in std_logic;
        Enable: out std_logic);
end entity;

architecture Bhv of EnableGate is
    begin
        Enable <= Start and not Time_out;
end architecture Bhv;



 