entity wgen1 is
	port (D: in bit_vector(1 downto 0);
		A, B, C, Z : out bit);
end entity wgen1;

architecture behaviour of wgen1 is
	signal aa, bb, cc : bit;
begin
	process
	begin
		aa <= '1', '0' after 2 ns, '1' after 6 ns, '0' after 8 ns;
		bb <= '0', '1' after 2 ns, '0' after 4 ns, '1' after 6 ns;
		cc <= '1', '0' after 2 ns, '1' after 4 ns, '0' after 6 ns, '1' after 8 ns;
		wait for 10 ns;
	end process;
	
	process(aa, bb, cc)
	begin
		case D is
			when "00" => Z <= aa or bb or cc;
			when "01" => Z <= bb xor cc;
			when "10" => Z <= aa and bb;
			when others => Z <= '0';
		end case;
		A <= aa;
		B <= bb;
		C <= cc;
	end process;
end architecture behaviour;