library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity MealyStatemachine IS Port
(
 clk_input, resetButton : IN std_logic;

 X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL

 isError : IN std_logic; -- need to put that somewhere


 
 X_MOTION, Y_MOTION : IN std_logic;
 
 Clk_en, UPorDOWN: OUT std_logic;
 
 ExtenderEnable: OUT std_logic




 
 );
END ENTITY;
 

 Architecture behaviour of MealyStatemachine is
 

 -- state for the X control and Y control
 
 TYPE STATE IS (XMOVE, STOP, YMOVE, BOTHMOVE);


 
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

Transition_Section: PROCESS (current_state) -- X_EQ, X_GT, X_LT, Y_EQ, Y_GT,Y_LT)  


BEGIN
     CASE current_state IS
	  
	  --switching states depending on the value of the comparaison
         WHEN STOP =>		
				
					
				IF( ((X_GT='1' AND Y_GT ='1') OR (X_LT='1' AND Y_LT='1' ) ) AND (X_MOTION='0') AND (Y_MOTION='0') ) THEN
					-- both are bigger or smaller AND we ve got both buttons at active low
					next_state <= BOTHMOVE;
					
				ELSIF((X_GT='1' or X_LT='1') AND (X_MOTION='0') ) THEN
				
					next_state <= XMOVE;
				ELSIF((Y_GT='1' or Y_LT='1') AND (Y_MOTION='0') ) THEN 

					next_state <= YMOVE;
					
				ELSE
					next_state <= STOP;
					
				END IF;

         WHEN XMOVE =>
			
				IF( ((X_GT='1' AND Y_GT ='1') OR (X_LT='1' AND Y_LT='1' ) ) AND (X_MOTION='0') AND (Y_MOTION='0') ) THEN
					-- both are bigger or smaller AND we ve got both buttons at active low
					next_state <= BOTHMOVE;
					
				ELSIF((X_GT='1' or X_LT='1') AND (X_MOTION='0') ) THEN
				
					next_state <= XMOVE;
				ELSIF((Y_GT='1' or Y_LT='1') AND (Y_MOTION='0') ) THEN 

					next_state <= YMOVE;
					
				ELSE
					next_state <= STOP;
					
				END IF;
				

         WHEN YMOVE =>
			
				IF( ((X_GT='1' AND Y_GT ='1') OR (X_LT='1' AND Y_LT='1' ) ) AND (X_MOTION='0') AND (Y_MOTION='0') ) THEN
					-- both are bigger or smaller AND we ve got both buttons at active low
					next_state <= BOTHMOVE;
					
				ELSIF((X_GT='1' or X_LT='1') AND (X_MOTION='0') ) THEN
				
					next_state <= XMOVE;
				ELSIF((Y_GT='1' or Y_LT='1') AND (Y_MOTION='0') ) THEN 

					next_state <= YMOVE;
					
				ELSE
					next_state <= STOP;
					
				END IF;
				
				
				
         WHEN BOTHMOVE =>
			
				IF( ((X_GT='1' AND Y_GT ='1') OR (X_LT='1' AND Y_LT='1' ) ) AND (X_MOTION='0') AND (Y_MOTION='0') ) THEN
					-- both are bigger or smaller AND we ve got both buttons at active low
					next_state <= BOTHMOVE;
					
				ELSIF((X_GT='1' or X_LT='1') AND (X_MOTION='0') ) THEN
				
					next_state <= XMOVE;
				ELSIF((Y_GT='1' or Y_LT='1') AND (Y_MOTION='0') ) THEN 

					next_state <= YMOVE;
					
				ELSE
					next_state <= STOP;
					
				END IF;
			
			WHEN OTHERS =>
				next_state <= STOP;
 		END CASE;
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state, X_MOTION, Y_MOTION) --X_EQ, X_GT, X_LT, Y_EQ, Y_GT, Y_LT, X_MOTION, Y_MOTION ) 

BEGIN
	
	CASE current_state IS
	
		WHEN STOP =>
		
			IF (X_EQ='1'AND Y_EQ='1') THEN
				-- actually signal the stop
				
			
			END IF;
		
		WHEN XMOVE =>
			
			IF (X_GT='1') THEN
			 -- count backward
				
				UPorDOWN <= '0';
				CLK_en <= '0';
				
			ELSE
			 -- count forward
				UPorDOWN <= '1';
				CLK_en <= '0';

			END IF;
		
		WHEN YMOVE =>
			IF (Y_GT='1') THEN
			 -- count backward
				
				UPorDOWN <= '0';
				CLK_en <= '0';
				
			ELSE
			 -- count forward
				UPorDOWN <= '1';
				CLK_en <= '0';

			END IF;
		
		
		WHEN BOTHMOVE =>
			IF (X_GT='1') THEN
				 -- count backward
				
				UPorDOWN <= '0';
				CLK_en <= '0';
				
			ELSE
			 -- count forward
				UPorDOWN <= '1';
				CLK_en <= '0';

			END IF;
		
			
			IF (Y_GT='1') THEN
				 -- count backward
				
				UPorDOWN <= '0';
				CLK_en <= '0';
				
			ELSE
			 -- count forward
				UPorDOWN <= '1';
				CLK_en <= '0';

			END IF;
		
		END CASE;
		
	  
 END PROCESS;

 END ARCHITECTURE behaviour;
