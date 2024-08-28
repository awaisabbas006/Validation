// ========== Copyright Header Begin ==========================================
// 
// OpenSPARC T2 Processor File: gkt_leg_ctl.v
// Copyright (C) 1995-2007 Sun Microsystems, Inc. All Rights Reserved
// 4150 Network Circle, Santa Clara, California 95054, U.S.A.
//
// * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER. 
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; version 2 of the License.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
// 
// For the avoidance of doubt, and except that if any non-GPL license 
// choice is available it will apply instead, Sun elects to use only 
// the General Public License version 2 (GPLv2) at this time for any 
// software where a choice of GPL license versions is made 
// available with the language indicating that GPLv2 or any later version 
// may be used, or where a choice of which version of the GPL is applied is 
// otherwise unspecified. 
//
// Please contact Sun Microsystems, Inc., 4150 Network Circle, Santa Clara, 
// CA 95054 USA or visit www.sun.com if you need additional information or 
// have any questions. 
// 
// ========== Copyright Header End ============================================
module gkt_leg_ctl (
  instr, 
  legal, 
  flip_parity);
wire [31:0] i;
wire odd_parity;


input [31:0] instr;

output legal;
output flip_parity;


gkt_leg_ctl_spare_ctl_macro__flops_0__num_2 spares  (
);


assign i[31:0] = instr[31:0];

assign odd_parity = i[31] ^ i[30] ^ i[24] ^ i[23] ^ i[22];

assign flip_parity = ~legal & odd_parity;

// --- autogenerated by n2decode view=full Wed Aug 10 12:06:49 CDT 2005


assign legal = (!i[30]&!i[29]&!i[28]&!i[27]&!i[26]&!i[25]&!i[23]&i[22]&!i[20]
    &!i[19]&!i[18]&i[17]&i[16]&i[15]&i[14]&!i[12]&!i[11]&!i[10]&!i[9]
    &!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (!i[30]
    &!i[29]&!i[28]&!i[27]&!i[26]&!i[25]&i[24]&!i[23]&!i[21]&!i[18]&!i[17]
    &!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (!i[30]&!i[29]&!i[28]
    &!i[27]&i[23]&!i[22]&!i[21]&i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]
    &!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]
    &!i[2]&!i[1]&!i[0]) | (i[31]&!i[30]&!i[29]&!i[28]&!i[27]&!i[26]&i[20]
    &!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&!i[11]&!i[10]
    &!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (
    !i[30]&!i[29]&!i[28]&!i[26]&i[23]&!i[22]&!i[21]&i[19]&!i[18]&!i[17]
    &!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (!i[30]&!i[23]&i[22]
    &!i[20]&!i[18]&!i[17]&i[16]&!i[15]&!i[13]&!i[12]&!i[11]&!i[10]&!i[9]
    &!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (!i[30]
    &!i[29]&!i[28]&!i[27]&!i[26]&!i[25]&!i[23]&i[22]&!i[20]&!i[19]&!i[18]
    &i[17]&i[16]&i[15]&i[14]&i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]) | (
    !i[30]&!i[23]&i[22]&!i[20]&i[18]&!i[17]&i[16]&i[15]&!i[13]&!i[12]
    &!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]&!i[1]
    &!i[0]) | (!i[30]&!i[23]&i[22]&!i[20]&!i[17]&!i[16]&i[15]&i[14]&!i[13]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]
    &!i[1]&!i[0]) | (!i[30]&!i[23]&i[22]&!i[20]&i[18]&!i[16]&!i[15]&!i[13]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]
    &!i[1]&!i[0]) | (!i[30]&!i[23]&i[22]&!i[20]&!i[18]&!i[17]&!i[14]
    &!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]
    &!i[2]&!i[1]&!i[0]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]
    &!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&i[10]&i[9]&i[8]
    &!i[6]&i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]
    &!i[12]&i[11]&i[10]&i[7]&!i[6]&!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (
    !i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[18]&!i[17]&!i[16]
    &!i[15]&!i[14]&!i[13]&!i[12]&i[11]&!i[9]&i[8]&i[7]&!i[6]) | (i[24]
    &i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]
    &!i[13]&i[11]&!i[10]&!i[9]&!i[8]&i[7]&i[6]&!i[5]) | (!i[30]&i[24]
    &i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&i[10]&!i[7]&i[6]
    &!i[4]&!i[3]&!i[2]&!i[1]&!i[0]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]
    &!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&i[11]&!i[10]&!i[9]
    &i[8]&!i[7]&!i[6]&i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]
    &!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&i[11]&i[10]
    &!i[8]&i[6]) | (!i[28]&!i[26]&!i[25]&!i[23]&i[22]&i[21]&!i[20]&i[19]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[29]&i[28]
    &i[27]&i[26]&i[25]&i[23]&!i[22]&!i[21]&!i[20]&!i[19]&!i[18]&!i[17]
    &!i[16]&!i[15]&!i[14]&i[13]) | (!i[30]&!i[23]&i[22]&!i[20]&i[19]
    &!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]
    &!i[2]&!i[1]&!i[0]) | (!i[30]&i[24]&!i[23]&!i[21]&i[20]&!i[19]&!i[13]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]&!i[4]&!i[3]&!i[2]
    &!i[1]&!i[0]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]
    &!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&!i[10]&!i[9]&!i[8]&i[6]&!i[5]) | (
    i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]
    &!i[14]&!i[13]&!i[12]&!i[10]&!i[9]&!i[8]&!i[6]&i[5]) | (!i[30]&i[24]
    &!i[23]&i[21]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[12]&!i[11]
    &!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[24]&i[23]&!i[22]&i[21]
    &!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&!i[11]
    &!i[9]&i[8]&!i[7]&i[6]&!i[5]) | (i[31]&!i[30]&!i[29]&!i[28]&!i[27]
    &!i[26]&!i[25]&i[24]&i[23]&i[22]&!i[21]&!i[12]&!i[11]&!i[10]&!i[9]
    &!i[8]&!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]
    &!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&i[10]&i[9]
    &i[8]&!i[7]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]
    &!i[16]&!i[15]&!i[14]&!i[13]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&i[6]
    &!i[5]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]
    &!i[15]&!i[14]&!i[13]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&i[5]) | (
    !i[28]&!i[27]&i[26]&i[25]&i[23]&!i[22]&!i[21]&!i[20]&!i[19]&!i[12]
    &!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[29]&!i[28]&!i[27]
    &!i[26]&i[24]&!i[23]&!i[22]&!i[20]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]
    &!i[7]&!i[6]&!i[5]) | (!i[28]&!i[27]&!i[23]&i[22]&i[21]&!i[20]&i[19]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[29]&!i[28]
    &i[27]&i[23]&!i[22]&!i[21]&!i[20]&!i[19]&!i[12]&!i[11]&!i[10]&!i[9]
    &!i[8]&!i[7]&!i[6]&!i[5]) | (i[29]&!i[27]&!i[26]&i[23]&!i[22]&!i[21]
    &!i[20]&!i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (
    !i[30]&!i[29]&!i[28]&!i[25]&i[23]&!i[22]&!i[21]&!i[19]&!i[12]&!i[11]
    &!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[30]&!i[25]&!i[24]&i[19]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[29]&!i[23]
    &i[22]&i[21]&!i[20]&i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]
    &!i[5]) | (i[30]&!i[24]&!i[21]&!i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]
    &!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]
    &!i[13]&!i[12]&!i[11]&i[10]&i[8]&i[6]&!i[5]) | (!i[30]&i[23]&!i[22]
    &i[21]&!i[20]&i[19]&!i[18]&i[13]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&i[6]
    &!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&!i[19]&!i[13]&!i[12]&i[11]
    &i[10]&!i[9]&i[8]&!i[7]&!i[6]&i[5]) | (!i[30]&i[23]&!i[22]&i[21]
    &!i[20]&i[19]&!i[18]&i[13]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&i[5]) | (
    !i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&!i[10]
    &i[9]&!i[8]&!i[6]&!i[5]) | (i[30]&!i[28]&!i[26]&!i[25]&i[23]&i[22]
    &i[21]&!i[20]&i[19]) | (i[30]&!i[28]&!i[26]&!i[25]&i[22]&i[21]&!i[20]
    &i[19]&i[13]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]
    &!i[12]&!i[11]&!i[10]&i[8]&!i[7]&!i[6]) | (!i[30]&i[24]&i[23]&!i[22]
    &i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[10]&i[9]&!i[8]&i[7]&i[6]) | (
    !i[30]&i[24]&!i[23]&i[22]&i[21]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]
    &!i[14]&i[13]) | (i[31]&!i[30]&!i[29]&!i[28]&!i[27]&!i[26]&!i[25]
    &i[24]&i[23]&i[22]&!i[21]&i[19]&i[13]) | (i[24]&!i[23]&!i[22]&i[20]
    &i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[30]
    &i[24]&!i[23]&!i[22]&i[13]&i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]) | (
    i[30]&i[24]&i[23]&i[22]&i[21]&!i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]
    &!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&!i[20]&i[19]
    &!i[18]&!i[13]&!i[10]&!i[9]&!i[8]&!i[7]&i[6]&!i[5]) | (i[31]&!i[30]
    &!i[24]&!i[19]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (
    !i[30]&i[24]&i[23]&!i[22]&i[21]&!i[20]&i[19]&!i[18]&!i[13]&!i[10]
    &!i[9]&!i[8]&!i[7]&!i[6]&i[5]) | (!i[28]&!i[27]&i[26]&i[25]&i[23]
    &!i[22]&!i[21]&!i[20]&!i[19]&i[13]) | (!i[30]&i[24]&i[23]&!i[22]
    &i[21]&i[20]&!i[19]&!i[13]&!i[12]&!i[11]&i[9]&i[8]&!i[7]&!i[6]) | (
    i[30]&!i[29]&!i[28]&!i[27]&!i[26]&!i[23]&!i[22]&!i[20]&i[13]) | (
    !i[30]&i[23]&!i[22]&!i[21]&i[20]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]
    &!i[7]&!i[6]&!i[5]) | (i[31]&!i[24]&!i[23]&i[22]&i[19]&!i[12]&!i[11]
    &!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[31]&!i[30]&!i[29]&i[23]
    &!i[21]&i[20]&!i[19]&i[13]&!i[11]&!i[10]&!i[9]&!i[8]) | (i[31]&!i[30]
    &!i[24]&i[20]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (
    !i[30]&i[24]&!i[23]&!i[22]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]) | (i[24]&!i[23]&!i[22]&!i[20]&!i[19]&!i[12]&!i[11]
    &!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[30]&!i[28]&!i[27]&i[23]
    &i[22]&i[21]&!i[20]&i[19]) | (i[29]&!i[28]&i[27]&i[23]&!i[22]&!i[21]
    &!i[20]&!i[19]&i[13]) | (i[29]&!i[27]&!i[26]&i[23]&!i[22]&!i[21]
    &!i[20]&!i[19]&i[13]) | (i[30]&!i[28]&!i[27]&i[22]&i[21]&!i[20]&i[19]
    &i[13]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]
    &!i[11]&i[10]&!i[9]&!i[5]) | (!i[29]&!i[28]&!i[25]&i[23]&!i[22]&!i[21]
    &!i[20]&!i[19]&i[13]) | (i[31]&!i[24]&i[20]&!i[19]&!i[12]&!i[11]
    &!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[31]&!i[24]&!i[22]&!i[20]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]
    &i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&!i[11]&!i[10]&!i[7]
    &!i[5]) | (!i[30]&i[24]&!i[23]&i[22]&i[21]&i[19]&i[13]&i[11]) | (
    !i[30]&!i[23]&i[22]&i[21]&!i[20]&!i[18]&i[13]) | (!i[30]&i[24]&!i[23]
    &i[22]&i[21]&i[19]&i[13]&i[10]) | (i[30]&!i[25]&!i[24]&i[23]&i[19]) | (
    i[30]&i[29]&i[23]&i[22]&i[21]&!i[20]&i[19]) | (i[30]&!i[25]&!i[24]
    &i[19]&i[13]) | (i[30]&i[29]&i[22]&i[21]&!i[20]&i[19]&i[13]) | (
    i[30]&!i[24]&i[23]&!i[21]&!i[19]) | (i[30]&!i[24]&!i[21]&!i[19]&i[13]) | (
    !i[30]&!i[23]&i[22]&i[21]&!i[20]&i[13]&!i[11]) | (i[30]&!i[24]&i[23]
    &i[22]&i[19]) | (i[31]&!i[30]&!i[24]&!i[23]&i[13]) | (i[30]&!i[24]
    &i[22]&i[19]&i[13]) | (!i[30]&i[23]&!i[22]&!i[21]&i[20]&i[13]) | (
    i[30]&!i[24]&i[23]&!i[20]&i[19]) | (i[30]&!i[24]&i[23]&i[20]&!i[19]) | (
    i[31]&!i[30]&i[24]&i[22]&i[21]&!i[20]&i[19]&i[13]) | (i[30]&!i[24]
    &i[20]&!i[19]&i[13]) | (i[30]&i[24]&i[23]&i[22]&i[21]&!i[19]&!i[13]) | (
    !i[30]&i[24]&!i[23]&!i[22]&!i[21]&i[13]) | (i[24]&!i[23]&!i[22]&!i[20]
    &!i[19]&i[13]) | (i[31]&!i[30]&!i[24]&i[20]&i[13]) | (i[31]&!i[24]
    &!i[22]&!i[20]&i[13]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]
    &!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&!i[12]&i[11]&i[10]&!i[4]
    &!i[3]&!i[2]&!i[1]&!i[0]) | (!i[30]&!i[29]&!i[28]&!i[27]&!i[26]&!i[25]
    &i[24]&i[23]&!i[22]&i[21]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]
    &!i[13]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&i[5]&!i[4]&!i[3]) | (
    i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]
    &!i[14]&!i[13]&i[12]&i[11]&!i[10]&i[9]&!i[8]&!i[7]&i[6]&!i[5]) | (
    i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]
    &!i[14]&!i[13]&i[12]&i[11]&!i[10]&i[9]&!i[8]&!i[7]&!i[6]&i[5]) | (
    i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]
    &!i[14]&!i[13]&!i[12]&!i[9]&i[8]&!i[7]&!i[6]&i[5]) | (i[24]&i[23]
    &!i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]
    &i[12]&!i[10]&!i[9]&i[8]&!i[7]&!i[6]&!i[5]) | (i[24]&i[23]&!i[22]
    &i[21]&!i[20]&!i[19]&!i[18]&!i[17]&!i[16]&!i[15]&!i[14]&!i[13]&i[12]
    &!i[10]&!i[9]&!i[8]&i[7]&!i[6]&!i[5]) | (!i[30]&!i[29]&!i[28]&!i[27]
    &i[24]&i[23]&!i[22]&i[21]&!i[20]&i[19]&!i[13]&!i[12]&i[11]&!i[10]
    &i[9]&!i[8]&i[6]&!i[5]) | (!i[30]&!i[29]&!i[28]&!i[27]&i[24]&i[23]
    &!i[22]&i[21]&!i[20]&i[19]&!i[13]&!i[12]&i[11]&!i[10]&i[9]&!i[8]&!i[6]
    &i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]
    &i[11]&i[10]&i[8]&i[7]&!i[6]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]
    &i[20]&!i[19]&!i[13]&!i[12]&i[11]&i[10]&i[9]&!i[7]&i[6]) | (!i[30]
    &i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&i[10]&!i[9]
    &i[8]&i[7]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]
    &!i[12]&!i[11]&i[10]&i[9]&!i[8]&i[5]) | (!i[30]&i[24]&i[23]&!i[22]
    &i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&!i[10]&i[9]&!i[8]) | (!i[30]
    &i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&i[9]&!i[8]
    &!i[7]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]
    &!i[10]&!i[9]&i[8]&!i[7]&i[6]&i[5]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]
    &!i[19]&!i[13]&!i[12]&i[11]&!i[10]&!i[9]&i[6]&!i[5]) | (!i[30]&i[24]
    &i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&i[10]&!i[9]&i[7]
    &!i[6]) | (i[24]&i[23]&!i[22]&i[21]&!i[20]&!i[19]&!i[13]&!i[12]&i[11]
    &!i[10]&!i[9]&!i[6]&i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&i[20]
    &!i[19]&!i[13]&!i[12]&i[11]&i[10]&!i[8]&!i[7]&i[6]) | (!i[30]&i[24]
    &!i[23]&i[22]&i[21]&!i[20]&!i[19]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]) | (!i[30]&i[24]&!i[23]&!i[22]&i[21]&i[19]&!i[11]&!i[10]
    &!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]
    &i[20]&!i[19]&!i[13]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]) | (!i[30]
    &i[24]&i[23]&!i[22]&i[21]&i[20]&!i[19]&!i[13]&!i[12]&i[11]&!i[9]&i[8]
    &!i[6]&!i[5]) | (i[31]&!i[30]&!i[29]&i[24]&i[23]&i[22]&!i[21]&i[20]
    &!i[19]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (i[31]&!i[30]
    &i[24]&i[22]&i[21]&!i[20]&!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]
    &!i[5]) | (!i[30]&i[24]&!i[23]&!i[22]&i[21]&i[20]&!i[11]&!i[10]&!i[9]
    &!i[8]&!i[7]&!i[6]&!i[5]) | (i[31]&!i[30]&i[23]&i[22]&!i[20]&!i[19]
    &!i[12]&!i[11]&!i[10]&!i[9]&!i[8]&!i[7]&!i[6]&!i[5]) | (!i[30]&i[24]
    &!i[23]&i[22]&i[21]&!i[20]&!i[19]&!i[18]&!i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&!i[20]&i[19]&!i[13]
    &i[10]&!i[9]&!i[8]&i[7]&i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]
    &i[21]&!i[20]&i[19]&!i[13]&i[10]&!i[9]&!i[8]&i[7]&!i[6]&i[5]) | (
    !i[30]&i[24]&!i[23]&i[22]&i[21]&i[20]&i[19]&i[10]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]&i[21]&!i[20]&i[19]&!i[13]
    &i[11]&!i[9]&!i[8]&i[7]&i[6]&!i[5]) | (!i[30]&i[24]&i[23]&!i[22]
    &i[21]&!i[20]&i[19]&!i[13]&i[11]&!i[9]&!i[8]&i[7]&!i[6]&i[5]) | (
    !i[30]&i[24]&!i[23]&i[22]&i[21]&i[20]&i[19]&i[11]&!i[9]&!i[8]&!i[7]
    &!i[6]&!i[5]) | (!i[31]&!i[23]&i[22]&!i[20]) | (!i[31]&i[24]&!i[23]) | (
    !i[31]&i[23]&!i[22]) | (!i[31]&!i[28]&i[26]&!i[24]&i[23]) | (!i[31]
    &!i[28]&i[25]&!i[24]&i[23]) | (i[30]&i[24]&!i[22]&i[20]&i[19]&i[13]) | (
    i[30]&i[24]&i[23]&!i[22]&i[20]&i[19]) | (i[31]&!i[30]&i[23]&i[22]
    &!i[20]&!i[19]&i[13]) | (i[30]&i[23]&!i[22]&!i[20]&!i[19]) | (!i[31]
    &i[30]);

// end autogeneration

endmodule


//  Description:        Spare gate macro for control blocks
//
//  Param num controls the number of times the macro is added
//  flops=0 can be used to use only combination spare logic


module gkt_leg_ctl_spare_ctl_macro__flops_0__num_2;
wire spare0_buf_32x_unused;
wire spare0_nand3_8x_unused;
wire spare0_inv_8x_unused;
wire spare0_aoi22_4x_unused;
wire spare0_buf_8x_unused;
wire spare0_oai22_4x_unused;
wire spare0_inv_16x_unused;
wire spare0_nand2_16x_unused;
wire spare0_nor3_4x_unused;
wire spare0_nand2_8x_unused;
wire spare0_buf_16x_unused;
wire spare0_nor2_16x_unused;
wire spare0_inv_32x_unused;
wire spare1_buf_32x_unused;
wire spare1_nand3_8x_unused;
wire spare1_inv_8x_unused;
wire spare1_aoi22_4x_unused;
wire spare1_buf_8x_unused;
wire spare1_oai22_4x_unused;
wire spare1_inv_16x_unused;
wire spare1_nand2_16x_unused;
wire spare1_nor3_4x_unused;
wire spare1_nand2_8x_unused;
wire spare1_buf_16x_unused;
wire spare1_nor2_16x_unused;
wire spare1_inv_32x_unused;


cl_u1_buf_32x   spare0_buf_32x (.in(1'b1),
                                   .out(spare0_buf_32x_unused));
cl_u1_nand3_8x spare0_nand3_8x (.in0(1'b1),
                                   .in1(1'b1),
                                   .in2(1'b1),
                                   .out(spare0_nand3_8x_unused));
cl_u1_inv_8x    spare0_inv_8x (.in(1'b1),
                                  .out(spare0_inv_8x_unused));
cl_u1_aoi22_4x spare0_aoi22_4x (.in00(1'b1),
                                   .in01(1'b1),
                                   .in10(1'b1),
                                   .in11(1'b1),
                                   .out(spare0_aoi22_4x_unused));
cl_u1_buf_8x    spare0_buf_8x (.in(1'b1),
                                  .out(spare0_buf_8x_unused));
cl_u1_oai22_4x spare0_oai22_4x (.in00(1'b1),
                                   .in01(1'b1),
                                   .in10(1'b1),
                                   .in11(1'b1),
                                   .out(spare0_oai22_4x_unused));
cl_u1_inv_16x   spare0_inv_16x (.in(1'b1),
                                   .out(spare0_inv_16x_unused));
cl_u1_nand2_16x spare0_nand2_16x (.in0(1'b1),
                                     .in1(1'b1),
                                     .out(spare0_nand2_16x_unused));
cl_u1_nor3_4x spare0_nor3_4x (.in0(1'b0),
                                 .in1(1'b0),
                                 .in2(1'b0),
                                 .out(spare0_nor3_4x_unused));
cl_u1_nand2_8x spare0_nand2_8x (.in0(1'b1),
                                   .in1(1'b1),
                                   .out(spare0_nand2_8x_unused));
cl_u1_buf_16x   spare0_buf_16x (.in(1'b1),
                                   .out(spare0_buf_16x_unused));
cl_u1_nor2_16x spare0_nor2_16x (.in0(1'b0),
                                   .in1(1'b0),
                                   .out(spare0_nor2_16x_unused));
cl_u1_inv_32x   spare0_inv_32x (.in(1'b1),
                                   .out(spare0_inv_32x_unused));

cl_u1_buf_32x   spare1_buf_32x (.in(1'b1),
                                   .out(spare1_buf_32x_unused));
cl_u1_nand3_8x spare1_nand3_8x (.in0(1'b1),
                                   .in1(1'b1),
                                   .in2(1'b1),
                                   .out(spare1_nand3_8x_unused));
cl_u1_inv_8x    spare1_inv_8x (.in(1'b1),
                                  .out(spare1_inv_8x_unused));
cl_u1_aoi22_4x spare1_aoi22_4x (.in00(1'b1),
                                   .in01(1'b1),
                                   .in10(1'b1),
                                   .in11(1'b1),
                                   .out(spare1_aoi22_4x_unused));
cl_u1_buf_8x    spare1_buf_8x (.in(1'b1),
                                  .out(spare1_buf_8x_unused));
cl_u1_oai22_4x spare1_oai22_4x (.in00(1'b1),
                                   .in01(1'b1),
                                   .in10(1'b1),
                                   .in11(1'b1),
                                   .out(spare1_oai22_4x_unused));
cl_u1_inv_16x   spare1_inv_16x (.in(1'b1),
                                   .out(spare1_inv_16x_unused));
cl_u1_nand2_16x spare1_nand2_16x (.in0(1'b1),
                                     .in1(1'b1),
                                     .out(spare1_nand2_16x_unused));
cl_u1_nor3_4x spare1_nor3_4x (.in0(1'b0),
                                 .in1(1'b0),
                                 .in2(1'b0),
                                 .out(spare1_nor3_4x_unused));
cl_u1_nand2_8x spare1_nand2_8x (.in0(1'b1),
                                   .in1(1'b1),
                                   .out(spare1_nand2_8x_unused));
cl_u1_buf_16x   spare1_buf_16x (.in(1'b1),
                                   .out(spare1_buf_16x_unused));
cl_u1_nor2_16x spare1_nor2_16x (.in0(1'b0),
                                   .in1(1'b0),
                                   .out(spare1_nor2_16x_unused));
cl_u1_inv_32x   spare1_inv_32x (.in(1'b1),
                                   .out(spare1_inv_32x_unused));



endmodule

