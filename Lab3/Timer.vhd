library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity Timer is
    port (Clk, Load, Start : in std_logic;
        Data_in : in std_logic_vector(15 downto 0);
        Time_out : out std_logic;
        LED_1s, LED_10s, LED_1m, LED_10m : out std_logic_vector (7 downto 0));
end entity Timer;

architecture structural of Timer is
    signal t_Direction, t_Clk, t_Enable : std_logic;
    signal t_9_10s, t_5_10s, t_9_10m : std_logic;
    signal t_OR_output : std_logic;
    signal t_AND_1_output : std_logic;
    signal t_Q_1s, t_Q_10s, t_Q_1m, t_Q_10m : std_logic_vector (3 downto 0);
    signal t_Compare_1s, t_Compare_10s, t_Compare_1m, t_Compare_10m : std_logic_vector (3 downto 0);
    signal t_Out_1s, t_Out_10s, t_Out_1m, t_Out_10m : std_logic;
  
component BCD_counter is
    port(Clk, Direction, Init, Enable : in std_logic;
        Q_Out : out std_logic_vector(3 downto 0));
end component BCD_counter;

component Prescaler is
    port (Clk, Start : in std_logic;
       Clk_Out : out std_logic);
end component Prescaler;

component BCD2SevenSeg is
    port (digit : in std_logic_vector(3 downto 0);
        LED_out : out std_logic_vector(7 downto 0));
end component BCD2SevenSeg;

component Store is
    port (Data_input : in std_logic_vector(15 downto 0);
          Load : in std_logic;
          a,b,c,d : out std_logic_vector(3 downto 0));
end component Store;

component FiveAndGate is
    port (X : in std_logic_vector(3 downto 0);
        Y : out std_logic);
end component FiveAndGate;

component NineAndGate is
    port (X : in std_logic_vector(3 downto 0);
        Y : out std_logic);
end component NineAndGate;   

component AND_Gate is
    port (X, Y : in std_logic;
        Z : out std_logic);
end component AND_Gate;   

component OR_Gate is
    port (X, Y : in std_logic;
        Z : out std_logic);
end component OR_Gate;

component EnableGate is
    port (Start, Time_out: in std_logic;
        Enable: out std_logic);
end component EnableGate;  

component AND_Four is
    port (A, B, C, D: in std_logic;
        Z: out std_logic);
end component AND_Four; 

component AND_4_bit is
    port (A, B: in std_logic_vector (3 downto 0);
        Z: out std_logic);
end component AND_4_bit;       
begin
  
  t_Direction <= '0';
  
  --Prescaler--
  DUT_Clk: Prescaler port map (Clk, Start, t_Clk);
    
  --Data in--
  DUT_Store: Store port map (Data_in, Load, t_Compare_1s, t_Compare_10s, t_Compare_1m, t_Compare_10m);
  
  --BCD Counter--
  DUT_Enable_Gate: EnableGate port map (Start, Time_out, t_Enable);   
  DUT_1s: BCD_counter port map (t_Clk, t_Direction, Load, t_Enable, t_Q_1s);
  DUT_9AndGate1s: NineAndGate port map (t_Q_1s, t_9_10s);
  DUT_AND_1 : AND_Gate port map (t_9_10s, t_5_10s, t_AND_1_output);
  DUT_OR_Gate: OR_Gate port map (Load, t_AND_1_output , t_OR_output);
  DUT_10s: BCD_counter port map(t_9_10s, t_Direction, t_OR_output, t_Enable, t_Q_10s);
  DUT_5AndGate10s: FiveAndGate port map (t_Q_10s, t_5_10s);
  DUT_1m: BCD_counter port map(t_5_10s, t_Direction, Load, t_Enable, t_Q_1m);
  DUT_9AndGate1m: NineAndGate port map (t_Q_1m, t_9_10m);
  DUT_10m: BCD_counter port map(t_9_10m, t_Direction, Load, t_Enable, t_Q_10m);
    
  --7s segment--
  DUT_SevenSegment_1s : BCD2SevenSeg port map (t_Q_1s, LED_1s);
  DUT_SevenSegment_10s : BCD2SevenSeg port map (t_Q_10s, LED_10s);
  DUT_SevenSegment_1m : BCD2SevenSeg port map (t_Q_1m, LED_1m);
  DUT_SevenSegment_10m : BCD2SevenSeg port map (t_Q_10m, LED_10m);
  
  --Timeout--
  DUT_And_1s : AND_4_bit port map(t_Q_1s, t_Compare_1s, t_Out_1s);
  DUT_And_10s : AND_4_bit port map(t_Q_10s, t_Compare_10s, t_Out_10s);
  DUT_And_1m : AND_4_bit port map(t_Q_1m, t_Compare_1m, t_Out_1m);
  DUT_And_10m : AND_4_bit port map(t_Q_10m, t_Compare_10m, t_Out_10m);
  DUT_AND_Four : AND_Four port map(t_Out_1s, t_Out_10s, t_Out_1m, t_Out_10m, Time_out);
  
end architecture structural;