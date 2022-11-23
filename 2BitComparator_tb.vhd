--testbench for the TwoBitComparator
--2022-11-23

library ieee;
use ieee.std_logic_1164.all;

entity TwoBitComparator_tb is
end TwoBitComparator_tb;

architecture tb of TwoBitComparator_tb is

    signal a, b : std_logic_vector(1 downto 0);
    signal c : std_logic;
	 
begin
	UUT : entity work.TwoBitComparator port map (a => a, b => b, c => c);
	
	 a <= "00", "01" after 20 ns, "10" after 40 ns, "11" after 60 ns, "00" after 80 ns;
    b <= "00", "01" after 5 ns, "10" after 10 ns, "11" after 15 ns, "00" after 20 ns, "01" after 25 ns, "10" after 30 ns, "11" after 35 ns, "00" after 40 ns, "01" after 45 ns, "10" after 50 ns, "11" after 55 ns, "00" after 60 ns, "01" after 65 ns, "10" after 70 ns, "11" after 75 ns;  
end tb;