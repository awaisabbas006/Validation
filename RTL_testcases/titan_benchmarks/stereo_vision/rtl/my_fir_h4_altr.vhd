-- megafunction wizard: %FIR Compiler%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: my_fir_h4_altr_st 

-- ============================================================
-- File Name: my_fir_h4_altr.vhd
-- Megafunction Name(s):
-- 			my_fir_h4_altr_st
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
-- ************************************************************


--Copyright (C) 1991-2003 Altera Corporation
--Any  megafunction  design,  and related netlist (encrypted  or  decrypted),
--support information,  device programming or simulation file,  and any other
--associated  documentation or information  provided by  Altera  or a partner
--under  Altera's   Megafunction   Partnership   Program  may  be  used  only
--to program  PLD  devices (but not masked  PLD  devices) from  Altera.   Any
--other  use  of such  megafunction  design,  netlist,  support  information,
--device programming or simulation file,  or any other  related documentation
--or information  is prohibited  for  any  other purpose,  including, but not
--limited to  modification,  reverse engineering,  de-compiling, or use  with
--any other  silicon devices,  unless such use is  explicitly  licensed under
--a separate agreement with  Altera  or a megafunction partner.  Title to the
--intellectual property,  including patents,  copyrights,  trademarks,  trade
--secrets,  or maskworks,  embodied in any such megafunction design, netlist,
--support  information,  device programming or simulation file,  or any other
--related documentation or information provided by  Altera  or a megafunction
--partner, remains with Altera, the megafunction partner, or their respective
--licensors. No other licenses, including any licenses needed under any third
--party's intellectual property, are provided herein.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY my_fir_h4_altr IS
	PORT
	(
		clock		: IN STD_LOGIC  := '1';
		rst		: IN STD_LOGIC  := '1';
		data_in		: IN STD_LOGIC_VECTOR (15 DOWNTO 0) :=  (OTHERS => '1');
		fir_result		: OUT STD_LOGIC_VECTOR (27 DOWNTO 0);
		rdy_to_ld		: OUT STD_LOGIC ;
		done		: OUT STD_LOGIC 
	);
END my_fir_h4_altr;


ARCHITECTURE SYN OF my_fir_h4_altr IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (27 DOWNTO 0);
	SIGNAL sub_wire1	: STD_LOGIC ;
	SIGNAL sub_wire2	: STD_LOGIC ;



	COMPONENT my_fir_h4_altr_st
	PORT (
			fir_result	: OUT STD_LOGIC_VECTOR (27 DOWNTO 0);
			done	: OUT STD_LOGIC ;
			rdy_to_ld	: OUT STD_LOGIC ;
			data_in	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			rst	: IN STD_LOGIC ;
			clk	: IN STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	fir_result    <= sub_wire0(27 DOWNTO 0);
	done    <= sub_wire1;
	rdy_to_ld    <= sub_wire2;

	my_fir_h4_altr_st_component : my_fir_h4_altr_st

	PORT MAP (
		data_in => data_in,
		rst => rst,
		clk => clock,
		fir_result => sub_wire0,
		done => sub_wire1,
		rdy_to_ld => sub_wire2
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT VCC clock
-- Retrieval info: USED_PORT: rst 0 0 0 0 INPUT VCC rst
-- Retrieval info: USED_PORT: data_in 0 0 16 0 INPUT VCC data_in[15..0]
-- Retrieval info: USED_PORT: fir_result 0 0 28 0 OUTPUT VCC fir_result[27..0]
-- Retrieval info: USED_PORT: rdy_to_ld 0 0 0 0 OUTPUT VCC rdy_to_ld
-- Retrieval info: USED_PORT: done 0 0 0 0 OUTPUT VCC done
-- Retrieval info: CONNECT: @clk 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: @rst 0 0 0 0 rst 0 0 0 0
-- Retrieval info: CONNECT: @data_in 0 0 16 0 data_in 0 0 16 0
-- Retrieval info: CONNECT: done 0 0 0 0 @done 0 0 0 0
-- Retrieval info: CONNECT: rdy_to_ld 0 0 0 0 @rdy_to_ld 0 0 0 0
-- Retrieval info: CONNECT: fir_result 0 0 28 0 @fir_result 0 0 28 0
