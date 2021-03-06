-- A Testbech to test wgen2
entity test_wgen2 is
end entity test_wgen2;

architecture test of test_wgen2 is
	signal t_Enable, t_A, t_B, t_C, t_Z : bit;
	signal t_D : bit_vector(1 downto 0);

	component wgen2 is
		port (Enable : in bit;
				D : in bit_vector(1 downto 0);
				A, B, C, Z : out bit);
	end component;

	begin
		my_design: wgen2 port map (t_Enable, t_D, t_A, t_B, t_C, t_Z);

		-- Initialization process (code that executes only once).
		init: process
		begin
			-- enable signal
			t_Enable <= '1', '0' after 90 ns, '1' after 180 ns;
			t_D <= "00", "01" after 30 ns, "10" after 45 ns, "11" after 80 ns;
			wait;
		end process init;
end architecture test;