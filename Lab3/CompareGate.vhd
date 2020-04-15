library IEEE;
use IEEE.std_logic_1164.all;

entity CompareGate is
    port (X, Y: in std_logic_vector(3 downto 0);
        Z: out std_logic);
end entity;

architecture Bhv of CompareGate is
    begin
        process(X,Y)
        begin
            if (X = Y) then 
                Z <= '1';
            else 
                Z <= '0';
            end if;
        end process;
end architecture Bhv;