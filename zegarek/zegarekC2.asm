;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 2.9.0 #5416 (Mar 22 2009) (MINGW32)
; This file was generated Sun Dec 24 20:13:45 2023
;--------------------------------------------------------
	.module zegarekC2
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _WZOR
	.globl _main
	.globl _key_handling
	.globl _t0_serv
	.globl _t0_int
	.globl _calculate
	.globl _dec_hour
	.globl _dec_min
	.globl _dec_sec
	.globl _inc_sec
	.globl _inc_min
	.globl _inc_hour
	.globl _TEST_LED
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _SEGG_OFF
	.globl _TIME
	.globl _pressed
	.globl _ck
	.globl _rec_flag
	.globl _send_flag
	.globl _led_b
	.globl _led_p
	.globl _HH
	.globl _MM
	.globl _SS
	.globl _timer_buf2
	.globl _t0_flag
	.globl _timer_buf
	.globl _godziny1
	.globl _godziny0
	.globl _minuty1
	.globl _minuty0
	.globl _sekundy1
	.globl _sekundy0
	.globl _led_led
	.globl _led_wyb
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_TEST_LED	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_led_wyb::
	.ds 2
_led_led::
	.ds 2
_sekundy0::
	.ds 1
_sekundy1::
	.ds 1
_minuty0::
	.ds 1
_minuty1::
	.ds 1
_godziny0::
	.ds 1
_godziny1::
	.ds 1
_timer_buf::
	.ds 1
_t0_flag::
	.ds 1
_timer_buf2::
	.ds 1
_SS::
	.ds 1
_MM::
	.ds 1
_HH::
	.ds 1
_led_p::
	.ds 1
_led_b::
	.ds 1
_send_flag::
	.ds 1
_rec_flag::
	.ds 1
_ck::
	.ds 1
_pressed::
	.ds 1
_TIME::
	.ds 6
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
_SEGG_OFF	=	0x0096
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_t0_int
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	zegarekC2.c:11: __xdata unsigned char* led_wyb = (__xdata unsigned char *)0xFF30;
	mov	_led_wyb,#0x30
	mov	(_led_wyb + 1),#0xFF
;	zegarekC2.c:12: __xdata unsigned char* led_led = (__xdata unsigned char *)0xFF38;
	mov	_led_led,#0x38
	mov	(_led_led + 1),#0xFF
;	zegarekC2.c:36: unsigned char pressed = FALSE;
	mov	_pressed,#0x00
;	zegarekC2.c:40: unsigned char TIME[6] = {0, 0, 0, 0, 0, 0};
	mov	_TIME,#0x00
	mov	(_TIME + 0x0001),#0x00
	mov	(_TIME + 0x0002),#0x00
	mov	(_TIME + 0x0003),#0x00
	mov	(_TIME + 0x0004),#0x00
	mov	(_TIME + 0x0005),#0x00
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_hour'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:42: void inc_hour() {
;	-----------------------------------------
;	 function inc_hour
;	-----------------------------------------
_inc_hour:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	zegarekC2.c:43: HH++;
	inc	_HH
;	zegarekC2.c:44: if (HH == 24) {
	mov	a,#0x18
	cjne	a,_HH,00103$
;	zegarekC2.c:45: HH = 0;
	mov	_HH,#0x00
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_min'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:49: void inc_min() {
;	-----------------------------------------
;	 function inc_min
;	-----------------------------------------
_inc_min:
;	zegarekC2.c:50: MM++;
	inc	_MM
;	zegarekC2.c:51: if (MM == 60) {
	mov	a,#0x3C
	cjne	a,_MM,00103$
;	zegarekC2.c:52: MM = 0;
	mov	_MM,#0x00
;	zegarekC2.c:53: inc_hour();
	ljmp	_inc_hour
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'inc_sec'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:57: void inc_sec() {
;	-----------------------------------------
;	 function inc_sec
;	-----------------------------------------
_inc_sec:
;	zegarekC2.c:58: SS++;
	inc	_SS
;	zegarekC2.c:59: if (SS == 60) {
	mov	a,#0x3C
	cjne	a,_SS,00103$
;	zegarekC2.c:60: SS = 0;
	mov	_SS,#0x00
;	zegarekC2.c:61: inc_min();
	ljmp	_inc_min
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_sec'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:65: void dec_sec() {
;	-----------------------------------------
;	 function dec_sec
;	-----------------------------------------
_dec_sec:
;	zegarekC2.c:66: SS--;
	dec	_SS
;	zegarekC2.c:67: if(SS < 0) {
	mov	a,_SS
	jnb	acc.7,00103$
;	zegarekC2.c:68: SS = 0;
	mov	_SS,#0x00
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_min'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:72: void dec_min() {
;	-----------------------------------------
;	 function dec_min
;	-----------------------------------------
_dec_min:
;	zegarekC2.c:73: MM--;
	dec	_MM
;	zegarekC2.c:74: if(MM < 0) {
	mov	a,_MM
	jnb	acc.7,00103$
;	zegarekC2.c:75: MM = 0;
	mov	_MM,#0x00
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'dec_hour'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:79: void dec_hour() {
;	-----------------------------------------
;	 function dec_hour
;	-----------------------------------------
_dec_hour:
;	zegarekC2.c:80: HH--;
	dec	_HH
;	zegarekC2.c:81: if(HH < 0) {
	mov	a,_HH
	jnb	acc.7,00103$
;	zegarekC2.c:82: HH = 0;
	mov	_HH,#0x00
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:86: void calculate() {
;	-----------------------------------------
;	 function calculate
;	-----------------------------------------
_calculate:
;	zegarekC2.c:87: sekundy0 = WZOR[SS % 10];
	mov	b,#0x0a
	mov	a,_SS
	clr	F0
	jnb	acc.7,00103$
	setb	F0
	cpl	a
	inc	a
00103$:
	div	ab
	mov	a,b
	jnb	F0,00104$
	cpl	a
	inc	a
00104$:
	mov	r2,a
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_sekundy0,a
;	zegarekC2.c:88: sekundy1 = WZOR[SS / 10];
	clr	F0
	mov	b,#0x0a
	mov	a,_SS
	jnb	acc.7,00105$
	cpl	F0
	cpl	a
	inc	a
00105$:
	div	ab
	jnb	F0,00106$
	cpl	a
	inc	a
00106$:
	mov	r2,a
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_sekundy1,a
;	zegarekC2.c:90: minuty0 = WZOR[MM % 10];
	mov	b,#0x0a
	mov	a,_MM
	clr	F0
	jnb	acc.7,00107$
	setb	F0
	cpl	a
	inc	a
00107$:
	div	ab
	mov	a,b
	jnb	F0,00108$
	cpl	a
	inc	a
00108$:
	mov	r2,a
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_minuty0,a
;	zegarekC2.c:91: minuty1 = WZOR[MM / 10];
	clr	F0
	mov	b,#0x0a
	mov	a,_MM
	jnb	acc.7,00109$
	cpl	F0
	cpl	a
	inc	a
00109$:
	div	ab
	jnb	F0,00110$
	cpl	a
	inc	a
00110$:
	mov	r2,a
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_minuty1,a
;	zegarekC2.c:93: godziny0 = WZOR[HH % 10];
	mov	b,#0x0a
	mov	a,_HH
	clr	F0
	jnb	acc.7,00111$
	setb	F0
	cpl	a
	inc	a
00111$:
	div	ab
	mov	a,b
	jnb	F0,00112$
	cpl	a
	inc	a
00112$:
	mov	r2,a
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_godziny0,a
;	zegarekC2.c:94: godziny1 = WZOR[HH / 10];
	clr	F0
	mov	b,#0x0a
	mov	a,_HH
	jnb	acc.7,00113$
	cpl	F0
	cpl	a
	inc	a
00113$:
	div	ab
	jnb	F0,00114$
	cpl	a
	inc	a
00114$:
	mov	dptr,#_WZOR
	movc	a,@a+dptr
	mov	_godziny1,a
;	zegarekC2.c:96: TIME[0] = sekundy0;
	mov	_TIME,_sekundy0
;	zegarekC2.c:97: TIME[1] = sekundy1;
	mov	(_TIME + 0x0001),_sekundy1
;	zegarekC2.c:98: TIME[2] = minuty0;
	mov	(_TIME + 0x0002),_minuty0
;	zegarekC2.c:99: TIME[3] = minuty1;
	mov	(_TIME + 0x0003),_minuty1
;	zegarekC2.c:100: TIME[4] = godziny0;
	mov	(_TIME + 0x0004),_godziny0
;	zegarekC2.c:101: TIME[5] = godziny1;
	mov	(_TIME + 0x0005),_godziny1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 't0_int'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:104: void t0_int(void) interrupt(1) {
;	-----------------------------------------
;	 function t0_int
;	-----------------------------------------
_t0_int:
;	zegarekC2.c:105: TH0 = TH_0; // ustawia flagê sygnalizuj¹c¹
	mov	_TH0,#0xE2
;	zegarekC2.c:106: t0_flag = TRUE; // fakt wyst¹pienia przerwania
	mov	_t0_flag,#0x01
	reti
;	eliminated unneeded push/pop psw
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;	eliminated unneeded push/pop acc
;------------------------------------------------------------
;Allocation info for local variables in function 't0_serv'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:109: void t0_serv(void) {
;	-----------------------------------------
;	 function t0_serv
;	-----------------------------------------
_t0_serv:
;	zegarekC2.c:110: if (timer_buf)
	mov	a,_timer_buf
	jz	00105$
;	zegarekC2.c:111: timer_buf--; // zmniejsz stan czasomierza
	dec	_timer_buf
	ret
00105$:
;	zegarekC2.c:113: timer_buf = T100; // regeneruj licznik (100ms)
	mov	_timer_buf,#0xC0
;	zegarekC2.c:114: if (timer_buf2) {
	mov	a,_timer_buf2
	jz	00102$
;	zegarekC2.c:115: timer_buf2--;
	dec	_timer_buf2
	ret
00102$:
;	zegarekC2.c:117: timer_buf2 = T10;
	mov	_timer_buf2,#0x04
;	zegarekC2.c:118: inc_sec();
	lcall	_inc_sec
;	zegarekC2.c:119: calculate();
	ljmp	_calculate
;------------------------------------------------------------
;Allocation info for local variables in function 'key_handling'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:124: void key_handling() {
;	-----------------------------------------
;	 function key_handling
;	-----------------------------------------
_key_handling:
;	zegarekC2.c:125: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00104$
;	zegarekC2.c:126: if(ck == 1) { //enter inkrementuje sekundy
	mov	a,#0x01
	cjne	a,_ck,00104$
;	zegarekC2.c:127: inc_sec();
	lcall	_inc_sec
;	zegarekC2.c:128: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:129: calculate();
	lcall	_calculate
00104$:
;	zegarekC2.c:133: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00108$
;	zegarekC2.c:134: if(ck == 2) { //escape dekrementuje sekundy
	mov	a,#0x02
	cjne	a,_ck,00108$
;	zegarekC2.c:135: dec_sec();
	lcall	_dec_sec
;	zegarekC2.c:136: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:137: calculate();
	lcall	_calculate
00108$:
;	zegarekC2.c:141: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00112$
;	zegarekC2.c:142: if(ck == 4) { //strzalka w prawo dekrementuje godziny
	mov	a,#0x04
	cjne	a,_ck,00112$
;	zegarekC2.c:143: dec_hour();
	lcall	_dec_hour
;	zegarekC2.c:144: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:145: calculate();
	lcall	_calculate
00112$:
;	zegarekC2.c:149: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00116$
;	zegarekC2.c:150: if(ck == 8) { //strzalka w prawo inkrementuje minuty
	mov	a,#0x08
	cjne	a,_ck,00116$
;	zegarekC2.c:151: inc_min();
	lcall	_inc_min
;	zegarekC2.c:152: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:153: calculate();
	lcall	_calculate
00116$:
;	zegarekC2.c:157: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00120$
;	zegarekC2.c:158: if(ck == 16) { //strzalka w prawo dekrementuje minuty
	mov	a,#0x10
	cjne	a,_ck,00120$
;	zegarekC2.c:159: dec_min();
	lcall	_dec_min
;	zegarekC2.c:160: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:161: calculate();
	lcall	_calculate
00120$:
;	zegarekC2.c:165: if(pressed == FALSE) {
	mov	a,_pressed
	jnz	00125$
;	zegarekC2.c:166: if(ck == 32) { //strzalka w prawo inkrementuje godziny
	mov	a,#0x20
	cjne	a,_ck,00125$
;	zegarekC2.c:167: inc_hour();
	lcall	_inc_hour
;	zegarekC2.c:168: pressed = TRUE;
	mov	_pressed,#0x01
;	zegarekC2.c:169: calculate();
	ljmp	_calculate
00125$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;------------------------------------------------------------
;	zegarekC2.c:174: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	zegarekC2.c:175: TMOD = 0b01110000;
	mov	_TMOD,#0x70
;	zegarekC2.c:177: TH0 = TH_0;
	mov	_TH0,#0xE2
;	zegarekC2.c:179: TL1 = 0xFD;
	mov	_TL1,#0xFD
;	zegarekC2.c:180: TH1 = 0xFD;
	mov	_TH1,#0xFD
;	zegarekC2.c:182: timer_buf = T100;
	mov	_timer_buf,#0xC0
;	zegarekC2.c:183: send_flag = FALSE;
	mov	_send_flag,#0x00
;	zegarekC2.c:184: rec_flag = FALSE;
	mov	_rec_flag,#0x00
;	zegarekC2.c:185: t0_flag = FALSE;
	mov	_t0_flag,#0x00
;	zegarekC2.c:187: ET0 = TRUE;
	setb	_ET0
;	zegarekC2.c:188: ES = TRUE;
	setb	_ES
;	zegarekC2.c:189: EA = TRUE;
	setb	_EA
;	zegarekC2.c:190: TR0 = TRUE;
	setb	_TR0
;	zegarekC2.c:191: TR1 = TRUE;
	setb	_TR1
;	zegarekC2.c:193: SS = 22;
	mov	_SS,#0x16
;	zegarekC2.c:194: MM = 22;
	mov	_MM,#0x16
;	zegarekC2.c:195: HH = 20;
	mov	_HH,#0x14
;	zegarekC2.c:197: led_p = 0;
	mov	_led_p,#0x00
;	zegarekC2.c:198: led_b = 1;
	mov	_led_b,#0x01
;	zegarekC2.c:200: calculate();
	lcall	_calculate
;	zegarekC2.c:202: while (TRUE) {
00116$:
;	zegarekC2.c:203: if (t0_flag) {
	mov	a,_t0_flag
	jz	00116$
;	zegarekC2.c:204: if (led_p < 6) {
	mov	a,#0x100 - 0x06
	add	a,_led_p
	jc	00111$
;	zegarekC2.c:205: SEGG_OFF = TRUE;
	setb	_SEGG_OFF
;	zegarekC2.c:206: *led_wyb = led_b;
	mov	dpl,_led_wyb
	mov	dph,(_led_wyb + 1)
	mov	a,_led_b
	movx	@dptr,a
;	zegarekC2.c:207: *led_led = TIME[led_p];
	mov	dpl,_led_led
	mov	dph,(_led_led + 1)
	mov	a,_led_p
	add	a,#_TIME
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	movx	@dptr,a
;	zegarekC2.c:208: SEGG_OFF = FALSE;
	clr	_SEGG_OFF
;	zegarekC2.c:209: led_p++;
	inc	_led_p
;	zegarekC2.c:210: if(P3_5 == TRUE) {
	jnb	_P3_5,00108$
;	zegarekC2.c:211: ck = led_b;
	mov	_ck,_led_b
;	zegarekC2.c:212: key_handling();
	lcall	_key_handling
	sjmp	00109$
00108$:
;	zegarekC2.c:214: if(P3_5 == FALSE) {
	jb	_P3_5,00109$
;	zegarekC2.c:215: if(led_b == ck) {
	mov	a,_ck
	cjne	a,_led_b,00109$
;	zegarekC2.c:216: if(pressed == TRUE) {
	mov	a,#0x01
	cjne	a,_pressed,00109$
;	zegarekC2.c:217: pressed = FALSE;
	mov	_pressed,#0x00
00109$:
;	zegarekC2.c:222: led_b += led_b;
	mov	a,_led_b
	add	a,_led_b
	mov	_led_b,a
	sjmp	00112$
00111$:
;	zegarekC2.c:224: SEGG_OFF = TRUE;
	setb	_SEGG_OFF
;	zegarekC2.c:225: *led_wyb = led_b;
	mov	dpl,_led_wyb
	mov	dph,(_led_wyb + 1)
	mov	a,_led_b
	movx	@dptr,a
;	zegarekC2.c:226: *led_led = TIME[led_p];
	mov	dpl,_led_led
	mov	dph,(_led_led + 1)
	mov	a,_led_p
	add	a,#_TIME
	mov	r0,a
	mov	a,@r0
	mov	r2,a
	movx	@dptr,a
;	zegarekC2.c:227: SEGG_OFF = FALSE;
	clr	_SEGG_OFF
;	zegarekC2.c:228: led_p = 0;
	mov	_led_p,#0x00
;	zegarekC2.c:229: led_b = 1;
	mov	_led_b,#0x01
00112$:
;	zegarekC2.c:231: t0_flag = FALSE;
	mov	_t0_flag,#0x00
;	zegarekC2.c:232: t0_serv();
	lcall	_t0_serv
	sjmp	00116$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_WZOR:
	.db #0x3F
	.db #0x06
	.db #0x5B
	.db #0x4F
	.db #0x66
	.db #0x6D
	.db #0x7D
	.db #0x07
	.db #0x7F
	.db #0x6F
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
