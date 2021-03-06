(*
Copyright (C) 1997-2001 Id Software, Inc.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

*)
// G:\quake2\baseq2\models/player_y

// This file generated by ModelGen - Do NOT Modify

const
  FRAME_attak01  = 0;
  FRAME_attak02  = 1;
  FRAME_attak03  = 2;
  FRAME_attak04  = 3;
  FRAME_death101 = 4;
  FRAME_death102 = 5;
  FRAME_death103 = 6;
  FRAME_death104 = 7;
  FRAME_death105 = 8;
  FRAME_death106 = 9;
  FRAME_death107 = 10;
  FRAME_death201 = 11;
  FRAME_death202 = 12;
  FRAME_death203 = 13;
  FRAME_death204 = 14;
  FRAME_death205 = 15;
  FRAME_death206 = 16;
  FRAME_death207 = 17;
  FRAME_death208 = 18;
  FRAME_death209 = 19;
  FRAME_death210 = 20;
  FRAME_death211 = 21;
  FRAME_death212 = 22;
  FRAME_death213 = 23;
  FRAME_death301 = 24;
  FRAME_death302 = 25;
  FRAME_death303 = 26;
  FRAME_death304 = 27;
  FRAME_death305 = 28;
  FRAME_death306 = 29;
  FRAME_death307 = 30;
  FRAME_death308 = 31;
  FRAME_death309 = 32;
  FRAME_death310 = 33;
  FRAME_death311 = 34;
  FRAME_death312 = 35;
  FRAME_death313 = 36;
  FRAME_death314 = 37;
  FRAME_death315 = 38;
  FRAME_flip01   = 39;
  FRAME_flip02   = 40;
  FRAME_flip03   = 41;
  FRAME_flip04   = 42;
  FRAME_flip05   = 43;
  FRAME_flip06   = 44;
  FRAME_flip07   = 45;
  FRAME_flip08   = 46;
  FRAME_flip09   = 47;
  FRAME_flip10   = 48;
  FRAME_flip11   = 49;
  FRAME_flip12   = 50;
  FRAME_flip13   = 51;
  FRAME_flip14   = 52;
  FRAME_grenad01 = 53;
  FRAME_grenad02 = 54;
  FRAME_grenad03 = 55;
  FRAME_grenad04 = 56;
  FRAME_grenad05 = 57;
  FRAME_grenad06 = 58;
  FRAME_grenad07 = 59;
  FRAME_grenad08 = 60;
  FRAME_grenad09 = 61;
  FRAME_grenad10 = 62;
  FRAME_grenad11 = 63;
  FRAME_grenad12 = 64;
  FRAME_grenad13 = 65;
  FRAME_grenad14 = 66;
  FRAME_grenad15 = 67;
  FRAME_jump01   = 68;
  FRAME_jump02   = 69;
  FRAME_jump03   = 70;
  FRAME_jump04   = 71;
  FRAME_jump05   = 72;
  FRAME_jump06   = 73;
  FRAME_pain101  = 74;
  FRAME_pain102  = 75;
  FRAME_pain103  = 76;
  FRAME_pain201  = 77;
  FRAME_pain202  = 78;
  FRAME_pain203  = 79;
  FRAME_pain301  = 80;
  FRAME_pain302  = 81;
  FRAME_pain303  = 82;
  FRAME_push01   = 83;
  FRAME_push02   = 84;
  FRAME_push03   = 85;
  FRAME_push04   = 86;
  FRAME_push05   = 87;
  FRAME_push06   = 88;
  FRAME_push07   = 89;
  FRAME_push08   = 90;
  FRAME_push09   = 91;
  FRAME_run01    = 92;
  FRAME_run02    = 93;
  FRAME_run03    = 94;
  FRAME_run04    = 95;
  FRAME_run05    = 96;
  FRAME_run06    = 97;
  FRAME_run07    = 98;
  FRAME_run08    = 99;
  FRAME_run09    = 100;
  FRAME_run10    = 101;
  FRAME_run11    = 102;
  FRAME_run12    = 103;
  FRAME_runs01   = 104;
  FRAME_runs02   = 105;
  FRAME_runs03   = 106;
  FRAME_runs04   = 107;
  FRAME_runs05   = 108;
  FRAME_runs06   = 109;
  FRAME_runs07   = 110;
  FRAME_runs08   = 111;
  FRAME_runs09   = 112;
  FRAME_runs10   = 113;
  FRAME_runs11   = 114;
  FRAME_runs12   = 115;
  FRAME_salute01 = 116;
  FRAME_salute02 = 117;
  FRAME_salute03 = 118;
  FRAME_salute04 = 119;
  FRAME_salute05 = 120;
  FRAME_salute06 = 121;
  FRAME_salute07 = 122;
  FRAME_salute08 = 123;
  FRAME_salute09 = 124;
  FRAME_salute10 = 125;
  FRAME_salute11 = 126;
  FRAME_salute12 = 127;
  FRAME_stand101 = 128;
  FRAME_stand102 = 129;
  FRAME_stand103 = 130;
  FRAME_stand104 = 131;
  FRAME_stand105 = 132;
  FRAME_stand106 = 133;
  FRAME_stand107 = 134;
  FRAME_stand108 = 135;
  FRAME_stand109 = 136;
  FRAME_stand110 = 137;
  FRAME_stand111 = 138;
  FRAME_stand112 = 139;
  FRAME_stand113 = 140;
  FRAME_stand114 = 141;
  FRAME_stand115 = 142;
  FRAME_stand116 = 143;
  FRAME_stand117 = 144;
  FRAME_stand118 = 145;
  FRAME_stand119 = 146;
  FRAME_stand120 = 147;
  FRAME_stand121 = 148;
  FRAME_stand122 = 149;
  FRAME_stand123 = 150;
  FRAME_stand124 = 151;
  FRAME_stand125 = 152;
  FRAME_stand126 = 153;
  FRAME_stand127 = 154;
  FRAME_stand128 = 155;
  FRAME_stand129 = 156;
  FRAME_stand130 = 157;
  FRAME_stand131 = 158;
  FRAME_stand132 = 159;
  FRAME_stand133 = 160;
  FRAME_stand134 = 161;
  FRAME_stand135 = 162;
  FRAME_stand136 = 163;
  FRAME_stand137 = 164;
  FRAME_stand138 = 165;
  FRAME_stand139 = 166;
  FRAME_stand140 = 167;
  FRAME_stand201 = 168;
  FRAME_stand202 = 169;
  FRAME_stand203 = 170;
  FRAME_stand204 = 171;
  FRAME_stand205 = 172;
  FRAME_stand206 = 173;
  FRAME_stand207 = 174;
  FRAME_stand208 = 175;
  FRAME_stand209 = 176;
  FRAME_stand210 = 177;
  FRAME_stand211 = 178;
  FRAME_stand212 = 179;
  FRAME_stand213 = 180;
  FRAME_stand214 = 181;
  FRAME_stand215 = 182;
  FRAME_stand216 = 183;
  FRAME_stand217 = 184;
  FRAME_stand218 = 185;
  FRAME_stand219 = 186;
  FRAME_stand220 = 187;
  FRAME_stand221 = 188;
  FRAME_stand222 = 189;
  FRAME_stand223 = 190;
  FRAME_swim01   = 191;
  FRAME_swim02   = 192;
  FRAME_swim03   = 193;
  FRAME_swim04   = 194;
  FRAME_swim05   = 195;
  FRAME_swim06   = 196;
  FRAME_swim07   = 197;
  FRAME_swim08   = 198;
  FRAME_swim09   = 199;
  FRAME_swim10   = 200;
  FRAME_swim11   = 201;
  FRAME_swim12   = 202;
  FRAME_sw_atk01 = 203;
  FRAME_sw_atk02 = 204;
  FRAME_sw_atk03 = 205;
  FRAME_sw_atk04 = 206;
  FRAME_sw_atk05 = 207;
  FRAME_sw_atk06 = 208;
  FRAME_sw_pan01 = 209;
  FRAME_sw_pan02 = 210;
  FRAME_sw_pan03 = 211;
  FRAME_sw_pan04 = 212;
  FRAME_sw_pan05 = 213;
  FRAME_sw_std01 = 214;
  FRAME_sw_std02 = 215;
  FRAME_sw_std03 = 216;
  FRAME_sw_std04 = 217;
  FRAME_sw_std05 = 218;
  FRAME_sw_std06 = 219;
  FRAME_sw_std07 = 220;
  FRAME_sw_std08 = 221;
  FRAME_sw_std09 = 222;
  FRAME_sw_std10 = 223;
  FRAME_sw_std11 = 224;
  FRAME_sw_std12 = 225;
  FRAME_sw_std13 = 226;
  FRAME_sw_std14 = 227;
  FRAME_sw_std15 = 228;
  FRAME_sw_std16 = 229;
  FRAME_sw_std17 = 230;
  FRAME_sw_std18 = 231;
  FRAME_sw_std19 = 232;
  FRAME_sw_std20 = 233;
  FRAME_taunt01  = 234;
  FRAME_taunt02  = 235;
  FRAME_taunt03  = 236;
  FRAME_taunt04  = 237;
  FRAME_taunt05  = 238;
  FRAME_taunt06  = 239;
  FRAME_taunt07  = 240;
  FRAME_taunt08  = 241;
  FRAME_taunt09  = 242;
  FRAME_taunt10  = 243;
  FRAME_taunt11  = 244;
  FRAME_taunt12  = 245;
  FRAME_taunt13  = 246;
  FRAME_taunt14  = 247;
  FRAME_taunt15  = 248;
  FRAME_taunt16  = 249;
  FRAME_taunt17  = 250;
  FRAME_walk01   = 251;
  FRAME_walk02   = 252;
  FRAME_walk03   = 253;
  FRAME_walk04   = 254;
  FRAME_walk05   = 255;
  FRAME_walk06   = 256;
  FRAME_walk07   = 257;
  FRAME_walk08   = 258;
  FRAME_walk09   = 259;
  FRAME_walk10   = 260;
  FRAME_walk11   = 261;
  FRAME_wave01   = 262;
  FRAME_wave02   = 263;
  FRAME_wave03   = 264;
  FRAME_wave04   = 265;
  FRAME_wave05   = 266;
  FRAME_wave06   = 267;
  FRAME_wave07   = 268;
  FRAME_wave08   = 269;
  FRAME_wave09   = 270;
  FRAME_wave10   = 271;
  FRAME_wave11   = 272;
  FRAME_wave12   = 273;
  FRAME_wave13   = 274;
  FRAME_wave14   = 275;
  FRAME_wave15   = 276;
  FRAME_wave16   = 277;
  FRAME_wave17   = 278;
  FRAME_wave18   = 279;
  FRAME_wave19   = 280;
  FRAME_wave20   = 281;
  FRAME_wave21   = 282;
  FRAME_bl_atk01 = 283;
  FRAME_bl_atk02 = 284;
  FRAME_bl_atk03 = 285;
  FRAME_bl_atk04 = 286;
  FRAME_bl_atk05 = 287;
  FRAME_bl_atk06 = 288;
  FRAME_bl_flp01 = 289;
  FRAME_bl_flp02 = 290;
  FRAME_bl_flp13 = 291;
  FRAME_bl_flp14 = 292;
  FRAME_bl_flp15 = 293;
  FRAME_bl_jmp01 = 294;
  FRAME_bl_jmp02 = 295;
  FRAME_bl_jmp03 = 296;
  FRAME_bl_jmp04 = 297;
  FRAME_bl_jmp05 = 298;
  FRAME_bl_jmp06 = 299;
  FRAME_bl_pn101 = 300;
  FRAME_bl_pn102 = 301;
  FRAME_bl_pn103 = 302;
  FRAME_bl_pn201 = 303;
  FRAME_bl_pn202 = 304;
  FRAME_bl_pn203 = 305;
  FRAME_bl_pn301 = 306;
  FRAME_bl_pn302 = 307;
  FRAME_bl_pn303 = 308;
  FRAME_bl_psh08 = 309;
  FRAME_bl_psh09 = 310;
  FRAME_bl_run01 = 311;
  FRAME_bl_run02 = 312;
  FRAME_bl_run03 = 313;
  FRAME_bl_run04 = 314;
  FRAME_bl_run05 = 315;
  FRAME_bl_run06 = 316;
  FRAME_bl_run07 = 317;
  FRAME_bl_run08 = 318;
  FRAME_bl_run09 = 319;
  FRAME_bl_run10 = 320;
  FRAME_bl_run11 = 321;
  FRAME_bl_run12 = 322;
  FRAME_bl_rns03 = 323;
  FRAME_bl_rns04 = 324;
  FRAME_bl_rns05 = 325;
  FRAME_bl_rns06 = 326;
  FRAME_bl_rns07 = 327;
  FRAME_bl_rns08 = 328;
  FRAME_bl_rns09 = 329;
  FRAME_bl_sal10 = 330;
  FRAME_bl_sal11 = 331;
  FRAME_bl_sal12 = 332;
  FRAME_bl_std01 = 333;
  FRAME_bl_std02 = 334;
  FRAME_bl_std03 = 335;
  FRAME_bl_std04 = 336;
  FRAME_bl_std05 = 337;
  FRAME_bl_std06 = 338;
  FRAME_bl_std07 = 339;
  FRAME_bl_std08 = 340;
  FRAME_bl_std09 = 341;
  FRAME_bl_std10 = 342;
  FRAME_bl_std11 = 343;
  FRAME_bl_std12 = 344;
  FRAME_bl_std13 = 345;
  FRAME_bl_std14 = 346;
  FRAME_bl_std15 = 347;
  FRAME_bl_std16 = 348;
  FRAME_bl_std17 = 349;
  FRAME_bl_std18 = 350;
  FRAME_bl_std19 = 351;
  FRAME_bl_std20 = 352;
  FRAME_bl_std21 = 353;
  FRAME_bl_std22 = 354;
  FRAME_bl_std23 = 355;
  FRAME_bl_std24 = 356;
  FRAME_bl_std25 = 357;
  FRAME_bl_std26 = 358;
  FRAME_bl_std27 = 359;
  FRAME_bl_std28 = 360;
  FRAME_bl_std29 = 361;
  FRAME_bl_std30 = 362;
  FRAME_bl_std31 = 363;
  FRAME_bl_std32 = 364;
  FRAME_bl_std33 = 365;
  FRAME_bl_std34 = 366;
  FRAME_bl_std35 = 367;
  FRAME_bl_std36 = 368;
  FRAME_bl_std37 = 369;
  FRAME_bl_std38 = 370;
  FRAME_bl_std39 = 371;
  FRAME_bl_std40 = 372;
  FRAME_bl_swm01 = 373;
  FRAME_bl_swm02 = 374;
  FRAME_bl_swm03 = 375;
  FRAME_bl_swm04 = 376;
  FRAME_bl_swm05 = 377;
  FRAME_bl_swm06 = 378;
  FRAME_bl_swm07 = 379;
  FRAME_bl_swm08 = 380;
  FRAME_bl_swm09 = 381;
  FRAME_bl_swm10 = 382;
  FRAME_bl_swm11 = 383;
  FRAME_bl_swm12 = 384;
  FRAME_bl_swk01 = 385;
  FRAME_bl_swk02 = 386;
  FRAME_bl_swk03 = 387;
  FRAME_bl_swk04 = 388;
  FRAME_bl_swk05 = 389;
  FRAME_bl_swk06 = 390;
  FRAME_bl_swp01 = 391;
  FRAME_bl_swp02 = 392;
  FRAME_bl_swp03 = 393;
  FRAME_bl_swp04 = 394;
  FRAME_bl_swp05 = 395;
  FRAME_bl_sws01 = 396;
  FRAME_bl_sws02 = 397;
  FRAME_bl_sws03 = 398;
  FRAME_bl_sws04 = 399;
  FRAME_bl_sws05 = 400;
  FRAME_bl_sws06 = 401;
  FRAME_bl_sws07 = 402;
  FRAME_bl_sws08 = 403;
  FRAME_bl_sws09 = 404;
  FRAME_bl_sws10 = 405;
  FRAME_bl_sws11 = 406;
  FRAME_bl_sws12 = 407;
  FRAME_bl_sws13 = 408;
  FRAME_bl_sws14 = 409;
  FRAME_bl_tau14 = 410;
  FRAME_bl_tau15 = 411;
  FRAME_bl_tau16 = 412;
  FRAME_bl_tau17 = 413;
  FRAME_bl_wlk01 = 414;
  FRAME_bl_wlk02 = 415;
  FRAME_bl_wlk03 = 416;
  FRAME_bl_wlk04 = 417;
  FRAME_bl_wlk05 = 418;
  FRAME_bl_wlk06 = 419;
  FRAME_bl_wlk07 = 420;
  FRAME_bl_wlk08 = 421;
  FRAME_bl_wlk09 = 422;
  FRAME_bl_wlk10 = 423;
  FRAME_bl_wlk11 = 424;
  FRAME_bl_wav19 = 425;
  FRAME_bl_wav20 = 426;
  FRAME_bl_wav21 = 427;
  FRAME_cr_atk01 = 428;
  FRAME_cr_atk02 = 429;
  FRAME_cr_atk03 = 430;
  FRAME_cr_atk04 = 431;
  FRAME_cr_atk05 = 432;
  FRAME_cr_atk06 = 433;
  FRAME_cr_atk07 = 434;
  FRAME_cr_atk08 = 435;
  FRAME_cr_pan01 = 436;
  FRAME_cr_pan02 = 437;
  FRAME_cr_pan03 = 438;
  FRAME_cr_pan04 = 439;
  FRAME_cr_std01 = 440;
  FRAME_cr_std02 = 441;
  FRAME_cr_std03 = 442;
  FRAME_cr_std04 = 443;
  FRAME_cr_std05 = 444;
  FRAME_cr_std06 = 445;
  FRAME_cr_std07 = 446;
  FRAME_cr_std08 = 447;
  FRAME_cr_wlk01 = 448;
  FRAME_cr_wlk02 = 449;
  FRAME_cr_wlk03 = 450;
  FRAME_cr_wlk04 = 451;
  FRAME_cr_wlk05 = 452;
  FRAME_cr_wlk06 = 453;
  FRAME_cr_wlk07 = 454;
  FRAME_crbl_a01 = 455;
  FRAME_crbl_a02 = 456;
  FRAME_crbl_a03 = 457;
  FRAME_crbl_a04 = 458;
  FRAME_crbl_a05 = 459;
  FRAME_crbl_a06 = 460;
  FRAME_crbl_a07 = 461;
  FRAME_crbl_p01 = 462;
  FRAME_crbl_p02 = 463;
  FRAME_crbl_p03 = 464;
  FRAME_crbl_p04 = 465;
  FRAME_crbl_s01 = 466;
  FRAME_crbl_s02 = 467;
  FRAME_crbl_s03 = 468;
  FRAME_crbl_s04 = 469;
  FRAME_crbl_s05 = 470;
  FRAME_crbl_s06 = 471;
  FRAME_crbl_s07 = 472;
  FRAME_crbl_s08 = 473;
  FRAME_crbl_w01 = 474;
  FRAME_crbl_w02 = 475;
  FRAME_crbl_w03 = 476;
  FRAME_crbl_w04 = 477;
  FRAME_crbl_w05 = 478;
  FRAME_crbl_w06 = 479;
  FRAME_crbl_w07 = 480;

  MODEL_SCALE = 1.000000;
