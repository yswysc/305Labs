library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity  BCD_h_Counter is
    port (Clk, Direction, Reset, Enable: in std_logic;
		Q_Out: out std_logic_vector(3 downto 0));
end entity ;