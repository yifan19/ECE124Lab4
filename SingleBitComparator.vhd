library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity SingleBitComparator is port (
	
	bit1	: in std_logic;
	bit2	: in std_logic;
	
	gt	: out std_logic;
	et	: out std_logic;
	lt	: out std_logic

	);
	
end SingleBitComparator;

architecture Behavioural of SingleBitComparator is




Begin

gt <= bit1 and not bit2; --bit1 is 1 and bit2 is 0
et <= NOT (bit1 XOR bit2); --when bit1 and bit2 are the same values
lt <= not bit1 and bit2; --bit1 is 0 and bit2 is 1


end Behavioural;
	
	
	