library IEEE;
use IEEE.std_logic_1164.all;

entity My_Gate is
    port (Direction: in std_logic;
        X: in std_logic_vector(3 downto 0);
        Y: out std_logic);
end entity;

architecture Bhv of My_Gate is
    begin
        process(X)
        begin
            if (Direction = '1') then
                Y <= X(0) AND (NOT X(1)) AND (NOT X(2)) AND X(3);
            else
                Y <= NOT (X(0) OR X(1) OR X(2) OR X(3));
            end if;
        end process;
end architecture Bhv;