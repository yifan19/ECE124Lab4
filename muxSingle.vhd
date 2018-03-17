library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity muxSingle is port (
   
   hex_in1, hex_in2	: in std_logic;
	mux_select :in std_logic;
	hex_out	:	out std_logic

	
); 
end muxSingle;

architecture mux_logic of muxSingle is

begin
   
hex_out <= hex_in1 when (mux_select = '0') else hex_in2;
	
	
end mux_logic; 


-- if the button is pressed (at active low), select first one
-- else select next one;