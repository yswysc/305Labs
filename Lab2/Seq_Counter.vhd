library ieee;
use ieee.std_logic_1164.all;

entity Seq_Counter is
	port (Clk, Reset, Enable : in bit;
		Mode: in bit_vector(1 downto 0);
		Q: out bit_vector(1 downto 0);
end entity Seq_Counter;

architecture behaviour of Seq_Counter is
begin
	process (Clk)
		variable m: interger; --temp value
		--to do, declear integer here
	begin
		if (Clk'event and Clk = '1') then
			if (Reset = '0' and Enable = '1')
				if (Mode = 00) then
					--a down counter for odd numbers from 27 to 11
					if (m > 11) then
						m := m - 2; -- make sure the last number is 11
					else
						m := 27;
				elsif (Mode = 01) then
					--(3, -2, 8, 15, -1, 7, -14, 10, 1)
				elsif (Mode = 10)
					--an up counter for numbers from 0 to 8
					if (m < 8) then
						m := m + 1; -- make sure the last number is 8
					else
						m := 0;
				else
					--all bits of Q will be ‘1’
					m := 1;
				end if;
			elsif (Reset = '1') then
				--initializes it to the first counter value depending on the current value of Mode
				if (Mode = 00) then
					m := 27;
				elsif (Mode = 01) then
					m := 3;
				elsif (Mode = 10)
					m := 0;
				else
					m := 1;
				end if;
			end if 
			Q <= m;
		end if;
	end process;
end architecture behaviour;