
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

COMPONENT FourBitComparator is port (
	
	bitA0, bitA1, bitA2, bitA3, bitB0, bitB1, bitB2, bitB3 : in std_logic;
	
	AGTB	: out std_logic;
	AEQB	: out std_logic;
	ALTB	: out std_logic

	);
end COMPONENT;

COMPONENT Grappler IS Port (
 clk_input, rst_n, controlButton, enable						: IN std_logic;
 grappleControl													: OUT std_logic
 );
end COMPONENT;

COMPONENT Bidir_shift_reg is port
(
	CLK		: in std_logic :='0';
	RESET_n	: in std_logic :='0';
	CLK_EN	: in std_logic :='0';
	LEFT0_RIGHT1 : in std_logic :='0';
	REG_BITS	: OUT std_logic_vector(3 downto 0)
);
end COMPONENT;

COMPONENT Extender IS Port
(
 clk_input, rst_n, controlButton, enable						: IN std_logic;
 currentShiftValue 													: IN std_logic_vector(3 downto 0);
 bitShifting, extenderOut, bitShiftDirection, grapplerEnable		: OUT std_logic
 );
END COMPONENT;





	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

   SIGNAL 	Main_CLK						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
----------------------------------------------------------------------------------------------------
	
	SIGNAL XTARGET, YTARGET : std_logic_vector(6 downto 0);
	SIGNAL XCURRENT, YCURRENT : std_logic_vector(3 downto 0);
	
	SIGNAL XTargLTCurr, XTargEQCurr, XTargGTCurr : std_logic;
	SIGNAL YTargLTCurr, YTargEQCurr, YTargGTCurr : std_logic;

	SIGNAL bitShiftDirControl, bitShiftEnable : std_logic;
	SIGNAL currentShiftValue : std_logic_vector(3 downto 0);




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

leds (3 downto 0) <= currentShiftValue (3 downto 0);
---------------------------------------------------------------------------------------------------
INST1: SevenSegment PORT MAP (sw(7 downto 4),XTARGET);
INST2: SevenSegment PORT MAP (sw(3 downto 0),YTARGET);
-- switch to targets

INST3: segment7_mux PORT MAP (clkin_50, XTARGET(6 downto 0), YTARGET(6 downto 0), seg7_data(6 downto 0), seg7_char1, seg7_char2);

INST4X: Bin_Counter4bit PORT MAP (Main_CLK,rst_n,'1','1',XCURRENT(3 downto 0) );

INST5Y: Bin_Counter4bit PORT MAP (Main_CLK,rst_n, '1','1',YCURRENT(3 downto 0) );


INST6X: FourBitComparator PORT MAP (
	
	XTARGET(0),XTARGET(1), XTARGET(2), XTARGET(3),
	XCURRENT(0), XCURRENT(1), XCURRENT(2), XCURRENT(3), 
	XTargGTCurr, XTargEQCurr, XTargLTCurr);
	
INST7Y: FourBitComparator PORT MAP (
	
	YTARGET(0),YTARGET(1), YTARGET(2), YTARGET(3),
	YCURRENT(0), YCURRENT(1), YCURRENT(2), YCURRENT(3), 
	YTargGTCurr, YTargEQCurr, YTargLTCurr);
	
	
--INST8GrapplerSM: Grappler PORT MAP (Main_Clk, rst_n, pb(0) , sw(7), leds(3)); --working

INST9: Bidir_shift_reg PORT MAP(
	Main_Clk, rst_n,	
	bitShiftEnable, bitShiftDirControl, 
	currentShiftValue (3 downto 0) );
	
INST10: Extender PORT MAP (

 Main_Clk, rst_n, pb(2), sw(5),						
 currentShiftValue(3 downto 0), 												
 bitShiftEnable, leds(6), bitShiftDirControl, leds(7)
 );

 
--INST4: MealyStatemachine PORT MAP ( Main_CLK, rst_n, X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 --Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 --isError : IN std_logic; -- need to put that somewhere
 --X_MOTION, Y_MOTION : IN std_logic;
 --Clk_en, UPorDOWN: OUT std_logic;
 --ExtenderEnable: OUT std_logic

END SimpleCircuit;
