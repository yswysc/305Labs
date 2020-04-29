library IEEE;
use IEEE.std_logic_1164.all;

entity test_q3b is
end entity test_q3b;

architecture test of test_q3b is
    signal t_Clk, t_Enable, t_Reset : std_logic;
    signal t_Q : std_logic_vector(2 downto 0);
	component q3b is
		port (Clk,  Reset, Enable : in std_logic;
		    Q : out std_logic_vector(2 downto 0));
	end component;

 begin
	my_design: q3b port map (t_Clk, t_Reset, t_Enable, t_Q);
	process
        begin
            t_Reset <= '1', '0' after 10 ns, '1' after 100 ns, '0' after 140 ns;
            t_Enable <= '1', '0' after 30 ns, '1' after 50 ns;
            wait;
    end process;
    Clk_gen: process
    begin
        t_Clk <= '0';
        wait for 5 ns;
		t_Clk <= '1';
		wait for 5 ns;
		end process Clk_gen;
end architecture test;