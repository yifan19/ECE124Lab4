
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity FlashCounter is port
	(
		Main_clk			: in std_logic;
		rst_n				: in std_logic := '0';
		clk_en			: in std_logic := '0';
		up1_down0		: in std_logic := '0';
		counter_bits	: out std_logic_vector (0 downto 0)
	);
	end Entity;
	
	ARCHITECTURE one OF FlashCounter is
	
	Signal ud_bin_counter	: UNSIGNED (0 downto 0);

BEGIN

process (Main_clk, rst_n, up1_down0) is
begin
	if (rst_n = '0') then
		ud_bin_counter <= "0";
				
	elsif (rising_edge(Main_Clk)) then
			
		if ((up1_down0 = '1') AND (clk_en = '1')) then
			ud_bin_counter <= (ud_bin_counter + 1);
		elsif ((up1_down0 = '0') AND (clk_en = '1')) then
			ud_bin_counter <= (ud_bin_counter - 1);
		end if;
			
	end if;
	
	counter_bits <= std_logic_vector(ud_bin_counter);
		
	end process;
	
end;