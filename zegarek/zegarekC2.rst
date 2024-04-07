                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
                              4 ; This file was generated Sun Dec 24 20:13:45 2023
                              5 ;--------------------------------------------------------
                              6 	.module zegarekC2
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _WZOR
                             13 	.globl _main
                             14 	.globl _key_handling
                             15 	.globl _t0_serv
                             16 	.globl _t0_int
                             17 	.globl _calculate
                             18 	.globl _dec_hour
                             19 	.globl _dec_min
                             20 	.globl _dec_sec
                             21 	.globl _inc_sec
                             22 	.globl _inc_min
                             23 	.globl _inc_hour
                             24 	.globl _TEST_LED
                             25 	.globl _CY
                             26 	.globl _AC
                             27 	.globl _F0
                             28 	.globl _RS1
                             29 	.globl _RS0
                             30 	.globl _OV
                             31 	.globl _F1
                             32 	.globl _P
                             33 	.globl _PS
                             34 	.globl _PT1
                             35 	.globl _PX1
                             36 	.globl _PT0
                             37 	.globl _PX0
                             38 	.globl _RD
                             39 	.globl _WR
                             40 	.globl _T1
                             41 	.globl _T0
                             42 	.globl _INT1
                             43 	.globl _INT0
                             44 	.globl _TXD
                             45 	.globl _RXD
                             46 	.globl _P3_7
                             47 	.globl _P3_6
                             48 	.globl _P3_5
                             49 	.globl _P3_4
                             50 	.globl _P3_3
                             51 	.globl _P3_2
                             52 	.globl _P3_1
                             53 	.globl _P3_0
                             54 	.globl _EA
                             55 	.globl _ES
                             56 	.globl _ET1
                             57 	.globl _EX1
                             58 	.globl _ET0
                             59 	.globl _EX0
                             60 	.globl _P2_7
                             61 	.globl _P2_6
                             62 	.globl _P2_5
                             63 	.globl _P2_4
                             64 	.globl _P2_3
                             65 	.globl _P2_2
                             66 	.globl _P2_1
                             67 	.globl _P2_0
                             68 	.globl _SM0
                             69 	.globl _SM1
                             70 	.globl _SM2
                             71 	.globl _REN
                             72 	.globl _TB8
                             73 	.globl _RB8
                             74 	.globl _TI
                             75 	.globl _RI
                             76 	.globl _P1_7
                             77 	.globl _P1_6
                             78 	.globl _P1_5
                             79 	.globl _P1_4
                             80 	.globl _P1_3
                             81 	.globl _P1_2
                             82 	.globl _P1_1
                             83 	.globl _P1_0
                             84 	.globl _TF1
                             85 	.globl _TR1
                             86 	.globl _TF0
                             87 	.globl _TR0
                             88 	.globl _IE1
                             89 	.globl _IT1
                             90 	.globl _IE0
                             91 	.globl _IT0
                             92 	.globl _P0_7
                             93 	.globl _P0_6
                             94 	.globl _P0_5
                             95 	.globl _P0_4
                             96 	.globl _P0_3
                             97 	.globl _P0_2
                             98 	.globl _P0_1
                             99 	.globl _P0_0
                            100 	.globl _B
                            101 	.globl _ACC
                            102 	.globl _PSW
                            103 	.globl _IP
                            104 	.globl _P3
                            105 	.globl _IE
                            106 	.globl _P2
                            107 	.globl _SBUF
                            108 	.globl _SCON
                            109 	.globl _P1
                            110 	.globl _TH1
                            111 	.globl _TH0
                            112 	.globl _TL1
                            113 	.globl _TL0
                            114 	.globl _TMOD
                            115 	.globl _TCON
                            116 	.globl _PCON
                            117 	.globl _DPH
                            118 	.globl _DPL
                            119 	.globl _SP
                            120 	.globl _P0
                            121 	.globl _SEGG_OFF
                            122 	.globl _TIME
                            123 	.globl _pressed
                            124 	.globl _ck
                            125 	.globl _rec_flag
                            126 	.globl _send_flag
                            127 	.globl _led_b
                            128 	.globl _led_p
                            129 	.globl _HH
                            130 	.globl _MM
                            131 	.globl _SS
                            132 	.globl _timer_buf2
                            133 	.globl _t0_flag
                            134 	.globl _timer_buf
                            135 	.globl _godziny1
                            136 	.globl _godziny0
                            137 	.globl _minuty1
                            138 	.globl _minuty0
                            139 	.globl _sekundy1
                            140 	.globl _sekundy0
                            141 	.globl _led_led
                            142 	.globl _led_wyb
                            143 ;--------------------------------------------------------
                            144 ; special function registers
                            145 ;--------------------------------------------------------
                            146 	.area RSEG    (DATA)
                    0080    147 _P0	=	0x0080
                    0081    148 _SP	=	0x0081
                    0082    149 _DPL	=	0x0082
                    0083    150 _DPH	=	0x0083
                    0087    151 _PCON	=	0x0087
                    0088    152 _TCON	=	0x0088
                    0089    153 _TMOD	=	0x0089
                    008A    154 _TL0	=	0x008a
                    008B    155 _TL1	=	0x008b
                    008C    156 _TH0	=	0x008c
                    008D    157 _TH1	=	0x008d
                    0090    158 _P1	=	0x0090
                    0098    159 _SCON	=	0x0098
                    0099    160 _SBUF	=	0x0099
                    00A0    161 _P2	=	0x00a0
                    00A8    162 _IE	=	0x00a8
                    00B0    163 _P3	=	0x00b0
                    00B8    164 _IP	=	0x00b8
                    00D0    165 _PSW	=	0x00d0
                    00E0    166 _ACC	=	0x00e0
                    00F0    167 _B	=	0x00f0
                            168 ;--------------------------------------------------------
                            169 ; special function bits
                            170 ;--------------------------------------------------------
                            171 	.area RSEG    (DATA)
                    0080    172 _P0_0	=	0x0080
                    0081    173 _P0_1	=	0x0081
                    0082    174 _P0_2	=	0x0082
                    0083    175 _P0_3	=	0x0083
                    0084    176 _P0_4	=	0x0084
                    0085    177 _P0_5	=	0x0085
                    0086    178 _P0_6	=	0x0086
                    0087    179 _P0_7	=	0x0087
                    0088    180 _IT0	=	0x0088
                    0089    181 _IE0	=	0x0089
                    008A    182 _IT1	=	0x008a
                    008B    183 _IE1	=	0x008b
                    008C    184 _TR0	=	0x008c
                    008D    185 _TF0	=	0x008d
                    008E    186 _TR1	=	0x008e
                    008F    187 _TF1	=	0x008f
                    0090    188 _P1_0	=	0x0090
                    0091    189 _P1_1	=	0x0091
                    0092    190 _P1_2	=	0x0092
                    0093    191 _P1_3	=	0x0093
                    0094    192 _P1_4	=	0x0094
                    0095    193 _P1_5	=	0x0095
                    0096    194 _P1_6	=	0x0096
                    0097    195 _P1_7	=	0x0097
                    0098    196 _RI	=	0x0098
                    0099    197 _TI	=	0x0099
                    009A    198 _RB8	=	0x009a
                    009B    199 _TB8	=	0x009b
                    009C    200 _REN	=	0x009c
                    009D    201 _SM2	=	0x009d
                    009E    202 _SM1	=	0x009e
                    009F    203 _SM0	=	0x009f
                    00A0    204 _P2_0	=	0x00a0
                    00A1    205 _P2_1	=	0x00a1
                    00A2    206 _P2_2	=	0x00a2
                    00A3    207 _P2_3	=	0x00a3
                    00A4    208 _P2_4	=	0x00a4
                    00A5    209 _P2_5	=	0x00a5
                    00A6    210 _P2_6	=	0x00a6
                    00A7    211 _P2_7	=	0x00a7
                    00A8    212 _EX0	=	0x00a8
                    00A9    213 _ET0	=	0x00a9
                    00AA    214 _EX1	=	0x00aa
                    00AB    215 _ET1	=	0x00ab
                    00AC    216 _ES	=	0x00ac
                    00AF    217 _EA	=	0x00af
                    00B0    218 _P3_0	=	0x00b0
                    00B1    219 _P3_1	=	0x00b1
                    00B2    220 _P3_2	=	0x00b2
                    00B3    221 _P3_3	=	0x00b3
                    00B4    222 _P3_4	=	0x00b4
                    00B5    223 _P3_5	=	0x00b5
                    00B6    224 _P3_6	=	0x00b6
                    00B7    225 _P3_7	=	0x00b7
                    00B0    226 _RXD	=	0x00b0
                    00B1    227 _TXD	=	0x00b1
                    00B2    228 _INT0	=	0x00b2
                    00B3    229 _INT1	=	0x00b3
                    00B4    230 _T0	=	0x00b4
                    00B5    231 _T1	=	0x00b5
                    00B6    232 _WR	=	0x00b6
                    00B7    233 _RD	=	0x00b7
                    00B8    234 _PX0	=	0x00b8
                    00B9    235 _PT0	=	0x00b9
                    00BA    236 _PX1	=	0x00ba
                    00BB    237 _PT1	=	0x00bb
                    00BC    238 _PS	=	0x00bc
                    00D0    239 _P	=	0x00d0
                    00D1    240 _F1	=	0x00d1
                    00D2    241 _OV	=	0x00d2
                    00D3    242 _RS0	=	0x00d3
                    00D4    243 _RS1	=	0x00d4
                    00D5    244 _F0	=	0x00d5
                    00D6    245 _AC	=	0x00d6
                    00D7    246 _CY	=	0x00d7
                    0097    247 _TEST_LED	=	0x0097
                            248 ;--------------------------------------------------------
                            249 ; overlayable register banks
                            250 ;--------------------------------------------------------
                            251 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     252 	.ds 8
                            253 ;--------------------------------------------------------
                            254 ; internal ram data
                            255 ;--------------------------------------------------------
                            256 	.area DSEG    (DATA)
   0008                     257 _led_wyb::
   0008                     258 	.ds 2
   000A                     259 _led_led::
   000A                     260 	.ds 2
   000C                     261 _sekundy0::
   000C                     262 	.ds 1
   000D                     263 _sekundy1::
   000D                     264 	.ds 1
   000E                     265 _minuty0::
   000E                     266 	.ds 1
   000F                     267 _minuty1::
   000F                     268 	.ds 1
   0010                     269 _godziny0::
   0010                     270 	.ds 1
   0011                     271 _godziny1::
   0011                     272 	.ds 1
   0012                     273 _timer_buf::
   0012                     274 	.ds 1
   0013                     275 _t0_flag::
   0013                     276 	.ds 1
   0014                     277 _timer_buf2::
   0014                     278 	.ds 1
   0015                     279 _SS::
   0015                     280 	.ds 1
   0016                     281 _MM::
   0016                     282 	.ds 1
   0017                     283 _HH::
   0017                     284 	.ds 1
   0018                     285 _led_p::
   0018                     286 	.ds 1
   0019                     287 _led_b::
   0019                     288 	.ds 1
   001A                     289 _send_flag::
   001A                     290 	.ds 1
   001B                     291 _rec_flag::
   001B                     292 	.ds 1
   001C                     293 _ck::
   001C                     294 	.ds 1
   001D                     295 _pressed::
   001D                     296 	.ds 1
   001E                     297 _TIME::
   001E                     298 	.ds 6
                            299 ;--------------------------------------------------------
                            300 ; overlayable items in internal ram 
                            301 ;--------------------------------------------------------
                            302 	.area OSEG    (OVR,DATA)
                            303 ;--------------------------------------------------------
                            304 ; Stack segment in internal ram 
                            305 ;--------------------------------------------------------
                            306 	.area	SSEG	(DATA)
   0024                     307 __start__stack:
   0024                     308 	.ds	1
                            309 
                            310 ;--------------------------------------------------------
                            311 ; indirectly addressable internal ram data
                            312 ;--------------------------------------------------------
                            313 	.area ISEG    (DATA)
                            314 ;--------------------------------------------------------
                            315 ; absolute internal ram data
                            316 ;--------------------------------------------------------
                            317 	.area IABS    (ABS,DATA)
                            318 	.area IABS    (ABS,DATA)
                            319 ;--------------------------------------------------------
                            320 ; bit data
                            321 ;--------------------------------------------------------
                            322 	.area BSEG    (BIT)
                    0096    323 _SEGG_OFF	=	0x0096
                            324 ;--------------------------------------------------------
                            325 ; paged external ram data
                            326 ;--------------------------------------------------------
                            327 	.area PSEG    (PAG,XDATA)
                            328 ;--------------------------------------------------------
                            329 ; external ram data
                            330 ;--------------------------------------------------------
                            331 	.area XSEG    (XDATA)
                            332 ;--------------------------------------------------------
                            333 ; absolute external ram data
                            334 ;--------------------------------------------------------
                            335 	.area XABS    (ABS,XDATA)
                            336 ;--------------------------------------------------------
                            337 ; external initialized ram data
                            338 ;--------------------------------------------------------
                            339 	.area XISEG   (XDATA)
                            340 	.area HOME    (CODE)
                            341 	.area GSINIT0 (CODE)
                            342 	.area GSINIT1 (CODE)
                            343 	.area GSINIT2 (CODE)
                            344 	.area GSINIT3 (CODE)
                            345 	.area GSINIT4 (CODE)
                            346 	.area GSINIT5 (CODE)
                            347 	.area GSINIT  (CODE)
                            348 	.area GSFINAL (CODE)
                            349 	.area CSEG    (CODE)
                            350 ;--------------------------------------------------------
                            351 ; interrupt vector 
                            352 ;--------------------------------------------------------
                            353 	.area HOME    (CODE)
   0000                     354 __interrupt_vect:
   0000 02 00 13            355 	ljmp	__sdcc_gsinit_startup
   0003 32                  356 	reti
   0004                     357 	.ds	7
   000B 02 01 92            358 	ljmp	_t0_int
                            359 ;--------------------------------------------------------
                            360 ; global & static initialisations
                            361 ;--------------------------------------------------------
                            362 	.area HOME    (CODE)
                            363 	.area GSINIT  (CODE)
                            364 	.area GSFINAL (CODE)
                            365 	.area GSINIT  (CODE)
                            366 	.globl __sdcc_gsinit_startup
                            367 	.globl __sdcc_program_startup
                            368 	.globl __start__stack
                            369 	.globl __mcs51_genXINIT
                            370 	.globl __mcs51_genXRAMCLEAR
                            371 	.globl __mcs51_genRAMCLEAR
                            372 ;	zegarekC2.c:11: __xdata unsigned char* led_wyb = (__xdata unsigned char *)0xFF30;
   006C 75 08 30            373 	mov	_led_wyb,#0x30
   006F 75 09 FF            374 	mov	(_led_wyb + 1),#0xFF
                            375 ;	zegarekC2.c:12: __xdata unsigned char* led_led = (__xdata unsigned char *)0xFF38;
   0072 75 0A 38            376 	mov	_led_led,#0x38
   0075 75 0B FF            377 	mov	(_led_led + 1),#0xFF
                            378 ;	zegarekC2.c:36: unsigned char pressed = FALSE;
   0078 75 1D 00            379 	mov	_pressed,#0x00
                            380 ;	zegarekC2.c:40: unsigned char TIME[6] = {0, 0, 0, 0, 0, 0};
   007B 75 1E 00            381 	mov	_TIME,#0x00
   007E 75 1F 00            382 	mov	(_TIME + 0x0001),#0x00
   0081 75 20 00            383 	mov	(_TIME + 0x0002),#0x00
   0084 75 21 00            384 	mov	(_TIME + 0x0003),#0x00
   0087 75 22 00            385 	mov	(_TIME + 0x0004),#0x00
   008A 75 23 00            386 	mov	(_TIME + 0x0005),#0x00
                            387 	.area GSFINAL (CODE)
   008D 02 00 0E            388 	ljmp	__sdcc_program_startup
                            389 ;--------------------------------------------------------
                            390 ; Home
                            391 ;--------------------------------------------------------
                            392 	.area HOME    (CODE)
                            393 	.area HOME    (CODE)
   000E                     394 __sdcc_program_startup:
   000E 12 02 20            395 	lcall	_main
                            396 ;	return from main will lock up
   0011 80 FE               397 	sjmp .
                            398 ;--------------------------------------------------------
                            399 ; code
                            400 ;--------------------------------------------------------
                            401 	.area CSEG    (CODE)
                            402 ;------------------------------------------------------------
                            403 ;Allocation info for local variables in function 'inc_hour'
                            404 ;------------------------------------------------------------
                            405 ;------------------------------------------------------------
                            406 ;	zegarekC2.c:42: void inc_hour() {
                            407 ;	-----------------------------------------
                            408 ;	 function inc_hour
                            409 ;	-----------------------------------------
   0090                     410 _inc_hour:
                    0002    411 	ar2 = 0x02
                    0003    412 	ar3 = 0x03
                    0004    413 	ar4 = 0x04
                    0005    414 	ar5 = 0x05
                    0006    415 	ar6 = 0x06
                    0007    416 	ar7 = 0x07
                    0000    417 	ar0 = 0x00
                    0001    418 	ar1 = 0x01
                            419 ;	zegarekC2.c:43: HH++;
   0090 05 17               420 	inc	_HH
                            421 ;	zegarekC2.c:44: if (HH == 24) {
   0092 74 18               422 	mov	a,#0x18
   0094 B5 17 03            423 	cjne	a,_HH,00103$
                            424 ;	zegarekC2.c:45: HH = 0;
   0097 75 17 00            425 	mov	_HH,#0x00
   009A                     426 00103$:
   009A 22                  427 	ret
                            428 ;------------------------------------------------------------
                            429 ;Allocation info for local variables in function 'inc_min'
                            430 ;------------------------------------------------------------
                            431 ;------------------------------------------------------------
                            432 ;	zegarekC2.c:49: void inc_min() {
                            433 ;	-----------------------------------------
                            434 ;	 function inc_min
                            435 ;	-----------------------------------------
   009B                     436 _inc_min:
                            437 ;	zegarekC2.c:50: MM++;
   009B 05 16               438 	inc	_MM
                            439 ;	zegarekC2.c:51: if (MM == 60) {
   009D 74 3C               440 	mov	a,#0x3C
   009F B5 16 06            441 	cjne	a,_MM,00103$
                            442 ;	zegarekC2.c:52: MM = 0;
   00A2 75 16 00            443 	mov	_MM,#0x00
                            444 ;	zegarekC2.c:53: inc_hour();
   00A5 02 00 90            445 	ljmp	_inc_hour
   00A8                     446 00103$:
   00A8 22                  447 	ret
                            448 ;------------------------------------------------------------
                            449 ;Allocation info for local variables in function 'inc_sec'
                            450 ;------------------------------------------------------------
                            451 ;------------------------------------------------------------
                            452 ;	zegarekC2.c:57: void inc_sec() {
                            453 ;	-----------------------------------------
                            454 ;	 function inc_sec
                            455 ;	-----------------------------------------
   00A9                     456 _inc_sec:
                            457 ;	zegarekC2.c:58: SS++;
   00A9 05 15               458 	inc	_SS
                            459 ;	zegarekC2.c:59: if (SS == 60) {
   00AB 74 3C               460 	mov	a,#0x3C
   00AD B5 15 06            461 	cjne	a,_SS,00103$
                            462 ;	zegarekC2.c:60: SS = 0;
   00B0 75 15 00            463 	mov	_SS,#0x00
                            464 ;	zegarekC2.c:61: inc_min();
   00B3 02 00 9B            465 	ljmp	_inc_min
   00B6                     466 00103$:
   00B6 22                  467 	ret
                            468 ;------------------------------------------------------------
                            469 ;Allocation info for local variables in function 'dec_sec'
                            470 ;------------------------------------------------------------
                            471 ;------------------------------------------------------------
                            472 ;	zegarekC2.c:65: void dec_sec() {
                            473 ;	-----------------------------------------
                            474 ;	 function dec_sec
                            475 ;	-----------------------------------------
   00B7                     476 _dec_sec:
                            477 ;	zegarekC2.c:66: SS--;
   00B7 15 15               478 	dec	_SS
                            479 ;	zegarekC2.c:67: if(SS < 0) {
   00B9 E5 15               480 	mov	a,_SS
   00BB 30 E7 03            481 	jnb	acc.7,00103$
                            482 ;	zegarekC2.c:68: SS = 0;
   00BE 75 15 00            483 	mov	_SS,#0x00
   00C1                     484 00103$:
   00C1 22                  485 	ret
                            486 ;------------------------------------------------------------
                            487 ;Allocation info for local variables in function 'dec_min'
                            488 ;------------------------------------------------------------
                            489 ;------------------------------------------------------------
                            490 ;	zegarekC2.c:72: void dec_min() {
                            491 ;	-----------------------------------------
                            492 ;	 function dec_min
                            493 ;	-----------------------------------------
   00C2                     494 _dec_min:
                            495 ;	zegarekC2.c:73: MM--;
   00C2 15 16               496 	dec	_MM
                            497 ;	zegarekC2.c:74: if(MM < 0) {
   00C4 E5 16               498 	mov	a,_MM
   00C6 30 E7 03            499 	jnb	acc.7,00103$
                            500 ;	zegarekC2.c:75: MM = 0;
   00C9 75 16 00            501 	mov	_MM,#0x00
   00CC                     502 00103$:
   00CC 22                  503 	ret
                            504 ;------------------------------------------------------------
                            505 ;Allocation info for local variables in function 'dec_hour'
                            506 ;------------------------------------------------------------
                            507 ;------------------------------------------------------------
                            508 ;	zegarekC2.c:79: void dec_hour() {
                            509 ;	-----------------------------------------
                            510 ;	 function dec_hour
                            511 ;	-----------------------------------------
   00CD                     512 _dec_hour:
                            513 ;	zegarekC2.c:80: HH--;
   00CD 15 17               514 	dec	_HH
                            515 ;	zegarekC2.c:81: if(HH < 0) {
   00CF E5 17               516 	mov	a,_HH
   00D1 30 E7 03            517 	jnb	acc.7,00103$
                            518 ;	zegarekC2.c:82: HH = 0;
   00D4 75 17 00            519 	mov	_HH,#0x00
   00D7                     520 00103$:
   00D7 22                  521 	ret
                            522 ;------------------------------------------------------------
                            523 ;Allocation info for local variables in function 'calculate'
                            524 ;------------------------------------------------------------
                            525 ;------------------------------------------------------------
                            526 ;	zegarekC2.c:86: void calculate() {
                            527 ;	-----------------------------------------
                            528 ;	 function calculate
                            529 ;	-----------------------------------------
   00D8                     530 _calculate:
                            531 ;	zegarekC2.c:87: sekundy0 = WZOR[SS % 10];
   00D8 75 F0 0A            532 	mov	b,#0x0a
   00DB E5 15               533 	mov	a,_SS
   00DD C2 D5               534 	clr	F0
   00DF 30 E7 04            535 	jnb	acc.7,00103$
   00E2 D2 D5               536 	setb	F0
   00E4 F4                  537 	cpl	a
   00E5 04                  538 	inc	a
   00E6                     539 00103$:
   00E6 84                  540 	div	ab
   00E7 E5 F0               541 	mov	a,b
   00E9 30 D5 02            542 	jnb	F0,00104$
   00EC F4                  543 	cpl	a
   00ED 04                  544 	inc	a
   00EE                     545 00104$:
   00EE FA                  546 	mov	r2,a
   00EF 90 02 CB            547 	mov	dptr,#_WZOR
   00F2 93                  548 	movc	a,@a+dptr
   00F3 F5 0C               549 	mov	_sekundy0,a
                            550 ;	zegarekC2.c:88: sekundy1 = WZOR[SS / 10];
   00F5 C2 D5               551 	clr	F0
   00F7 75 F0 0A            552 	mov	b,#0x0a
   00FA E5 15               553 	mov	a,_SS
   00FC 30 E7 04            554 	jnb	acc.7,00105$
   00FF B2 D5               555 	cpl	F0
   0101 F4                  556 	cpl	a
   0102 04                  557 	inc	a
   0103                     558 00105$:
   0103 84                  559 	div	ab
   0104 30 D5 02            560 	jnb	F0,00106$
   0107 F4                  561 	cpl	a
   0108 04                  562 	inc	a
   0109                     563 00106$:
   0109 FA                  564 	mov	r2,a
   010A 90 02 CB            565 	mov	dptr,#_WZOR
   010D 93                  566 	movc	a,@a+dptr
   010E F5 0D               567 	mov	_sekundy1,a
                            568 ;	zegarekC2.c:90: minuty0 = WZOR[MM % 10];
   0110 75 F0 0A            569 	mov	b,#0x0a
   0113 E5 16               570 	mov	a,_MM
   0115 C2 D5               571 	clr	F0
   0117 30 E7 04            572 	jnb	acc.7,00107$
   011A D2 D5               573 	setb	F0
   011C F4                  574 	cpl	a
   011D 04                  575 	inc	a
   011E                     576 00107$:
   011E 84                  577 	div	ab
   011F E5 F0               578 	mov	a,b
   0121 30 D5 02            579 	jnb	F0,00108$
   0124 F4                  580 	cpl	a
   0125 04                  581 	inc	a
   0126                     582 00108$:
   0126 FA                  583 	mov	r2,a
   0127 90 02 CB            584 	mov	dptr,#_WZOR
   012A 93                  585 	movc	a,@a+dptr
   012B F5 0E               586 	mov	_minuty0,a
                            587 ;	zegarekC2.c:91: minuty1 = WZOR[MM / 10];
   012D C2 D5               588 	clr	F0
   012F 75 F0 0A            589 	mov	b,#0x0a
   0132 E5 16               590 	mov	a,_MM
   0134 30 E7 04            591 	jnb	acc.7,00109$
   0137 B2 D5               592 	cpl	F0
   0139 F4                  593 	cpl	a
   013A 04                  594 	inc	a
   013B                     595 00109$:
   013B 84                  596 	div	ab
   013C 30 D5 02            597 	jnb	F0,00110$
   013F F4                  598 	cpl	a
   0140 04                  599 	inc	a
   0141                     600 00110$:
   0141 FA                  601 	mov	r2,a
   0142 90 02 CB            602 	mov	dptr,#_WZOR
   0145 93                  603 	movc	a,@a+dptr
   0146 F5 0F               604 	mov	_minuty1,a
                            605 ;	zegarekC2.c:93: godziny0 = WZOR[HH % 10];
   0148 75 F0 0A            606 	mov	b,#0x0a
   014B E5 17               607 	mov	a,_HH
   014D C2 D5               608 	clr	F0
   014F 30 E7 04            609 	jnb	acc.7,00111$
   0152 D2 D5               610 	setb	F0
   0154 F4                  611 	cpl	a
   0155 04                  612 	inc	a
   0156                     613 00111$:
   0156 84                  614 	div	ab
   0157 E5 F0               615 	mov	a,b
   0159 30 D5 02            616 	jnb	F0,00112$
   015C F4                  617 	cpl	a
   015D 04                  618 	inc	a
   015E                     619 00112$:
   015E FA                  620 	mov	r2,a
   015F 90 02 CB            621 	mov	dptr,#_WZOR
   0162 93                  622 	movc	a,@a+dptr
   0163 F5 10               623 	mov	_godziny0,a
                            624 ;	zegarekC2.c:94: godziny1 = WZOR[HH / 10];
   0165 C2 D5               625 	clr	F0
   0167 75 F0 0A            626 	mov	b,#0x0a
   016A E5 17               627 	mov	a,_HH
   016C 30 E7 04            628 	jnb	acc.7,00113$
   016F B2 D5               629 	cpl	F0
   0171 F4                  630 	cpl	a
   0172 04                  631 	inc	a
   0173                     632 00113$:
   0173 84                  633 	div	ab
   0174 30 D5 02            634 	jnb	F0,00114$
   0177 F4                  635 	cpl	a
   0178 04                  636 	inc	a
   0179                     637 00114$:
   0179 90 02 CB            638 	mov	dptr,#_WZOR
   017C 93                  639 	movc	a,@a+dptr
   017D F5 11               640 	mov	_godziny1,a
                            641 ;	zegarekC2.c:96: TIME[0] = sekundy0;
   017F 85 0C 1E            642 	mov	_TIME,_sekundy0
                            643 ;	zegarekC2.c:97: TIME[1] = sekundy1;
   0182 85 0D 1F            644 	mov	(_TIME + 0x0001),_sekundy1
                            645 ;	zegarekC2.c:98: TIME[2] = minuty0;
   0185 85 0E 20            646 	mov	(_TIME + 0x0002),_minuty0
                            647 ;	zegarekC2.c:99: TIME[3] = minuty1;
   0188 85 0F 21            648 	mov	(_TIME + 0x0003),_minuty1
                            649 ;	zegarekC2.c:100: TIME[4] = godziny0;
   018B 85 10 22            650 	mov	(_TIME + 0x0004),_godziny0
                            651 ;	zegarekC2.c:101: TIME[5] = godziny1;
   018E 85 11 23            652 	mov	(_TIME + 0x0005),_godziny1
   0191 22                  653 	ret
                            654 ;------------------------------------------------------------
                            655 ;Allocation info for local variables in function 't0_int'
                            656 ;------------------------------------------------------------
                            657 ;------------------------------------------------------------
                            658 ;	zegarekC2.c:104: void t0_int(void) interrupt(1) {
                            659 ;	-----------------------------------------
                            660 ;	 function t0_int
                            661 ;	-----------------------------------------
   0192                     662 _t0_int:
                            663 ;	zegarekC2.c:105: TH0 = TH_0; // ustawia flagê sygnalizuj¹c¹
   0192 75 8C E2            664 	mov	_TH0,#0xE2
                            665 ;	zegarekC2.c:106: t0_flag = TRUE; // fakt wyst¹pienia przerwania
   0195 75 13 01            666 	mov	_t0_flag,#0x01
   0198 32                  667 	reti
                            668 ;	eliminated unneeded push/pop psw
                            669 ;	eliminated unneeded push/pop dpl
                            670 ;	eliminated unneeded push/pop dph
                            671 ;	eliminated unneeded push/pop b
                            672 ;	eliminated unneeded push/pop acc
                            673 ;------------------------------------------------------------
                            674 ;Allocation info for local variables in function 't0_serv'
                            675 ;------------------------------------------------------------
                            676 ;------------------------------------------------------------
                            677 ;	zegarekC2.c:109: void t0_serv(void) {
                            678 ;	-----------------------------------------
                            679 ;	 function t0_serv
                            680 ;	-----------------------------------------
   0199                     681 _t0_serv:
                            682 ;	zegarekC2.c:110: if (timer_buf)
   0199 E5 12               683 	mov	a,_timer_buf
   019B 60 03               684 	jz	00105$
                            685 ;	zegarekC2.c:111: timer_buf--; // zmniejsz stan czasomierza
   019D 15 12               686 	dec	_timer_buf
   019F 22                  687 	ret
   01A0                     688 00105$:
                            689 ;	zegarekC2.c:113: timer_buf = T100; // regeneruj licznik (100ms)
   01A0 75 12 C0            690 	mov	_timer_buf,#0xC0
                            691 ;	zegarekC2.c:114: if (timer_buf2) {
   01A3 E5 14               692 	mov	a,_timer_buf2
   01A5 60 03               693 	jz	00102$
                            694 ;	zegarekC2.c:115: timer_buf2--;
   01A7 15 14               695 	dec	_timer_buf2
   01A9 22                  696 	ret
   01AA                     697 00102$:
                            698 ;	zegarekC2.c:117: timer_buf2 = T10;
   01AA 75 14 04            699 	mov	_timer_buf2,#0x04
                            700 ;	zegarekC2.c:118: inc_sec();
   01AD 12 00 A9            701 	lcall	_inc_sec
                            702 ;	zegarekC2.c:119: calculate();
   01B0 02 00 D8            703 	ljmp	_calculate
                            704 ;------------------------------------------------------------
                            705 ;Allocation info for local variables in function 'key_handling'
                            706 ;------------------------------------------------------------
                            707 ;------------------------------------------------------------
                            708 ;	zegarekC2.c:124: void key_handling() {
                            709 ;	-----------------------------------------
                            710 ;	 function key_handling
                            711 ;	-----------------------------------------
   01B3                     712 _key_handling:
                            713 ;	zegarekC2.c:125: if(pressed == FALSE) {
   01B3 E5 1D               714 	mov	a,_pressed
   01B5 70 0E               715 	jnz	00104$
                            716 ;	zegarekC2.c:126: if(ck == 1) { //enter inkrementuje sekundy
   01B7 74 01               717 	mov	a,#0x01
   01B9 B5 1C 09            718 	cjne	a,_ck,00104$
                            719 ;	zegarekC2.c:127: inc_sec();
   01BC 12 00 A9            720 	lcall	_inc_sec
                            721 ;	zegarekC2.c:128: pressed = TRUE;
   01BF 75 1D 01            722 	mov	_pressed,#0x01
                            723 ;	zegarekC2.c:129: calculate();
   01C2 12 00 D8            724 	lcall	_calculate
   01C5                     725 00104$:
                            726 ;	zegarekC2.c:133: if(pressed == FALSE) {
   01C5 E5 1D               727 	mov	a,_pressed
   01C7 70 0E               728 	jnz	00108$
                            729 ;	zegarekC2.c:134: if(ck == 2) { //escape dekrementuje sekundy
   01C9 74 02               730 	mov	a,#0x02
   01CB B5 1C 09            731 	cjne	a,_ck,00108$
                            732 ;	zegarekC2.c:135: dec_sec();
   01CE 12 00 B7            733 	lcall	_dec_sec
                            734 ;	zegarekC2.c:136: pressed = TRUE;
   01D1 75 1D 01            735 	mov	_pressed,#0x01
                            736 ;	zegarekC2.c:137: calculate();
   01D4 12 00 D8            737 	lcall	_calculate
   01D7                     738 00108$:
                            739 ;	zegarekC2.c:141: if(pressed == FALSE) {
   01D7 E5 1D               740 	mov	a,_pressed
   01D9 70 0E               741 	jnz	00112$
                            742 ;	zegarekC2.c:142: if(ck == 4) { //strzalka w prawo dekrementuje godziny
   01DB 74 04               743 	mov	a,#0x04
   01DD B5 1C 09            744 	cjne	a,_ck,00112$
                            745 ;	zegarekC2.c:143: dec_hour();
   01E0 12 00 CD            746 	lcall	_dec_hour
                            747 ;	zegarekC2.c:144: pressed = TRUE;
   01E3 75 1D 01            748 	mov	_pressed,#0x01
                            749 ;	zegarekC2.c:145: calculate();
   01E6 12 00 D8            750 	lcall	_calculate
   01E9                     751 00112$:
                            752 ;	zegarekC2.c:149: if(pressed == FALSE) {
   01E9 E5 1D               753 	mov	a,_pressed
   01EB 70 0E               754 	jnz	00116$
                            755 ;	zegarekC2.c:150: if(ck == 8) { //strzalka w prawo inkrementuje minuty
   01ED 74 08               756 	mov	a,#0x08
   01EF B5 1C 09            757 	cjne	a,_ck,00116$
                            758 ;	zegarekC2.c:151: inc_min();
   01F2 12 00 9B            759 	lcall	_inc_min
                            760 ;	zegarekC2.c:152: pressed = TRUE;
   01F5 75 1D 01            761 	mov	_pressed,#0x01
                            762 ;	zegarekC2.c:153: calculate();
   01F8 12 00 D8            763 	lcall	_calculate
   01FB                     764 00116$:
                            765 ;	zegarekC2.c:157: if(pressed == FALSE) {
   01FB E5 1D               766 	mov	a,_pressed
   01FD 70 0E               767 	jnz	00120$
                            768 ;	zegarekC2.c:158: if(ck == 16) { //strzalka w prawo dekrementuje minuty
   01FF 74 10               769 	mov	a,#0x10
   0201 B5 1C 09            770 	cjne	a,_ck,00120$
                            771 ;	zegarekC2.c:159: dec_min();
   0204 12 00 C2            772 	lcall	_dec_min
                            773 ;	zegarekC2.c:160: pressed = TRUE;
   0207 75 1D 01            774 	mov	_pressed,#0x01
                            775 ;	zegarekC2.c:161: calculate();
   020A 12 00 D8            776 	lcall	_calculate
   020D                     777 00120$:
                            778 ;	zegarekC2.c:165: if(pressed == FALSE) {
   020D E5 1D               779 	mov	a,_pressed
   020F 70 0E               780 	jnz	00125$
                            781 ;	zegarekC2.c:166: if(ck == 32) { //strzalka w prawo inkrementuje godziny
   0211 74 20               782 	mov	a,#0x20
   0213 B5 1C 09            783 	cjne	a,_ck,00125$
                            784 ;	zegarekC2.c:167: inc_hour();
   0216 12 00 90            785 	lcall	_inc_hour
                            786 ;	zegarekC2.c:168: pressed = TRUE;
   0219 75 1D 01            787 	mov	_pressed,#0x01
                            788 ;	zegarekC2.c:169: calculate();
   021C 02 00 D8            789 	ljmp	_calculate
   021F                     790 00125$:
   021F 22                  791 	ret
                            792 ;------------------------------------------------------------
                            793 ;Allocation info for local variables in function 'main'
                            794 ;------------------------------------------------------------
                            795 ;------------------------------------------------------------
                            796 ;	zegarekC2.c:174: void main() {
                            797 ;	-----------------------------------------
                            798 ;	 function main
                            799 ;	-----------------------------------------
   0220                     800 _main:
                            801 ;	zegarekC2.c:175: TMOD = 0b01110000;
   0220 75 89 70            802 	mov	_TMOD,#0x70
                            803 ;	zegarekC2.c:177: TH0 = TH_0;
   0223 75 8C E2            804 	mov	_TH0,#0xE2
                            805 ;	zegarekC2.c:179: TL1 = 0xFD;
   0226 75 8B FD            806 	mov	_TL1,#0xFD
                            807 ;	zegarekC2.c:180: TH1 = 0xFD;
   0229 75 8D FD            808 	mov	_TH1,#0xFD
                            809 ;	zegarekC2.c:182: timer_buf = T100;
   022C 75 12 C0            810 	mov	_timer_buf,#0xC0
                            811 ;	zegarekC2.c:183: send_flag = FALSE;
   022F 75 1A 00            812 	mov	_send_flag,#0x00
                            813 ;	zegarekC2.c:184: rec_flag = FALSE;
   0232 75 1B 00            814 	mov	_rec_flag,#0x00
                            815 ;	zegarekC2.c:185: t0_flag = FALSE;
   0235 75 13 00            816 	mov	_t0_flag,#0x00
                            817 ;	zegarekC2.c:187: ET0 = TRUE;
   0238 D2 A9               818 	setb	_ET0
                            819 ;	zegarekC2.c:188: ES = TRUE;
   023A D2 AC               820 	setb	_ES
                            821 ;	zegarekC2.c:189: EA = TRUE;
   023C D2 AF               822 	setb	_EA
                            823 ;	zegarekC2.c:190: TR0 = TRUE;
   023E D2 8C               824 	setb	_TR0
                            825 ;	zegarekC2.c:191: TR1 = TRUE;
   0240 D2 8E               826 	setb	_TR1
                            827 ;	zegarekC2.c:193: SS = 22;
   0242 75 15 16            828 	mov	_SS,#0x16
                            829 ;	zegarekC2.c:194: MM = 22;
   0245 75 16 16            830 	mov	_MM,#0x16
                            831 ;	zegarekC2.c:195: HH = 20;
   0248 75 17 14            832 	mov	_HH,#0x14
                            833 ;	zegarekC2.c:197: led_p = 0;
   024B 75 18 00            834 	mov	_led_p,#0x00
                            835 ;	zegarekC2.c:198: led_b = 1;
   024E 75 19 01            836 	mov	_led_b,#0x01
                            837 ;	zegarekC2.c:200: calculate();
   0251 12 00 D8            838 	lcall	_calculate
                            839 ;	zegarekC2.c:202: while (TRUE) {
   0254                     840 00116$:
                            841 ;	zegarekC2.c:203: if (t0_flag) {
   0254 E5 13               842 	mov	a,_t0_flag
   0256 60 FC               843 	jz	00116$
                            844 ;	zegarekC2.c:204: if (led_p < 6) {
   0258 74 FA               845 	mov	a,#0x100 - 0x06
   025A 25 18               846 	add	a,_led_p
   025C 40 40               847 	jc	00111$
                            848 ;	zegarekC2.c:205: SEGG_OFF = TRUE;
   025E D2 96               849 	setb	_SEGG_OFF
                            850 ;	zegarekC2.c:206: *led_wyb = led_b;
   0260 85 08 82            851 	mov	dpl,_led_wyb
   0263 85 09 83            852 	mov	dph,(_led_wyb + 1)
   0266 E5 19               853 	mov	a,_led_b
   0268 F0                  854 	movx	@dptr,a
                            855 ;	zegarekC2.c:207: *led_led = TIME[led_p];
   0269 85 0A 82            856 	mov	dpl,_led_led
   026C 85 0B 83            857 	mov	dph,(_led_led + 1)
   026F E5 18               858 	mov	a,_led_p
   0271 24 1E               859 	add	a,#_TIME
   0273 F8                  860 	mov	r0,a
   0274 E6                  861 	mov	a,@r0
   0275 FA                  862 	mov	r2,a
   0276 F0                  863 	movx	@dptr,a
                            864 ;	zegarekC2.c:208: SEGG_OFF = FALSE;
   0277 C2 96               865 	clr	_SEGG_OFF
                            866 ;	zegarekC2.c:209: led_p++;
   0279 05 18               867 	inc	_led_p
                            868 ;	zegarekC2.c:210: if(P3_5 == TRUE) {
   027B 30 B5 08            869 	jnb	_P3_5,00108$
                            870 ;	zegarekC2.c:211: ck = led_b;
   027E 85 19 1C            871 	mov	_ck,_led_b
                            872 ;	zegarekC2.c:212: key_handling();
   0281 12 01 B3            873 	lcall	_key_handling
   0284 80 10               874 	sjmp	00109$
   0286                     875 00108$:
                            876 ;	zegarekC2.c:214: if(P3_5 == FALSE) {
   0286 20 B5 0D            877 	jb	_P3_5,00109$
                            878 ;	zegarekC2.c:215: if(led_b == ck) {
   0289 E5 1C               879 	mov	a,_ck
   028B B5 19 08            880 	cjne	a,_led_b,00109$
                            881 ;	zegarekC2.c:216: if(pressed == TRUE) {
   028E 74 01               882 	mov	a,#0x01
   0290 B5 1D 03            883 	cjne	a,_pressed,00109$
                            884 ;	zegarekC2.c:217: pressed = FALSE;
   0293 75 1D 00            885 	mov	_pressed,#0x00
   0296                     886 00109$:
                            887 ;	zegarekC2.c:222: led_b += led_b;
   0296 E5 19               888 	mov	a,_led_b
   0298 25 19               889 	add	a,_led_b
   029A F5 19               890 	mov	_led_b,a
   029C 80 21               891 	sjmp	00112$
   029E                     892 00111$:
                            893 ;	zegarekC2.c:224: SEGG_OFF = TRUE;
   029E D2 96               894 	setb	_SEGG_OFF
                            895 ;	zegarekC2.c:225: *led_wyb = led_b;
   02A0 85 08 82            896 	mov	dpl,_led_wyb
   02A3 85 09 83            897 	mov	dph,(_led_wyb + 1)
   02A6 E5 19               898 	mov	a,_led_b
   02A8 F0                  899 	movx	@dptr,a
                            900 ;	zegarekC2.c:226: *led_led = TIME[led_p];
   02A9 85 0A 82            901 	mov	dpl,_led_led
   02AC 85 0B 83            902 	mov	dph,(_led_led + 1)
   02AF E5 18               903 	mov	a,_led_p
   02B1 24 1E               904 	add	a,#_TIME
   02B3 F8                  905 	mov	r0,a
   02B4 E6                  906 	mov	a,@r0
   02B5 FA                  907 	mov	r2,a
   02B6 F0                  908 	movx	@dptr,a
                            909 ;	zegarekC2.c:227: SEGG_OFF = FALSE;
   02B7 C2 96               910 	clr	_SEGG_OFF
                            911 ;	zegarekC2.c:228: led_p = 0;
   02B9 75 18 00            912 	mov	_led_p,#0x00
                            913 ;	zegarekC2.c:229: led_b = 1;
   02BC 75 19 01            914 	mov	_led_b,#0x01
   02BF                     915 00112$:
                            916 ;	zegarekC2.c:231: t0_flag = FALSE;
   02BF 75 13 00            917 	mov	_t0_flag,#0x00
                            918 ;	zegarekC2.c:232: t0_serv();
   02C2 12 01 99            919 	lcall	_t0_serv
   02C5 80 8D               920 	sjmp	00116$
                            921 	.area CSEG    (CODE)
                            922 	.area CONST   (CODE)
   02CB                     923 _WZOR:
   02CB 3F                  924 	.db #0x3F
   02CC 06                  925 	.db #0x06
   02CD 5B                  926 	.db #0x5B
   02CE 4F                  927 	.db #0x4F
   02CF 66                  928 	.db #0x66
   02D0 6D                  929 	.db #0x6D
   02D1 7D                  930 	.db #0x7D
   02D2 07                  931 	.db #0x07
   02D3 7F                  932 	.db #0x7F
   02D4 6F                  933 	.db #0x6F
                            934 	.area XINIT   (CODE)
                            935 	.area CABS    (ABS,CODE)
