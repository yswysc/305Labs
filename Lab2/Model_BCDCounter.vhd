library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

entity bcd_counter is
	port(
		signal Clk			: in std_logic;
		signal Direction	: in std_logic;
		signal Init			: in std_logic;
		signal Enable		: in std_logic;
		signal Q_out		: out std_logic_vector(3 downto 0)
		);		
end bcd_counter;

architecture behavioral of bcd_counter is

signal counter 		: std_logic_vector(3 downto 0) := "0000";

begin 

	process (Clk)
	begin
		if (rising_edge(Clk)) then
			if (Init = '1') then
				case Direction is 
					when '0' =>			-- Up counter
						counter <= "0000";
					when '1' =>			-- Down counter	
						counter <= "1001";
					when Others =>
						counter <= "0000";			
				end case;			
			elsif (Enable = '1') then
				case Direction is 
					when '0' =>			-- Up counter
						if (counter = "1001") then
							counter <=  "0000";
						else 
							counter <= counter + 1;
						end if;
					when '1' =>			-- Down counter	
						if (counter = "0000") then
							counter <=  "1001";
						else
							counter <= counter - 1;
						end if;
					when Others =>
									
				end case;		
			end if;		
		end if;
	end process;
	
	Q_Out <= counter;

end behavioral;

