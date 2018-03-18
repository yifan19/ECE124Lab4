library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Extender IS Port
(
 clk_input, rst_n, controlButton, enable						: IN std_logic;
 currentShiftValue 													: IN std_logic_vector(3 downto 0);
 bitShifting, extenderOut, bitShiftDirection, grapplerEnable		: OUT std_logic
 );
END ENTITY;
 

 Architecture SM of Extender is
 

 
 TYPE STATE_NAMES IS (RETRACTED,EXTENDING1, EXTENDING2, EXTENDING3, FULLYEXTENDED);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state	:  STATE_NAMES;     	-- signals of type STATE_NAMES


  BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, rst_n, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (rst_n = '0') THEN
		current_state <= RETRACTED;
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS ( current_state,controlButton, enable, currentShiftValue) 

BEGIN
     
 CASE current_state IS
         WHEN RETRACTED =>		
				IF(controlButton = '0' AND enable = '1') THEN
					next_state <= EXTENDING1;
				ELSE
					next_state <= RETRACTED;
				END IF;

         WHEN EXTENDING1 =>	
				IF(currentShiftValue = "0000") THEN
					next_state <= EXTENDING2;
				ELSIF(currentShiftValue = "1000") THEN
					next_state <= RETRACTED;
				ELSE
					next_state <= EXTENDING1;
				END IF;
				
         WHEN EXTENDING2 => --forward stays here twice		
				IF(currentShiftValue = "1000") THEN
					next_state <= EXTENDING3;
				ELSIF(currentShiftValue = "1110") THEN
					next_state <= EXTENDING1;
				ELSE
					next_state <= EXTENDING2;
				END IF;
				
         WHEN EXTENDING3 =>		
				IF(currentShiftValue = "1110") THEN
					next_state <= FULLYEXTENDED;
				ELSIF(currentShiftValue = "1111") THEN
					next_state <= EXTENDING2;
				ELSE
					next_state <= EXTENDING3;
				END IF;

         WHEN FULLYEXTENDED =>		
				IF(controlButton = '0' AND enable = '1' ) THEN
					next_state <= EXTENDING3;
				ELSE
					next_state <= FULLYEXTENDED;
				END IF;

         
			WHEN OTHERS =>
            next_state <= RETRACTED;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS ( current_state,controlButton, enable, currentShiftValue)

BEGIN
     CASE current_state IS
         WHEN RETRACTED =>		
				bitShifting <= '0';
				extenderOut<= '0';
				grapplerEnable <= '0';
				bitShiftDirection <= '1';
				
         WHEN EXTENDING1 =>	
			
				bitShifting <= '1';
				extenderOut<= '1';
				grapplerEnable <= '0';

         WHEN EXTENDING2 =>
			
				bitShifting <='1';
				extenderOut<= '1';
				grapplerEnable <= '0';
         WHEN EXTENDING3 =>
			
				bitShifting <= '1';
				extenderOut<= '1';
				grapplerEnable <= '0';
			
         WHEN FULLYEXTENDED =>		
				bitShifting <= '0';
				extenderOut<= '1';
				grapplerEnable <= '1';
				bitShiftDirection <= '0';

				
         WHEN others =>		
				bitShifting <= '0';
				extenderOut<= '0';
				grapplerEnable <= '0';
				bitShiftDirection <= '1';

	  END CASE;
 END PROCESS;

 END ARCHITECTURE SM;
 

