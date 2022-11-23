--2022-11-23
--2 bit comparator testing for equals

library ieee;                 	
use ieee.std_logic_1164.all;

entity TwoBitComparator is port (
	a, b : in std_logic_vector(1 downto 0);
	c : out std_logic
);
end TwoBitComparator;

architecture equals of TwoBitComparator is
begin

--firstly using a process block.
--	process(a, b)
--	begin
--		if (a = b) then
--			c <= '1';
--		else
--			c <= '0';
--		end if;
--	end process;

--secondly without a process block.
	c <= (not(a(0) xor b(0))) and (not(a(1) xor b(1)));
end architecture;