library IEEE;
use IEEE.std_logic_1164.all;

entity Seq_Counter is
	port (Clk, Reset, Enable : in bit;
		Mode: in std_logic_vector(1 downto 0);
		Q: out std_logic_vector(5 downto 0);
end entity Seq_Counter;

architecture behaviour of Seq_Counter is
variable m01i: integer range 0 to 15 --store the index of current array at mode 01
variable m: integer range -32 to 31; --temp value
type m01_array is array(0 to 8) of integer range -32 to 31;
variable m01: m01_array := (3, -2, 8, 15, -1, 7, -14, 10, 1);
begin
	process (Clk, Reset, Enable, Mode)
	begin
		if (Reset = '1') then
			--initializes it to the first counter value depending on the current value of Mode--
			if (Mode = "00") then
				m := 27;
			elsif (Mode = "01") then
				m := 3;
				m01i := 0;
			elsif (Mode = "10")
				m := 0;
			else
				m := 1;
			end if;
		elsif (Mode'event) then
			if (Mode = "00") then
				m := 27;
			elsif (Mode = "01") then
				m := 3;
				m01i := 0;
			elsif (Mode = "10")
				m := 0;
			else
				m := 1;
			end if;
		elsif (Clk'event and Clk = '1' and Enable = '1') then
			--a down counter for odd numbers from 27 to 11--
			if (Mode = "00") then
				if (m > 11) then
					m := m - 2; -- make sure the last number is 11
				else
					m := 27;
				end if;
			----------------------------------------------
			----------------------------------------------
			--(3, -2, 8, 15, -1, 7, -14, 10, 1)--
			elsif (Mode = "01") then
				m := m01(m01i);
				m01i := m01i + 1; --increase index
				if (m01i > 8) then -- reset index when exceed the range of array
					m01i := 0;
				end if;
			----------------------------------------------
			----------------------------------------------
			--an up counter for numbers from 0 to 8--
			elsif (Mode = "10")
				if (m < 8) then
					m := m + 1; -- make sure the last number is 8
				else
					m := 0;
				end if;
			----------------------------------------------
			----------------------------------------------
			--all bits of Q will be ‘1’
			else
				m := 1;
			----------------------------------------------
			----------------------------------------------
			end if;
		end if;
		Q <= std_logic_vector(to_signed(m, m'length));
	end process;
end architecture behaviour;