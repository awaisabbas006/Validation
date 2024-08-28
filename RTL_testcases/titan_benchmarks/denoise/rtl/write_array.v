// ==============================================================
// RTL generated by AutoPilot - High-Level Synthesis System (C, C++, SystemC)
// Version: 2010.a.3
// Copyright (C) :2006-2010 AutoESL Design Technologies, Inc.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module write_array (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        bus_r_req_din,
        bus_r_req_full_n,
        bus_r_req_write,
        bus_r_rsp_dout,
        bus_r_rsp_empty_n,
        bus_r_rsp_read,
        bus_r_address,
        bus_r_datain,
        bus_r_dataout,
        bus_r_size,
        data_p0_address0,
        data_p0_ce0,
        data_p0_q0,
        data_p1_address0,
        data_p1_ce0,
        data_p1_q0,
        data_p2_address0,
        data_p2_ce0,
        data_p2_q0,
        data_p3_address0,
        data_p3_ce0,
        data_p3_q0
);

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   bus_r_req_din;
input   bus_r_req_full_n;
output   bus_r_req_write;
input   bus_r_rsp_dout;
input   bus_r_rsp_empty_n;
output   bus_r_rsp_read;
output  [31:0] bus_r_address;
input  [127:0] bus_r_datain;
output  [127:0] bus_r_dataout;
output  [31:0] bus_r_size;
output  [7:0] data_p0_address0;
output   data_p0_ce0;
input  [31:0] data_p0_q0;
output  [7:0] data_p1_address0;
output   data_p1_ce0;
input  [31:0] data_p1_q0;
output  [7:0] data_p2_address0;
output   data_p2_ce0;
input  [31:0] data_p2_q0;
output  [7:0] data_p3_address0;
output   data_p3_ce0;
input  [31:0] data_p3_q0;

reg ap_done;
reg ap_idle;
reg bus_r_req_din;
reg bus_r_req_write;
reg data_p0_ce0;
reg data_p1_ce0;
reg data_p2_ce0;
reg data_p3_ce0;
reg   [1:0] ap_CS_fsm;
reg   [31:0] rIndex;
reg   [7:0] indvar_flatten_reg_117;
reg   [5:0] i_reg_128;
reg   [2:0] indvar_reg_139;
wire   [0:0] exitcond_fu_151_p2;
reg   [0:0] exitcond_reg_284;
reg    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1;
reg   [0:0] ap_reg_ppstg_exitcond_reg_284_pp0_it1;
reg    ap_sig_bdd_75;
reg    ap_reg_ppiten_pp0_it2;
reg    ap_reg_ppiten_pp0_it3;
reg   [7:0] indvar_next_reg_288;
wire   [5:0] i_mid_fu_183_p3;
reg   [5:0] i_mid_reg_293;
reg   [2:0] indvar_next1_reg_318;
reg   [31:0] data_p0_load_reg_323;
reg   [31:0] data_p1_load_reg_328;
reg   [31:0] data_p2_load_reg_333;
reg   [31:0] data_p3_load_reg_338;
reg   [7:0] indvar_flatten_phi_fu_121_p4;
reg   [5:0] i_phi_fu_132_p4;
reg   [2:0] indvar_phi_fu_143_p4;
wire   [31:0] data_p0_addr1_cast_fu_227_p1;
wire   [63:0] tmp4_fu_266_p1;
wire   [7:0] exitcond_fu_151_p1;
wire   [2:0] exitcond1_fu_169_p1;
wire   [0:0] exitcond1_fu_169_p2;
wire   [5:0] indvar_next6_dup_fu_163_p2;
wire   [2:0] indvar_mid_fu_175_p3;
wire   [3:0] indvar_cast_fu_191_p1;
wire   [3:0] j_fu_195_p2;
wire   [7:0] tmp4_trn_cast_fu_205_p1;
wire   [7:0] p_shl_fu_209_p2;
wire   [7:0] data_p0_addr_cast_fu_215_p2;
wire   [7:0] tmp6_trn_cast_fu_201_p1;
wire   [7:0] data_p0_addr_fu_221_p2;
wire   [31:0] empty_92_fu_253_p1;
wire   [31:0] empty_92_fu_253_p2;
wire   [31:0] empty_92_fu_253_p3;
wire   [31:0] tmp3_fu_250_p1;
reg   [1:0] ap_NS_fsm;
parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_st0_fsm_0 = 2'b00;
parameter    ap_ST_st1_fsm_1 = 2'b01;
parameter    ap_ST_pp0_stg0_fsm_2 = 2'b10;
parameter    ap_ST_st6_fsm_3 = 2'b11;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv8_0 = 8'b00000000;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv3_0 = 3'b000;
parameter    ap_const_lv8_F0 = 8'b11110000;
parameter    ap_const_lv8_1 = 8'b00000001;
parameter    ap_const_lv6_1 = 6'b000001;
parameter    ap_const_lv3_4 = 3'b100;
parameter    ap_const_lv4_2 = 4'b0010;
parameter    ap_const_lv8_4 = 8'b00000100;
parameter    ap_const_lv3_1 = 3'b001;
parameter    ap_const_lv32_1 = 32'b00000000000000000000000000000001;
parameter    ap_true = 1'b1;




/// ap_CS_fsm assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_st0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_reg_ppiten_pp0_it0 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it0
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~(exitcond_fu_151_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_0;
        end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it0 <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_1;
        end else if (((ap_ST_st1_fsm_1 == ap_CS_fsm) | ((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~(exitcond_fu_151_p2 == ap_const_lv1_0)))) begin
            ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it2 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it2
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it2 <= ap_reg_ppiten_pp0_it1;
        end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it2 <= ap_const_logic_0;
        end
    end
end

/// ap_reg_ppiten_pp0_it3 assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it3
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            ap_reg_ppiten_pp0_it3 <= ap_reg_ppiten_pp0_it2;
        end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
            ap_reg_ppiten_pp0_it3 <= ap_const_logic_0;
        end
    end
end

/// rIndex assign process. ///
always @ (posedge ap_rst or posedge ap_clk)
begin : ap_ret_rIndex
    if (ap_rst == 1'b1) begin
        rIndex <= ap_const_lv32_0;
    end else begin
        if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_reg_ppstg_exitcond_reg_284_pp0_it1 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
            rIndex <= (rIndex + ap_const_lv32_1);
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
        ap_reg_ppstg_exitcond_reg_284_pp0_it1 <= exitcond_reg_284;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        data_p0_load_reg_323 <= data_p0_q0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        data_p1_load_reg_328 <= data_p1_q0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        data_p2_load_reg_333 <= data_p2_q0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        data_p3_load_reg_338 <= data_p3_q0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
        exitcond_reg_284 <= (indvar_flatten_phi_fu_121_p4 == exitcond_fu_151_p1? 1'b1: 1'b0);
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        if (exitcond1_fu_169_p2) begin
            i_mid_reg_293 <= indvar_next6_dup_fu_163_p2;
        end else begin
            i_mid_reg_293 <= i_phi_fu_132_p4;
        end

    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        i_reg_128 <= i_mid_reg_293;
    end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
        i_reg_128 <= ap_const_lv6_0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        indvar_flatten_reg_117 <= indvar_next_reg_288;
    end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
        indvar_flatten_reg_117 <= ap_const_lv8_0;
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        indvar_next1_reg_318 <= (indvar_mid_fu_175_p3 + ap_const_lv3_1);
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
        indvar_next_reg_288 <= (indvar_flatten_phi_fu_121_p4 + ap_const_lv8_1);
    end
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        indvar_reg_139 <= indvar_next1_reg_318;
    end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
        indvar_reg_139 <= ap_const_lv3_0;
    end
end

/// ap_NS_fsm assign process. ///
always @ (ap_start or ap_CS_fsm or exitcond_fu_151_p2 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2 or ap_reg_ppiten_pp0_it3)
begin
    if ((((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it3) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) | ((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & ~(exitcond_fu_151_p2 == ap_const_lv1_0) & ~(ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) begin
        ap_NS_fsm = ap_ST_st6_fsm_3;
    end else if ((~(ap_const_logic_1 == ap_start) & (ap_ST_st6_fsm_3 == ap_CS_fsm))) begin
        ap_NS_fsm = ap_ST_st0_fsm_0;
    end else if ((ap_ST_st1_fsm_1 == ap_CS_fsm)) begin
        ap_NS_fsm = ap_ST_pp0_stg0_fsm_2;
    end else if ((((ap_ST_st0_fsm_0 == ap_CS_fsm) & (ap_const_logic_1 == ap_start)) | ((ap_const_logic_1 == ap_start) & (ap_ST_st6_fsm_3 == ap_CS_fsm)))) begin
        ap_NS_fsm = ap_ST_st1_fsm_1;
    end else begin
        ap_NS_fsm = ap_CS_fsm;
    end
end

/// ap_done assign process. ///
always @ (ap_CS_fsm)
begin
    if (((ap_ST_st0_fsm_0 == ap_CS_fsm) | (ap_ST_st6_fsm_3 == ap_CS_fsm))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_CS_fsm)
begin
    if ((ap_ST_st0_fsm_0 == ap_CS_fsm)) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// bus_r_req_din assign process. ///
always @ (ap_CS_fsm or ap_reg_ppstg_exitcond_reg_284_pp0_it1 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_reg_ppstg_exitcond_reg_284_pp0_it1 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
        bus_r_req_din = ap_const_logic_1;
    end else begin
        bus_r_req_din = ap_const_logic_0;
    end
end

/// bus_r_req_write assign process. ///
always @ (ap_CS_fsm or ap_reg_ppstg_exitcond_reg_284_pp0_it1 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_reg_ppstg_exitcond_reg_284_pp0_it1 == ap_const_lv1_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)))) begin
        bus_r_req_write = ap_const_logic_1;
    end else begin
        bus_r_req_write = ap_const_logic_0;
    end
end

/// data_p0_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_fu_151_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        data_p0_ce0 = ap_const_logic_1;
    end else begin
        data_p0_ce0 = ap_const_logic_0;
    end
end

/// data_p1_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_fu_151_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        data_p1_ce0 = ap_const_logic_1;
    end else begin
        data_p1_ce0 = ap_const_logic_0;
    end
end

/// data_p2_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_fu_151_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        data_p2_ce0 = ap_const_logic_1;
    end else begin
        data_p2_ce0 = ap_const_logic_0;
    end
end

/// data_p3_ce0 assign process. ///
always @ (ap_CS_fsm or exitcond_fu_151_p2 or ap_reg_ppiten_pp0_it0 or ap_sig_bdd_75 or ap_reg_ppiten_pp0_it2)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(ap_sig_bdd_75 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it2)) & (exitcond_fu_151_p2 == ap_const_lv1_0))) begin
        data_p3_ce0 = ap_const_logic_1;
    end else begin
        data_p3_ce0 = ap_const_logic_0;
    end
end

/// i_phi_fu_132_p4 assign process. ///
always @ (ap_CS_fsm or i_reg_128 or exitcond_reg_284 or ap_reg_ppiten_pp0_it1 or i_mid_reg_293)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        i_phi_fu_132_p4 = i_mid_reg_293;
    end else begin
        i_phi_fu_132_p4 = i_reg_128;
    end
end

/// indvar_flatten_phi_fu_121_p4 assign process. ///
always @ (ap_CS_fsm or indvar_flatten_reg_117 or exitcond_reg_284 or ap_reg_ppiten_pp0_it1 or indvar_next_reg_288)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        indvar_flatten_phi_fu_121_p4 = indvar_next_reg_288;
    end else begin
        indvar_flatten_phi_fu_121_p4 = indvar_flatten_reg_117;
    end
end

/// indvar_phi_fu_143_p4 assign process. ///
always @ (ap_CS_fsm or indvar_reg_139 or exitcond_reg_284 or ap_reg_ppiten_pp0_it1 or indvar_next1_reg_318)
begin
    if (((ap_ST_pp0_stg0_fsm_2 == ap_CS_fsm) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & (exitcond_reg_284 == ap_const_lv1_0))) begin
        indvar_phi_fu_143_p4 = indvar_next1_reg_318;
    end else begin
        indvar_phi_fu_143_p4 = indvar_reg_139;
    end
end

/// ap_sig_bdd_75 assign process. ///
always @ (bus_r_req_full_n or ap_reg_ppstg_exitcond_reg_284_pp0_it1)
begin
    ap_sig_bdd_75 = ((bus_r_req_full_n == ap_const_logic_0) & (ap_reg_ppstg_exitcond_reg_284_pp0_it1 == ap_const_lv1_0));
end
assign bus_r_address = tmp4_fu_266_p1;
assign bus_r_dataout = {{{{{{empty_92_fu_253_p1}, {empty_92_fu_253_p2}}}, {empty_92_fu_253_p3}}}, {tmp3_fu_250_p1}};
assign bus_r_rsp_read = ap_const_logic_0;
assign bus_r_size = ap_const_lv32_0;
assign data_p0_addr1_cast_fu_227_p1 = {{24{1'b0}}, {data_p0_addr_fu_221_p2}};
assign data_p0_addr_cast_fu_215_p2 = (p_shl_fu_209_p2 - tmp4_trn_cast_fu_205_p1);
assign data_p0_addr_fu_221_p2 = (data_p0_addr_cast_fu_215_p2 + tmp6_trn_cast_fu_201_p1);
assign data_p0_address0 = data_p0_addr1_cast_fu_227_p1;
assign data_p1_address0 = data_p0_addr1_cast_fu_227_p1;
assign data_p2_address0 = data_p0_addr1_cast_fu_227_p1;
assign data_p3_address0 = data_p0_addr1_cast_fu_227_p1;
assign empty_92_fu_253_p1 = data_p0_load_reg_323;
assign empty_92_fu_253_p2 = data_p1_load_reg_328;
assign empty_92_fu_253_p3 = data_p2_load_reg_333;
assign exitcond1_fu_169_p1 = ap_const_lv3_4;
assign exitcond1_fu_169_p2 = (indvar_phi_fu_143_p4 == exitcond1_fu_169_p1? 1'b1: 1'b0);
assign exitcond_fu_151_p1 = ap_const_lv8_F0;
assign exitcond_fu_151_p2 = (indvar_flatten_phi_fu_121_p4 == exitcond_fu_151_p1? 1'b1: 1'b0);
assign i_mid_fu_183_p3 = ((exitcond1_fu_169_p2)? indvar_next6_dup_fu_163_p2: i_phi_fu_132_p4);
assign indvar_cast_fu_191_p1 = {{1{1'b0}}, {indvar_mid_fu_175_p3}};
assign indvar_mid_fu_175_p3 = ((exitcond1_fu_169_p2)? ap_const_lv3_0: indvar_phi_fu_143_p4);
assign indvar_next6_dup_fu_163_p2 = (i_phi_fu_132_p4 + ap_const_lv6_1);
assign j_fu_195_p2 = indvar_cast_fu_191_p1 << ap_const_lv4_2;
assign p_shl_fu_209_p2 = tmp4_trn_cast_fu_205_p1 << ap_const_lv8_4;
assign tmp3_fu_250_p1 = data_p3_load_reg_338;
assign tmp4_fu_266_p1 = {{32{rIndex[31]}}, {rIndex}};
assign tmp4_trn_cast_fu_205_p1 = {{2{1'b0}}, {i_mid_fu_183_p3}};
assign tmp6_trn_cast_fu_201_p1 = {{4{1'b0}}, {j_fu_195_p2}};


endmodule //write_array

