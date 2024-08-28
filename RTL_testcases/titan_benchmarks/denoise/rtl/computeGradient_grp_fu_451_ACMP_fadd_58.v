// ==============================================================
// File generated by AutoPilot - High-Level Synthesis System (C, C++, SystemC)
// Version: 2010.a.3
// Copyright (C) :2006-2010 AutoESL Design Technologies, Inc.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module computeGradient_grp_fu_451_ACMP_fadd_58(
    clk,
    reset,
    ce,
    din0,
    din1,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
output[dout_WIDTH - 1:0] dout;



ACMP_fadd #(
.ID( ID ),
.NUM_STAGE( 4 ),
.din0_WIDTH( din0_WIDTH ),
.din1_WIDTH( din1_WIDTH ),
.dout_WIDTH( dout_WIDTH ))
ACMP_fadd_U(
    .clk( clk ),
    .reset( reset ),
    .ce( ce ),
    .din0( din0 ),
    .din1( din1 ),
    .dout( dout ));

endmodule
