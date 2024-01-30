//-------------------------------------------------------------------
//                                                                 
//  COPYRIGHT (C) 2022, RapidSilicon
//                                                                  
//  THIS FILE MAY NOT BE MODIFIED OR REDISTRIBUTED WITHOUT THE      
//  EXPRESSED WRITTEN CONSENT OF your_company
//                                                                  
//  RapidSilicon                   http://www.rapidsilicon.com         
                                   
//-------------------------------------------------------------------
// Title       : dffnre_inst
// Created     : 15/11/2022
// Description : Falling-edge D-flip-flop with active-high asynchronous reset and active-high enable
// This module is instatiating dffnre model from cell_sims.v, for validation of dffnre device model.
//               
//-------------------------------------------------------------------  

`timescale 1ns / 1ps

module dffnre_inst (
	input clk, //clock
	input i_Reset, //reset signal
	input i_Enable, //enable signal
	input i_D, //input to flop
	output o_Q  //output from flop
	);

//
// INSTANTIATIONS
//
	DFFNRE inst(
		.D(i_D),
		.R(i_Reset),
		.E(i_Enable),
		.C(clk),
		.Q(o_Q)
		);

endmodule