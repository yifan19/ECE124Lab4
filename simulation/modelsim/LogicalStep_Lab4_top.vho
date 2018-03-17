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

-- DATE "03/17/2018 00:16:51"

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
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
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
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[24]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \bin_counter[0]~72_combout\ : std_logic;
SIGNAL \bin_counter[1]~24_combout\ : std_logic;
SIGNAL \bin_counter[1]~25\ : std_logic;
SIGNAL \bin_counter[2]~26_combout\ : std_logic;
SIGNAL \bin_counter[2]~27\ : std_logic;
SIGNAL \bin_counter[3]~28_combout\ : std_logic;
SIGNAL \bin_counter[3]~29\ : std_logic;
SIGNAL \bin_counter[4]~30_combout\ : std_logic;
SIGNAL \bin_counter[4]~31\ : std_logic;
SIGNAL \bin_counter[5]~32_combout\ : std_logic;
SIGNAL \bin_counter[5]~33\ : std_logic;
SIGNAL \bin_counter[6]~34_combout\ : std_logic;
SIGNAL \bin_counter[6]~35\ : std_logic;
SIGNAL \bin_counter[7]~36_combout\ : std_logic;
SIGNAL \bin_counter[7]~37\ : std_logic;
SIGNAL \bin_counter[8]~38_combout\ : std_logic;
SIGNAL \bin_counter[8]~39\ : std_logic;
SIGNAL \bin_counter[9]~40_combout\ : std_logic;
SIGNAL \bin_counter[9]~41\ : std_logic;
SIGNAL \bin_counter[10]~42_combout\ : std_logic;
SIGNAL \bin_counter[10]~43\ : std_logic;
SIGNAL \bin_counter[11]~44_combout\ : std_logic;
SIGNAL \bin_counter[11]~45\ : std_logic;
SIGNAL \bin_counter[12]~46_combout\ : std_logic;
SIGNAL \bin_counter[12]~47\ : std_logic;
SIGNAL \bin_counter[13]~48_combout\ : std_logic;
SIGNAL \bin_counter[13]~49\ : std_logic;
SIGNAL \bin_counter[14]~50_combout\ : std_logic;
SIGNAL \bin_counter[14]~51\ : std_logic;
SIGNAL \bin_counter[15]~52_combout\ : std_logic;
SIGNAL \bin_counter[15]~53\ : std_logic;
SIGNAL \bin_counter[16]~54_combout\ : std_logic;
SIGNAL \bin_counter[16]~55\ : std_logic;
SIGNAL \bin_counter[17]~56_combout\ : std_logic;
SIGNAL \bin_counter[17]~57\ : std_logic;
SIGNAL \bin_counter[18]~58_combout\ : std_logic;
SIGNAL \bin_counter[18]~59\ : std_logic;
SIGNAL \bin_counter[19]~60_combout\ : std_logic;
SIGNAL \bin_counter[19]~61\ : std_logic;
SIGNAL \bin_counter[20]~62_combout\ : std_logic;
SIGNAL \bin_counter[20]~63\ : std_logic;
SIGNAL \bin_counter[21]~64_combout\ : std_logic;
SIGNAL \bin_counter[21]~65\ : std_logic;
SIGNAL \bin_counter[22]~66_combout\ : std_logic;
SIGNAL \bin_counter[22]~67\ : std_logic;
SIGNAL \bin_counter[23]~68_combout\ : std_logic;
SIGNAL \bin_counter[23]~69\ : std_logic;
SIGNAL \bin_counter[24]~70_combout\ : std_logic;
SIGNAL \bin_counter[24]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST6X|AEQB~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST6X|AGTB~1_combout\ : std_logic;
SIGNAL \INST6X|AGTB~2_combout\ : std_logic;
SIGNAL \INST6X|AGTB~3_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector10~2_combout\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \INSTMEALY|next_state.YMOVE~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \INST7Y|AEQB~0_combout\ : std_logic;
SIGNAL \INST7Y|AEQB~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~0_combout\ : std_logic;
SIGNAL \INSTMEALY|next_state~4_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector1~1_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.XMOVE~q\ : std_logic;
SIGNAL \INSTMEALY|Y_Clk_en~0_combout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~1_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~2_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~3_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector8~2_combout\ : std_logic;
SIGNAL \INSTMEALY|Y_Clk_en~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector6~5_combout\ : std_logic;
SIGNAL \INSTMEALY|Y_UPorDOWN~combout\ : std_logic;
SIGNAL \INST5Y|process_0~0_combout\ : std_logic;
SIGNAL \INST5Y|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST7Y|AGTB~0_combout\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~3_combout\ : std_logic;
SIGNAL \INSTMEALY|next_state.YMOVE~1_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.YMOVE~q\ : std_logic;
SIGNAL \INSTMEALY|X_Clk_en~0_combout\ : std_logic;
SIGNAL \INSTMEALY|X_Clk_en~combout\ : std_logic;
SIGNAL \INSTMEALY|Selector7~0_combout\ : std_logic;
SIGNAL \INSTMEALY|X_UPorDOWN~combout\ : std_logic;
SIGNAL \INST4X|process_0~0_combout\ : std_logic;
SIGNAL \INST4X|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST6X|AGTB~0_combout\ : std_logic;
SIGNAL \INST6X|AEQB~combout\ : std_logic;
SIGNAL \INSTMEALY|Transition_Section~2_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector3~5_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector3~4_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.BOTHMOVE~q\ : std_logic;
SIGNAL \INSTMEALY|Selector6~4_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector2~0_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector2~1_combout\ : std_logic;
SIGNAL \INSTMEALY|Selector2~2_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.STOP~q\ : std_logic;
SIGNAL \INSTMEALY|Decoder_Section~1_combout\ : std_logic;
SIGNAL \INSTMEALY|ExtenderEnable~combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST10|Selector3~2_combout\ : std_logic;
SIGNAL \INST9|sreg~0_combout\ : std_logic;
SIGNAL \INST10|bitShifting~0_combout\ : std_logic;
SIGNAL \INST9|sreg~1_combout\ : std_logic;
SIGNAL \INST10|Equal1~0_combout\ : std_logic;
SIGNAL \INST10|Selector3~3_combout\ : std_logic;
SIGNAL \INST10|Selector3~4_combout\ : std_logic;
SIGNAL \INST10|Selector3~5_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING3~q\ : std_logic;
SIGNAL \INST10|Selector4~0_combout\ : std_logic;
SIGNAL \INST10|current_state.FULLYEXTENDED~feeder_combout\ : std_logic;
SIGNAL \INST10|current_state.FULLYEXTENDED~q\ : std_logic;
SIGNAL \INST10|bitShiftDirection~combout\ : std_logic;
SIGNAL \INST9|sreg~3_combout\ : std_logic;
SIGNAL \INST9|sreg~2_combout\ : std_logic;
SIGNAL \INST10|Equal2~0_combout\ : std_logic;
SIGNAL \INST10|Selector2~0_combout\ : std_logic;
SIGNAL \INST10|Selector2~1_combout\ : std_logic;
SIGNAL \INST10|Selector2~2_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING2~q\ : std_logic;
SIGNAL \INST10|Selector1~2_combout\ : std_logic;
SIGNAL \INST10|Selector1~3_combout\ : std_logic;
SIGNAL \INST10|Selector1~4_combout\ : std_logic;
SIGNAL \INST10|current_state.EXTENDING1~q\ : std_logic;
SIGNAL \INST10|Selector0~0_combout\ : std_logic;
SIGNAL \INST10|Selector0~1_combout\ : std_logic;
SIGNAL \INST10|current_state.RETRACTED~q\ : std_logic;
SIGNAL \INSTMEALY|Selector4~0_combout\ : std_logic;
SIGNAL \INSTMEALY|current_state.ERROR~q\ : std_logic;
SIGNAL \INSTMEALY|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INSTMEALY|isError~combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux5~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux5~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux5~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux5~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~1_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[1]~2_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux1~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux1~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~3_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux1~0_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux1~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~4_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[5]~5_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux0~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux0~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~6_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux0~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux0~0_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~7_combout\ : std_logic;
SIGNAL \INST3|DOUT_TEMP[6]~8_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST8GrapplerSM|next_state~0_combout\ : std_logic;
SIGNAL \INST8GrapplerSM|current_state~feeder_combout\ : std_logic;
SIGNAL \INST8GrapplerSM|current_state~q\ : std_logic;
SIGNAL \INST1XTARGET|Mux6~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux6~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux6~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux6~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~1_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~2_combout\ : std_logic;
SIGNAL \INST3|DOUT[0]~3_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux4~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux4~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~5_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux4~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux4~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~6_combout\ : std_logic;
SIGNAL \INST3|DOUT[2]~7_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux3~0_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux3~0_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux3~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux3~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~8_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~9_combout\ : std_logic;
SIGNAL \INST3|DOUT[3]~10_combout\ : std_logic;
SIGNAL \INST12YCURRENT|Mux2~0_combout\ : std_logic;
SIGNAL \INST11XCURRENT|Mux2~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~11_combout\ : std_logic;
SIGNAL \INST2YTARGET|Mux2~0_combout\ : std_logic;
SIGNAL \INST1XTARGET|Mux2~0_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~12_combout\ : std_logic;
SIGNAL \INST3|DOUT[4]~13_combout\ : std_logic;
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST4X|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST5Y|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
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

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[24]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(24));
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y13_N18
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

-- Location: LCCOMB_X15_Y15_N4
\bin_counter[0]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~72_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~72_combout\);

-- Location: FF_X15_Y15_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X15_Y15_N8
\bin_counter[1]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~24_combout\ = (bin_counter(0) & (bin_counter(1) $ (VCC))) # (!bin_counter(0) & (bin_counter(1) & VCC))
-- \bin_counter[1]~25\ = CARRY((bin_counter(0) & bin_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(0),
	datab => bin_counter(1),
	datad => VCC,
	combout => \bin_counter[1]~24_combout\,
	cout => \bin_counter[1]~25\);

-- Location: FF_X15_Y15_N9
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X15_Y15_N10
\bin_counter[2]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~26_combout\ = (bin_counter(2) & (!\bin_counter[1]~25\)) # (!bin_counter(2) & ((\bin_counter[1]~25\) # (GND)))
-- \bin_counter[2]~27\ = CARRY((!\bin_counter[1]~25\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~25\,
	combout => \bin_counter[2]~26_combout\,
	cout => \bin_counter[2]~27\);

-- Location: FF_X15_Y15_N11
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X15_Y15_N12
\bin_counter[3]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~28_combout\ = (bin_counter(3) & (\bin_counter[2]~27\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~27\ & VCC))
-- \bin_counter[3]~29\ = CARRY((bin_counter(3) & !\bin_counter[2]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~27\,
	combout => \bin_counter[3]~28_combout\,
	cout => \bin_counter[3]~29\);

-- Location: FF_X15_Y15_N13
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X15_Y15_N14
\bin_counter[4]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~30_combout\ = (bin_counter(4) & (!\bin_counter[3]~29\)) # (!bin_counter(4) & ((\bin_counter[3]~29\) # (GND)))
-- \bin_counter[4]~31\ = CARRY((!\bin_counter[3]~29\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~29\,
	combout => \bin_counter[4]~30_combout\,
	cout => \bin_counter[4]~31\);

-- Location: FF_X15_Y15_N15
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X15_Y15_N16
\bin_counter[5]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~32_combout\ = (bin_counter(5) & (\bin_counter[4]~31\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~31\ & VCC))
-- \bin_counter[5]~33\ = CARRY((bin_counter(5) & !\bin_counter[4]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~31\,
	combout => \bin_counter[5]~32_combout\,
	cout => \bin_counter[5]~33\);

-- Location: FF_X15_Y15_N17
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X15_Y15_N18
\bin_counter[6]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~34_combout\ = (bin_counter(6) & (!\bin_counter[5]~33\)) # (!bin_counter(6) & ((\bin_counter[5]~33\) # (GND)))
-- \bin_counter[6]~35\ = CARRY((!\bin_counter[5]~33\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~33\,
	combout => \bin_counter[6]~34_combout\,
	cout => \bin_counter[6]~35\);

-- Location: FF_X15_Y15_N19
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X15_Y15_N20
\bin_counter[7]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~36_combout\ = (bin_counter(7) & (\bin_counter[6]~35\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~35\ & VCC))
-- \bin_counter[7]~37\ = CARRY((bin_counter(7) & !\bin_counter[6]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~35\,
	combout => \bin_counter[7]~36_combout\,
	cout => \bin_counter[7]~37\);

-- Location: FF_X15_Y15_N21
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X15_Y15_N22
\bin_counter[8]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~38_combout\ = (bin_counter(8) & (!\bin_counter[7]~37\)) # (!bin_counter(8) & ((\bin_counter[7]~37\) # (GND)))
-- \bin_counter[8]~39\ = CARRY((!\bin_counter[7]~37\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~37\,
	combout => \bin_counter[8]~38_combout\,
	cout => \bin_counter[8]~39\);

-- Location: FF_X15_Y15_N23
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X15_Y15_N24
\bin_counter[9]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~40_combout\ = (bin_counter(9) & (\bin_counter[8]~39\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~39\ & VCC))
-- \bin_counter[9]~41\ = CARRY((bin_counter(9) & !\bin_counter[8]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~39\,
	combout => \bin_counter[9]~40_combout\,
	cout => \bin_counter[9]~41\);

-- Location: FF_X15_Y15_N25
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X15_Y15_N26
\bin_counter[10]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~42_combout\ = (bin_counter(10) & (!\bin_counter[9]~41\)) # (!bin_counter(10) & ((\bin_counter[9]~41\) # (GND)))
-- \bin_counter[10]~43\ = CARRY((!\bin_counter[9]~41\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~41\,
	combout => \bin_counter[10]~42_combout\,
	cout => \bin_counter[10]~43\);

-- Location: FF_X15_Y15_N27
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X15_Y15_N28
\bin_counter[11]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~44_combout\ = (bin_counter(11) & (\bin_counter[10]~43\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~43\ & VCC))
-- \bin_counter[11]~45\ = CARRY((bin_counter(11) & !\bin_counter[10]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~43\,
	combout => \bin_counter[11]~44_combout\,
	cout => \bin_counter[11]~45\);

-- Location: FF_X15_Y15_N29
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X15_Y15_N30
\bin_counter[12]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~46_combout\ = (bin_counter(12) & (!\bin_counter[11]~45\)) # (!bin_counter(12) & ((\bin_counter[11]~45\) # (GND)))
-- \bin_counter[12]~47\ = CARRY((!\bin_counter[11]~45\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~45\,
	combout => \bin_counter[12]~46_combout\,
	cout => \bin_counter[12]~47\);

-- Location: FF_X15_Y15_N31
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X15_Y14_N0
\bin_counter[13]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~48_combout\ = (bin_counter(13) & (\bin_counter[12]~47\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~47\ & VCC))
-- \bin_counter[13]~49\ = CARRY((bin_counter(13) & !\bin_counter[12]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~47\,
	combout => \bin_counter[13]~48_combout\,
	cout => \bin_counter[13]~49\);

-- Location: FF_X15_Y14_N1
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X15_Y14_N2
\bin_counter[14]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~50_combout\ = (bin_counter(14) & (!\bin_counter[13]~49\)) # (!bin_counter(14) & ((\bin_counter[13]~49\) # (GND)))
-- \bin_counter[14]~51\ = CARRY((!\bin_counter[13]~49\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~49\,
	combout => \bin_counter[14]~50_combout\,
	cout => \bin_counter[14]~51\);

-- Location: FF_X15_Y14_N3
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X15_Y14_N4
\bin_counter[15]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~52_combout\ = (bin_counter(15) & (\bin_counter[14]~51\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~51\ & VCC))
-- \bin_counter[15]~53\ = CARRY((bin_counter(15) & !\bin_counter[14]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~51\,
	combout => \bin_counter[15]~52_combout\,
	cout => \bin_counter[15]~53\);

-- Location: FF_X15_Y14_N5
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X15_Y14_N6
\bin_counter[16]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~54_combout\ = (bin_counter(16) & (!\bin_counter[15]~53\)) # (!bin_counter(16) & ((\bin_counter[15]~53\) # (GND)))
-- \bin_counter[16]~55\ = CARRY((!\bin_counter[15]~53\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~53\,
	combout => \bin_counter[16]~54_combout\,
	cout => \bin_counter[16]~55\);

-- Location: FF_X15_Y14_N7
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X15_Y14_N8
\bin_counter[17]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~56_combout\ = (bin_counter(17) & (\bin_counter[16]~55\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~55\ & VCC))
-- \bin_counter[17]~57\ = CARRY((bin_counter(17) & !\bin_counter[16]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~55\,
	combout => \bin_counter[17]~56_combout\,
	cout => \bin_counter[17]~57\);

-- Location: FF_X15_Y14_N9
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X15_Y14_N10
\bin_counter[18]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~58_combout\ = (bin_counter(18) & (!\bin_counter[17]~57\)) # (!bin_counter(18) & ((\bin_counter[17]~57\) # (GND)))
-- \bin_counter[18]~59\ = CARRY((!\bin_counter[17]~57\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~57\,
	combout => \bin_counter[18]~58_combout\,
	cout => \bin_counter[18]~59\);

-- Location: FF_X15_Y14_N11
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X15_Y14_N12
\bin_counter[19]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~60_combout\ = (bin_counter(19) & (\bin_counter[18]~59\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~59\ & VCC))
-- \bin_counter[19]~61\ = CARRY((bin_counter(19) & !\bin_counter[18]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~59\,
	combout => \bin_counter[19]~60_combout\,
	cout => \bin_counter[19]~61\);

-- Location: FF_X15_Y14_N13
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X15_Y14_N14
\bin_counter[20]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~62_combout\ = (bin_counter(20) & (!\bin_counter[19]~61\)) # (!bin_counter(20) & ((\bin_counter[19]~61\) # (GND)))
-- \bin_counter[20]~63\ = CARRY((!\bin_counter[19]~61\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~61\,
	combout => \bin_counter[20]~62_combout\,
	cout => \bin_counter[20]~63\);

-- Location: FF_X15_Y14_N15
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X15_Y14_N16
\bin_counter[21]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~64_combout\ = (bin_counter(21) & (\bin_counter[20]~63\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~63\ & VCC))
-- \bin_counter[21]~65\ = CARRY((bin_counter(21) & !\bin_counter[20]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~63\,
	combout => \bin_counter[21]~64_combout\,
	cout => \bin_counter[21]~65\);

-- Location: FF_X15_Y14_N17
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X15_Y14_N18
\bin_counter[22]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~66_combout\ = (bin_counter(22) & (!\bin_counter[21]~65\)) # (!bin_counter(22) & ((\bin_counter[21]~65\) # (GND)))
-- \bin_counter[22]~67\ = CARRY((!\bin_counter[21]~65\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~65\,
	combout => \bin_counter[22]~66_combout\,
	cout => \bin_counter[22]~67\);

-- Location: FF_X15_Y14_N19
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X15_Y14_N20
\bin_counter[23]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~68_combout\ = (bin_counter(23) & (\bin_counter[22]~67\ $ (GND))) # (!bin_counter(23) & (!\bin_counter[22]~67\ & VCC))
-- \bin_counter[23]~69\ = CARRY((bin_counter(23) & !\bin_counter[22]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(23),
	datad => VCC,
	cin => \bin_counter[22]~67\,
	combout => \bin_counter[23]~68_combout\,
	cout => \bin_counter[23]~69\);

-- Location: FF_X15_Y14_N21
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

-- Location: LCCOMB_X15_Y14_N22
\bin_counter[24]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[24]~70_combout\ = \bin_counter[23]~69\ $ (bin_counter(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(24),
	cin => \bin_counter[23]~69\,
	combout => \bin_counter[24]~70_combout\);

-- Location: FF_X15_Y14_N23
\bin_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[24]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(24));

-- Location: CLKCTRL_G7
\bin_counter[24]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[24]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[24]~clkctrl_outclk\);

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

-- Location: LCCOMB_X14_Y14_N26
\INST4X|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[0]~3_combout\ = \INSTMEALY|X_Clk_en~combout\ $ (\INST4X|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|X_Clk_en~combout\,
	datac => \INST4X|ud_bin_counter\(0),
	combout => \INST4X|ud_bin_counter[0]~3_combout\);

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

-- Location: FF_X14_Y14_N27
\INST4X|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST4X|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(0));

-- Location: LCCOMB_X14_Y14_N12
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

-- Location: LCCOMB_X14_Y14_N14
\INST4X|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[1]~6_combout\ = (\INST4X|ud_bin_counter\(1) & ((\INST4X|process_0~0_combout\ & (!\INST4X|ud_bin_counter[1]~5_cout\)) # (!\INST4X|process_0~0_combout\ & (\INST4X|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\INST4X|ud_bin_counter\(1) & 
-- ((\INST4X|process_0~0_combout\ & ((\INST4X|ud_bin_counter[1]~5_cout\) # (GND))) # (!\INST4X|process_0~0_combout\ & (!\INST4X|ud_bin_counter[1]~5_cout\))))
-- \INST4X|ud_bin_counter[1]~7\ = CARRY((\INST4X|ud_bin_counter\(1) & (\INST4X|process_0~0_combout\ & !\INST4X|ud_bin_counter[1]~5_cout\)) # (!\INST4X|ud_bin_counter\(1) & ((\INST4X|process_0~0_combout\) # (!\INST4X|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(1),
	datab => \INST4X|process_0~0_combout\,
	datad => VCC,
	cin => \INST4X|ud_bin_counter[1]~5_cout\,
	combout => \INST4X|ud_bin_counter[1]~6_combout\,
	cout => \INST4X|ud_bin_counter[1]~7\);

-- Location: FF_X14_Y14_N15
\INST4X|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST4X|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(1));

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

-- Location: LCCOMB_X13_Y14_N16
\INST6X|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AEQB~0_combout\ = (\sw[5]~input_o\ & ((\INST4X|ud_bin_counter\(0) $ (\sw[4]~input_o\)) # (!\INST4X|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & ((\INST4X|ud_bin_counter\(1)) # (\INST4X|ud_bin_counter\(0) $ (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \INST4X|ud_bin_counter\(0),
	datac => \INST4X|ud_bin_counter\(1),
	datad => \sw[4]~input_o\,
	combout => \INST6X|AEQB~0_combout\);

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

-- Location: LCCOMB_X14_Y14_N16
\INST4X|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[2]~8_combout\ = ((\INST4X|ud_bin_counter\(2) $ (\INST4X|process_0~0_combout\ $ (\INST4X|ud_bin_counter[1]~7\)))) # (GND)
-- \INST4X|ud_bin_counter[2]~9\ = CARRY((\INST4X|ud_bin_counter\(2) & ((!\INST4X|ud_bin_counter[1]~7\) # (!\INST4X|process_0~0_combout\))) # (!\INST4X|ud_bin_counter\(2) & (!\INST4X|process_0~0_combout\ & !\INST4X|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|process_0~0_combout\,
	datad => VCC,
	cin => \INST4X|ud_bin_counter[1]~7\,
	combout => \INST4X|ud_bin_counter[2]~8_combout\,
	cout => \INST4X|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X14_Y14_N18
\INST4X|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|ud_bin_counter[3]~10_combout\ = \INST4X|ud_bin_counter\(3) $ (\INST4X|process_0~0_combout\ $ (!\INST4X|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(3),
	datab => \INST4X|process_0~0_combout\,
	cin => \INST4X|ud_bin_counter[2]~9\,
	combout => \INST4X|ud_bin_counter[3]~10_combout\);

-- Location: FF_X14_Y14_N19
\INST4X|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST4X|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(3));

-- Location: LCCOMB_X14_Y14_N4
\INST6X|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~1_combout\ = (\sw[7]~input_o\ & (((\sw[6]~input_o\ & !\INST4X|ud_bin_counter\(2))) # (!\INST4X|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (!\INST4X|ud_bin_counter\(2) & !\INST4X|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \INST4X|ud_bin_counter\(2),
	datac => \sw[7]~input_o\,
	datad => \INST4X|ud_bin_counter\(3),
	combout => \INST6X|AGTB~1_combout\);

-- Location: LCCOMB_X14_Y14_N20
\INST6X|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~2_combout\ = (\sw[5]~input_o\ & (((!\INST4X|ud_bin_counter\(0) & \sw[4]~input_o\)) # (!\INST4X|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & (!\INST4X|ud_bin_counter\(0) & (!\INST4X|ud_bin_counter\(1) & \sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(0),
	datab => \sw[5]~input_o\,
	datac => \INST4X|ud_bin_counter\(1),
	datad => \sw[4]~input_o\,
	combout => \INST6X|AGTB~2_combout\);

-- Location: LCCOMB_X14_Y14_N2
\INST6X|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~3_combout\ = (\INST6X|AGTB~1_combout\) # ((\INST6X|AGTB~0_combout\ & \INST6X|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datac => \INST6X|AGTB~1_combout\,
	datad => \INST6X|AGTB~2_combout\,
	combout => \INST6X|AGTB~3_combout\);

-- Location: LCCOMB_X14_Y14_N8
\INSTMEALY|Selector10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector10~2_combout\ = (\INSTMEALY|current_state.STOP~q\ & (((\INST6X|AEQB~0_combout\) # (\INST6X|AGTB~3_combout\)) # (!\INST6X|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datab => \INST6X|AGTB~0_combout\,
	datac => \INST6X|AEQB~0_combout\,
	datad => \INST6X|AGTB~3_combout\,
	combout => \INSTMEALY|Selector10~2_combout\);

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

-- Location: LCCOMB_X13_Y14_N24
\INSTMEALY|next_state.YMOVE~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|next_state.YMOVE~0_combout\ = (!\INSTMEALY|current_state.STOP~q\ & ((\pb[3]~input_o\) # ((!\INST6X|AEQB~combout\ & !\INST6X|AGTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \INSTMEALY|current_state.STOP~q\,
	datac => \INST6X|AEQB~combout\,
	datad => \INST6X|AGTB~3_combout\,
	combout => \INSTMEALY|next_state.YMOVE~0_combout\);

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

-- Location: LCCOMB_X11_Y14_N16
\INST5Y|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[0]~3_combout\ = \INST5Y|ud_bin_counter\(0) $ (\INSTMEALY|Y_Clk_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5Y|ud_bin_counter\(0),
	datad => \INSTMEALY|Y_Clk_en~combout\,
	combout => \INST5Y|ud_bin_counter[0]~3_combout\);

-- Location: FF_X12_Y14_N15
\INST5Y|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	asdata => \INST5Y|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(0));

-- Location: LCCOMB_X12_Y14_N0
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

-- Location: LCCOMB_X12_Y14_N2
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

-- Location: FF_X12_Y14_N3
\INST5Y|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
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

-- Location: LCCOMB_X12_Y14_N26
\INST7Y|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AEQB~0_combout\ = (\sw[1]~input_o\ & ((\INST5Y|ud_bin_counter\(0) $ (\sw[0]~input_o\)) # (!\INST5Y|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\INST5Y|ud_bin_counter\(1)) # (\INST5Y|ud_bin_counter\(0) $ (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST5Y|ud_bin_counter\(1),
	datac => \INST5Y|ud_bin_counter\(0),
	datad => \sw[0]~input_o\,
	combout => \INST7Y|AEQB~0_combout\);

-- Location: LCCOMB_X12_Y14_N12
\INST7Y|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AEQB~combout\ = (\INST7Y|AEQB~0_combout\) # (!\INST7Y|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST7Y|AEQB~0_combout\,
	datad => \INST7Y|AGTB~0_combout\,
	combout => \INST7Y|AEQB~combout\);

-- Location: LCCOMB_X13_Y14_N8
\INSTMEALY|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~0_combout\ = (\INST6X|AEQB~combout\ & ((\INSTMEALY|current_state.XMOVE~q\) # ((\INSTMEALY|current_state.YMOVE~q\ & \INST7Y|AEQB~combout\)))) # (!\INST6X|AEQB~combout\ & (((\INSTMEALY|current_state.YMOVE~q\ & \INST7Y|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AEQB~combout\,
	datab => \INSTMEALY|current_state.XMOVE~q\,
	datac => \INSTMEALY|current_state.YMOVE~q\,
	datad => \INST7Y|AEQB~combout\,
	combout => \INSTMEALY|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y14_N28
\INSTMEALY|next_state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|next_state~4_combout\ = (\pb[3]~input_o\) # ((\INST6X|AGTB~0_combout\ & (!\INST6X|AEQB~0_combout\ & !\INST6X|AGTB~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datab => \INST6X|AEQB~0_combout\,
	datac => \pb[3]~input_o\,
	datad => \INST6X|AGTB~3_combout\,
	combout => \INSTMEALY|next_state~4_combout\);

-- Location: LCCOMB_X13_Y14_N30
\INSTMEALY|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector1~1_combout\ = (\INSTMEALY|Selector1~0_combout\) # ((!\INSTMEALY|current_state.STOP~q\ & (\INSTMEALY|Transition_Section~2_combout\ & !\INSTMEALY|next_state~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datab => \INSTMEALY|Transition_Section~2_combout\,
	datac => \INSTMEALY|Selector1~0_combout\,
	datad => \INSTMEALY|next_state~4_combout\,
	combout => \INSTMEALY|Selector1~1_combout\);

-- Location: FF_X13_Y14_N31
\INSTMEALY|current_state.XMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INSTMEALY|Selector1~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.XMOVE~q\);

-- Location: LCCOMB_X13_Y13_N10
\INSTMEALY|Y_Clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_Clk_en~0_combout\ = (\INSTMEALY|current_state.XMOVE~q\) # (\INSTMEALY|current_state.ERROR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|current_state.XMOVE~q\,
	datad => \INSTMEALY|current_state.ERROR~q\,
	combout => \INSTMEALY|Y_Clk_en~0_combout\);

-- Location: LCCOMB_X12_Y14_N4
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

-- Location: LCCOMB_X12_Y14_N6
\INST5Y|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5Y|ud_bin_counter[3]~10_combout\ = \INST5Y|ud_bin_counter\(3) $ (\INST5Y|process_0~0_combout\ $ (!\INST5Y|ud_bin_counter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|process_0~0_combout\,
	cin => \INST5Y|ud_bin_counter[2]~9\,
	combout => \INST5Y|ud_bin_counter[3]~10_combout\);

-- Location: FF_X12_Y14_N7
\INST5Y|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST5Y|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|Y_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(3));

-- Location: LCCOMB_X12_Y14_N22
\INST7Y|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~1_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\INST5Y|ud_bin_counter\(2))) # (!\INST5Y|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\INST5Y|ud_bin_counter\(2) & !\INST5Y|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(3),
	combout => \INST7Y|AGTB~1_combout\);

-- Location: LCCOMB_X12_Y14_N30
\INST7Y|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~2_combout\ = (\sw[1]~input_o\ & (((!\INST5Y|ud_bin_counter\(0) & \sw[0]~input_o\)) # (!\INST5Y|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (!\INST5Y|ud_bin_counter\(1) & (!\INST5Y|ud_bin_counter\(0) & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \INST5Y|ud_bin_counter\(1),
	datac => \INST5Y|ud_bin_counter\(0),
	datad => \sw[0]~input_o\,
	combout => \INST7Y|AGTB~2_combout\);

-- Location: LCCOMB_X12_Y14_N28
\INST7Y|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~3_combout\ = (\INST7Y|AGTB~1_combout\) # ((\INST7Y|AGTB~2_combout\ & \INST7Y|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AGTB~1_combout\,
	datac => \INST7Y|AGTB~2_combout\,
	datad => \INST7Y|AGTB~0_combout\,
	combout => \INST7Y|AGTB~3_combout\);

-- Location: LCCOMB_X12_Y14_N24
\INSTMEALY|Selector8~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector8~2_combout\ = (\INSTMEALY|current_state.STOP~q\ & ((\INST7Y|AEQB~0_combout\) # ((\INST7Y|AGTB~3_combout\) # (!\INST7Y|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AEQB~0_combout\,
	datab => \INST7Y|AGTB~0_combout\,
	datac => \INSTMEALY|current_state.STOP~q\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Selector8~2_combout\);

-- Location: LCCOMB_X12_Y14_N8
\INSTMEALY|Y_Clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_Clk_en~combout\ = (\INSTMEALY|Y_Clk_en~0_combout\ & (\INSTMEALY|Y_Clk_en~combout\)) # (!\INSTMEALY|Y_Clk_en~0_combout\ & ((\INSTMEALY|Selector8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Y_Clk_en~0_combout\,
	datac => \INSTMEALY|Y_Clk_en~combout\,
	datad => \INSTMEALY|Selector8~2_combout\,
	combout => \INSTMEALY|Y_Clk_en~combout\);

-- Location: LCCOMB_X13_Y14_N18
\INSTMEALY|Selector6~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector6~5_combout\ = (\INST7Y|AEQB~combout\ & ((\INSTMEALY|current_state.BOTHMOVE~q\) # ((\INSTMEALY|current_state.YMOVE~q\)))) # (!\INST7Y|AEQB~combout\ & (\INST7Y|AGTB~3_combout\ & ((\INSTMEALY|current_state.BOTHMOVE~q\) # 
-- (\INSTMEALY|current_state.YMOVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AEQB~combout\,
	datab => \INSTMEALY|current_state.BOTHMOVE~q\,
	datac => \INSTMEALY|current_state.YMOVE~q\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Selector6~5_combout\);

-- Location: LCCOMB_X12_Y14_N16
\INSTMEALY|Y_UPorDOWN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Y_UPorDOWN~combout\ = (\INSTMEALY|Selector6~5_combout\ & (\INST7Y|AGTB~3_combout\)) # (!\INSTMEALY|Selector6~5_combout\ & ((\INSTMEALY|Y_UPorDOWN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AGTB~3_combout\,
	datab => \INSTMEALY|Y_UPorDOWN~combout\,
	datad => \INSTMEALY|Selector6~5_combout\,
	combout => \INSTMEALY|Y_UPorDOWN~combout\);

-- Location: LCCOMB_X12_Y14_N10
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

-- Location: FF_X12_Y14_N5
\INST5Y|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST5Y|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|Y_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5Y|ud_bin_counter\(2));

-- Location: LCCOMB_X12_Y14_N20
\INST7Y|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7Y|AGTB~0_combout\ = (\sw[3]~input_o\ & (\INST5Y|ud_bin_counter\(3) & (\sw[2]~input_o\ $ (!\INST5Y|ud_bin_counter\(2))))) # (!\sw[3]~input_o\ & (!\INST5Y|ud_bin_counter\(3) & (\sw[2]~input_o\ $ (!\INST5Y|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(3),
	combout => \INST7Y|AGTB~0_combout\);

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

-- Location: LCCOMB_X13_Y14_N12
\INSTMEALY|Transition_Section~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~3_combout\ = (!\pb[2]~input_o\ & (((\INST7Y|AEQB~0_combout\) # (\INST7Y|AGTB~3_combout\)) # (!\INST7Y|AGTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7Y|AGTB~0_combout\,
	datab => \pb[2]~input_o\,
	datac => \INST7Y|AEQB~0_combout\,
	datad => \INST7Y|AGTB~3_combout\,
	combout => \INSTMEALY|Transition_Section~3_combout\);

-- Location: LCCOMB_X13_Y14_N26
\INSTMEALY|next_state.YMOVE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|next_state.YMOVE~1_combout\ = (\INSTMEALY|next_state.YMOVE~0_combout\ & \INSTMEALY|Transition_Section~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|next_state.YMOVE~0_combout\,
	datad => \INSTMEALY|Transition_Section~3_combout\,
	combout => \INSTMEALY|next_state.YMOVE~1_combout\);

-- Location: FF_X13_Y14_N27
\INSTMEALY|current_state.YMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INSTMEALY|next_state.YMOVE~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.YMOVE~q\);

-- Location: LCCOMB_X13_Y13_N0
\INSTMEALY|X_Clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|X_Clk_en~0_combout\ = (\INSTMEALY|current_state.YMOVE~q\) # (\INSTMEALY|current_state.ERROR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|current_state.YMOVE~q\,
	datad => \INSTMEALY|current_state.ERROR~q\,
	combout => \INSTMEALY|X_Clk_en~0_combout\);

-- Location: LCCOMB_X14_Y14_N24
\INSTMEALY|X_Clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|X_Clk_en~combout\ = (\INSTMEALY|X_Clk_en~0_combout\ & ((\INSTMEALY|X_Clk_en~combout\))) # (!\INSTMEALY|X_Clk_en~0_combout\ & (\INSTMEALY|Selector10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Selector10~2_combout\,
	datab => \INSTMEALY|X_Clk_en~combout\,
	datad => \INSTMEALY|X_Clk_en~0_combout\,
	combout => \INSTMEALY|X_Clk_en~combout\);

-- Location: LCCOMB_X14_Y14_N10
\INSTMEALY|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector7~0_combout\ = (\INSTMEALY|current_state.BOTHMOVE~q\ & ((\INST6X|AGTB~3_combout\) # ((\INST6X|AEQB~combout\)))) # (!\INSTMEALY|current_state.BOTHMOVE~q\ & (\INSTMEALY|current_state.XMOVE~q\ & ((\INST6X|AGTB~3_combout\) # 
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
	combout => \INSTMEALY|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y14_N0
\INSTMEALY|X_UPorDOWN\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|X_UPorDOWN~combout\ = (\INSTMEALY|Selector7~0_combout\ & (\INST6X|AGTB~3_combout\)) # (!\INSTMEALY|Selector7~0_combout\ & ((\INSTMEALY|X_UPorDOWN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~3_combout\,
	datab => \INSTMEALY|X_UPorDOWN~combout\,
	datad => \INSTMEALY|Selector7~0_combout\,
	combout => \INSTMEALY|X_UPorDOWN~combout\);

-- Location: LCCOMB_X14_Y14_N28
\INST4X|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4X|process_0~0_combout\ = (\INSTMEALY|X_Clk_en~combout\ & \INSTMEALY|X_UPorDOWN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|X_Clk_en~combout\,
	datad => \INSTMEALY|X_UPorDOWN~combout\,
	combout => \INST4X|process_0~0_combout\);

-- Location: FF_X14_Y14_N17
\INST4X|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST4X|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INSTMEALY|X_Clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST4X|ud_bin_counter\(2));

-- Location: LCCOMB_X14_Y14_N22
\INST6X|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AGTB~0_combout\ = (\sw[6]~input_o\ & (\INST4X|ud_bin_counter\(2) & (\sw[7]~input_o\ $ (!\INST4X|ud_bin_counter\(3))))) # (!\sw[6]~input_o\ & (!\INST4X|ud_bin_counter\(2) & (\sw[7]~input_o\ $ (!\INST4X|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[6]~input_o\,
	datab => \INST4X|ud_bin_counter\(2),
	datac => \sw[7]~input_o\,
	datad => \INST4X|ud_bin_counter\(3),
	combout => \INST6X|AGTB~0_combout\);

-- Location: LCCOMB_X13_Y14_N6
\INST6X|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6X|AEQB~combout\ = (\INST6X|AEQB~0_combout\) # (!\INST6X|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST6X|AGTB~0_combout\,
	datad => \INST6X|AEQB~0_combout\,
	combout => \INST6X|AEQB~combout\);

-- Location: LCCOMB_X13_Y14_N4
\INSTMEALY|Transition_Section~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Transition_Section~2_combout\ = ((\pb[2]~input_o\) # ((\pb[3]~input_o\) # (!\INST7Y|AEQB~combout\))) # (!\INST6X|AEQB~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AEQB~combout\,
	datab => \pb[2]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \INST7Y|AEQB~combout\,
	combout => \INSTMEALY|Transition_Section~2_combout\);

-- Location: LCCOMB_X13_Y14_N20
\INSTMEALY|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector3~5_combout\ = (\INSTMEALY|current_state.BOTHMOVE~q\ & (\INST7Y|AEQB~combout\ & ((\INST6X|AEQB~0_combout\) # (!\INST6X|AGTB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datab => \INST6X|AEQB~0_combout\,
	datac => \INSTMEALY|current_state.BOTHMOVE~q\,
	datad => \INST7Y|AEQB~combout\,
	combout => \INSTMEALY|Selector3~5_combout\);

-- Location: LCCOMB_X13_Y14_N2
\INSTMEALY|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector3~4_combout\ = (\INSTMEALY|Selector3~5_combout\) # ((!\INSTMEALY|current_state.STOP~q\ & !\INSTMEALY|Transition_Section~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.STOP~q\,
	datac => \INSTMEALY|Transition_Section~2_combout\,
	datad => \INSTMEALY|Selector3~5_combout\,
	combout => \INSTMEALY|Selector3~4_combout\);

-- Location: FF_X13_Y14_N3
\INSTMEALY|current_state.BOTHMOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INSTMEALY|Selector3~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.BOTHMOVE~q\);

-- Location: LCCOMB_X14_Y14_N30
\INSTMEALY|Selector6~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector6~4_combout\ = (\INSTMEALY|current_state.BOTHMOVE~q\) # (\INSTMEALY|current_state.YMOVE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INSTMEALY|current_state.BOTHMOVE~q\,
	datad => \INSTMEALY|current_state.YMOVE~q\,
	combout => \INSTMEALY|Selector6~4_combout\);

-- Location: LCCOMB_X13_Y14_N0
\INSTMEALY|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~0_combout\ = (!\INST10|current_state.RETRACTED~q\ & ((\INSTMEALY|current_state.ERROR~q\) # ((!\INSTMEALY|Transition_Section~3_combout\ & \INSTMEALY|next_state.YMOVE~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \INSTMEALY|current_state.ERROR~q\,
	datac => \INSTMEALY|Transition_Section~3_combout\,
	datad => \INSTMEALY|next_state.YMOVE~0_combout\,
	combout => \INSTMEALY|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y14_N6
\INSTMEALY|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~1_combout\ = (\INSTMEALY|Selector2~0_combout\) # ((!\INST6X|AEQB~combout\ & ((\INSTMEALY|current_state.XMOVE~q\) # (\INSTMEALY|current_state.BOTHMOVE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.XMOVE~q\,
	datab => \INSTMEALY|current_state.BOTHMOVE~q\,
	datac => \INSTMEALY|Selector2~0_combout\,
	datad => \INST6X|AEQB~combout\,
	combout => \INSTMEALY|Selector2~1_combout\);

-- Location: LCCOMB_X13_Y14_N22
\INSTMEALY|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector2~2_combout\ = (!\INSTMEALY|Selector2~1_combout\ & (((\INST7Y|AEQB~0_combout\) # (!\INST7Y|AGTB~0_combout\)) # (!\INSTMEALY|Selector6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|Selector6~4_combout\,
	datab => \INSTMEALY|Selector2~1_combout\,
	datac => \INST7Y|AGTB~0_combout\,
	datad => \INST7Y|AEQB~0_combout\,
	combout => \INSTMEALY|Selector2~2_combout\);

-- Location: FF_X13_Y14_N23
\INSTMEALY|current_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INSTMEALY|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.STOP~q\);

-- Location: LCCOMB_X12_Y14_N18
\INSTMEALY|Decoder_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Decoder_Section~1_combout\ = (((\INST7Y|AEQB~0_combout\) # (\INST6X|AEQB~0_combout\)) # (!\INST7Y|AGTB~0_combout\)) # (!\INST6X|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6X|AGTB~0_combout\,
	datab => \INST7Y|AGTB~0_combout\,
	datac => \INST7Y|AEQB~0_combout\,
	datad => \INST6X|AEQB~0_combout\,
	combout => \INSTMEALY|Decoder_Section~1_combout\);

-- Location: LCCOMB_X12_Y14_N14
\INSTMEALY|ExtenderEnable\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|ExtenderEnable~combout\ = (\INSTMEALY|current_state.STOP~q\ & (\INSTMEALY|ExtenderEnable~combout\)) # (!\INSTMEALY|current_state.STOP~q\ & ((!\INSTMEALY|Decoder_Section~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|ExtenderEnable~combout\,
	datab => \INSTMEALY|current_state.STOP~q\,
	datad => \INSTMEALY|Decoder_Section~1_combout\,
	combout => \INSTMEALY|ExtenderEnable~combout\);

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

-- Location: LCCOMB_X13_Y13_N28
\INST10|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~2_combout\ = (!\pb[1]~input_o\ & \INSTMEALY|ExtenderEnable~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[1]~input_o\,
	datad => \INSTMEALY|ExtenderEnable~combout\,
	combout => \INST10|Selector3~2_combout\);

-- Location: LCCOMB_X14_Y13_N26
\INST9|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~0_combout\ = (\INST9|sreg\(1) & \INST10|bitShiftDirection~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|sreg\(1),
	datad => \INST10|bitShiftDirection~combout\,
	combout => \INST9|sreg~0_combout\);

-- Location: LCCOMB_X13_Y13_N20
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

-- Location: FF_X14_Y13_N27
\INST9|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST9|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(0));

-- Location: LCCOMB_X14_Y13_N4
\INST9|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~1_combout\ = (\INST10|bitShiftDirection~combout\ & ((\INST9|sreg\(2)))) # (!\INST10|bitShiftDirection~combout\ & (\INST9|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(0),
	datac => \INST9|sreg\(2),
	datad => \INST10|bitShiftDirection~combout\,
	combout => \INST9|sreg~1_combout\);

-- Location: FF_X14_Y13_N5
\INST9|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST9|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(1));

-- Location: LCCOMB_X14_Y13_N22
\INST10|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Equal1~0_combout\ = (\INST9|sreg\(3) & (!\INST9|sreg\(2) & (!\INST9|sreg\(1) & !\INST9|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(3),
	datab => \INST9|sreg\(2),
	datac => \INST9|sreg\(1),
	datad => \INST9|sreg\(0),
	combout => \INST10|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y13_N24
\INST10|Selector3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~3_combout\ = ((!\INST9|sreg\(3)) # (!\INST9|sreg\(1))) # (!\INST9|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|sreg\(2),
	datac => \INST9|sreg\(1),
	datad => \INST9|sreg\(3),
	combout => \INST10|Selector3~3_combout\);

-- Location: LCCOMB_X14_Y13_N6
\INST10|Selector3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~4_combout\ = (\INST10|current_state.EXTENDING3~q\ & ((\INST10|Selector3~3_combout\) # ((\INST10|Equal1~0_combout\ & \INST10|current_state.EXTENDING2~q\)))) # (!\INST10|current_state.EXTENDING3~q\ & (\INST10|Equal1~0_combout\ & 
-- (\INST10|current_state.EXTENDING2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.EXTENDING3~q\,
	datab => \INST10|Equal1~0_combout\,
	datac => \INST10|current_state.EXTENDING2~q\,
	datad => \INST10|Selector3~3_combout\,
	combout => \INST10|Selector3~4_combout\);

-- Location: LCCOMB_X13_Y13_N14
\INST10|Selector3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector3~5_combout\ = (\INST10|Selector3~4_combout\) # ((!\pb[1]~input_o\ & (\INSTMEALY|ExtenderEnable~combout\ & \INST10|current_state.FULLYEXTENDED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Selector3~4_combout\,
	datab => \pb[1]~input_o\,
	datac => \INSTMEALY|ExtenderEnable~combout\,
	datad => \INST10|current_state.FULLYEXTENDED~q\,
	combout => \INST10|Selector3~5_combout\);

-- Location: FF_X13_Y13_N15
\INST10|current_state.EXTENDING3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST10|Selector3~5_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING3~q\);

-- Location: LCCOMB_X13_Y13_N16
\INST10|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector4~0_combout\ = (\INST10|Selector3~2_combout\ & (\INST10|current_state.EXTENDING3~q\ & ((\INST10|Equal2~0_combout\)))) # (!\INST10|Selector3~2_combout\ & ((\INST10|current_state.FULLYEXTENDED~q\) # ((\INST10|current_state.EXTENDING3~q\ & 
-- \INST10|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Selector3~2_combout\,
	datab => \INST10|current_state.EXTENDING3~q\,
	datac => \INST10|current_state.FULLYEXTENDED~q\,
	datad => \INST10|Equal2~0_combout\,
	combout => \INST10|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y13_N22
\INST10|current_state.FULLYEXTENDED~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|current_state.FULLYEXTENDED~feeder_combout\ = \INST10|Selector4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST10|Selector4~0_combout\,
	combout => \INST10|current_state.FULLYEXTENDED~feeder_combout\);

-- Location: FF_X13_Y13_N23
\INST10|current_state.FULLYEXTENDED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST10|current_state.FULLYEXTENDED~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.FULLYEXTENDED~q\);

-- Location: LCCOMB_X13_Y13_N30
\INST10|bitShiftDirection\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|bitShiftDirection~combout\ = (\INST10|bitShifting~0_combout\ & (\INST10|bitShiftDirection~combout\)) # (!\INST10|bitShifting~0_combout\ & ((!\INST10|current_state.FULLYEXTENDED~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|bitShiftDirection~combout\,
	datac => \INST10|current_state.FULLYEXTENDED~q\,
	datad => \INST10|bitShifting~0_combout\,
	combout => \INST10|bitShiftDirection~combout\);

-- Location: LCCOMB_X14_Y13_N8
\INST9|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~3_combout\ = (\INST9|sreg\(2)) # (\INST10|bitShiftDirection~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|sreg\(2),
	datad => \INST10|bitShiftDirection~combout\,
	combout => \INST9|sreg~3_combout\);

-- Location: FF_X14_Y13_N9
\INST9|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST9|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(3));

-- Location: LCCOMB_X14_Y13_N18
\INST9|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST9|sreg~2_combout\ = (\INST10|bitShiftDirection~combout\ & (\INST9|sreg\(3))) # (!\INST10|bitShiftDirection~combout\ & ((\INST9|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST9|sreg\(3),
	datac => \INST9|sreg\(1),
	datad => \INST10|bitShiftDirection~combout\,
	combout => \INST9|sreg~2_combout\);

-- Location: FF_X14_Y13_N19
\INST9|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST9|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST10|bitShifting~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST9|sreg\(2));

-- Location: LCCOMB_X14_Y13_N16
\INST10|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Equal2~0_combout\ = (\INST9|sreg\(2) & (\INST9|sreg\(3) & (!\INST9|sreg\(0) & \INST9|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(2),
	datab => \INST9|sreg\(3),
	datac => \INST9|sreg\(0),
	datad => \INST9|sreg\(1),
	combout => \INST10|Equal2~0_combout\);

-- Location: LCCOMB_X14_Y13_N28
\INST10|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~0_combout\ = (\INST9|sreg\(1) & (\INST9|sreg\(3) & (\INST9|sreg\(2) & \INST10|current_state.EXTENDING3~q\))) # (!\INST9|sreg\(1) & ((\INST9|sreg\(3)) # ((\INST9|sreg\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(1),
	datab => \INST9|sreg\(3),
	datac => \INST9|sreg\(2),
	datad => \INST10|current_state.EXTENDING3~q\,
	combout => \INST10|Selector2~0_combout\);

-- Location: LCCOMB_X13_Y13_N18
\INST10|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~1_combout\ = (\INST9|sreg\(1) & (\INST10|Selector2~0_combout\ & ((\INST9|sreg\(0))))) # (!\INST9|sreg\(1) & (!\INST10|Selector2~0_combout\ & (\INST10|current_state.EXTENDING1~q\ & !\INST9|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(1),
	datab => \INST10|Selector2~0_combout\,
	datac => \INST10|current_state.EXTENDING1~q\,
	datad => \INST9|sreg\(0),
	combout => \INST10|Selector2~1_combout\);

-- Location: LCCOMB_X13_Y13_N6
\INST10|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector2~2_combout\ = (\INST10|Selector2~1_combout\) # ((!\INST10|Equal2~0_combout\ & (!\INST10|Equal1~0_combout\ & \INST10|current_state.EXTENDING2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|Equal2~0_combout\,
	datab => \INST10|Equal1~0_combout\,
	datac => \INST10|current_state.EXTENDING2~q\,
	datad => \INST10|Selector2~1_combout\,
	combout => \INST10|Selector2~2_combout\);

-- Location: FF_X13_Y13_N7
\INST10|current_state.EXTENDING2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST10|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING2~q\);

-- Location: LCCOMB_X13_Y13_N12
\INST10|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~2_combout\ = (\INST9|sreg\(1)) # ((\INST9|sreg\(2)) # (\INST9|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST9|sreg\(1),
	datab => \INST9|sreg\(2),
	datad => \INST9|sreg\(0),
	combout => \INST10|Selector1~2_combout\);

-- Location: LCCOMB_X13_Y13_N8
\INST10|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~3_combout\ = (\INST10|current_state.EXTENDING2~q\ & ((\INST10|Equal2~0_combout\) # ((\INST10|current_state.EXTENDING1~q\ & \INST10|Selector1~2_combout\)))) # (!\INST10|current_state.EXTENDING2~q\ & (\INST10|current_state.EXTENDING1~q\ & 
-- (\INST10|Selector1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.EXTENDING2~q\,
	datab => \INST10|current_state.EXTENDING1~q\,
	datac => \INST10|Selector1~2_combout\,
	datad => \INST10|Equal2~0_combout\,
	combout => \INST10|Selector1~3_combout\);

-- Location: LCCOMB_X13_Y13_N4
\INST10|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector1~4_combout\ = (\INST10|Selector1~3_combout\) # ((!\INST10|current_state.RETRACTED~q\ & (!\pb[1]~input_o\ & \INSTMEALY|ExtenderEnable~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \pb[1]~input_o\,
	datac => \INST10|Selector1~3_combout\,
	datad => \INSTMEALY|ExtenderEnable~combout\,
	combout => \INST10|Selector1~4_combout\);

-- Location: FF_X13_Y13_N5
\INST10|current_state.EXTENDING1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST10|Selector1~4_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.EXTENDING1~q\);

-- Location: LCCOMB_X13_Y13_N2
\INST10|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector0~0_combout\ = (\INST10|current_state.EXTENDING1~q\ & \INST10|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST10|current_state.EXTENDING1~q\,
	datad => \INST10|Equal1~0_combout\,
	combout => \INST10|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y13_N24
\INST10|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|Selector0~1_combout\ = (!\INST10|Selector0~0_combout\ & ((\INST10|current_state.RETRACTED~q\) # ((\INSTMEALY|ExtenderEnable~combout\ & !\pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|ExtenderEnable~combout\,
	datab => \pb[1]~input_o\,
	datac => \INST10|current_state.RETRACTED~q\,
	datad => \INST10|Selector0~0_combout\,
	combout => \INST10|Selector0~1_combout\);

-- Location: FF_X13_Y13_N25
\INST10|current_state.RETRACTED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(24),
	d => \INST10|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.RETRACTED~q\);

-- Location: LCCOMB_X13_Y13_N26
\INSTMEALY|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Selector4~0_combout\ = (\INST10|current_state.RETRACTED~q\ & ((\INSTMEALY|current_state.ERROR~q\) # ((\INSTMEALY|next_state.YMOVE~0_combout\ & !\INSTMEALY|Transition_Section~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.RETRACTED~q\,
	datab => \INSTMEALY|next_state.YMOVE~0_combout\,
	datac => \INSTMEALY|current_state.ERROR~q\,
	datad => \INSTMEALY|Transition_Section~3_combout\,
	combout => \INSTMEALY|Selector4~0_combout\);

-- Location: FF_X13_Y13_N13
\INSTMEALY|current_state.ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	asdata => \INSTMEALY|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INSTMEALY|current_state.ERROR~q\);

-- Location: LCCOMB_X13_Y14_N10
\INSTMEALY|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|Decoder_Section~0_combout\ = (\pb[3]~input_o\ & (!\pb[2]~input_o\ & ((\INST6X|AEQB~combout\) # (\INST7Y|AEQB~combout\)))) # (!\pb[3]~input_o\ & (((\INST6X|AEQB~combout\) # (\INST7Y|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \INST6X|AEQB~combout\,
	datad => \INST7Y|AEQB~combout\,
	combout => \INSTMEALY|Decoder_Section~0_combout\);

-- Location: LCCOMB_X13_Y14_N14
\INSTMEALY|isError\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INSTMEALY|isError~combout\ = (\INSTMEALY|current_state.ERROR~q\ & ((\INSTMEALY|Decoder_Section~0_combout\))) # (!\INSTMEALY|current_state.ERROR~q\ & (\INSTMEALY|isError~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INSTMEALY|current_state.ERROR~q\,
	datac => \INSTMEALY|isError~combout\,
	datad => \INSTMEALY|Decoder_Section~0_combout\,
	combout => \INSTMEALY|isError~combout\);

-- Location: LCCOMB_X11_Y12_N8
\INST3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~0_combout\ = (bin_counter(10) & (\pb[3]~input_o\)) # (!bin_counter(10) & ((\pb[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => bin_counter(10),
	datad => \pb[2]~input_o\,
	combout => \INST3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X12_Y12_N4
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

-- Location: LCCOMB_X11_Y14_N18
\INST12YCURRENT|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux5~0_combout\ = (\INST5Y|ud_bin_counter\(3) & ((\INST5Y|ud_bin_counter\(0) & ((\INST5Y|ud_bin_counter\(1)))) # (!\INST5Y|ud_bin_counter\(0) & (\INST5Y|ud_bin_counter\(2))))) # (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(2) & 
-- (\INST5Y|ud_bin_counter\(0) $ (\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y13_N12
\INST3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[1]~0_combout\ = (\INST3|DOUT[0]~0_combout\ & ((bin_counter(10)) # ((!\INST2YTARGET|Mux5~0_combout\)))) # (!\INST3|DOUT[0]~0_combout\ & (!bin_counter(10) & ((!\INST12YCURRENT|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => bin_counter(10),
	datac => \INST2YTARGET|Mux5~0_combout\,
	datad => \INST12YCURRENT|Mux5~0_combout\,
	combout => \INST3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X11_Y13_N16
\INST1XTARGET|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux5~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ & (\sw[7]~input_o\)) # (!\sw[4]~input_o\ & ((\sw[6]~input_o\))))) # (!\sw[5]~input_o\ & (\sw[6]~input_o\ & (\sw[7]~input_o\ $ (\sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
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

-- Location: LCCOMB_X12_Y13_N6
\INST3|DOUT_TEMP[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[1]~1_combout\ = (\INST3|DOUT_TEMP[1]~0_combout\ & (((!\INST1XTARGET|Mux5~0_combout\)) # (!bin_counter(10)))) # (!\INST3|DOUT_TEMP[1]~0_combout\ & (bin_counter(10) & ((!\INST11XCURRENT|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT_TEMP[1]~0_combout\,
	datab => bin_counter(10),
	datac => \INST1XTARGET|Mux5~0_combout\,
	datad => \INST11XCURRENT|Mux5~0_combout\,
	combout => \INST3|DOUT_TEMP[1]~1_combout\);

-- Location: LCCOMB_X12_Y13_N24
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

-- Location: LCCOMB_X12_Y13_N18
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

-- Location: LCCOMB_X11_Y14_N20
\INST12YCURRENT|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux1~0_combout\ = (\INST5Y|ud_bin_counter\(3) & (((\INST5Y|ud_bin_counter\(2) & !\INST5Y|ud_bin_counter\(1))))) # (!\INST5Y|ud_bin_counter\(3) & ((\INST5Y|ud_bin_counter\(0) & ((\INST5Y|ud_bin_counter\(1)) # (!\INST5Y|ud_bin_counter\(2)))) 
-- # (!\INST5Y|ud_bin_counter\(0) & (!\INST5Y|ud_bin_counter\(2) & \INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y12_N12
\INST3|DOUT_TEMP[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[5]~3_combout\ = (bin_counter(10) & ((\INST3|DOUT[0]~0_combout\) # ((!\INST11XCURRENT|Mux1~0_combout\)))) # (!bin_counter(10) & (!\INST3|DOUT[0]~0_combout\ & ((!\INST12YCURRENT|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(10),
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST11XCURRENT|Mux1~0_combout\,
	datad => \INST12YCURRENT|Mux1~0_combout\,
	combout => \INST3|DOUT_TEMP[5]~3_combout\);

-- Location: LCCOMB_X12_Y12_N10
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

-- Location: LCCOMB_X11_Y13_N10
\INST1XTARGET|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux1~0_combout\ = (\sw[5]~input_o\ & (!\sw[7]~input_o\ & ((\sw[4]~input_o\) # (!\sw[6]~input_o\)))) # (!\sw[5]~input_o\ & ((\sw[7]~input_o\ & ((\sw[6]~input_o\))) # (!\sw[7]~input_o\ & (\sw[4]~input_o\ & !\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux1~0_combout\);

-- Location: LCCOMB_X11_Y12_N22
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

-- Location: LCCOMB_X11_Y12_N4
\INST3|DOUT_TEMP[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[5]~5_combout\ = (\INST3|DOUT_TEMP[5]~4_combout\) # (\INSTMEALY|isError~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT_TEMP[5]~4_combout\,
	datac => \INSTMEALY|isError~combout\,
	combout => \INST3|DOUT_TEMP[5]~5_combout\);

-- Location: LCCOMB_X11_Y14_N26
\INST12YCURRENT|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux0~0_combout\ = (\INST5Y|ud_bin_counter\(3)) # ((\INST5Y|ud_bin_counter\(2) & ((!\INST5Y|ud_bin_counter\(1)) # (!\INST5Y|ud_bin_counter\(0)))) # (!\INST5Y|ud_bin_counter\(2) & ((\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y12_N24
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

-- Location: LCCOMB_X12_Y13_N22
\INST3|DOUT_TEMP[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~6_combout\ = (\INST3|DOUT[0]~0_combout\ & (((\INST2YTARGET|Mux0~0_combout\) # (bin_counter(10))))) # (!\INST3|DOUT[0]~0_combout\ & (\INST12YCURRENT|Mux0~0_combout\ & ((!bin_counter(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => \INST12YCURRENT|Mux0~0_combout\,
	datac => \INST2YTARGET|Mux0~0_combout\,
	datad => bin_counter(10),
	combout => \INST3|DOUT_TEMP[6]~6_combout\);

-- Location: LCCOMB_X11_Y13_N4
\INST1XTARGET|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux0~0_combout\ = (\sw[7]~input_o\) # ((\sw[5]~input_o\ & ((!\sw[6]~input_o\) # (!\sw[4]~input_o\))) # (!\sw[5]~input_o\ & ((\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y13_N28
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

-- Location: LCCOMB_X12_Y13_N0
\INST3|DOUT_TEMP[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~7_combout\ = (\INST3|DOUT_TEMP[6]~6_combout\ & (((\INST1XTARGET|Mux0~0_combout\)) # (!bin_counter(10)))) # (!\INST3|DOUT_TEMP[6]~6_combout\ & (bin_counter(10) & ((\INST11XCURRENT|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT_TEMP[6]~6_combout\,
	datab => bin_counter(10),
	datac => \INST1XTARGET|Mux0~0_combout\,
	datad => \INST11XCURRENT|Mux0~0_combout\,
	combout => \INST3|DOUT_TEMP[6]~7_combout\);

-- Location: LCCOMB_X12_Y13_N30
\INST3|DOUT_TEMP[6]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT_TEMP[6]~8_combout\ = (\INSTMEALY|isError~combout\) # (\INST3|DOUT_TEMP[6]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
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

-- Location: LCCOMB_X14_Y13_N10
\INST8GrapplerSM|next_state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8GrapplerSM|next_state~0_combout\ = (\INST10|current_state.FULLYEXTENDED~q\ & (\pb[0]~input_o\ $ (!\INST8GrapplerSM|current_state~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST10|current_state.FULLYEXTENDED~q\,
	datac => \pb[0]~input_o\,
	datad => \INST8GrapplerSM|current_state~q\,
	combout => \INST8GrapplerSM|next_state~0_combout\);

-- Location: LCCOMB_X14_Y13_N20
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

-- Location: FF_X14_Y13_N21
\INST8GrapplerSM|current_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[24]~clkctrl_outclk\,
	d => \INST8GrapplerSM|current_state~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8GrapplerSM|current_state~q\);

-- Location: LCCOMB_X11_Y13_N8
\INST1XTARGET|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux6~0_combout\ = (\sw[5]~input_o\ & (\sw[7]~input_o\ & (\sw[4]~input_o\ & !\sw[6]~input_o\))) # (!\sw[5]~input_o\ & (\sw[6]~input_o\ $ (((!\sw[7]~input_o\ & \sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y12_N0
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

-- Location: LCCOMB_X12_Y13_N8
\INST11XCURRENT|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux6~0_combout\ = (\INST4X|ud_bin_counter\(2) & (!\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter\(3)) # (!\INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(0) & (\INST4X|ud_bin_counter\(3) $ 
-- (!\INST4X|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y14_N12
\INST12YCURRENT|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux6~0_combout\ = (\INST5Y|ud_bin_counter\(2) & (!\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(3)) # (!\INST5Y|ud_bin_counter\(0))))) # (!\INST5Y|ud_bin_counter\(2) & (\INST5Y|ud_bin_counter\(0) & (\INST5Y|ud_bin_counter\(3) $ 
-- (!\INST5Y|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y13_N14
\INST3|DOUT[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~1_combout\ = (\INST3|DOUT[0]~0_combout\ & (bin_counter(10))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & (!\INST11XCURRENT|Mux6~0_combout\)) # (!bin_counter(10) & ((!\INST12YCURRENT|Mux6~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[0]~0_combout\,
	datab => bin_counter(10),
	datac => \INST11XCURRENT|Mux6~0_combout\,
	datad => \INST12YCURRENT|Mux6~0_combout\,
	combout => \INST3|DOUT[0]~1_combout\);

-- Location: LCCOMB_X12_Y13_N16
\INST3|DOUT[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~2_combout\ = (\INST3|DOUT[0]~1_combout\ & (((!\INST3|DOUT[0]~0_combout\)) # (!\INST1XTARGET|Mux6~0_combout\))) # (!\INST3|DOUT[0]~1_combout\ & (((!\INST2YTARGET|Mux6~0_combout\ & \INST3|DOUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1XTARGET|Mux6~0_combout\,
	datab => \INST2YTARGET|Mux6~0_combout\,
	datac => \INST3|DOUT[0]~1_combout\,
	datad => \INST3|DOUT[0]~0_combout\,
	combout => \INST3|DOUT[0]~2_combout\);

-- Location: LCCOMB_X12_Y13_N2
\INST3|DOUT[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[0]~3_combout\ = (\INSTMEALY|isError~combout\) # (\INST3|DOUT[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|isError~combout\,
	datad => \INST3|DOUT[0]~2_combout\,
	combout => \INST3|DOUT[0]~3_combout\);

-- Location: LCCOMB_X11_Y14_N6
\INST12YCURRENT|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux4~0_combout\ = (\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(2) & ((\INST5Y|ud_bin_counter\(1)) # (!\INST5Y|ud_bin_counter\(0))))) # (!\INST5Y|ud_bin_counter\(3) & (!\INST5Y|ud_bin_counter\(0) & (!\INST5Y|ud_bin_counter\(2) & 
-- \INST5Y|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y13_N20
\INST11XCURRENT|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux4~0_combout\ = (\INST4X|ud_bin_counter\(2) & (\INST4X|ud_bin_counter\(3) & ((\INST4X|ud_bin_counter\(1)) # (!\INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(2) & (!\INST4X|ud_bin_counter\(3) & (!\INST4X|ud_bin_counter\(0) & 
-- \INST4X|ud_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y12_N30
\INST3|DOUT[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[2]~5_combout\ = (\INST3|DOUT[0]~0_combout\ & (((bin_counter(10))))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & ((!\INST11XCURRENT|Mux4~0_combout\))) # (!bin_counter(10) & (!\INST12YCURRENT|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux4~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => bin_counter(10),
	datad => \INST11XCURRENT|Mux4~0_combout\,
	combout => \INST3|DOUT[2]~5_combout\);

-- Location: LCCOMB_X11_Y13_N30
\INST1XTARGET|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux4~0_combout\ = (\sw[7]~input_o\ & (\sw[6]~input_o\ & ((\sw[5]~input_o\) # (!\sw[4]~input_o\)))) # (!\sw[7]~input_o\ & (\sw[5]~input_o\ & (!\sw[4]~input_o\ & !\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y12_N26
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

-- Location: LCCOMB_X11_Y12_N20
\INST3|DOUT[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[2]~6_combout\ = (\INST3|DOUT[2]~5_combout\ & (((!\INST1XTARGET|Mux4~0_combout\)) # (!\INST3|DOUT[0]~0_combout\))) # (!\INST3|DOUT[2]~5_combout\ & (\INST3|DOUT[0]~0_combout\ & ((!\INST2YTARGET|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[2]~5_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST1XTARGET|Mux4~0_combout\,
	datad => \INST2YTARGET|Mux4~0_combout\,
	combout => \INST3|DOUT[2]~6_combout\);

-- Location: LCCOMB_X11_Y12_N18
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

-- Location: LCCOMB_X11_Y13_N20
\INST1XTARGET|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux3~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ & ((\sw[6]~input_o\))) # (!\sw[4]~input_o\ & (\sw[7]~input_o\ & !\sw[6]~input_o\)))) # (!\sw[5]~input_o\ & (!\sw[7]~input_o\ & (\sw[4]~input_o\ $ (\sw[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y12_N12
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

-- Location: LCCOMB_X11_Y14_N8
\INST12YCURRENT|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux3~0_combout\ = (\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(0) & ((\INST5Y|ud_bin_counter\(2)))) # (!\INST5Y|ud_bin_counter\(0) & (\INST5Y|ud_bin_counter\(3) & !\INST5Y|ud_bin_counter\(2))))) # (!\INST5Y|ud_bin_counter\(1) & 
-- (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(0) $ (\INST5Y|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y13_N26
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

-- Location: LCCOMB_X11_Y12_N24
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

-- Location: LCCOMB_X11_Y12_N6
\INST3|DOUT[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[3]~9_combout\ = (\INST3|DOUT[0]~0_combout\ & ((\INST3|DOUT[3]~8_combout\ & (!\INST1XTARGET|Mux3~0_combout\)) # (!\INST3|DOUT[3]~8_combout\ & ((!\INST2YTARGET|Mux3~0_combout\))))) # (!\INST3|DOUT[0]~0_combout\ & (((\INST3|DOUT[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1XTARGET|Mux3~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST2YTARGET|Mux3~0_combout\,
	datad => \INST3|DOUT[3]~8_combout\,
	combout => \INST3|DOUT[3]~9_combout\);

-- Location: LCCOMB_X11_Y12_N28
\INST3|DOUT[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[3]~10_combout\ = (\INSTMEALY|isError~combout\) # (\INST3|DOUT[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|isError~combout\,
	datad => \INST3|DOUT[3]~9_combout\,
	combout => \INST3|DOUT[3]~10_combout\);

-- Location: LCCOMB_X11_Y14_N22
\INST12YCURRENT|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12YCURRENT|Mux2~0_combout\ = (\INST5Y|ud_bin_counter\(1) & (!\INST5Y|ud_bin_counter\(3) & (\INST5Y|ud_bin_counter\(0)))) # (!\INST5Y|ud_bin_counter\(1) & ((\INST5Y|ud_bin_counter\(2) & (!\INST5Y|ud_bin_counter\(3))) # (!\INST5Y|ud_bin_counter\(2) & 
-- ((\INST5Y|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5Y|ud_bin_counter\(3),
	datab => \INST5Y|ud_bin_counter\(0),
	datac => \INST5Y|ud_bin_counter\(2),
	datad => \INST5Y|ud_bin_counter\(1),
	combout => \INST12YCURRENT|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y13_N4
\INST11XCURRENT|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11XCURRENT|Mux2~0_combout\ = (\INST4X|ud_bin_counter\(1) & (((!\INST4X|ud_bin_counter\(3) & \INST4X|ud_bin_counter\(0))))) # (!\INST4X|ud_bin_counter\(1) & ((\INST4X|ud_bin_counter\(2) & (!\INST4X|ud_bin_counter\(3))) # (!\INST4X|ud_bin_counter\(2) & 
-- ((\INST4X|ud_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4X|ud_bin_counter\(2),
	datab => \INST4X|ud_bin_counter\(3),
	datac => \INST4X|ud_bin_counter\(0),
	datad => \INST4X|ud_bin_counter\(1),
	combout => \INST11XCURRENT|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y12_N26
\INST3|DOUT[4]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~11_combout\ = (\INST3|DOUT[0]~0_combout\ & (((bin_counter(10))))) # (!\INST3|DOUT[0]~0_combout\ & ((bin_counter(10) & ((!\INST11XCURRENT|Mux2~0_combout\))) # (!bin_counter(10) & (!\INST12YCURRENT|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12YCURRENT|Mux2~0_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => bin_counter(10),
	datad => \INST11XCURRENT|Mux2~0_combout\,
	combout => \INST3|DOUT[4]~11_combout\);

-- Location: LCCOMB_X12_Y12_N14
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

-- Location: LCCOMB_X11_Y13_N22
\INST1XTARGET|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1XTARGET|Mux2~0_combout\ = (\sw[5]~input_o\ & (!\sw[7]~input_o\ & (\sw[4]~input_o\))) # (!\sw[5]~input_o\ & ((\sw[6]~input_o\ & (!\sw[7]~input_o\)) # (!\sw[6]~input_o\ & ((\sw[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[4]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \INST1XTARGET|Mux2~0_combout\);

-- Location: LCCOMB_X11_Y12_N16
\INST3|DOUT[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~12_combout\ = (\INST3|DOUT[4]~11_combout\ & (((!\INST1XTARGET|Mux2~0_combout\)) # (!\INST3|DOUT[0]~0_combout\))) # (!\INST3|DOUT[4]~11_combout\ & (\INST3|DOUT[0]~0_combout\ & (!\INST2YTARGET|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|DOUT[4]~11_combout\,
	datab => \INST3|DOUT[0]~0_combout\,
	datac => \INST2YTARGET|Mux2~0_combout\,
	datad => \INST1XTARGET|Mux2~0_combout\,
	combout => \INST3|DOUT[4]~12_combout\);

-- Location: LCCOMB_X11_Y12_N10
\INST3|DOUT[4]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|DOUT[4]~13_combout\ = (\INSTMEALY|isError~combout\) # (\INST3|DOUT[4]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INSTMEALY|isError~combout\,
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


