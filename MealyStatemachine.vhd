library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MealyStatemachine IS Port
(
 clk_input, resetButton : IN std_logic;

 X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 extenderOut : IN std_logic;


 
 X_MOTION, Y_MOTION : IN std_logic;
 
 X_Clk_en, X_UPorDOWN: OUT std_logic;
 Y_Clk_en, Y_UPorDOWN: OUT std_logic;
 
 ExtenderEnable: OUT std_logic;

 isError : OUT std_logic -- need to put that somewhere
 




 
 );
END ENTITY;
 

 Architecture behaviour of MealyStatemachine is
 

 -- state for the X control and Y control
 
 TYPE STATE IS (XMOVE, STOP, YMOVE, BOTHMOVE, ERROR);


 
 SIGNAL current_state, next_state	: STATE; -- our signal for currentState and nextSate


 BEGIN
 
 --------------------------------------------------------------------------------
 --State Machine:
 --------------------------------------------------------------------------------

 
 
 
 -----------------------------CONTROL FOR X-------------------------------------
 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clk_input, resetButton, next_state)  -- this process synchronizes the activity to a clock
BEGIN
	IF (resetButton = '0') THEN
		current_state <= STOP;
		
		
	ELSIF(rising_edge(clk_input)) THEN
		current_state <= next_State;
	END IF;
END PROCESS;	



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (current_state, X_EQ, X_GT, X_LT,Y_EQ, Y_GT, Y_LT,extenderOut,X_MOTION, Y_MOTION)


BEGIN
     CASE current_state IS
	  
	  --switching states depending on the value of the comparaison
         WHEN STOP =>		
				--((X_GT='1' AND Y_GT ='1') OR (X_LT='1' AND Y_LT='1' )
				
				IF( X_EQ = '0' AND Y_EQ = '0'	AND (X_MOTION='0') AND (Y_MOTION='0') ) THEN
					-- both are bigger or smaller AND we ve got both buttons at active low
					next_state <= BOTHMOVE;
					
				ELSIF((X_GT='1' or X_LT='1') AND (X_MOTION='0') ) THEN
				
					next_state <= XMOVE;
					
				ELSIF((Y_GT='1' or Y_LT='1') AND (Y_MOTION='0') ) THEN 

					next_state <= YMOVE;
					
				ELSIF( extenderOut = '1') THEN
				
					next_state <= ERROR;
					
					
				ELSE
					next_state <= STOP;
					
				END IF;
				
	
				

         WHEN XMOVE =>
			
				IF( X_EQ = '1') THEN
					
					next_state <= STOP;
					
					
				ELSE
					next_state <= XMOVE;
					
				END IF;
				

				

         WHEN YMOVE =>
			
				IF( Y_EQ = '1') THEN
					
					next_state <= STOP;
					
					
				ELSE
					next_state <= XMOVE;
					
				END IF;
				
				
				
				
         WHEN BOTHMOVE =>
			
				IF( Y_EQ = '1' OR X_EQ = '1') THEN
					
					next_state <= STOP;
					
				ELSE
					next_state <= BOTHMOVE;
					
				END IF;
				
				
			
			WHEN ERROR =>
				
				IF( extenderOut = '0') THEN
					next_state <= STOP;
				ELSE
					next_state <= ERROR;
				END IF;
				
			WHEN OTHERS =>
				next_state <= STOP;
			END CASE;
				
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state, X_EQ, X_GT, X_LT,Y_EQ, Y_GT, Y_LT,extenderOut,X_MOTION, Y_MOTION)

BEGIN
	
	CASE current_state IS
	
		WHEN STOP =>
				X_CLK_en <= '0';
				Y_CLK_en <= '0';
		
			IF (X_EQ='1'AND Y_EQ='1') THEN
				
				ExtenderEnable <= '1';
			ELSE
				
				ExtenderEnable <= '0';
			
			END IF;
			
			
			
			
		
		WHEN XMOVE =>
		
			
			IF (X_GT='1') THEN
			
				X_CLK_en <= '1';
				X_UPorDOWN <= '1';
				
				
				
			ELSIF (X_LT = '1') THEN
			 -- count forward

				X_CLK_en <= '1';
				X_UPorDOWN <= '0';
				
			ELSE
				X_CLK_en <= '0';
				
			END IF;
			
			
		
		WHEN YMOVE =>
			Y_CLK_en <= '0';
			
			IF (Y_GT='1') THEN
			 -- count backward
				Y_CLK_en <= '1';
				Y_UPorDOWN <= '1';
		
			ELSIF (Y_LT = '1') THEN
			 -- count forward
				Y_CLK_en <= '1';
				Y_UPorDOWN <= '0';
				
			
			ELSE
				Y_CLK_en <= '0';
				
			END IF;
			
			
		
		
		WHEN BOTHMOVE =>
			IF (X_GT='1') THEN
			
				X_CLK_en <= '1';
				X_UPorDOWN <= '1';
				
				
				
			ELSIF (X_LT = '1') THEN
			 -- count forward

				X_CLK_en <= '1';
				X_UPorDOWN <= '0';
				
			ELSE
				X_CLK_en <= '0';
				
			END IF;
		
			
			IF (Y_GT='1') THEN
			 -- count backward
				Y_CLK_en <= '1';
				Y_UPorDOWN <= '1';
		
			ELSIF (Y_LT = '1') THEN
			 -- count forward
				Y_CLK_en <= '1';
				Y_UPorDOWN <= '0';
				
			
			ELSE
				Y_CLK_en <= '0';
				
			END IF;
			
		WHEN ERROR =>
				
			IF ( (Y_EQ = '0' OR X_EQ = '0') AND (X_MOTION = '0' OR Y_MOTION = '0') )THEN
				
				isError <= '1';
			ELSE 
				isError <= '0';
			
			END IF;
		
		END CASE;
		
	  
 END PROCESS;

 END ARCHITECTURE behaviour;
