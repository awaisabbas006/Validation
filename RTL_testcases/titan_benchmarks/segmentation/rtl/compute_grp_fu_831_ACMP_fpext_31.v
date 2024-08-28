// ==============================================================
// File generated by AutoPilot - High-Level Synthesis System (C, C++, SystemC)
// Version: 2010.a.3
// Copyright (C) :2006-2010 AutoESL Design Technologies, Inc.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module compute_grp_fu_831_ACMP_fpext_31(
    clk,
    reset,
    ce,
    din0,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input clk;
input reset;
input ce;
input[din0_WIDTH - 1:0] din0;
output[dout_WIDTH - 1:0] dout;



ACMP_fpext #(
.ID( ID ),
.NUM_STAGE( 4 ),
.din0_WIDTH( din0_WIDTH ),
.dout_WIDTH( dout_WIDTH ))
ACMP_fpext_U(
    .clk( clk ),
    .reset( reset ),
    .ce( ce ),
    .din0( din0 ),
    .dout( dout ));

endmodule
