
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
   clkin_50		: in	std_logic;
	rst_n			: in	std_logic;
	pb				: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); -- The switch inputs
   leds			: out std_logic_vector(7 downto 0);	-- for displaying the switch content
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;							-- seg7 digi selectors
	seg7_char2  : out	std_logic							-- seg7 digi selectors
	);
END LogicalStep_Lab4_top;

ARCHITECTURE SimpleCircuit OF LogicalStep_Lab4_top IS

COMPONENT SevenSegment is port (
   
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end COMPONENT;

COMPONENT segment7_mux is
   port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end COMPONENT;

COMPONENT MealyStatemachine IS 
Port
(
 clk_input, resetButton : IN std_logic;
 X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 isError : IN std_logic; -- need to put that somewhere
 X_MOTION, Y_MOTION : IN std_logic;
 Clk_en, UPorDOWN: OUT std_logic;
 ExtenderEnable: OUT std_logic
 );
END COMPONENT;

COMPONENT Bin_Counter4bit is port
(
		Main_clk			: in std_logic := '0';
		rst_n				: in std_logic := '0';
		clk_en			: in std_logic := '0';
		up1_down0		: in std_logic := '0';
		counter_bits	: out std_logic_vector(3 downto 0)	
);
end COMPONENT;





	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
----------------------------------------------------------------------------------------------------
	
	SIGNAL XTARGET, YTARGET : std_logic_vector(6 downto 0);
	SIGNAL 






----------------------------------------------------------------------------------------------------


BEGIN

-- CLOCKING GENERATOR WHICH DIVIDES THE INPUT CLOCK DOWN TO A LOWER FREQUENCY

BinCLK: PROCESS(clkin_50, rst_n) is
   BEGIN
		IF (rising_edge(clkin_50)) THEN -- binary counter increments on rising clock edge
         bin_counter <= bin_counter + 1;
      END IF;
   END PROCESS;

Clock_Source:
				Main_Clk <= 
				clkin_50 when sim = TRUE else				-- for simulations only
				std_logic(bin_counter(23));								-- for real FPGA operation
					
---------------------------------------------------------------------------------------------------


---------------------------------------------------------------------------------------------------
INST1: SevenSegment PORT MAP (sw(7 downto 4),XTARGET);
INST2: SevenSegment PORT MAP (sw(3 downto 0),YTARGET);

INST3: segment7_mux PORT MAP (clkin_50, XTARGET(6 downto 0), YTARGET(6 downto 0), seg7_data(6 downto 0), seg7_char1, seg7_char2);

INST4: Bin_Counter4bit PORT MAP (Main_CLK,rst_n,'1s','1',leds(3 downto 0) );

--INST4: MealyStatemachine PORT MAP ( Main_CLK, rst_n, X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 --Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 --isError : IN std_logic; -- need to put that somewhere
 --X_MOTION, Y_MOTION : IN std_logic;
 --Clk_en, UPorDOWN: OUT std_logic;
 --ExtenderEnable: OUT std_logic

END SimpleCircuit;
