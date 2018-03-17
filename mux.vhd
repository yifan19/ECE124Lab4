library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity mux is port (
   
   hex_in1, hex_in2	: in std_logic_vector(6 downto 0);
	mux_select :in std_logic;
	hex_out	:	out std_logic_vector(6 downto 0)

	
); 
end mux;

architecture mux_logic of mux is

begin
   
hex_out <= hex_in1 when (mux_select = '0') else hex_in2;
	
	
end mux_logic; 


-- if the button is pressed (at active low), select first one
-- else select next one;