library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Grappler IS Port
(
 clk_input, rst_n, controlButton, enable				: IN std_logic;
 grappleControl													: OUT std_logic
 );
END ENTITY;
 

 Architecture STATEMACHINE of Grappler is
 

 
 TYPE STATE_NAMES IS (STOP, GRAPPLE);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= STOP;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state,controlButton, enable) 

BEGIN
     CASE current_state IS
         WHEN STOP =>		
				IF( controlButton = '0' AND enable= '1' ) THEN --pressed
					next_state <= GRAPPLE;
					
				ELSE
					next_state <= STOP;
				END IF;

			WHEN GRAPPLE =>		
				IF( controlButton = '0' OR enable= '0') THEN --pressed
					next_state <= STOP;
				ELSE
					next_state <= GRAPPLE;
				END IF;
				
			WHEN OTHERS =>
               next_state <= STOP;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state,controlButton, enable)

BEGIN
     CASE current_state IS
         WHEN STOP =>		
			
				grappleControl <= '0';
			
			
         WHEN GRAPPLE =>		
				grappleControl <= '1';
				
         WHEN others =>		
 				grappleControl <= '0';

	  END CASE;
 END PROCESS;

 END ARCHITECTURE STATEMACHINE;
