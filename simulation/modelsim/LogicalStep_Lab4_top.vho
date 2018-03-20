-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "03/20/2018 09:34:27"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : BUFFER std_logic_vector(7 DOWNTO 0);
	seg7_data : BUFFER std_logic_vector(6 DOWNTO 0);
	seg7_char1 : BUFFER std_logic;
	seg7_char2 : BUFFER std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INSTMEALY|WideOr1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \INST9|sreg~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST10|bitShifting~0_combout\ : std_logic;
SIGNAL \INST9|sreg~0_combout\ : std_logic;
SIGNAL \INST10|Equal2~0_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST10|Selector2~0_combout\ : std_logic;
SIGNAL \INST10|Selector1~0_combout\ : std_logic;
SIGNAL \INST10|Selector1~1_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST6X|AEQB~0_combout\ : std_logic;
SIGNAL \INST6X|AEQB~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector0~0_combout\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~7_combout\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~8_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector0~1_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.XMOVE~q\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INSTMEALY|Y_UPorDOWN~0_combout\ : std_logic;
SIGNAL \INSTMEALY|WideOr1~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~1_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~2_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~3_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector12~4_combout\ : std_logic;
SIGNAL \INSTMEALY|Y_Clk_en~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector8~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Y_UPorDOWN~combout\ : std_logic;
SIGNAL \INST5Y|process_0~0_combout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Y_UPorDOWN~1_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector3~5_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector3~4_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.BOTHMOVE~q\ : std_logic;
SIGNAL \INSTMEALY|Selector2~1_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector2~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~9_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector2~2_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.YMOVE~q\ : std_logic;
SIGNAL \INST6X|AGTB~2_combout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST6X|AGTB~1_combout\ : std_logic;
SIGNAL \INST6X|AGTB~3_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector14~4_combout\ : std_logic;
SIGNAL \INSTMEALY|X_Clk_en~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector9~0_combout\ : std_logic;
SIGNAL \INSTMEALY|X_UPorDOWN~combout\ : std_logic;
SIGNAL \INST4X|process_0~0_combout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST6X|AGTB~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~4_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector6~0_combout\ : std_logic;
SIGNAL \INSTMEALY|WideOr1~0clkctrl_outclk\ : std_logic;
SIGNAL \INSTMEALY|ExtenderEnable~combout\ : std_logic;
SIGNAL \INST10|Selector1~2_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING1~q\ : std_logic;
SIGNAL \INST10|Selector2~1_combout\ : std_logic;
SIGNAL \INST10|Selector2~2_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING2~q\ : std_logic;
SIGNAL \INST10|Selector3~3_combout\ : std_logic;
SIGNAL \INST10|Selector3~4_combout\ : std_logic;
SIGNAL \INST10|Selector3~5_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING3~q\ : std_logic;
SIGNAL \INST10|Selector3~2_combout\ : std_logic;
SIGNAL \INST10|Selector4~0_combout\ : std_logic;
SIGNAL \INST10|current_state.FULLYEXTENDED~q\ : std_logic;
SIGNAL \INST10|bitShiftDirection~combout\ : std_logic;
SIGNAL \INST9|sreg~1_combout\ : std_logic;
SIGNAL \INST9|sreg~2_combout\ : std_logic;
SIGNAL \INST10|Equal1~0_combout\ : std_logic;
SIGNAL \INST10|Selector0~0_combout\ : std_logic;
SIGNAL \INST10|current_state.RETRACTED~q\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~6_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~1_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~2_combout\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~5_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~3_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~4_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.STOP~q\ : std_logic;
SIGNAL \INSTMEALY|Selector4~0_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.ERROR~q\ : std_logic;
SIGNAL \INSTMEALY|isError~combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux5~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux5~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux5~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux5~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~1_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~2_combout\ : std_logic;
SIGNAL \INST19FLASH|ud_bin_counter[0]~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux1~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux1~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~3_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux1~0_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux1~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~4_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~5_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux0~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux0~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux0~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~6_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux0~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~7_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~8_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST8GrapplerSM|next_state~0_combout\ : std_logic;
SIGNAL \INST8GrapplerSM|current_state~feeder_combout\ : std_logic;
SIGNAL \INST8GrapplerSM|current_state~q\ : std_logic;
SIGNAL \INST2YTARGET|Mux6~0_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux6~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux6~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux6~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~1_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~2_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~3_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux4~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux4~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux4~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~5_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux4~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~6_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~7_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux3~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux3~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux3~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~8_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux3~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~9_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~10_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux2~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux2~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux2~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~11_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux2~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~12_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~13_combout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST5Y|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST19FLASH|ud_bin_counter\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \INST9|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\INSTMEALY|WideOr1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INSTMEALY|WideOr1~0_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT_TEMP[1]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT_TEMP[5]~5_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT_TEMP[6]~8_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INSTMEALY|isError~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST8GrapplerSM|current_state~q\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST9|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT[0]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT[2]~7_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT[3]~10_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST3|DOUT[4]~13_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X3_Y7_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X3_Y7_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X3_Y7_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X3_Y7_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X3_Y7_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X3_Y7_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X3_Y7_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X3_Y7_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X3_Y7_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X3_Y7_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X3_Y7_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X3_Y7_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X3_Y7_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X3_Y7_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X3_Y7_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X3_Y7_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X3_Y7_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X3_Y7_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X3_Y7_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X3_Y7_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X3_Y7_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X3_Y7_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X3_Y7_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X3_Y7_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X3_Y6_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X3_Y6_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X3_Y6_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X3_Y6_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X3_Y6_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X3_Y6_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X3_Y6_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X3_Y6_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X3_Y6_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X3_Y6_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X3_Y6_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X3_Y6_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X3_Y6_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X3_Y6_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X3_Y6_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X3_Y6_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X3_Y6_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X3_Y6_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X3_Y6_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X3_Y6_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X3_Y6_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X3_Y6_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X3_Y6_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = bin_counter(23) $ (!\bin_counter[22]~66\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X3_Y6_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: CLKCTRL_G0
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y6_N30
\INST9|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~3_combout\ = (\INST10|bitShiftDirection~combout\) # (\INST9|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|bitShiftDirection~combout\,
	datad => \INST9|sreg\(2),
	combout => \INST9|sreg~3_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: LCCOMB_X7_Y6_N24
\INST10|bitShifting~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|bitShifting~0_combout\ = (!\INST10|current_state.FULLYEXTENDED~q\ & \INST10|current_state.RETRACTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST10|current_state.FULLYEXTENDED~q\,
	datad => \INST10|current_state.RETRACTED~q\,
	combout => \INST10|bitShifting~0_combout\);

-- Location: FF_X7_Y6_N31
\INST9|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST9|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(3));

-- Location: LCCOMB_X7_Y6_N26
\INST9|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~0_combout\ = (\INST10|bitShiftDirection~combout\ & \INST9|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|bitShiftDirection~combout\,
	datac => \INST9|sreg\(1),
	combout => \INST9|sreg~0_combout\);

-- Location: FF_X7_Y6_N27
\INST9|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST9|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(0));

-- Location: LCCOMB_X7_Y6_N0
\INST10|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Equal2~0_combout\ = (\INST9|sreg\(2) & (\INST9|sreg\(1) & (\INST9|sreg\(3) & !\INST9|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(2),
	datab => \INST9|sreg\(1),
	datac => \INST9|sreg\(3),
	datad => \INST9|sreg\(0),
	combout => \INST10|Equal2~0_combout\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X7_Y6_N6
\INST10|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~0_combout\ = (\INST9|sreg\(3) & (((\INST10|current_state.EXTENDING3~q\ & \INST9|sreg\(2))) # (!\INST9|sreg\(1)))) # (!\INST9|sreg\(3) & (!\INST9|sreg\(1) & ((\INST9|sreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(3),
	datab => \INST9|sreg\(1),
	datac => \INST10|current_state.EXTENDING3~q\,
	datad => \INST9|sreg\(2),
	combout => \INST10|Selector2~0_combout\);

-- Location: LCCOMB_X10_Y6_N14
\INST10|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~0_combout\ = (\INST10|current_state.EXTENDING1~q\ & ((\INST9|sreg\(0)) # ((\INST9|sreg\(2)) # (\INST9|sreg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(0),
	datab => \INST10|current_state.EXTENDING1~q\,
	datac => \INST9|sreg\(2),
	datad => \INST9|sreg\(1),
	combout => \INST10|Selector1~0_combout\);

-- Location: LCCOMB_X10_Y6_N6
\INST10|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~1_combout\ = (\INST10|Selector1~0_combout\) # ((\INST10|current_state.EXTENDING2~q\ & \INST10|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.EXTENDING2~q\,
	datac => \INST10|Selector1~0_combout\,
	datad => \INST10|Equal2~0_combout\,
	combout => \INST10|Selector1~1_combout\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X10_Y6_N26
\INST4X|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[0]~3_combout\ = \INSTMEALY|X_Clk_en~combout\ $ (\INST4X|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|X_Clk_en~combout\,
	datad => \INST4X|ud_bin_counter\(0),
	combout => \INST4X|ud_bin_counter[0]~3_combout\);

-- Location: FF_X11_Y6_N31
\INST4X|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	asdata => \INST4X|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(0));

-- Location: LCCOMB_X11_Y6_N0
\INST4X|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[1]~5_cout\ = CARRY(\INST4X|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST4X|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X11_Y6_N2
\INST4X|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[1]~6_combout\ = (\INST4X|process_0~0_combout\ & ((\INST4X|ud_bin_counter\(1) & (!\INST4X|ud_bin_counter[1]~5_cout\)) # (!\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST4X|process_0~0_combout\ 
-- & ((\INST4X|ud_bin_counter\(1) & (\INST4X|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST4X|ud_bin_counter\(1) & (!\INST4X|ud_bin_counter[1]~5_cout\))))
-- \INST4X|ud_bin_counter[1]~7\ = CARRY((\INST4X|process_0~0_combout\ & ((!\INST4X|ud_bin_counter[1]~5_cout\) # (!\INST4X|ud_bin_counter\(1)))) # (!\INST4X|process_0~0_combout\ & (!\INST4X|ud_bin_counter\(1) & !\INST4X|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|process_0~0_combout\,
	datab => \INST4X|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST4X|ud_bin_counter[1]~5_cout\,
	combout => \INST4X|ud_bin_counter[1]~6_combout\,
	cout => \INST4X|ud_bin_counter[1]~7\);

-- Location: FF_X11_Y6_N3
\INST4X|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST4X|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(1));

-- Location: LCCOMB_X11_Y6_N30
\INST6X|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AEQB~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ $ (\INST4X|ud_bin_counter\(0))) # (!\INST4X|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & ((\INST4X|ud_bin_counter\(1)) # (\sw[4]~input_o\ $ (\INST4X|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST6X|AEQB~0_combout\);

-- Location: LCCOMB_X9_Y6_N0
\INST6X|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AEQB~combout\ = (\INST6X|AEQB~0_combout\) # (!\INST6X|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST6X|AEQB~0_combout\,
	datad => \INST6X|AGTB~0_combout\,
	combout => \INST6X|AEQB~combout\);

-- Location: LCCOMB_X9_Y6_N20
\INSTMEALY|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector0~0_combout\ = (\INST6X|AEQB~combout\ & ((\INSTMEALY|current_state.XMOVE~q\) # ((!\INSTMEALY|Y_UPorDOWN~1_combout\ & \INSTMEALY|current_state.BOTHMOVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datab => \INSTMEALY|current_state.XMOVE~q\,
	datac => \INST6X|AEQB~combout\,
	datad => \INSTMEALY|current_state.BOTHMOVE~q\,
	combout => \INSTMEALY|Selector0~0_combout\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: LCCOMB_X9_Y6_N2
\INSTMEALY|Transition_Section~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~7_combout\ = (!\pb[2]~input_o\ & !\INST10|current_state.RETRACTED~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[2]~input_o\,
	datad => \INST10|current_state.RETRACTED~q\,
	combout => \INSTMEALY|Transition_Section~7_combout\);

-- Location: LCCOMB_X9_Y6_N30
\INSTMEALY|Transition_Section~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~8_combout\ = (!\pb[3]~input_o\ & (\INSTMEALY|Transition_Section~7_combout\ & (\INSTMEALY|Y_UPorDOWN~1_combout\ & \INST6X|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \INSTMEALY|Transition_Section~7_combout\,
	datac => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datad => \INST6X|AEQB~combout\,
	combout => \INSTMEALY|Transition_Section~8_combout\);

-- Location: LCCOMB_X9_Y6_N24
\INSTMEALY|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector0~1_combout\ = (\INSTMEALY|Selector0~0_combout\) # ((!\INSTMEALY|current_state.STOP~q\ & (\INSTMEALY|Transition_Section~6_combout\ & !\INSTMEALY|Transition_Section~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Selector0~0_combout\,
	datab => \INSTMEALY|current_state.STOP~q\,
	datac => \INSTMEALY|Transition_Section~6_combout\,
	datad => \INSTMEALY|Transition_Section~8_combout\,
	combout => \INSTMEALY|Selector0~1_combout\);

-- Location: FF_X9_Y6_N25
\INSTMEALY|current_state.XMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INSTMEALY|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.XMOVE~q\);

-- Location: LCCOMB_X12_Y6_N22
\INST5Y|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[0]~3_combout\ = \INSTMEALY|Y_Clk_en~combout\ $ (\INST5Y|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|Y_Clk_en~combout\,
	datac => \INST5Y|ud_bin_counter\(0),
	combout => \INST5Y|ud_bin_counter[0]~3_combout\);

-- Location: FF_X12_Y6_N23
\INST5Y|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5Y|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(0));

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: LCCOMB_X12_Y6_N6
\INST5Y|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[1]~5_cout\ = CARRY(\INST5Y|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5Y|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST5Y|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X12_Y6_N8
\INST5Y|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[1]~6_combout\ = (\INST5Y|process_0~0_combout\ & ((\INST5Y|ud_bin_counter\(1) & (!\INST5Y|ud_bin_counter[1]~5_cout\)) # (!\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST5Y|process_0~0_combout\ 
-- & ((\INST5Y|ud_bin_counter\(1) & (\INST5Y|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST5Y|ud_bin_counter\(1) & (!\INST5Y|ud_bin_counter[1]~5_cout\))))
-- \INST5Y|ud_bin_counter[1]~7\ = CARRY((\INST5Y|process_0~0_combout\ & ((!\INST5Y|ud_bin_counter[1]~5_cout\) # (!\INST5Y|ud_bin_counter\(1)))) # (!\INST5Y|process_0~0_combout\ & (!\INST5Y|ud_bin_counter\(1) & !\INST5Y|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|process_0~0_combout\,
	datab => \INST5Y|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST5Y|ud_bin_counter[1]~5_cout\,
	combout => \INST5Y|ud_bin_counter[1]~6_combout\,
	cout => \INST5Y|ud_bin_counter[1]~7\);

-- Location: FF_X12_Y6_N9
\INST5Y|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5Y|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|Y_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(1));

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: LCCOMB_X12_Y6_N26
\INSTMEALY|Y_UPorDOWN~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_UPorDOWN~0_combout\ = (\INST5Y|ud_bin_counter\(0) & ((\sw[1]~input_o\ $ (\INST5Y|ud_bin_counter\(1))) # (!\sw[0]~input_o\))) # (!\INST5Y|ud_bin_counter\(0) & ((\sw[0]~input_o\) # (\sw[1]~input_o\ $ (\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(0),
	datab => \sw[1]~input_o\,
	datac => \INST5Y|ud_bin_counter\(1),
	datad => \sw[0]~input_o\,
	combout => \INSTMEALY|Y_UPorDOWN~0_combout\);

-- Location: LCCOMB_X10_Y6_N0
\INSTMEALY|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|WideOr1~0_combout\ = (\INSTMEALY|current_state.ERROR~q\) # (!\INSTMEALY|current_state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datad => \INSTMEALY|current_state.ERROR~q\,
	combout => \INSTMEALY|WideOr1~0_combout\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X12_Y6_N10
\INST5Y|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[2]~8_combout\ = ((\INST5Y|process_0~0_combout\ $ (\INST5Y|ud_bin_counter\(2) $ (\INST5Y|ud_bin_counter[1]~7\)))) # (GND)
-- \INST5Y|ud_bin_counter[2]~9\ = CARRY((\INST5Y|process_0~0_combout\ & (\INST5Y|ud_bin_counter\(2) & !\INST5Y|ud_bin_counter[1]~7\)) # (!\INST5Y|process_0~0_combout\ & ((\INST5Y|ud_bin_counter\(2)) # (!\INST5Y|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|process_0~0_combout\,
	datab => \INST5Y|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST5Y|ud_bin_counter[1]~7\,
	combout => \INST5Y|ud_bin_counter[2]~8_combout\,
	cout => \INST5Y|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X12_Y6_N12
\INST5Y|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[3]~10_combout\ = \INST5Y|process_0~0_combout\ $ (\INST5Y|ud_bin_counter\(3) $ (!\INST5Y|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|process_0~0_combout\,
	datab => \INST5Y|ud_bin_counter\(3),
	cin => \INST5Y|ud_bin_counter[2]~9\,
	combout => \INST5Y|ud_bin_counter[3]~10_combout\);

-- Location: FF_X12_Y6_N13
\INST5Y|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5Y|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|Y_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(3));

-- Location: LCCOMB_X12_Y6_N14
\INST7Y|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~1_combout\ = (\sw[3]~input_o\ & (((!\INST5Y|ud_bin_counter\(2) & \sw[2]~input_o\)) # (!\INST5Y|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (!\INST5Y|ud_bin_counter\(2) & (\sw[2]~input_o\ & !\INST5Y|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \sw[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \INST5Y|ud_bin_counter\(3),
	combout => \INST7Y|AGTB~1_combout\);

-- Location: LCCOMB_X12_Y6_N0
\INST7Y|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~2_combout\ = (\sw[1]~input_o\ & (((!\INST5Y|ud_bin_counter\(0) & \sw[0]~input_o\)) # (!\INST5Y|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (!\INST5Y|ud_bin_counter\(0) & (!\INST5Y|ud_bin_counter\(1) & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(0),
	datab => \sw[1]~input_o\,
	datac => \INST5Y|ud_bin_counter\(1),
	datad => \sw[0]~input_o\,
	combout => \INST7Y|AGTB~2_combout\);

-- Location: LCCOMB_X12_Y6_N24
\INST7Y|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~3_combout\ = (\INST7Y|AGTB~1_combout\) # ((\INST7Y|AGTB~0_combout\ & \INST7Y|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AGTB~0_combout\,
	datac => \INST7Y|AGTB~1_combout\,
	datad => \INST7Y|AGTB~2_combout\,
	combout => \INST7Y|AGTB~3_combout\);

-- Location: LCCOMB_X12_Y6_N28
\INSTMEALY|Selector12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector12~4_combout\ = (!\INSTMEALY|WideOr1~0_combout\ & (((\INSTMEALY|Y_UPorDOWN~0_combout\) # (\INST7Y|AGTB~3_combout\)) # (!\INST7Y|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AGTB~0_combout\,
	datab => \INSTMEALY|Y_UPorDOWN~0_combout\,
	datac => \INSTMEALY|WideOr1~0_combout\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Selector12~4_combout\);

-- Location: LCCOMB_X12_Y6_N2
\INSTMEALY|Y_Clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_Clk_en~combout\ = (\INSTMEALY|current_state.XMOVE~q\ & (\INSTMEALY|Y_Clk_en~combout\)) # (!\INSTMEALY|current_state.XMOVE~q\ & ((\INSTMEALY|Selector12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|Y_Clk_en~combout\,
	datac => \INSTMEALY|current_state.XMOVE~q\,
	datad => \INSTMEALY|Selector12~4_combout\,
	combout => \INSTMEALY|Y_Clk_en~combout\);

-- Location: LCCOMB_X12_Y6_N18
\INSTMEALY|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector8~0_combout\ = (\INSTMEALY|current_state.YMOVE~q\ & ((\INSTMEALY|Y_UPorDOWN~1_combout\) # ((\INST7Y|AGTB~3_combout\)))) # (!\INSTMEALY|current_state.YMOVE~q\ & (\INSTMEALY|current_state.BOTHMOVE~q\ & ((\INSTMEALY|Y_UPorDOWN~1_combout\) 
-- # (\INST7Y|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.YMOVE~q\,
	datab => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datac => \INSTMEALY|current_state.BOTHMOVE~q\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Selector8~0_combout\);

-- Location: LCCOMB_X12_Y6_N16
\INSTMEALY|Y_UPorDOWN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_UPorDOWN~combout\ = (\INSTMEALY|Selector8~0_combout\ & (\INST7Y|AGTB~3_combout\)) # (!\INSTMEALY|Selector8~0_combout\ & ((\INSTMEALY|Y_UPorDOWN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7Y|AGTB~3_combout\,
	datac => \INSTMEALY|Y_UPorDOWN~combout\,
	datad => \INSTMEALY|Selector8~0_combout\,
	combout => \INSTMEALY|Y_UPorDOWN~combout\);

-- Location: LCCOMB_X12_Y6_N4
\INST5Y|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|process_0~0_combout\ = (\INSTMEALY|Y_Clk_en~combout\ & \INSTMEALY|Y_UPorDOWN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|Y_Clk_en~combout\,
	datad => \INSTMEALY|Y_UPorDOWN~combout\,
	combout => \INST5Y|process_0~0_combout\);

-- Location: FF_X12_Y6_N11
\INST5Y|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST5Y|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|Y_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(2));

-- Location: LCCOMB_X12_Y6_N30
\INST7Y|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~0_combout\ = (\INST5Y|ud_bin_counter\(2) & (\sw[2]~input_o\ & (\sw[3]~input_o\ $ (!\INST5Y|ud_bin_counter\(3))))) # (!\INST5Y|ud_bin_counter\(2) & (!\sw[2]~input_o\ & (\sw[3]~input_o\ $ (!\INST5Y|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \sw[3]~input_o\,
	datac => \sw[2]~input_o\,
	datad => \INST5Y|ud_bin_counter\(3),
	combout => \INST7Y|AGTB~0_combout\);

-- Location: LCCOMB_X12_Y6_N20
\INSTMEALY|Y_UPorDOWN~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_UPorDOWN~1_combout\ = (\INSTMEALY|Y_UPorDOWN~0_combout\) # (!\INST7Y|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7Y|AGTB~0_combout\,
	datad => \INSTMEALY|Y_UPorDOWN~0_combout\,
	combout => \INSTMEALY|Y_UPorDOWN~1_combout\);

-- Location: LCCOMB_X9_Y6_N18
\INSTMEALY|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector3~5_combout\ = (\INSTMEALY|current_state.BOTHMOVE~q\ & (\INSTMEALY|Y_UPorDOWN~1_combout\ & ((\INST6X|AEQB~0_combout\) # (!\INST6X|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.BOTHMOVE~q\,
	datab => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datac => \INST6X|AEQB~0_combout\,
	datad => \INST6X|AGTB~0_combout\,
	combout => \INSTMEALY|Selector3~5_combout\);

-- Location: LCCOMB_X9_Y6_N22
\INSTMEALY|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector3~4_combout\ = (\INSTMEALY|Selector3~5_combout\) # ((!\INSTMEALY|current_state.STOP~q\ & \INSTMEALY|Transition_Section~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|Selector3~5_combout\,
	datac => \INSTMEALY|current_state.STOP~q\,
	datad => \INSTMEALY|Transition_Section~8_combout\,
	combout => \INSTMEALY|Selector3~4_combout\);

-- Location: FF_X9_Y6_N23
\INSTMEALY|current_state.BOTHMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INSTMEALY|Selector3~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.BOTHMOVE~q\);

-- Location: LCCOMB_X10_Y6_N4
\INSTMEALY|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~1_combout\ = (\INSTMEALY|current_state.YMOVE~q\) # ((!\INST6X|AEQB~0_combout\ & (\INST6X|AGTB~0_combout\ & \INSTMEALY|current_state.BOTHMOVE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AEQB~0_combout\,
	datab => \INST6X|AGTB~0_combout\,
	datac => \INSTMEALY|current_state.BOTHMOVE~q\,
	datad => \INSTMEALY|current_state.YMOVE~q\,
	combout => \INSTMEALY|Selector2~1_combout\);

-- Location: LCCOMB_X9_Y6_N16
\INSTMEALY|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~0_combout\ = (!\INSTMEALY|current_state.STOP~q\ & (!\INSTMEALY|Transition_Section~6_combout\ & !\INSTMEALY|Transition_Section~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datac => \INSTMEALY|Transition_Section~6_combout\,
	datad => \INSTMEALY|Transition_Section~8_combout\,
	combout => \INSTMEALY|Selector2~0_combout\);

-- Location: LCCOMB_X9_Y6_N26
\INSTMEALY|Transition_Section~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~9_combout\ = (!\INST10|current_state.RETRACTED~q\ & (!\pb[2]~input_o\ & ((\INSTMEALY|Y_UPorDOWN~1_combout\) # (\INST7Y|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \pb[2]~input_o\,
	datac => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Transition_Section~9_combout\);

-- Location: LCCOMB_X10_Y6_N16
\INSTMEALY|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~2_combout\ = (\INSTMEALY|Selector2~1_combout\ & ((\INSTMEALY|Y_UPorDOWN~1_combout\) # ((\INSTMEALY|Selector2~0_combout\ & \INSTMEALY|Transition_Section~9_combout\)))) # (!\INSTMEALY|Selector2~1_combout\ & 
-- (((\INSTMEALY|Selector2~0_combout\ & \INSTMEALY|Transition_Section~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Selector2~1_combout\,
	datab => \INSTMEALY|Y_UPorDOWN~1_combout\,
	datac => \INSTMEALY|Selector2~0_combout\,
	datad => \INSTMEALY|Transition_Section~9_combout\,
	combout => \INSTMEALY|Selector2~2_combout\);

-- Location: FF_X10_Y6_N17
\INSTMEALY|current_state.YMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INSTMEALY|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.YMOVE~q\);

-- Location: LCCOMB_X11_Y6_N22
\INST6X|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~2_combout\ = (\sw[5]~input_o\ & (((\sw[4]~input_o\ & !\INST4X|ud_bin_counter\(0))) # (!\INST4X|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & (\sw[4]~input_o\ & (!\INST4X|ud_bin_counter\(0) & !\INST4X|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST6X|AGTB~2_combout\);

-- Location: LCCOMB_X11_Y6_N4
\INST4X|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[2]~8_combout\ = ((\INST4X|process_0~0_combout\ $ (\INST4X|ud_bin_counter\(2) $ (\INST4X|ud_bin_counter[1]~7\)))) # (GND)
-- \INST4X|ud_bin_counter[2]~9\ = CARRY((\INST4X|process_0~0_combout\ & (\INST4X|ud_bin_counter\(2) & !\INST4X|ud_bin_counter[1]~7\)) # (!\INST4X|process_0~0_combout\ & ((\INST4X|ud_bin_counter\(2)) # (!\INST4X|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|process_0~0_combout\,
	datab => \INST4X|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST4X|ud_bin_counter[1]~7\,
	combout => \INST4X|ud_bin_counter[2]~8_combout\,
	cout => \INST4X|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X11_Y6_N6
\INST4X|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[3]~10_combout\ = \INST4X|ud_bin_counter\(3) $ (\INST4X|ud_bin_counter[2]~9\ $ (!\INST4X|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(3),
	datad => \INST4X|process_0~0_combout\,
	cin => \INST4X|ud_bin_counter[2]~9\,
	combout => \INST4X|ud_bin_counter[3]~10_combout\);

-- Location: FF_X11_Y6_N7
\INST4X|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST4X|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(3));

-- Location: LCCOMB_X11_Y6_N24
\INST6X|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~1_combout\ = (\sw[7]~input_o\ & (((\sw[6]~input_o\ & !\INST4X|ud_bin_counter\(2))) # (!\INST4X|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (!\INST4X|ud_bin_counter\(2) & !\INST4X|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \INST4X|ud_bin_counter\(2),
	datad => \INST4X|ud_bin_counter\(3),
	combout => \INST6X|AGTB~1_combout\);

-- Location: LCCOMB_X11_Y6_N10
\INST6X|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~3_combout\ = (\INST6X|AGTB~1_combout\) # ((\INST6X|AGTB~2_combout\ & \INST6X|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~2_combout\,
	datac => \INST6X|AGTB~0_combout\,
	datad => \INST6X|AGTB~1_combout\,
	combout => \INST6X|AGTB~3_combout\);

-- Location: LCCOMB_X11_Y6_N8
\INSTMEALY|Selector14~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector14~4_combout\ = (!\INSTMEALY|WideOr1~0_combout\ & (((\INST6X|AEQB~0_combout\) # (\INST6X|AGTB~3_combout\)) # (!\INST6X|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datab => \INST6X|AEQB~0_combout\,
	datac => \INSTMEALY|WideOr1~0_combout\,
	datad => \INST6X|AGTB~3_combout\,
	combout => \INSTMEALY|Selector14~4_combout\);

-- Location: LCCOMB_X11_Y6_N16
\INSTMEALY|X_Clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|X_Clk_en~combout\ = (\INSTMEALY|current_state.YMOVE~q\ & (\INSTMEALY|X_Clk_en~combout\)) # (!\INSTMEALY|current_state.YMOVE~q\ & ((\INSTMEALY|Selector14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|X_Clk_en~combout\,
	datac => \INSTMEALY|current_state.YMOVE~q\,
	datad => \INSTMEALY|Selector14~4_combout\,
	combout => \INSTMEALY|X_Clk_en~combout\);

-- Location: LCCOMB_X9_Y6_N28
\INSTMEALY|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector9~0_combout\ = (\INSTMEALY|current_state.BOTHMOVE~q\ & ((\INST6X|AGTB~3_combout\) # ((\INST6X|AEQB~combout\)))) # (!\INSTMEALY|current_state.BOTHMOVE~q\ & (\INSTMEALY|current_state.XMOVE~q\ & ((\INST6X|AGTB~3_combout\) # 
-- (\INST6X|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.BOTHMOVE~q\,
	datab => \INST6X|AGTB~3_combout\,
	datac => \INST6X|AEQB~combout\,
	datad => \INSTMEALY|current_state.XMOVE~q\,
	combout => \INSTMEALY|Selector9~0_combout\);

-- Location: LCCOMB_X11_Y6_N20
\INSTMEALY|X_UPorDOWN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|X_UPorDOWN~combout\ = (\INSTMEALY|Selector9~0_combout\ & ((\INST6X|AGTB~3_combout\))) # (!\INSTMEALY|Selector9~0_combout\ & (\INSTMEALY|X_UPorDOWN~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|X_UPorDOWN~combout\,
	datac => \INSTMEALY|Selector9~0_combout\,
	datad => \INST6X|AGTB~3_combout\,
	combout => \INSTMEALY|X_UPorDOWN~combout\);

-- Location: LCCOMB_X11_Y6_N12
\INST4X|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|process_0~0_combout\ = (\INSTMEALY|X_Clk_en~combout\ & \INSTMEALY|X_UPorDOWN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|X_Clk_en~combout\,
	datad => \INSTMEALY|X_UPorDOWN~combout\,
	combout => \INST4X|process_0~0_combout\);

-- Location: FF_X11_Y6_N5
\INST4X|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST4X|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(2));

-- Location: LCCOMB_X11_Y6_N14
\INST6X|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~0_combout\ = (\sw[7]~input_o\ & (\INST4X|ud_bin_counter\(3) & (\sw[6]~input_o\ $ (!\INST4X|ud_bin_counter\(2))))) # (!\sw[7]~input_o\ & (!\INST4X|ud_bin_counter\(3) & (\sw[6]~input_o\ $ (!\INST4X|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \INST4X|ud_bin_counter\(2),
	datad => \INST4X|ud_bin_counter\(3),
	combout => \INST6X|AGTB~0_combout\);

-- Location: LCCOMB_X11_Y6_N18
\INSTMEALY|Transition_Section~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~4_combout\ = ((\INST6X|AEQB~0_combout\) # ((\INSTMEALY|Y_UPorDOWN~0_combout\) # (!\INST7Y|AGTB~0_combout\))) # (!\INST6X|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datab => \INST6X|AEQB~0_combout\,
	datac => \INST7Y|AGTB~0_combout\,
	datad => \INSTMEALY|Y_UPorDOWN~0_combout\,
	combout => \INSTMEALY|Transition_Section~4_combout\);

-- Location: LCCOMB_X11_Y6_N28
\INSTMEALY|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector6~0_combout\ = (\INSTMEALY|current_state.ERROR~q\) # (!\INSTMEALY|Transition_Section~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|current_state.ERROR~q\,
	datad => \INSTMEALY|Transition_Section~4_combout\,
	combout => \INSTMEALY|Selector6~0_combout\);

-- Location: CLKCTRL_G3
\INSTMEALY|WideOr1~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INSTMEALY|WideOr1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INSTMEALY|WideOr1~0clkctrl_outclk\);

-- Location: LCCOMB_X11_Y6_N26
\INSTMEALY|ExtenderEnable\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|ExtenderEnable~combout\ = (GLOBAL(\INSTMEALY|WideOr1~0clkctrl_outclk\) & (\INSTMEALY|Selector6~0_combout\)) # (!GLOBAL(\INSTMEALY|WideOr1~0clkctrl_outclk\) & ((\INSTMEALY|ExtenderEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|Selector6~0_combout\,
	datac => \INSTMEALY|ExtenderEnable~combout\,
	datad => \INSTMEALY|WideOr1~0clkctrl_outclk\,
	combout => \INSTMEALY|ExtenderEnable~combout\);

-- Location: LCCOMB_X10_Y6_N8
\INST10|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~2_combout\ = (\INST10|Selector1~1_combout\) # ((!\pb[1]~input_o\ & (!\INST10|current_state.RETRACTED~q\ & \INSTMEALY|ExtenderEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Selector1~1_combout\,
	datab => \pb[1]~input_o\,
	datac => \INST10|current_state.RETRACTED~q\,
	datad => \INSTMEALY|ExtenderEnable~combout\,
	combout => \INST10|Selector1~2_combout\);

-- Location: FF_X10_Y6_N9
\INST10|current_state.EXTENDING1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST10|Selector1~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING1~q\);

-- Location: LCCOMB_X7_Y6_N2
\INST10|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~1_combout\ = (\INST10|Selector2~0_combout\ & (\INST9|sreg\(1) & (\INST9|sreg\(0)))) # (!\INST10|Selector2~0_combout\ & (!\INST9|sreg\(1) & (!\INST9|sreg\(0) & \INST10|current_state.EXTENDING1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Selector2~0_combout\,
	datab => \INST9|sreg\(1),
	datac => \INST9|sreg\(0),
	datad => \INST10|current_state.EXTENDING1~q\,
	combout => \INST10|Selector2~1_combout\);

-- Location: LCCOMB_X10_Y6_N28
\INST10|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~2_combout\ = (\INST10|Selector2~1_combout\) # ((!\INST10|Equal1~0_combout\ & (\INST10|current_state.EXTENDING2~q\ & !\INST10|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Equal1~0_combout\,
	datab => \INST10|Selector2~1_combout\,
	datac => \INST10|current_state.EXTENDING2~q\,
	datad => \INST10|Equal2~0_combout\,
	combout => \INST10|Selector2~2_combout\);

-- Location: FF_X10_Y6_N29
\INST10|current_state.EXTENDING2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST10|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING2~q\);

-- Location: LCCOMB_X7_Y6_N14
\INST10|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~3_combout\ = ((!\INST9|sreg\(2)) # (!\INST9|sreg\(1))) # (!\INST9|sreg\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(3),
	datab => \INST9|sreg\(1),
	datad => \INST9|sreg\(2),
	combout => \INST10|Selector3~3_combout\);

-- Location: LCCOMB_X7_Y6_N20
\INST10|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~4_combout\ = (\INST10|current_state.EXTENDING2~q\ & ((\INST10|Equal1~0_combout\) # ((\INST10|current_state.EXTENDING3~q\ & \INST10|Selector3~3_combout\)))) # (!\INST10|current_state.EXTENDING2~q\ & (((\INST10|current_state.EXTENDING3~q\ 
-- & \INST10|Selector3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.EXTENDING2~q\,
	datab => \INST10|Equal1~0_combout\,
	datac => \INST10|current_state.EXTENDING3~q\,
	datad => \INST10|Selector3~3_combout\,
	combout => \INST10|Selector3~4_combout\);

-- Location: LCCOMB_X7_Y6_N8
\INST10|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~5_combout\ = (\INST10|Selector3~4_combout\) # ((\INST10|current_state.FULLYEXTENDED~q\ & (!\pb[1]~input_o\ & \INSTMEALY|ExtenderEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.FULLYEXTENDED~q\,
	datab => \pb[1]~input_o\,
	datac => \INST10|Selector3~4_combout\,
	datad => \INSTMEALY|ExtenderEnable~combout\,
	combout => \INST10|Selector3~5_combout\);

-- Location: FF_X7_Y6_N9
\INST10|current_state.EXTENDING3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST10|Selector3~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING3~q\);

-- Location: LCCOMB_X10_Y6_N10
\INST10|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~2_combout\ = (!\pb[1]~input_o\ & \INSTMEALY|ExtenderEnable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[1]~input_o\,
	datad => \INSTMEALY|ExtenderEnable~combout\,
	combout => \INST10|Selector3~2_combout\);

-- Location: LCCOMB_X7_Y6_N4
\INST10|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector4~0_combout\ = (\INST10|Equal2~0_combout\ & ((\INST10|current_state.EXTENDING3~q\) # ((\INST10|current_state.FULLYEXTENDED~q\ & !\INST10|Selector3~2_combout\)))) # (!\INST10|Equal2~0_combout\ & (((\INST10|current_state.FULLYEXTENDED~q\ & 
-- !\INST10|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Equal2~0_combout\,
	datab => \INST10|current_state.EXTENDING3~q\,
	datac => \INST10|current_state.FULLYEXTENDED~q\,
	datad => \INST10|Selector3~2_combout\,
	combout => \INST10|Selector4~0_combout\);

-- Location: FF_X7_Y6_N15
\INST10|current_state.FULLYEXTENDED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INST10|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.FULLYEXTENDED~q\);

-- Location: LCCOMB_X7_Y6_N22
\INST10|bitShiftDirection\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|bitShiftDirection~combout\ = (\INST10|bitShifting~0_combout\ & ((\INST10|bitShiftDirection~combout\))) # (!\INST10|bitShifting~0_combout\ & (!\INST10|current_state.FULLYEXTENDED~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST10|current_state.FULLYEXTENDED~q\,
	datac => \INST10|bitShiftDirection~combout\,
	datad => \INST10|bitShifting~0_combout\,
	combout => \INST10|bitShiftDirection~combout\);

-- Location: LCCOMB_X7_Y6_N12
\INST9|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~1_combout\ = (\INST10|bitShiftDirection~combout\ & (\INST9|sreg\(2))) # (!\INST10|bitShiftDirection~combout\ & ((\INST9|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(2),
	datab => \INST10|bitShiftDirection~combout\,
	datad => \INST9|sreg\(0),
	combout => \INST9|sreg~1_combout\);

-- Location: FF_X7_Y6_N13
\INST9|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST9|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(1));

-- Location: LCCOMB_X7_Y6_N10
\INST9|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~2_combout\ = (\INST10|bitShiftDirection~combout\ & ((\INST9|sreg\(3)))) # (!\INST10|bitShiftDirection~combout\ & (\INST9|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(1),
	datab => \INST10|bitShiftDirection~combout\,
	datac => \INST9|sreg\(3),
	combout => \INST9|sreg~2_combout\);

-- Location: FF_X7_Y6_N11
\INST9|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST9|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(2));

-- Location: LCCOMB_X7_Y6_N28
\INST10|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Equal1~0_combout\ = (!\INST9|sreg\(2) & (!\INST9|sreg\(1) & (\INST9|sreg\(3) & !\INST9|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(2),
	datab => \INST9|sreg\(1),
	datac => \INST9|sreg\(3),
	datad => \INST9|sreg\(0),
	combout => \INST10|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y6_N20
\INST10|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector0~0_combout\ = (\INST10|Equal1~0_combout\ & (!\INST10|current_state.EXTENDING1~q\ & ((\INST10|current_state.RETRACTED~q\) # (\INST10|Selector3~2_combout\)))) # (!\INST10|Equal1~0_combout\ & (((\INST10|current_state.RETRACTED~q\) # 
-- (\INST10|Selector3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Equal1~0_combout\,
	datab => \INST10|current_state.EXTENDING1~q\,
	datac => \INST10|current_state.RETRACTED~q\,
	datad => \INST10|Selector3~2_combout\,
	combout => \INST10|Selector0~0_combout\);

-- Location: FF_X10_Y6_N21
\INST10|current_state.RETRACTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST10|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.RETRACTED~q\);

-- Location: LCCOMB_X9_Y6_N8
\INSTMEALY|Transition_Section~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~6_combout\ = (!\INST10|current_state.RETRACTED~q\ & (!\pb[3]~input_o\ & ((\INST6X|AGTB~3_combout\) # (\INST6X|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \pb[3]~input_o\,
	datac => \INST6X|AGTB~3_combout\,
	datad => \INST6X|AEQB~combout\,
	combout => \INSTMEALY|Transition_Section~6_combout\);

-- Location: LCCOMB_X9_Y6_N4
\INSTMEALY|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~0_combout\ = (\INSTMEALY|current_state.YMOVE~q\ & (\INST7Y|AGTB~0_combout\ & !\INSTMEALY|Y_UPorDOWN~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.YMOVE~q\,
	datac => \INST7Y|AGTB~0_combout\,
	datad => \INSTMEALY|Y_UPorDOWN~0_combout\,
	combout => \INSTMEALY|Selector1~0_combout\);

-- Location: LCCOMB_X10_Y6_N22
\INSTMEALY|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~1_combout\ = (\INST10|current_state.RETRACTED~q\ & (((\INSTMEALY|current_state.BOTHMOVE~q\ & !\INSTMEALY|Transition_Section~4_combout\)))) # (!\INST10|current_state.RETRACTED~q\ & ((\INSTMEALY|current_state.ERROR~q\) # 
-- ((\INSTMEALY|current_state.BOTHMOVE~q\ & !\INSTMEALY|Transition_Section~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \INSTMEALY|current_state.ERROR~q\,
	datac => \INSTMEALY|current_state.BOTHMOVE~q\,
	datad => \INSTMEALY|Transition_Section~4_combout\,
	combout => \INSTMEALY|Selector1~1_combout\);

-- Location: LCCOMB_X9_Y6_N12
\INSTMEALY|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~2_combout\ = (\INSTMEALY|Selector1~1_combout\) # ((!\INST6X|AEQB~0_combout\ & (\INSTMEALY|current_state.XMOVE~q\ & \INST6X|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AEQB~0_combout\,
	datab => \INSTMEALY|current_state.XMOVE~q\,
	datac => \INSTMEALY|Selector1~1_combout\,
	datad => \INST6X|AGTB~0_combout\,
	combout => \INSTMEALY|Selector1~2_combout\);

-- Location: LCCOMB_X10_Y6_N18
\INSTMEALY|Transition_Section~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~5_combout\ = (\INST10|current_state.RETRACTED~q\ & (\INSTMEALY|Transition_Section~4_combout\ & ((!\pb[3]~input_o\) # (!\pb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \pb[3]~input_o\,
	datac => \INST10|current_state.RETRACTED~q\,
	datad => \INSTMEALY|Transition_Section~4_combout\,
	combout => \INSTMEALY|Transition_Section~5_combout\);

-- Location: LCCOMB_X9_Y6_N10
\INSTMEALY|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~3_combout\ = (!\INSTMEALY|Transition_Section~8_combout\ & (!\INSTMEALY|current_state.STOP~q\ & (!\INSTMEALY|Transition_Section~9_combout\ & !\INSTMEALY|Transition_Section~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Transition_Section~8_combout\,
	datab => \INSTMEALY|current_state.STOP~q\,
	datac => \INSTMEALY|Transition_Section~9_combout\,
	datad => \INSTMEALY|Transition_Section~5_combout\,
	combout => \INSTMEALY|Selector1~3_combout\);

-- Location: LCCOMB_X9_Y6_N14
\INSTMEALY|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~4_combout\ = (!\INSTMEALY|Selector1~0_combout\ & (!\INSTMEALY|Selector1~2_combout\ & ((\INSTMEALY|Transition_Section~6_combout\) # (!\INSTMEALY|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Transition_Section~6_combout\,
	datab => \INSTMEALY|Selector1~0_combout\,
	datac => \INSTMEALY|Selector1~2_combout\,
	datad => \INSTMEALY|Selector1~3_combout\,
	combout => \INSTMEALY|Selector1~4_combout\);

-- Location: FF_X9_Y6_N15
\INSTMEALY|current_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INSTMEALY|Selector1~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.STOP~q\);

-- Location: LCCOMB_X10_Y6_N30
\INSTMEALY|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector4~0_combout\ = (\INSTMEALY|current_state.STOP~q\ & (\INST10|current_state.RETRACTED~q\ & (\INSTMEALY|current_state.ERROR~q\))) # (!\INSTMEALY|current_state.STOP~q\ & ((\INSTMEALY|Transition_Section~5_combout\) # 
-- ((\INST10|current_state.RETRACTED~q\ & \INSTMEALY|current_state.ERROR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datab => \INST10|current_state.RETRACTED~q\,
	datac => \INSTMEALY|current_state.ERROR~q\,
	datad => \INSTMEALY|Transition_Section~5_combout\,
	combout => \INSTMEALY|Selector4~0_combout\);

-- Location: FF_X10_Y6_N13
\INSTMEALY|current_state.ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	asdata => \INSTMEALY|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.ERROR~q\);

-- Location: LCCOMB_X11_Y7_N4
\INSTMEALY|isError\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|isError~combout\ = (GLOBAL(\INSTMEALY|WideOr1~0clkctrl_outclk\) & (\INSTMEALY|current_state.ERROR~q\)) # (!GLOBAL(\INSTMEALY|WideOr1~0clkctrl_outclk\) & ((\INSTMEALY|isError~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.ERROR~q\,
	datac => \INSTMEALY|isError~combout\,
	datad => \INSTMEALY|WideOr1~0clkctrl_outclk\,
	combout => \INSTMEALY|isError~combout\);

-- Location: LCCOMB_X14_Y7_N14
\INST1XTARGET|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux5~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ & ((\sw[7]~input_o\))) # (!\sw[4]~input_o\ & (\sw[6]~input_o\)))) # (!\sw[5]~input_o\ & (\sw[6]~input_o\ & (\sw[7]~input_o\ $ (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y7_N22
\INST12YCURRENT|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux5~0_combout\ = (\INST5Y|ud_bin_counter\(3) & ((\INST5Y|ud_bin_counter\(0) & ((\INST5Y|ud_bin_counter\(1)))) # (!\INST5Y|ud_bin_counter\(0) & (\INST5Y|ud_bin_counter\(2))))) # (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(2) & 
-- (\INST5Y|ud_bin_counter\(0) $ (\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux5~0_combout\);

-- Location: LCCOMB_X14_Y7_N20
\INST2YTARGET|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux5~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[3]~input_o\))) # (!\sw[0]~input_o\ & (\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y6_N12
\INST3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~0_combout\ = (bin_counter(10) & ((\pb[3]~input_o\))) # (!bin_counter(10) & (\pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => bin_counter(10),
	datad => \pb[3]~input_o\,
	combout => \INST3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X12_Y7_N8
\INST3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[1]~0_combout\ = (bin_counter(10) & (((\INST3|DOUT[0]~0_combout\)))) # (!bin_counter(10) & ((\INST3|DOUT[0]~0_combout\ & ((!\INST2YTARGET|Mux5~0_combout\))) # (!\INST3|DOUT[0]~0_combout\ & (!\INST12YCURRENT|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux5~0_combout\,
	datab => bin_counter(10),
	datac => \INST2YTARGET|Mux5~0_combout\,
	datad => \INST3|DOUT[0]~0_combout\,
	combout => \INST3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X12_Y7_N24
\INST11XCURRENT|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux5~0_combout\ = (\INST4X|ud_bin_counter\(3) & ((\INST4X|ud_bin_counter\(0) & ((\INST4X|ud_bin_counter\(1)))) # (!\INST4X|ud_bin_counter\(0) & (\INST4X|ud_bin_counter\(2))))) # (!\INST4X|ud_bin_counter\(3) & (\INST4X|ud_bin_counter\(2) & 
-- (\INST4X|ud_bin_counter\(0) $ (\INST4X|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y7_N26
\INST3|DOUT_TEMP[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[1]~1_combout\ = (bin_counter(10) & ((\INST3|DOUT_TEMP[1]~0_combout\ & (!\INST1XTARGET|Mux5~0_combout\)) # (!\INST3|DOUT_TEMP[1]~0_combout\ & ((!\INST11XCURRENT|Mux5~0_combout\))))) # (!bin_counter(10) & 
-- (((\INST3|DOUT_TEMP[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1XTARGET|Mux5~0_combout\,
	datab => bin_counter(10),
	datac => \INST3|DOUT_TEMP[1]~0_combout\,
	datad => \INST11XCURRENT|Mux5~0_combout\,
	combout => \INST3|DOUT_TEMP[1]~1_combout\);

-- Location: LCCOMB_X11_Y7_N8
\INST3|DOUT_TEMP[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[1]~2_combout\ = (!\INSTMEALY|isError~combout\ & \INST3|DOUT_TEMP[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|isError~combout\,
	datad => \INST3|DOUT_TEMP[1]~1_combout\,
	combout => \INST3|DOUT_TEMP[1]~2_combout\);

-- Location: LCCOMB_X10_Y6_N24
\INST19FLASH|ud_bin_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST19FLASH|ud_bin_counter[0]~0_combout\ = !\INST19FLASH|ud_bin_counter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST19FLASH|ud_bin_counter\(0),
	combout => \INST19FLASH|ud_bin_counter[0]~0_combout\);

-- Location: FF_X10_Y6_N25
\INST19FLASH|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST19FLASH|ud_bin_counter[0]~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST19FLASH|ud_bin_counter\(0));

-- Location: LCCOMB_X12_Y7_N10
\INST12YCURRENT|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux1~0_combout\ = (\INST5Y|ud_bin_counter\(2) & ((\INST5Y|ud_bin_counter\(3) & ((!\INST5Y|ud_bin_counter\(1)))) # (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(0) & \INST5Y|ud_bin_counter\(1))))) # (!\INST5Y|ud_bin_counter\(2) & 
-- (!\INST5Y|ud_bin_counter\(3) & ((\INST5Y|ud_bin_counter\(0)) # (\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y7_N4
\INST11XCURRENT|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux1~0_combout\ = (\INST4X|ud_bin_counter\(2) & ((\INST4X|ud_bin_counter\(3) & ((!\INST4X|ud_bin_counter\(1)))) # (!\INST4X|ud_bin_counter\(3) & (\INST4X|ud_bin_counter\(0) & \INST4X|ud_bin_counter\(1))))) # (!\INST4X|ud_bin_counter\(2) & 
-- (!\INST4X|ud_bin_counter\(3) & ((\INST4X|ud_bin_counter\(0)) # (\INST4X|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y7_N16
\INST3|DOUT_TEMP[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[5]~3_combout\ = (bin_counter(10) & (((\INST3|DOUT[0]~0_combout\) # (!\INST11XCURRENT|Mux1~0_combout\)))) # (!bin_counter(10) & (!\INST12YCURRENT|Mux1~0_combout\ & ((!\INST3|DOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux1~0_combout\,
	datab => bin_counter(10),
	datac => \INST11XCURRENT|Mux1~0_combout\,
	datad => \INST3|DOUT[0]~0_combout\,
	combout => \INST3|DOUT_TEMP[5]~3_combout\);

-- Location: LCCOMB_X14_Y7_N0
\INST2YTARGET|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux1~0_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\ & !\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux1~0_combout\);

-- Location: LCCOMB_X14_Y7_N22
\INST1XTARGET|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux1~0_combout\ = (\sw[5]~input_o\ & (!\sw[7]~input_o\ & ((\sw[4]~input_o\) # (!\sw[6]~input_o\)))) # (!\sw[5]~input_o\ & ((\sw[6]~input_o\ & (\sw[7]~input_o\)) # (!\sw[6]~input_o\ & (!\sw[7]~input_o\ & \sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y7_N22
\INST3|DOUT_TEMP[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[5]~4_combout\ = (\INST3|DOUT_TEMP[5]~3_combout\ & (((!\INST1XTARGET|Mux1~0_combout\)) # (!\INST3|DOUT[0]~0_combout\))) # (!\INST3|DOUT_TEMP[5]~3_combout\ & (\INST3|DOUT[0]~0_combout\ & (!\INST2YTARGET|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT_TEMP[5]~3_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST2YTARGET|Mux1~0_combout\,
	datad => \INST1XTARGET|Mux1~0_combout\,
	combout => \INST3|DOUT_TEMP[5]~4_combout\);

-- Location: LCCOMB_X11_Y7_N26
\INST3|DOUT_TEMP[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[5]~5_combout\ = (\INSTMEALY|isError~combout\ & (!\INST19FLASH|ud_bin_counter\(0))) # (!\INSTMEALY|isError~combout\ & ((\INST3|DOUT_TEMP[5]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|isError~combout\,
	datac => \INST19FLASH|ud_bin_counter\(0),
	datad => \INST3|DOUT_TEMP[5]~4_combout\,
	combout => \INST3|DOUT_TEMP[5]~5_combout\);

-- Location: LCCOMB_X12_Y7_N6
\INST11XCURRENT|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux0~0_combout\ = (\INST4X|ud_bin_counter\(3)) # ((\INST4X|ud_bin_counter\(2) & ((!\INST4X|ud_bin_counter\(1)) # (!\INST4X|ud_bin_counter\(0)))) # (!\INST4X|ud_bin_counter\(2) & ((\INST4X|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y7_N12
\INST12YCURRENT|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux0~0_combout\ = (\INST5Y|ud_bin_counter\(3)) # ((\INST5Y|ud_bin_counter\(2) & ((!\INST5Y|ud_bin_counter\(1)) # (!\INST5Y|ud_bin_counter\(0)))) # (!\INST5Y|ud_bin_counter\(2) & ((\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux0~0_combout\);

-- Location: LCCOMB_X14_Y7_N4
\INST2YTARGET|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux0~0_combout\ = (\sw[3]~input_o\) # ((\sw[1]~input_o\ & ((!\sw[0]~input_o\) # (!\sw[2]~input_o\))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y7_N14
\INST3|DOUT_TEMP[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~6_combout\ = (bin_counter(10) & (((\INST3|DOUT[0]~0_combout\)))) # (!bin_counter(10) & ((\INST3|DOUT[0]~0_combout\ & ((\INST2YTARGET|Mux0~0_combout\))) # (!\INST3|DOUT[0]~0_combout\ & (\INST12YCURRENT|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux0~0_combout\,
	datab => bin_counter(10),
	datac => \INST2YTARGET|Mux0~0_combout\,
	datad => \INST3|DOUT[0]~0_combout\,
	combout => \INST3|DOUT_TEMP[6]~6_combout\);

-- Location: LCCOMB_X14_Y7_N18
\INST1XTARGET|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux0~0_combout\ = (\sw[7]~input_o\) # ((\sw[5]~input_o\ & ((!\sw[4]~input_o\) # (!\sw[6]~input_o\))) # (!\sw[5]~input_o\ & (\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y7_N0
\INST3|DOUT_TEMP[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~7_combout\ = (\INST3|DOUT_TEMP[6]~6_combout\ & (((\INST1XTARGET|Mux0~0_combout\) # (!bin_counter(10))))) # (!\INST3|DOUT_TEMP[6]~6_combout\ & (\INST11XCURRENT|Mux0~0_combout\ & (bin_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST11XCURRENT|Mux0~0_combout\,
	datab => \INST3|DOUT_TEMP[6]~6_combout\,
	datac => bin_counter(10),
	datad => \INST1XTARGET|Mux0~0_combout\,
	combout => \INST3|DOUT_TEMP[6]~7_combout\);

-- Location: LCCOMB_X11_Y7_N2
\INST3|DOUT_TEMP[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~8_combout\ = (\INSTMEALY|isError~combout\ & (!\INST19FLASH|ud_bin_counter\(0))) # (!\INSTMEALY|isError~combout\ & ((\INST3|DOUT_TEMP[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST19FLASH|ud_bin_counter\(0),
	datac => \INSTMEALY|isError~combout\,
	datad => \INST3|DOUT_TEMP[6]~7_combout\,
	combout => \INST3|DOUT_TEMP[6]~8_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: LCCOMB_X7_Y6_N18
\INST8GrapplerSM|next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8GrapplerSM|next_state~0_combout\ = (\INST10|current_state.FULLYEXTENDED~q\ & (\pb[0]~input_o\ $ (!\INST8GrapplerSM|current_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[0]~input_o\,
	datac => \INST10|current_state.FULLYEXTENDED~q\,
	datad => \INST8GrapplerSM|current_state~q\,
	combout => \INST8GrapplerSM|next_state~0_combout\);

-- Location: LCCOMB_X7_Y6_N16
\INST8GrapplerSM|current_state~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8GrapplerSM|current_state~feeder_combout\ = \INST8GrapplerSM|next_state~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST8GrapplerSM|next_state~0_combout\,
	combout => \INST8GrapplerSM|current_state~feeder_combout\);

-- Location: FF_X7_Y6_N17
\INST8GrapplerSM|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST8GrapplerSM|current_state~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8GrapplerSM|current_state~q\);

-- Location: LCCOMB_X14_Y7_N8
\INST2YTARGET|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux6~0_combout\ = (\sw[1]~input_o\ & (!\sw[2]~input_o\ & (\sw[0]~input_o\ & \sw[3]~input_o\))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (((\sw[0]~input_o\ & !\sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y7_N6
\INST1XTARGET|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux6~0_combout\ = (\sw[5]~input_o\ & (!\sw[6]~input_o\ & (\sw[7]~input_o\ & \sw[4]~input_o\))) # (!\sw[5]~input_o\ & (\sw[6]~input_o\ $ (((!\sw[7]~input_o\ & \sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y7_N0
\INST12YCURRENT|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux6~0_combout\ = (\INST5Y|ud_bin_counter\(2) & (!\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(3)) # (!\INST5Y|ud_bin_counter\(0))))) # (!\INST5Y|ud_bin_counter\(2) & (\INST5Y|ud_bin_counter\(0) & (\INST5Y|ud_bin_counter\(3) $ 
-- (!\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y7_N12
\INST11XCURRENT|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux6~0_combout\ = (\INST4X|ud_bin_counter\(2) & (!\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter\(3)) # (!\INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(0) & (\INST4X|ud_bin_counter\(1) $ 
-- (!\INST4X|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(1),
	datac => \INST4X|ud_bin_counter\(3),
	datad => \INST4X|ud_bin_counter\(0),
	combout => \INST11XCURRENT|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y7_N18
\INST3|DOUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~1_combout\ = (bin_counter(10) & ((\INST3|DOUT[0]~0_combout\) # ((!\INST11XCURRENT|Mux6~0_combout\)))) # (!bin_counter(10) & (!\INST3|DOUT[0]~0_combout\ & (!\INST12YCURRENT|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(10),
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST12YCURRENT|Mux6~0_combout\,
	datad => \INST11XCURRENT|Mux6~0_combout\,
	combout => \INST3|DOUT[0]~1_combout\);

-- Location: LCCOMB_X11_Y7_N28
\INST3|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~2_combout\ = (\INST3|DOUT[0]~0_combout\ & ((\INST3|DOUT[0]~1_combout\ & ((!\INST1XTARGET|Mux6~0_combout\))) # (!\INST3|DOUT[0]~1_combout\ & (!\INST2YTARGET|Mux6~0_combout\)))) # (!\INST3|DOUT[0]~0_combout\ & (((\INST3|DOUT[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2YTARGET|Mux6~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST1XTARGET|Mux6~0_combout\,
	datad => \INST3|DOUT[0]~1_combout\,
	combout => \INST3|DOUT[0]~2_combout\);

-- Location: LCCOMB_X11_Y7_N10
\INST3|DOUT[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~3_combout\ = (\INSTMEALY|isError~combout\ & (!\INST19FLASH|ud_bin_counter\(0))) # (!\INSTMEALY|isError~combout\ & ((\INST3|DOUT[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|isError~combout\,
	datac => \INST19FLASH|ud_bin_counter\(0),
	datad => \INST3|DOUT[0]~2_combout\,
	combout => \INST3|DOUT[0]~3_combout\);

-- Location: LCCOMB_X14_Y7_N16
\INST2YTARGET|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux4~0_combout\ = (\sw[2]~input_o\ & (\sw[3]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[2]~input_o\ & (\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y7_N24
\INST11XCURRENT|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux4~0_combout\ = (\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(3) & ((\INST4X|ud_bin_counter\(1)) # (!\INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(1) & (!\INST4X|ud_bin_counter\(3) & 
-- !\INST4X|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(1),
	datac => \INST4X|ud_bin_counter\(3),
	datad => \INST4X|ud_bin_counter\(0),
	combout => \INST11XCURRENT|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y7_N2
\INST12YCURRENT|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux4~0_combout\ = (\INST5Y|ud_bin_counter\(2) & (\INST5Y|ud_bin_counter\(3) & ((\INST5Y|ud_bin_counter\(1)) # (!\INST5Y|ud_bin_counter\(0))))) # (!\INST5Y|ud_bin_counter\(2) & (!\INST5Y|ud_bin_counter\(0) & (!\INST5Y|ud_bin_counter\(3) & 
-- \INST5Y|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y6_N2
\INST3|DOUT[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[2]~5_combout\ = (\INST3|DOUT[0]~0_combout\ & (((bin_counter(10))))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & (!\INST11XCURRENT|Mux4~0_combout\)) # (!bin_counter(10) & ((!\INST12YCURRENT|Mux4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST11XCURRENT|Mux4~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => bin_counter(10),
	datad => \INST12YCURRENT|Mux4~0_combout\,
	combout => \INST3|DOUT[2]~5_combout\);

-- Location: LCCOMB_X14_Y7_N10
\INST1XTARGET|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux4~0_combout\ = (\sw[6]~input_o\ & (\sw[7]~input_o\ & ((\sw[5]~input_o\) # (!\sw[4]~input_o\)))) # (!\sw[6]~input_o\ & (\sw[5]~input_o\ & (!\sw[7]~input_o\ & !\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux4~0_combout\);

-- Location: LCCOMB_X14_Y7_N12
\INST3|DOUT[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[2]~6_combout\ = (\INST3|DOUT[0]~0_combout\ & ((\INST3|DOUT[2]~5_combout\ & ((!\INST1XTARGET|Mux4~0_combout\))) # (!\INST3|DOUT[2]~5_combout\ & (!\INST2YTARGET|Mux4~0_combout\)))) # (!\INST3|DOUT[0]~0_combout\ & (((\INST3|DOUT[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => \INST2YTARGET|Mux4~0_combout\,
	datac => \INST3|DOUT[2]~5_combout\,
	datad => \INST1XTARGET|Mux4~0_combout\,
	combout => \INST3|DOUT[2]~6_combout\);

-- Location: LCCOMB_X11_Y7_N22
\INST3|DOUT[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[2]~7_combout\ = (!\INSTMEALY|isError~combout\ & \INST3|DOUT[2]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|isError~combout\,
	datad => \INST3|DOUT[2]~6_combout\,
	combout => \INST3|DOUT[2]~7_combout\);

-- Location: LCCOMB_X14_Y7_N2
\INST2YTARGET|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[2]~input_o\ & (\sw[0]~input_o\)) # (!\sw[2]~input_o\ & (!\sw[0]~input_o\ & \sw[3]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[2]~input_o\ $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y7_N30
\INST12YCURRENT|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux3~0_combout\ = (\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(2) & (\INST5Y|ud_bin_counter\(0))) # (!\INST5Y|ud_bin_counter\(2) & (!\INST5Y|ud_bin_counter\(0) & \INST5Y|ud_bin_counter\(3))))) # (!\INST5Y|ud_bin_counter\(1) & 
-- (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(2) $ (\INST5Y|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y7_N28
\INST11XCURRENT|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux3~0_combout\ = (\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter\(2) & ((\INST4X|ud_bin_counter\(0)))) # (!\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(3) & !\INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(1) & 
-- (!\INST4X|ud_bin_counter\(3) & (\INST4X|ud_bin_counter\(2) $ (\INST4X|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux3~0_combout\);

-- Location: LCCOMB_X11_Y7_N20
\INST3|DOUT[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[3]~8_combout\ = (\INST3|DOUT[0]~0_combout\ & (((bin_counter(10))))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & ((!\INST11XCURRENT|Mux3~0_combout\))) # (!bin_counter(10) & (!\INST12YCURRENT|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux3~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => bin_counter(10),
	datad => \INST11XCURRENT|Mux3~0_combout\,
	combout => \INST3|DOUT[3]~8_combout\);

-- Location: LCCOMB_X14_Y7_N28
\INST1XTARGET|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux3~0_combout\ = (\sw[5]~input_o\ & ((\sw[6]~input_o\ & ((\sw[4]~input_o\))) # (!\sw[6]~input_o\ & (\sw[7]~input_o\ & !\sw[4]~input_o\)))) # (!\sw[5]~input_o\ & (!\sw[7]~input_o\ & (\sw[6]~input_o\ $ (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux3~0_combout\);

-- Location: LCCOMB_X14_Y7_N26
\INST3|DOUT[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[3]~9_combout\ = (\INST3|DOUT[0]~0_combout\ & ((\INST3|DOUT[3]~8_combout\ & ((!\INST1XTARGET|Mux3~0_combout\))) # (!\INST3|DOUT[3]~8_combout\ & (!\INST2YTARGET|Mux3~0_combout\)))) # (!\INST3|DOUT[0]~0_combout\ & (((\INST3|DOUT[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => \INST2YTARGET|Mux3~0_combout\,
	datac => \INST3|DOUT[3]~8_combout\,
	datad => \INST1XTARGET|Mux3~0_combout\,
	combout => \INST3|DOUT[3]~9_combout\);

-- Location: LCCOMB_X11_Y7_N30
\INST3|DOUT[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[3]~10_combout\ = (\INSTMEALY|isError~combout\ & (!\INST19FLASH|ud_bin_counter\(0))) # (!\INSTMEALY|isError~combout\ & ((\INST3|DOUT[3]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|isError~combout\,
	datac => \INST19FLASH|ud_bin_counter\(0),
	datad => \INST3|DOUT[3]~9_combout\,
	combout => \INST3|DOUT[3]~10_combout\);

-- Location: LCCOMB_X14_Y7_N30
\INST1XTARGET|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux2~0_combout\ = (\sw[5]~input_o\ & (((!\sw[7]~input_o\ & \sw[4]~input_o\)))) # (!\sw[5]~input_o\ & ((\sw[6]~input_o\ & (!\sw[7]~input_o\)) # (!\sw[6]~input_o\ & ((\sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST1XTARGET|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y7_N16
\INST11XCURRENT|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux2~0_combout\ = (\INST4X|ud_bin_counter\(1) & (((!\INST4X|ud_bin_counter\(3) & \INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter\(2) & (!\INST4X|ud_bin_counter\(3))) # (!\INST4X|ud_bin_counter\(2) & 
-- ((\INST4X|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(1),
	datac => \INST4X|ud_bin_counter\(3),
	datad => \INST4X|ud_bin_counter\(0),
	combout => \INST11XCURRENT|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y7_N20
\INST12YCURRENT|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux2~0_combout\ = (\INST5Y|ud_bin_counter\(1) & (((\INST5Y|ud_bin_counter\(0) & !\INST5Y|ud_bin_counter\(3))))) # (!\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(2) & ((!\INST5Y|ud_bin_counter\(3)))) # (!\INST5Y|ud_bin_counter\(2) 
-- & (\INST5Y|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(2),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(3),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y7_N18
\INST3|DOUT[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~11_combout\ = (\INST3|DOUT[0]~0_combout\ & (bin_counter(10))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & (!\INST11XCURRENT|Mux2~0_combout\)) # (!bin_counter(10) & ((!\INST12YCURRENT|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => bin_counter(10),
	datac => \INST11XCURRENT|Mux2~0_combout\,
	datad => \INST12YCURRENT|Mux2~0_combout\,
	combout => \INST3|DOUT[4]~11_combout\);

-- Location: LCCOMB_X14_Y7_N24
\INST2YTARGET|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2YTARGET|Mux2~0_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\sw[3]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((!\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \INST2YTARGET|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y7_N24
\INST3|DOUT[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~12_combout\ = (\INST3|DOUT[4]~11_combout\ & (((!\INST3|DOUT[0]~0_combout\)) # (!\INST1XTARGET|Mux2~0_combout\))) # (!\INST3|DOUT[4]~11_combout\ & (((\INST3|DOUT[0]~0_combout\ & !\INST2YTARGET|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1XTARGET|Mux2~0_combout\,
	datab => \INST3|DOUT[4]~11_combout\,
	datac => \INST3|DOUT[0]~0_combout\,
	datad => \INST2YTARGET|Mux2~0_combout\,
	combout => \INST3|DOUT[4]~12_combout\);

-- Location: LCCOMB_X11_Y7_N14
\INST3|DOUT[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~13_combout\ = (\INSTMEALY|isError~combout\ & (!\INST19FLASH|ud_bin_counter\(0))) # (!\INSTMEALY|isError~combout\ & ((\INST3|DOUT[4]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|isError~combout\,
	datac => \INST19FLASH|ud_bin_counter\(0),
	datad => \INST3|DOUT[4]~12_combout\,
	combout => \INST3|DOUT[4]~13_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


