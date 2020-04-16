library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

-- Testbench for the counter.
entity test_timer is
end entity test_timer;

architecture my_test of test_timer is
	signal t_Clk, t_Load, t_Start, t_Time_out : std_logic;
	signal t_Data_in : std_logic_vector(15 downto 0);
	
	component Timer is
        port (Clk, Load, Start : in std_logic;
            Data_in : in std_logic_vector(15 downto 0);
            Time_out : out std_logic);
	end component Timer;
begin
	DUT:	Timer
		port map (t_Clk, t_Load, t_Start, t_Data_in, t_Time_out);

	-- Initialization process (code that executes only once).
 	init: process
	begin
		t_Load <= '1', '0' after 1 s, '1' after 05*60+00 s, '0' after 05*60+01 s;
        ----------Case 1: [00:00-05:00], Case 2: [05:01--(05:01+12:34)]
		t_Start <= '0', '1' after 1 s, '0' after 04*60+30 s, '1' after 04*60+35 s;
        ------------Case 1: Load data at [00:00], Start at [00:01] and Pause at [04:30], then start again at [04:35], expect to see time out at [00:01+04:45+00:05=04:51], Case 2: Load data at [05:00], Start at [05:01], expect to see time out at [05:00+00:01+12:34=17:35] 
        t_Data_in <= "0000010001000101", "0000000000000000" after 1 s, "0001001000110100" after 180 s;
        --Input Data----[04:45]-----------[00:00] but not load data-------[12:34]--------
		wait;
	end process init;
	-- clock generation
	clk_gen: process
	begin
		wait for 5 ns;
		t_clk <= '1';
		wait for 5 ns;
		t_clk <= '0';
		end process clk_gen;
end architecture my_test;