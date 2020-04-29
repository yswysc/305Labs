library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity BCD_Counter is
    port (Clk, Enable : in std_logic;
		    Q_Out: out std_logic_vector(3 downto 0));
end entity;

architecture Bhv of BCD_Counter is
  begin
      process(Clk, Enable)
      variable Q : integer range 0 to 15 := 0;
      begin
          if (rising_edge(Clk)) then
              if (Enable = '1') then
                  if (Q < 15) then
                       Q:= Q + 1;
                  else
                       Q:= 0;
                  end if;
               end if; 
           end if;
          Q_Out <= std_logic_vector(to_unsigned(Q, Q_Out'length));
      end process;
end architecture Bhv;