entity wgen2 is
	port (D : in bit_vector(1 downto 0);
		Enable : in bit;
		A, B, C, Z : out bit);
end entity wgen2;

architecture behaviour of wgen2 is
	signal aa, bb, cc : bit;
begin
	process
	begin
		aa <= '1', '0' after 2 ns, '1' after 6 ns, '0' after 8 ns;
		bb <= '0', '1' after 2 ns, '0' after 4 ns, '1' after 6 ns;
		cc <= '1', '0' after 2 ns, '1' after 4 ns, '0' after 6 ns, '1' after 8 ns;
		wait for 10 ns;
	end process;
	
	process(aa, bb, cc, Enable)
	begin
		if (Enable = '1') then
			case D is
				when "00" => Z <= aa or bb or cc;
				when "01" => Z <= bb xor cc;
				when "10" => Z <= aa and bb;
				when others => Z <= '0';
			end case;
			A <= aa;
			B <= bb;
			C <= cc;
		else
			A <= '0';
			B <= '0';
			C <= '0';
			Z <= '0';
		end if;
	end process;
end architecture behaviour;