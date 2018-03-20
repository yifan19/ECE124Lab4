
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
Port(

 clk_input, resetButton : IN std_logic;

 X_EQ, X_GT, X_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 Y_EQ, Y_GT, Y_LT : IN std_logic; --comparing DESIRED TO ACTUAL
 extenderOut : IN std_logic;

 X_MOTION, Y_MOTION : IN std_logic;
 
 X_Clk_en, X_UPorDOWN: OUT std_logic;
 Y_Clk_en, Y_UPorDOWN: OUT std_logic;
 
 ExtenderEnable: OUT std_logic;

 isError : OUT std_logic


 );
END COMPONENT;

COMPONENT Bin_Counter4bit is port
(
		Main_clk			: in std_logic;
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


COMPONENT mux is port (
   
   hex_in1, hex_in2	: in std_logic_vector(6 downto 0);
	mux_select :in std_logic;
	hex_out	:	out std_logic_vector(6 downto 0)

	
); 
end COMPONENT;

COMPONENT muxSingle is port (
   
   hex_in1, hex_in2	: in std_logic;
	mux_select :in std_logic;
	hex_out	:	out std_logic

	
); 
end COMPONENT;

COMPONENT FlashCounter is port
	(
		Main_clk			: in std_logic;
		rst_n				: in std_logic := '0';
		clk_en			: in std_logic := '0';
		up1_down0		: in std_logic := '0';
		counter_bits	: out std_logic	
	);
	end COMPONENT;
	




	
----------------------------------------------------------------------------------------------------
	CONSTANT	SIM							:  boolean := FALSE; 	-- set to TRUE for simulation runs otherwise keep at 0.
   CONSTANT CLK_DIV_SIZE				: 	INTEGER := 26;    -- size of vectors for the counters

   SIGNAL 	Main_Clk						:  STD_LOGIC; 			-- main clock to drive sequencing of State Machine

	SIGNAL 	bin_counter					:  UNSIGNED(CLK_DIV_SIZE-1 downto 0); -- := to_unsigned(0,CLK_DIV_SIZE); -- reset binary counter to zero
	
----------------------------------------------------------------------------------------------------
	
	SIGNAL XTARGET7seg, YTARGET7seg : std_logic_vector(6 downto 0);
	SIGNAL XCURRENT, YCURRENT : std_logic_vector(3 downto 0);
	SIGNAL XCURRENT7seg, YCURRENT7seg : std_logic_vector(6 downto 0);
	
	SIGNAL XMUX7seg, YMUX7seg: std_logic_vector(6 downto 0);
	
	SIGNAL XTargLTCurr, XTargEQCurr, XTargGTCurr : std_logic;
	SIGNAL YTargLTCurr, YTargEQCurr, YTargGTCurr : std_logic;

	SIGNAL bitShiftDirControl, bitShiftEnable : std_logic;
	SIGNAL currentShiftValue : std_logic_vector(3 downto 0);
	
	SIGNAL extenderOutSignal : std_logic;
	
	SIGNAL X_ClockEnable, Y_ClockEnable : std_logic;
	SIGNAL X_Direction, Y_Direction : std_logic;
	
	SIGNAL GrappleEnableSignal : std_logic;

	SIGNAL extenderEnableSignal : std_logic;
	SIGNAL ERROR7seg, NOTHING7seg, ERROR7segOutput : std_logic_vector(6 downto 0);
	SIGNAL X_ERROR_AND_VALUE7seg, Y_ERROR_AND_VALUE7seg:std_logic_vector(6 downto 0);
	
	SIGNAL ERROR : std_logic;
	
	SIGNAL MUX_CLOCK : std_logic;
	
	SIGNAL FLASH: std_logic;
	


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

leds (7 downto 4) <= currentShiftValue (3 downto 0);
leds (0) <= ERROR;
ERROR7seg <= "1111001";
NOTHING7seg <= "0000000";


---------------------------------------------------------------------------------------------------
INST1XTARGET: SevenSegment PORT MAP (sw(7 downto 4),XTARGET7Seg);
INST2YTARGET: SevenSegment PORT MAP (sw(3 downto 0),YTARGET7Seg);
INST11XCURRENT: SevenSegment PORT MAP (XCURRENT,XCURRENT7seg);
INST12YCURRENT: SevenSegment PORT MAP (YCURRENT,YCURRENT7seg);

INST13MUX_X:mux PORT MAP (
   
   XCURRENT7seg, XTARGET7Seg,
	pb(3),
	XMUX7seg);
	
INST14MUX_Y:mux PORT MAP (
   
   YCURRENT7seg, YTARGET7Seg,
	pb(2),
	YMUX7seg);
	
INST15X_MUX_ERROR :mux PORT MAP (
   
   XMUX7seg, ERROR7segOutput,
	ERROR,
	X_ERROR_AND_VALUE7seg);
	
INST16Y_MUX_ERROR :mux PORT MAP (
   
   YMUX7seg,ERROR7segOutput,
	ERROR,
	Y_ERROR_AND_VALUE7seg);


INST18ERROR_AND_NOTHING: mux PORT MAP(

	ERROR7seg, NOTHING7seg,
	FLASH,
	
	ERROR7segOutput);
	
INST19FLASH: FlashCounter PORT MAP
	(
		std_logic(bin_counter(23)),
		rst_n,
		'1',
		'1',
		FLASH
	);	



INST3: segment7_mux PORT MAP (clkin_50, X_ERROR_AND_VALUE7seg(6 downto 0), Y_ERROR_AND_VALUE7seg(6 downto 0), seg7_data(6 downto 0), seg7_char1, seg7_char2);

INST4X: Bin_Counter4bit PORT MAP (Main_Clk,rst_n,X_ClockEnable,X_Direction,XCURRENT(3 downto 0) );

INST5Y: Bin_Counter4bit PORT MAP (Main_Clk,rst_n, Y_ClockEnable,Y_Direction,YCURRENT(3 downto 0) );


INST6X: FourBitComparator PORT MAP (
	
	sw(4),sw(5), sw(6), sw(7),
	XCURRENT(0), XCURRENT(1), XCURRENT(2), XCURRENT(3), 
	XTargGTCurr, XTargEQCurr, XTargLTCurr);
	
INST7Y: FourBitComparator PORT MAP (
	
	sw(0),sw(1), sw(2), sw(3),
	YCURRENT(0), YCURRENT(1), YCURRENT(2), YCURRENT(3), 
	YTargGTCurr, YTargEQCurr, YTargLTCurr);
	
	
INST8GrapplerSM: Grappler PORT MAP (Main_Clk, rst_n, pb(0) , GrappleEnableSignal, leds(3));


INST9: Bidir_shift_reg PORT MAP(
	Main_Clk, rst_n,	
	bitShiftEnable, bitShiftDirControl, 
	currentShiftValue (3 downto 0) );
--	
INST10: Extender PORT MAP (

	Main_Clk, rst_n, pb(1), extenderEnableSignal,						
	currentShiftValue(3 downto 0), 												
	bitShiftEnable, extenderOutSignal, bitShiftDirControl,GrappleEnableSignal
);

 
INSTMEALY: MealyStatemachine PORT MAP (

 Main_Clk, rst_n,
 
 XTargEQCurr, XTargGTCurr, XTargLTCurr,
 YTargEQCurr, YTargGTCurr, YTargLTCurr,
 extenderOutSignal,
 pb(3), pb(2),
 
 X_ClockEnable, X_Direction,
 Y_ClockEnable, Y_Direction,
 
 extenderEnableSignal,
 ERROR
 
 );
 
 
 --INST13ERROR_MUX:mux PORT MAP (ERROR7seg,


END SimpleCircuit;
