-- Copyright (c) 2009 by Tampere University of Technology

-- This file is part of Traffic generator.

-- Traffic generator is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Lesser General Public License as
-- published by the Free Software Foundation, either version 3 of
-- the License, or (at your option) any later version.

-- Traffic generator is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Lesser General Public License for more details.

-- You should have received a copy of the GNU Lesser General Public
-- License along with Traffic generator.
-- If not, see <http://www.gnu.org/licenses/>.

library ieee;
use ieee.std_logic_1164.all;

package hibi_addr_pkg is
  
  -- Some addresses for hibi network.
  type gen_addr_array_type    is array (1 to 64) of integer;
  type gen_addr_array_3d_type is array (0 to 16-1) of gen_addr_array_type;
  type gen_bridge_addr_array  is array (0 to 16-2) of integer;

  constant addresses_c : gen_addr_array_3d_type := (
(16#01000000#, 16#03000000#, 16#05000000#, 16#07000000#, 16#09000000#, 16#0b000000#, 16#0d000000#, 16#0f000000#,
16#11000000#, 16#13000000#, 16#15000000#, 16#17000000#, 16#19000000#, 16#1b000000#, 16#1d000000#, 16#1f000000#,
16#29000000#,260748,260756,260764,260772,260780,260788,260796,260804,260812,260820,260828,260836,260844,260852,260860,260868,260876,260884,260892,260900,260908,260916,260924,260932,260940,260948,260956,260964,260972,260980,260988,260996,261004,261012,261020,261028,261036,261044,261052,261060,261068,261076,261084,261092,261100,261108,261116),
    (261636,261644,261652,261660,261668,261676,261684,261692,261700,261708,261716,261724,261732,261740,261748,261756,261764,261772,261780,261788,261796,261804,261812,261820,261828,261836,261844,261852,261860,261868,261876,261884,261892,261900,261908,261916,261924,261932,261940,261948,261956,261964,261972,261980,261988,261996,262004,262012,262020,262028,262036,262044,262052,262060,262068,262076,262084,262092,262100,262108,262116,262124,262132,262140),
    (258564,258572,258580,258588,258596,258604,258612,258620,258628,258636,258644,258652,258660,258668,258676,258684,258692,258700,258708,258716,258724,258732,258740,258748,258756,258764,258772,258780,258788,258796,258804,258812,258820,258828,258836,258844,258852,258860,258868,258876,258884,258892,258900,258908,258916,258924,258932,258940,258948,258956,258964,258972,258980,258988,258996,259004,259012,259020,259028,259036,259044,259052,259060,259068),
    (254468,254476,254484,254492,254500,254508,254516,254524,254532,254540,254548,254556,254564,254572,254580,254588,254596,254604,254612,254620,254628,254636,254644,254652,254660,254668,254676,254684,254692,254700,254708,254716,254724,254732,254740,254748,254756,254764,254772,254780,254788,254796,254804,254812,254820,254828,254836,254844,254852,254860,254868,254876,254884,254892,254900,254908,254916,254924,254932,254940,254948,254956,254964,254972),
    (246276,246284,246292,246300,246308,246316,246324,246332,246340,246348,246356,246364,246372,246380,246388,246396,246404,246412,246420,246428,246436,246444,246452,246460,246468,246476,246484,246492,246500,246508,246516,246524,246532,246540,246548,246556,246564,246572,246580,246588,246596,246604,246612,246620,246628,246636,246644,246652,246660,246668,246676,246684,246692,246700,246708,246716,246724,246732,246740,246748,246756,246764,246772,246780),
    (229892,229900,229908,229916,229924,229932,229940,229948,229956,229964,229972,229980,229988,229996,230004,230012,230020,230028,230036,230044,230052,230060,230068,230076,230084,230092,230100,230108,230116,230124,230132,230140,230148,230156,230164,230172,230180,230188,230196,230204,230212,230220,230228,230236,230244,230252,230260,230268,230276,230284,230292,230300,230308,230316,230324,230332,230340,230348,230356,230364,230372,230380,230388,230396),
    (197124,197132,197140,197148,197156,197164,197172,197180,197188,197196,197204,197212,197220,197228,197236,197244,197252,197260,197268,197276,197284,197292,197300,197308,197316,197324,197332,197340,197348,197356,197364,197372,197380,197388,197396,197404,197412,197420,197428,197436,197444,197452,197460,197468,197476,197484,197492,197500,197508,197516,197524,197532,197540,197548,197556,197564,197572,197580,197588,197596,197604,197612,197620,197628),
    (131588,131596,131604,131612,131620,131628,131636,131644,131652,131660,131668,131676,131684,131692,131700,131708,131716,131724,131732,131740,131748,131756,131764,131772,131780,131788,131796,131804,131812,131820,131828,131836,131844,131852,131860,131868,131876,131884,131892,131900,131908,131916,131924,131932,131940,131948,131956,131964,131972,131980,131988,131996,132004,132012,132020,132028,132036,132044,132052,132060,132068,132076,132084,132092),
    (516,524,532,540,548,556,564,572,580,588,596,604,612,620,628,636,644,652,660,668,676,684,692,700,708,716,724,732,740,748,756,764,772,780,788,796,804,812,820,828,836,844,852,860,868,876,884,892,900,908,916,924,932,940,948,956,964,972,980,988,996,1004,1012,1020),
    (66052,66060,66068,66076,66084,66092,66100,66108,66116,66124,66132,66140,66148,66156,66164,66172,66180,66188,66196,66204,66212,66220,66228,66236,66244,66252,66260,66268,66276,66284,66292,66300,66308,66316,66324,66332,66340,66348,66356,66364,66372,66380,66388,66396,66404,66412,66420,66428,66436,66444,66452,66460,66468,66476,66484,66492,66500,66508,66516,66524,66532,66540,66548,66556),
    (98820,98828,98836,98844,98852,98860,98868,98876,98884,98892,98900,98908,98916,98924,98932,98940,98948,98956,98964,98972,98980,98988,98996,99004,99012,99020,99028,99036,99044,99052,99060,99068,99076,99084,99092,99100,99108,99116,99124,99132,99140,99148,99156,99164,99172,99180,99188,99196,99204,99212,99220,99228,99236,99244,99252,99260,99268,99276,99284,99292,99300,99308,99316,99324),
    (115204,115212,115220,115228,115236,115244,115252,115260,115268,115276,115284,115292,115300,115308,115316,115324,115332,115340,115348,115356,115364,115372,115380,115388,115396,115404,115412,115420,115428,115436,115444,115452,115460,115468,115476,115484,115492,115500,115508,115516,115524,115532,115540,115548,115556,115564,115572,115580,115588,115596,115604,115612,115620,115628,115636,115644,115652,115660,115668,115676,115684,115692,115700,115708),
    (123396,123404,123412,123420,123428,123436,123444,123452,123460,123468,123476,123484,123492,123500,123508,123516,123524,123532,123540,123548,123556,123564,123572,123580,123588,123596,123604,123612,123620,123628,123636,123644,123652,123660,123668,123676,123684,123692,123700,123708,123716,123724,123732,123740,123748,123756,123764,123772,123780,123788,123796,123804,123812,123820,123828,123836,123844,123852,123860,123868,123876,123884,123892,123900),
    (127492,127500,127508,127516,127524,127532,127540,127548,127556,127564,127572,127580,127588,127596,127604,127612,127620,127628,127636,127644,127652,127660,127668,127676,127684,127692,127700,127708,127716,127724,127732,127740,127748,127756,127764,127772,127780,127788,127796,127804,127812,127820,127828,127836,127844,127852,127860,127868,127876,127884,127892,127900,127908,127916,127924,127932,127940,127948,127956,127964,127972,127980,127988,127996),
    (130564,130572,130580,130588,130596,130604,130612,130620,130628,130636,130644,130652,130660,130668,130676,130684,130692,130700,130708,130716,130724,130732,130740,130748,130756,130764,130772,130780,130788,130796,130804,130812,130820,130828,130836,130844,130852,130860,130868,130876,130884,130892,130900,130908,130916,130924,130932,130940,130948,130956,130964,130972,130980,130988,130996,131004,131012,131020,131028,131036,131044,131052,131060,131068),
    (129540,129548,129556,129564,129572,129580,129588,129596,129604,129612,129620,129628,129636,129644,129652,129660,129668,129676,129684,129692,129700,129708,129716,129724,129732,129740,129748,129756,129764,129772,129780,129788,129796,129804,129812,129820,129828,129836,129844,129852,129860,129868,129876,129884,129892,129900,129908,129916,129924,129932,129940,129948,129956,129964,129972,129980,129988,129996,130004,130012,130020,130028,130036,130044)
    );    
  constant bridge_a_addr_c : gen_bridge_addr_array := (260608,260096,258048,253952,245760,229376,196608,131072,65536,98304,114688,122880,126976,129024,129536);
  constant bridge_b_addr_c : gen_bridge_addr_array := (260608,260096,258048,253952,245760,229376,196608,131072,65536,98304,114688,122880,126976,129024,129536);
  constant bridge_a_inv_addr_c : gen_bridge_addr_array := (1,1,1,1,1,1,1,1,0,0,0,0,0,0,0);
  constant bridge_b_inv_addr_c : gen_bridge_addr_array := (0,0,0,0,0,0,0,0,1,1,1,1,1,1,1);

  
end hibi_addr_pkg;
