library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity RingCounter is
    port (Enable: in std_logic;
          Q_1, Q_10 : in std_logic_vector (3 downto 0);
		      Q_Out: out std_logic_vector(9 downto 0));
end entity;

architecture Bhv of RingCounter is
  begin
    process (Enable)
      begin
        if (Enable = '0') then 
          Q_Out(1 downto 0) <= "00";
          Q_Out(5 downto 2) <= Q_1;
          Q_Out(9 downto 6) <= Q_10;
        else
          Q_Out <= (others => '1');
        end if;
    end process;
end architecture Bhv;