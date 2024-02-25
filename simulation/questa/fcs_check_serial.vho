-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.0 Build 991 11/28/2023 SC Lite Edition"

-- DATE "02/25/2024 11:49:14"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fcs_check_serial IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	start_of_frame : IN std_logic;
	end_of_frame : IN std_logic;
	data_in : IN std_logic;
	fcs_reg_output : OUT std_logic_vector(31 DOWNTO 0);
	fcs_error : OUT std_logic
	);
END fcs_check_serial;

-- Design Ports Information
-- fcs_reg_output[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[2]	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[3]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[4]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[5]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[7]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[8]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[9]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[11]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[12]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[13]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[14]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[15]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[16]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[17]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[18]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[19]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[20]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[21]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[22]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[23]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[24]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[25]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[26]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[27]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[28]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[29]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[30]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_reg_output[31]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fcs_error	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_of_frame	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- end_of_frame	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fcs_check_serial IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_start_of_frame : std_logic;
SIGNAL ww_end_of_frame : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_fcs_reg_output : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_fcs_error : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \fcs_reg_output[0]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[1]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[2]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[3]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[4]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[5]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[6]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[7]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[8]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[9]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[10]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[11]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[12]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[13]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[14]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[15]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[16]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[17]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[18]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[19]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[20]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[21]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[22]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[23]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[24]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[25]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[26]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[27]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[28]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[29]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[30]~output_o\ : std_logic;
SIGNAL \fcs_reg_output[31]~output_o\ : std_logic;
SIGNAL \fcs_error~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data_in~input_o\ : std_logic;
SIGNAL \complement_counter[0]~7_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \start_of_frame~input_o\ : std_logic;
SIGNAL \end_of_frame~input_o\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \complement_counter[0]~8\ : std_logic;
SIGNAL \complement_counter[1]~9_combout\ : std_logic;
SIGNAL \complement_counter[1]~10\ : std_logic;
SIGNAL \complement_counter[2]~11_combout\ : std_logic;
SIGNAL \complement_counter[2]~12\ : std_logic;
SIGNAL \complement_counter[3]~13_combout\ : std_logic;
SIGNAL \complement_counter[3]~14\ : std_logic;
SIGNAL \complement_counter[4]~15_combout\ : std_logic;
SIGNAL \complement_counter[4]~5_combout\ : std_logic;
SIGNAL \complement_counter[4]~6_combout\ : std_logic;
SIGNAL \fcs_reg~1_combout\ : std_logic;
SIGNAL \fcs_reg~2_combout\ : std_logic;
SIGNAL \fcs_reg[3]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~3_combout\ : std_logic;
SIGNAL \fcs_reg~4_combout\ : std_logic;
SIGNAL \fcs_reg~5_combout\ : std_logic;
SIGNAL \fcs_reg~6_combout\ : std_logic;
SIGNAL \fcs_reg[9]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~7_combout\ : std_logic;
SIGNAL \fcs_reg~8_combout\ : std_logic;
SIGNAL \fcs_reg~9_combout\ : std_logic;
SIGNAL \fcs_reg[14]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~10_combout\ : std_logic;
SIGNAL \fcs_reg[17]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg[20]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~11_combout\ : std_logic;
SIGNAL \fcs_reg~12_combout\ : std_logic;
SIGNAL \fcs_reg[24]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg[25]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~13_combout\ : std_logic;
SIGNAL \fcs_reg[28]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg[29]~feeder_combout\ : std_logic;
SIGNAL \fcs_reg~0_combout\ : std_logic;
SIGNAL \fcs_reg_output[0]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[1]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[1]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[2]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[2]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[3]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[3]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[4]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[5]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[6]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[6]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[7]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[7]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[8]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[8]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[9]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[10]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[11]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[11]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[12]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[13]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[13]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[14]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[15]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[15]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[16]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[17]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[18]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[19]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[20]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[21]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[21]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[22]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[23]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[23]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[24]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[24]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[25]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[25]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[26]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[26]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[27]~reg0feeder_combout\ : std_logic;
SIGNAL \fcs_reg_output[27]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[28]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[29]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[30]~reg0_q\ : std_logic;
SIGNAL \fcs_reg_output[31]~reg0_q\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \fcs_error~0_combout\ : std_logic;
SIGNAL \fcs_error~reg0_q\ : std_logic;
SIGNAL complement_counter : std_logic_vector(4 DOWNTO 0);
SIGNAL fcs_reg : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_fcs_error~reg0_q\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_start_of_frame <= start_of_frame;
ww_end_of_frame <= end_of_frame;
ww_data_in <= data_in;
fcs_reg_output <= ww_fcs_reg_output;
fcs_error <= ww_fcs_error;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_fcs_error~reg0_q\ <= NOT \fcs_error~reg0_q\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y13_N16
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

-- Location: IOOBUF_X31_Y4_N23
\fcs_reg_output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[0]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\fcs_reg_output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[1]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[1]~output_o\);

-- Location: IOOBUF_X31_Y2_N9
\fcs_reg_output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[2]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[2]~output_o\);

-- Location: IOOBUF_X31_Y4_N9
\fcs_reg_output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[3]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[3]~output_o\);

-- Location: IOOBUF_X31_Y1_N2
\fcs_reg_output[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[4]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[4]~output_o\);

-- Location: IOOBUF_X31_Y4_N2
\fcs_reg_output[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[5]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\fcs_reg_output[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[6]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[6]~output_o\);

-- Location: IOOBUF_X31_Y1_N23
\fcs_reg_output[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[7]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[7]~output_o\);

-- Location: IOOBUF_X31_Y5_N16
\fcs_reg_output[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[8]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[8]~output_o\);

-- Location: IOOBUF_X31_Y5_N9
\fcs_reg_output[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[9]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[9]~output_o\);

-- Location: IOOBUF_X27_Y0_N2
\fcs_reg_output[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[10]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[10]~output_o\);

-- Location: IOOBUF_X31_Y5_N23
\fcs_reg_output[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[11]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[11]~output_o\);

-- Location: IOOBUF_X31_Y7_N16
\fcs_reg_output[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[12]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[12]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\fcs_reg_output[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[13]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\fcs_reg_output[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[14]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[14]~output_o\);

-- Location: IOOBUF_X31_Y3_N2
\fcs_reg_output[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[15]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[15]~output_o\);

-- Location: IOOBUF_X27_Y0_N16
\fcs_reg_output[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[16]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[16]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\fcs_reg_output[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[17]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[17]~output_o\);

-- Location: IOOBUF_X27_Y0_N30
\fcs_reg_output[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[18]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[18]~output_o\);

-- Location: IOOBUF_X31_Y2_N16
\fcs_reg_output[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[19]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[19]~output_o\);

-- Location: IOOBUF_X31_Y4_N16
\fcs_reg_output[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[20]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[20]~output_o\);

-- Location: IOOBUF_X31_Y6_N2
\fcs_reg_output[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[21]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[21]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\fcs_reg_output[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[22]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[22]~output_o\);

-- Location: IOOBUF_X31_Y7_N23
\fcs_reg_output[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[23]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[23]~output_o\);

-- Location: IOOBUF_X31_Y3_N16
\fcs_reg_output[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[24]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[24]~output_o\);

-- Location: IOOBUF_X31_Y6_N9
\fcs_reg_output[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[25]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[25]~output_o\);

-- Location: IOOBUF_X31_Y3_N9
\fcs_reg_output[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[26]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[26]~output_o\);

-- Location: IOOBUF_X31_Y3_N23
\fcs_reg_output[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[27]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[27]~output_o\);

-- Location: IOOBUF_X31_Y2_N2
\fcs_reg_output[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[28]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[28]~output_o\);

-- Location: IOOBUF_X31_Y6_N23
\fcs_reg_output[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[29]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[29]~output_o\);

-- Location: IOOBUF_X31_Y6_N16
\fcs_reg_output[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[30]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[30]~output_o\);

-- Location: IOOBUF_X31_Y2_N23
\fcs_reg_output[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \fcs_reg_output[31]~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_reg_output[31]~output_o\);

-- Location: IOOBUF_X31_Y5_N2
\fcs_error~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_fcs_error~reg0_q\,
	devoe => ww_devoe,
	o => \fcs_error~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y0_N8
\data_in~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in,
	o => \data_in~input_o\);

-- Location: LCCOMB_X29_Y4_N18
\complement_counter[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[0]~7_combout\ = complement_counter(0) $ (VCC)
-- \complement_counter[0]~8\ = CARRY(complement_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => complement_counter(0),
	datad => VCC,
	combout => \complement_counter[0]~7_combout\,
	cout => \complement_counter[0]~8\);

-- Location: IOIBUF_X0_Y6_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G4
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: IOIBUF_X29_Y0_N1
\start_of_frame~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_of_frame,
	o => \start_of_frame~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\end_of_frame~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_end_of_frame,
	o => \end_of_frame~input_o\);

-- Location: LCCOMB_X29_Y4_N4
\process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\start_of_frame~input_o\) # (\end_of_frame~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_of_frame~input_o\,
	datad => \end_of_frame~input_o\,
	combout => \process_0~11_combout\);

-- Location: FF_X29_Y4_N19
\complement_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \complement_counter[0]~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~11_combout\,
	ena => \complement_counter[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => complement_counter(0));

-- Location: LCCOMB_X29_Y4_N20
\complement_counter[1]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[1]~9_combout\ = (complement_counter(1) & (!\complement_counter[0]~8\)) # (!complement_counter(1) & ((\complement_counter[0]~8\) # (GND)))
-- \complement_counter[1]~10\ = CARRY((!\complement_counter[0]~8\) # (!complement_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => complement_counter(1),
	datad => VCC,
	cin => \complement_counter[0]~8\,
	combout => \complement_counter[1]~9_combout\,
	cout => \complement_counter[1]~10\);

-- Location: FF_X29_Y4_N21
\complement_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \complement_counter[1]~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~11_combout\,
	ena => \complement_counter[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => complement_counter(1));

-- Location: LCCOMB_X29_Y4_N22
\complement_counter[2]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[2]~11_combout\ = (complement_counter(2) & (\complement_counter[1]~10\ $ (GND))) # (!complement_counter(2) & (!\complement_counter[1]~10\ & VCC))
-- \complement_counter[2]~12\ = CARRY((complement_counter(2) & !\complement_counter[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => complement_counter(2),
	datad => VCC,
	cin => \complement_counter[1]~10\,
	combout => \complement_counter[2]~11_combout\,
	cout => \complement_counter[2]~12\);

-- Location: FF_X29_Y4_N23
\complement_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \complement_counter[2]~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~11_combout\,
	ena => \complement_counter[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => complement_counter(2));

-- Location: LCCOMB_X29_Y4_N24
\complement_counter[3]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[3]~13_combout\ = (complement_counter(3) & (!\complement_counter[2]~12\)) # (!complement_counter(3) & ((\complement_counter[2]~12\) # (GND)))
-- \complement_counter[3]~14\ = CARRY((!\complement_counter[2]~12\) # (!complement_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => complement_counter(3),
	datad => VCC,
	cin => \complement_counter[2]~12\,
	combout => \complement_counter[3]~13_combout\,
	cout => \complement_counter[3]~14\);

-- Location: FF_X29_Y4_N25
\complement_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \complement_counter[3]~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~11_combout\,
	ena => \complement_counter[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => complement_counter(3));

-- Location: LCCOMB_X29_Y4_N26
\complement_counter[4]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[4]~15_combout\ = complement_counter(4) $ (!\complement_counter[3]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => complement_counter(4),
	cin => \complement_counter[3]~14\,
	combout => \complement_counter[4]~15_combout\);

-- Location: FF_X29_Y4_N27
\complement_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \complement_counter[4]~15_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sclr => \process_0~11_combout\,
	ena => \complement_counter[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => complement_counter(4));

-- Location: LCCOMB_X29_Y4_N28
\complement_counter[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[4]~5_combout\ = (!\end_of_frame~input_o\ & (complement_counter(0) & (!\start_of_frame~input_o\ & complement_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \end_of_frame~input_o\,
	datab => complement_counter(0),
	datac => \start_of_frame~input_o\,
	datad => complement_counter(1),
	combout => \complement_counter[4]~5_combout\);

-- Location: LCCOMB_X29_Y4_N14
\complement_counter[4]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \complement_counter[4]~6_combout\ = (((!\complement_counter[4]~5_combout\) # (!complement_counter(2))) # (!complement_counter(3))) # (!complement_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => complement_counter(4),
	datab => complement_counter(3),
	datac => complement_counter(2),
	datad => \complement_counter[4]~5_combout\,
	combout => \complement_counter[4]~6_combout\);

-- Location: LCCOMB_X30_Y4_N26
\fcs_reg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~1_combout\ = fcs_reg(0) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(0),
	datac => fcs_reg(31),
	combout => \fcs_reg~1_combout\);

-- Location: FF_X30_Y4_N27
\fcs_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(1));

-- Location: LCCOMB_X30_Y4_N28
\fcs_reg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~2_combout\ = fcs_reg(31) $ (fcs_reg(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(31),
	datad => fcs_reg(1),
	combout => \fcs_reg~2_combout\);

-- Location: FF_X30_Y4_N29
\fcs_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(2));

-- Location: LCCOMB_X30_Y4_N10
\fcs_reg[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[3]~feeder_combout\ = fcs_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(2),
	combout => \fcs_reg[3]~feeder_combout\);

-- Location: FF_X30_Y4_N11
\fcs_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[3]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(3));

-- Location: LCCOMB_X30_Y4_N12
\fcs_reg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~3_combout\ = fcs_reg(31) $ (fcs_reg(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(31),
	datad => fcs_reg(3),
	combout => \fcs_reg~3_combout\);

-- Location: FF_X30_Y4_N13
\fcs_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(4));

-- Location: LCCOMB_X30_Y4_N22
\fcs_reg~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~4_combout\ = fcs_reg(4) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fcs_reg(4),
	datac => fcs_reg(31),
	combout => \fcs_reg~4_combout\);

-- Location: FF_X30_Y4_N23
\fcs_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(5));

-- Location: FF_X30_Y4_N1
\fcs_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(6));

-- Location: LCCOMB_X30_Y4_N18
\fcs_reg~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~5_combout\ = fcs_reg(31) $ (fcs_reg(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(31),
	datad => fcs_reg(6),
	combout => \fcs_reg~5_combout\);

-- Location: FF_X30_Y4_N19
\fcs_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(7));

-- Location: LCCOMB_X28_Y4_N12
\fcs_reg~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~6_combout\ = fcs_reg(7) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(7),
	datad => fcs_reg(31),
	combout => \fcs_reg~6_combout\);

-- Location: FF_X28_Y4_N13
\fcs_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(8));

-- Location: LCCOMB_X28_Y4_N26
\fcs_reg[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[9]~feeder_combout\ = fcs_reg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(8),
	combout => \fcs_reg[9]~feeder_combout\);

-- Location: FF_X28_Y4_N27
\fcs_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[9]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(9));

-- Location: LCCOMB_X28_Y4_N8
\fcs_reg~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~7_combout\ = fcs_reg(9) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(9),
	datad => fcs_reg(31),
	combout => \fcs_reg~7_combout\);

-- Location: FF_X28_Y4_N9
\fcs_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~7_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(10));

-- Location: LCCOMB_X28_Y4_N6
\fcs_reg~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~8_combout\ = fcs_reg(10) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(10),
	datad => fcs_reg(31),
	combout => \fcs_reg~8_combout\);

-- Location: FF_X28_Y4_N7
\fcs_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(11));

-- Location: LCCOMB_X28_Y3_N22
\fcs_reg~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~9_combout\ = fcs_reg(31) $ (fcs_reg(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(31),
	datad => fcs_reg(11),
	combout => \fcs_reg~9_combout\);

-- Location: FF_X28_Y3_N23
\fcs_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~9_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(12));

-- Location: FF_X28_Y3_N21
\fcs_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(13));

-- Location: LCCOMB_X28_Y3_N30
\fcs_reg[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[14]~feeder_combout\ = fcs_reg(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(13),
	combout => \fcs_reg[14]~feeder_combout\);

-- Location: FF_X28_Y3_N31
\fcs_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[14]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(14));

-- Location: FF_X28_Y3_N17
\fcs_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(15));

-- Location: LCCOMB_X28_Y3_N8
\fcs_reg~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~10_combout\ = fcs_reg(15) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fcs_reg(15),
	datad => fcs_reg(31),
	combout => \fcs_reg~10_combout\);

-- Location: FF_X28_Y3_N9
\fcs_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(16));

-- Location: LCCOMB_X28_Y3_N18
\fcs_reg[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[17]~feeder_combout\ = fcs_reg(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(16),
	combout => \fcs_reg[17]~feeder_combout\);

-- Location: FF_X28_Y3_N19
\fcs_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[17]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(17));

-- Location: FF_X28_Y3_N11
\fcs_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(17),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(18));

-- Location: FF_X28_Y3_N13
\fcs_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(18),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(19));

-- Location: LCCOMB_X28_Y4_N30
\fcs_reg[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[20]~feeder_combout\ = fcs_reg(19)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(19),
	combout => \fcs_reg[20]~feeder_combout\);

-- Location: FF_X28_Y4_N31
\fcs_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[20]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(20));

-- Location: FF_X28_Y4_N11
\fcs_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(20),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(21));

-- Location: LCCOMB_X28_Y4_N22
\fcs_reg~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~11_combout\ = fcs_reg(21) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(21),
	datad => fcs_reg(31),
	combout => \fcs_reg~11_combout\);

-- Location: FF_X28_Y4_N23
\fcs_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(22));

-- Location: LCCOMB_X28_Y4_N28
\fcs_reg~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~12_combout\ = fcs_reg(22) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fcs_reg(22),
	datad => fcs_reg(31),
	combout => \fcs_reg~12_combout\);

-- Location: FF_X28_Y4_N29
\fcs_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(23));

-- Location: LCCOMB_X29_Y3_N24
\fcs_reg[24]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[24]~feeder_combout\ = fcs_reg(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(23),
	combout => \fcs_reg[24]~feeder_combout\);

-- Location: FF_X29_Y3_N25
\fcs_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[24]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(24));

-- Location: LCCOMB_X29_Y3_N30
\fcs_reg[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[25]~feeder_combout\ = fcs_reg(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(24),
	combout => \fcs_reg[25]~feeder_combout\);

-- Location: FF_X29_Y3_N31
\fcs_reg[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[25]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(25));

-- Location: LCCOMB_X29_Y3_N8
\fcs_reg~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~13_combout\ = fcs_reg(25) $ (fcs_reg(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(25),
	datad => fcs_reg(31),
	combout => \fcs_reg~13_combout\);

-- Location: FF_X29_Y3_N9
\fcs_reg[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~13_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(26));

-- Location: FF_X29_Y3_N19
\fcs_reg[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(26),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(27));

-- Location: LCCOMB_X30_Y3_N8
\fcs_reg[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[28]~feeder_combout\ = fcs_reg(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(27),
	combout => \fcs_reg[28]~feeder_combout\);

-- Location: FF_X30_Y3_N9
\fcs_reg[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[28]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(28));

-- Location: LCCOMB_X30_Y3_N10
\fcs_reg[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg[29]~feeder_combout\ = fcs_reg(28)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(28),
	combout => \fcs_reg[29]~feeder_combout\);

-- Location: FF_X30_Y3_N11
\fcs_reg[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg[29]~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(29));

-- Location: FF_X30_Y3_N25
\fcs_reg[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(29),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(30));

-- Location: FF_X30_Y3_N19
\fcs_reg[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(30),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(31));

-- Location: LCCOMB_X29_Y4_N16
\fcs_reg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg~0_combout\ = \data_in~input_o\ $ (\complement_counter[4]~6_combout\ $ (fcs_reg(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in~input_o\,
	datac => \complement_counter[4]~6_combout\,
	datad => fcs_reg(31),
	combout => \fcs_reg~0_combout\);

-- Location: FF_X29_Y4_N17
\fcs_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fcs_reg(0));

-- Location: FF_X30_Y4_N17
\fcs_reg_output[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(0),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[0]~reg0_q\);

-- Location: LCCOMB_X29_Y4_N8
\fcs_reg_output[1]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[1]~reg0feeder_combout\ = fcs_reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(1),
	combout => \fcs_reg_output[1]~reg0feeder_combout\);

-- Location: FF_X29_Y4_N9
\fcs_reg_output[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[1]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[1]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N30
\fcs_reg_output[2]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[2]~reg0feeder_combout\ = fcs_reg(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(2),
	combout => \fcs_reg_output[2]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N31
\fcs_reg_output[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[2]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[2]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N8
\fcs_reg_output[3]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[3]~reg0feeder_combout\ = fcs_reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(3),
	combout => \fcs_reg_output[3]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N9
\fcs_reg_output[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[3]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[3]~reg0_q\);

-- Location: FF_X30_Y4_N15
\fcs_reg_output[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(4),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[4]~reg0_q\);

-- Location: FF_X30_Y4_N21
\fcs_reg_output[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(5),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[5]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N6
\fcs_reg_output[6]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[6]~reg0feeder_combout\ = fcs_reg(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(6),
	combout => \fcs_reg_output[6]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N7
\fcs_reg_output[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[6]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[6]~reg0_q\);

-- Location: LCCOMB_X30_Y4_N24
\fcs_reg_output[7]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[7]~reg0feeder_combout\ = fcs_reg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(7),
	combout => \fcs_reg_output[7]~reg0feeder_combout\);

-- Location: FF_X30_Y4_N25
\fcs_reg_output[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[7]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[7]~reg0_q\);

-- Location: LCCOMB_X28_Y4_N0
\fcs_reg_output[8]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[8]~reg0feeder_combout\ = fcs_reg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(8),
	combout => \fcs_reg_output[8]~reg0feeder_combout\);

-- Location: FF_X28_Y4_N1
\fcs_reg_output[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[8]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[8]~reg0_q\);

-- Location: FF_X28_Y4_N25
\fcs_reg_output[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(9),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[9]~reg0_q\);

-- Location: FF_X28_Y4_N5
\fcs_reg_output[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(10),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[10]~reg0_q\);

-- Location: LCCOMB_X28_Y4_N2
\fcs_reg_output[11]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[11]~reg0feeder_combout\ = fcs_reg(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(11),
	combout => \fcs_reg_output[11]~reg0feeder_combout\);

-- Location: FF_X28_Y4_N3
\fcs_reg_output[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[11]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[11]~reg0_q\);

-- Location: FF_X28_Y3_N1
\fcs_reg_output[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(12),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[12]~reg0_q\);

-- Location: LCCOMB_X28_Y3_N26
\fcs_reg_output[13]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[13]~reg0feeder_combout\ = fcs_reg(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(13),
	combout => \fcs_reg_output[13]~reg0feeder_combout\);

-- Location: FF_X28_Y3_N27
\fcs_reg_output[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[13]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[13]~reg0_q\);

-- Location: FF_X28_Y3_N29
\fcs_reg_output[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(14),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[14]~reg0_q\);

-- Location: LCCOMB_X28_Y3_N2
\fcs_reg_output[15]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[15]~reg0feeder_combout\ = fcs_reg(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(15),
	combout => \fcs_reg_output[15]~reg0feeder_combout\);

-- Location: FF_X28_Y3_N3
\fcs_reg_output[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[15]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[15]~reg0_q\);

-- Location: FF_X28_Y3_N25
\fcs_reg_output[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(16),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[16]~reg0_q\);

-- Location: FF_X28_Y3_N7
\fcs_reg_output[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(17),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[17]~reg0_q\);

-- Location: FF_X28_Y3_N5
\fcs_reg_output[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(18),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[18]~reg0_q\);

-- Location: FF_X28_Y3_N15
\fcs_reg_output[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(19),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[19]~reg0_q\);

-- Location: FF_X28_Y4_N15
\fcs_reg_output[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(20),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[20]~reg0_q\);

-- Location: LCCOMB_X28_Y4_N20
\fcs_reg_output[21]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[21]~reg0feeder_combout\ = fcs_reg(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(21),
	combout => \fcs_reg_output[21]~reg0feeder_combout\);

-- Location: FF_X28_Y4_N21
\fcs_reg_output[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[21]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[21]~reg0_q\);

-- Location: FF_X28_Y4_N17
\fcs_reg_output[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(22),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[22]~reg0_q\);

-- Location: LCCOMB_X28_Y4_N18
\fcs_reg_output[23]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[23]~reg0feeder_combout\ = fcs_reg(23)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(23),
	combout => \fcs_reg_output[23]~reg0feeder_combout\);

-- Location: FF_X28_Y4_N19
\fcs_reg_output[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[23]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[23]~reg0_q\);

-- Location: LCCOMB_X30_Y3_N16
\fcs_reg_output[24]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[24]~reg0feeder_combout\ = fcs_reg(24)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(24),
	combout => \fcs_reg_output[24]~reg0feeder_combout\);

-- Location: FF_X30_Y3_N17
\fcs_reg_output[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[24]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[24]~reg0_q\);

-- Location: LCCOMB_X30_Y3_N22
\fcs_reg_output[25]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[25]~reg0feeder_combout\ = fcs_reg(25)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(25),
	combout => \fcs_reg_output[25]~reg0feeder_combout\);

-- Location: FF_X30_Y3_N23
\fcs_reg_output[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[25]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[25]~reg0_q\);

-- Location: LCCOMB_X30_Y3_N28
\fcs_reg_output[26]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[26]~reg0feeder_combout\ = fcs_reg(26)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(26),
	combout => \fcs_reg_output[26]~reg0feeder_combout\);

-- Location: FF_X30_Y3_N29
\fcs_reg_output[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[26]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[26]~reg0_q\);

-- Location: LCCOMB_X30_Y3_N14
\fcs_reg_output[27]~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_reg_output[27]~reg0feeder_combout\ = fcs_reg(27)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fcs_reg(27),
	combout => \fcs_reg_output[27]~reg0feeder_combout\);

-- Location: FF_X30_Y3_N15
\fcs_reg_output[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_reg_output[27]~reg0feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[27]~reg0_q\);

-- Location: FF_X30_Y3_N1
\fcs_reg_output[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(28),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[28]~reg0_q\);

-- Location: FF_X30_Y3_N27
\fcs_reg_output[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(29),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[29]~reg0_q\);

-- Location: FF_X30_Y3_N21
\fcs_reg_output[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(30),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[30]~reg0_q\);

-- Location: FF_X30_Y3_N31
\fcs_reg_output[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => fcs_reg(31),
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_reg_output[31]~reg0_q\);

-- Location: LCCOMB_X29_Y3_N0
\process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (fcs_reg(25)) # ((fcs_reg(27)) # ((fcs_reg(26)) # (fcs_reg(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(25),
	datab => fcs_reg(27),
	datac => fcs_reg(26),
	datad => fcs_reg(24),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X29_Y4_N30
\Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!complement_counter(2) & (!complement_counter(1) & (!complement_counter(0) & !complement_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => complement_counter(2),
	datab => complement_counter(1),
	datac => complement_counter(0),
	datad => complement_counter(3),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X30_Y3_N0
\process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (fcs_reg(29)) # ((fcs_reg(31)) # ((fcs_reg(28)) # (fcs_reg(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(29),
	datab => fcs_reg(31),
	datac => fcs_reg(28),
	datad => fcs_reg(30),
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X29_Y4_N12
\process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~1_combout\) # ((\process_0~0_combout\) # ((!complement_counter(4) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => complement_counter(4),
	datab => \process_0~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \process_0~0_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X30_Y4_N14
\process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = (fcs_reg(5)) # ((fcs_reg(7)) # ((fcs_reg(4)) # (fcs_reg(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(5),
	datab => fcs_reg(7),
	datac => fcs_reg(4),
	datad => fcs_reg(6),
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X30_Y4_N16
\process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (fcs_reg(3)) # ((fcs_reg(2)) # ((fcs_reg(0)) # (fcs_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(3),
	datab => fcs_reg(2),
	datac => fcs_reg(0),
	datad => fcs_reg(1),
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X30_Y4_N4
\process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\process_0~8_combout\) # (\process_0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_0~8_combout\,
	datad => \process_0~9_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X28_Y4_N16
\process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (fcs_reg(20)) # ((fcs_reg(23)) # ((fcs_reg(22)) # (fcs_reg(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(20),
	datab => fcs_reg(23),
	datac => fcs_reg(22),
	datad => fcs_reg(21),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X28_Y3_N0
\process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (fcs_reg(14)) # ((fcs_reg(13)) # ((fcs_reg(12)) # (fcs_reg(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(14),
	datab => fcs_reg(13),
	datac => fcs_reg(12),
	datad => fcs_reg(15),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X28_Y3_N24
\process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (fcs_reg(18)) # ((fcs_reg(17)) # ((fcs_reg(16)) # (fcs_reg(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(18),
	datab => fcs_reg(17),
	datac => fcs_reg(16),
	datad => fcs_reg(19),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X28_Y4_N24
\process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = (fcs_reg(8)) # ((fcs_reg(10)) # ((fcs_reg(9)) # (fcs_reg(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fcs_reg(8),
	datab => fcs_reg(10),
	datac => fcs_reg(9),
	datad => fcs_reg(11),
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X29_Y4_N2
\process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\process_0~3_combout\) # ((\process_0~5_combout\) # ((\process_0~4_combout\) # (\process_0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \process_0~5_combout\,
	datac => \process_0~4_combout\,
	datad => \process_0~6_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X29_Y4_N10
\fcs_error~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \fcs_error~0_combout\ = (\fcs_error~reg0_q\) # ((!\process_0~2_combout\ & (!\process_0~10_combout\ & !\process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \process_0~10_combout\,
	datac => \fcs_error~reg0_q\,
	datad => \process_0~7_combout\,
	combout => \fcs_error~0_combout\);

-- Location: FF_X29_Y4_N11
\fcs_error~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \fcs_error~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fcs_error~reg0_q\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

ww_fcs_reg_output(0) <= \fcs_reg_output[0]~output_o\;

ww_fcs_reg_output(1) <= \fcs_reg_output[1]~output_o\;

ww_fcs_reg_output(2) <= \fcs_reg_output[2]~output_o\;

ww_fcs_reg_output(3) <= \fcs_reg_output[3]~output_o\;

ww_fcs_reg_output(4) <= \fcs_reg_output[4]~output_o\;

ww_fcs_reg_output(5) <= \fcs_reg_output[5]~output_o\;

ww_fcs_reg_output(6) <= \fcs_reg_output[6]~output_o\;

ww_fcs_reg_output(7) <= \fcs_reg_output[7]~output_o\;

ww_fcs_reg_output(8) <= \fcs_reg_output[8]~output_o\;

ww_fcs_reg_output(9) <= \fcs_reg_output[9]~output_o\;

ww_fcs_reg_output(10) <= \fcs_reg_output[10]~output_o\;

ww_fcs_reg_output(11) <= \fcs_reg_output[11]~output_o\;

ww_fcs_reg_output(12) <= \fcs_reg_output[12]~output_o\;

ww_fcs_reg_output(13) <= \fcs_reg_output[13]~output_o\;

ww_fcs_reg_output(14) <= \fcs_reg_output[14]~output_o\;

ww_fcs_reg_output(15) <= \fcs_reg_output[15]~output_o\;

ww_fcs_reg_output(16) <= \fcs_reg_output[16]~output_o\;

ww_fcs_reg_output(17) <= \fcs_reg_output[17]~output_o\;

ww_fcs_reg_output(18) <= \fcs_reg_output[18]~output_o\;

ww_fcs_reg_output(19) <= \fcs_reg_output[19]~output_o\;

ww_fcs_reg_output(20) <= \fcs_reg_output[20]~output_o\;

ww_fcs_reg_output(21) <= \fcs_reg_output[21]~output_o\;

ww_fcs_reg_output(22) <= \fcs_reg_output[22]~output_o\;

ww_fcs_reg_output(23) <= \fcs_reg_output[23]~output_o\;

ww_fcs_reg_output(24) <= \fcs_reg_output[24]~output_o\;

ww_fcs_reg_output(25) <= \fcs_reg_output[25]~output_o\;

ww_fcs_reg_output(26) <= \fcs_reg_output[26]~output_o\;

ww_fcs_reg_output(27) <= \fcs_reg_output[27]~output_o\;

ww_fcs_reg_output(28) <= \fcs_reg_output[28]~output_o\;

ww_fcs_reg_output(29) <= \fcs_reg_output[29]~output_o\;

ww_fcs_reg_output(30) <= \fcs_reg_output[30]~output_o\;

ww_fcs_reg_output(31) <= \fcs_reg_output[31]~output_o\;

ww_fcs_error <= \fcs_error~output_o\;
END structure;


