library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity FourBitComparator is port (
	
	bitA0, bitA1, bitA2, bitA3, bitB0, bitB1, bitB2, bitB3 : in std_logic;
	
	AGTB	: out std_logic;
	AEQB	: out std_logic;
	ALTB	: out std_logic

	);
	
end FourBitComparator;

architecture Behavioural of FOurBitComparator is

component SingleBitComparator port(
	bit1	: in std_logic;
	bit2	: in std_logic;
	
	gt	: out std_logic;
	et	: out std_logic;
	lt	: out std_logic
);

end component;

signal A3LTB3, A3GTB3, A3EQB3, A2LTB2, A2GTB2, A2EQB2,A1LTB1, A1GTB1, A1EQB1, A0LTB0, A0GTB0, A0EQB0 : std_logic;
signal ALTB_signal , AEQB_signal , AGTB_signal : std_logic;


Begin

	INST1: SingleBitComparator port map(bitA0, bitB0, A0GTB0,A0EQB0, A0LTB0);
	INST2: SingleBitComparator port map(bitA1, bitB1, A1GTB1,A1EQB1, A1LTB1);
	INST3: SingleBitComparator port map(bitA2, bitB2, A2GTB2,A2EQB2, A2LTB2);
	INST4: SingleBitComparator port map(bitA3, bitB3, A3GTB3,A3EQB3, A3LTB3);

	
	-- equal if all 4 bits compare to equal
	AEQB_signal <= A3EQB3 and A2EQB2 and A1EQB1 and A0EQB0;
	
	-- greater if all bits compared early are equal and this bit comparing is bigger
	AGTB_signal <= (A3GTB3) or (A3EQB3 and A2GTB2) or (A3EQB3 and A2EQB2 AND A1GTB1) OR (A3EQB3 AND A2EQB2 AND A1EQB1 AND A0GTB0);
	
	--else....
	ALTB <= not(AEQB_signal OR AGTB_signal);
	
	
	-- just setting the other signal to the real output
	AEQB <= AEQB_signal;
	AGTB <= AGTB_signal;


end Behavioural;