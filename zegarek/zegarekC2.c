#include <8051.h>
#define TRUE 1
#define FALSE 0
#define TH_0 226
#define T100 192
#define T10 4

__code unsigned char WZOR[10] = {0b0111111, 0b0000110, 0b1011011, 0b1001111, 0b1100110, 0b1101101, 0b1111101, 0b0000111, 0b1111111, 0b1101111};
__bit __at (0x96) SEGG_OFF;

__xdata unsigned char* led_wyb = (__xdata unsigned char *)0xFF30;
__xdata unsigned char* led_led = (__xdata unsigned char *)0xFF38;

unsigned char sekundy0;
unsigned char sekundy1;

unsigned char minuty0;
unsigned char minuty1;

unsigned char godziny0;
unsigned char godziny1;

unsigned char timer_buf;
unsigned char t0_flag;
unsigned char timer_buf2;

char SS;
char MM;
char HH;

unsigned char led_p, led_b;
unsigned char send_flag;
unsigned char rec_flag;

unsigned char ck;
unsigned char pressed = FALSE;

__sbit __at (0x97) TEST_LED;

unsigned char TIME[6] = {0, 0, 0, 0, 0, 0};

void inc_hour() {
    HH++;
    if (HH == 24) {
        HH = 0;
    }
}

void inc_min() {
    MM++;
    if (MM == 60) {
        MM = 0;
        inc_hour();
    }
}

void inc_sec() {
    SS++;
    if (SS == 60) {
        SS = 0;
        inc_min();
    }
}

void dec_sec() {
    SS--;
    if(SS < 0) {
        SS = 0;
    }
}

void dec_min() {
    MM--;
    if(MM < 0) {
        MM = 0;
    }
}

void dec_hour() {
    HH--;
    if(HH < 0) {
        HH = 0;
    }
}

void calculate() {
    sekundy0 = WZOR[SS % 10];
    sekundy1 = WZOR[SS / 10];

    minuty0 = WZOR[MM % 10];
    minuty1 = WZOR[MM / 10];

    godziny0 = WZOR[HH % 10];
    godziny1 = WZOR[HH / 10];

    TIME[0] = sekundy0;
    TIME[1] = sekundy1;
    TIME[2] = minuty0;
    TIME[3] = minuty1;
    TIME[4] = godziny0;
    TIME[5] = godziny1;
}

void t0_int(void) interrupt(1) {
    TH0 = TH_0; // ustawia flagê sygnalizuj¹c¹
    t0_flag = TRUE; // fakt wyst¹pienia przerwania
}

void t0_serv(void) {
    if (timer_buf)
        timer_buf--; // zmniejsz stan czasomierza
    else {
        timer_buf = T100; // regeneruj licznik (100ms)
        if (timer_buf2) {
            timer_buf2--;
        } else {
            timer_buf2 = T10;
            inc_sec();
            calculate();
        }
    }
}

void key_handling() {
    if(pressed == FALSE) {
        if(ck == 1) { //enter inkrementuje sekundy
            inc_sec();
            pressed = TRUE;
            calculate();
        }
    }

    if(pressed == FALSE) {
        if(ck == 2) { //escape dekrementuje sekundy
            dec_sec();
            pressed = TRUE;
            calculate();
        }
    }

    if(pressed == FALSE) {
        if(ck == 4) { //strzalka w prawo dekrementuje godziny
            dec_hour();
            pressed = TRUE;
            calculate();
        }
    }

    if(pressed == FALSE) {
        if(ck == 8) { //strzalka w prawo inkrementuje minuty
            inc_min();
            pressed = TRUE;
            calculate();
        }
    }

    if(pressed == FALSE) {
        if(ck == 16) { //strzalka w prawo dekrementuje minuty
            dec_min();
            pressed = TRUE;
            calculate();
        }
    }

    if(pressed == FALSE) {
        if(ck == 32) { //strzalka w prawo inkrementuje godziny
            inc_hour();
            pressed = TRUE;
            calculate();
        }
    }
}

void main() {
     TMOD = 0b01110000;

    TH0 = TH_0;

    TL1 = 0xFD;
    TH1 = 0xFD;

    timer_buf = T100;
    send_flag = FALSE;
    rec_flag = FALSE;
    t0_flag = FALSE;

    ET0 = TRUE;
    ES = TRUE;
    EA = TRUE;
    TR0 = TRUE;
    TR1 = TRUE;

    SS = 22;
    MM = 22;
    HH = 20;

    led_p = 0;
    led_b = 1;
    
	calculate();

	while (TRUE) {
        if (t0_flag) {
            if (led_p < 6) {
                SEGG_OFF = TRUE;
                *led_wyb = led_b;
                *led_led = TIME[led_p];
                SEGG_OFF = FALSE;
                led_p++;
                if(P3_5 == TRUE) {
                    ck = led_b;
                    key_handling();
                } else {
                    if(P3_5 == FALSE) {
                        if(led_b == ck) {
                            if(pressed == TRUE) {
                               pressed = FALSE;
                            }
                        }
                    }
                }
                led_b += led_b;
            } else {
                SEGG_OFF = TRUE;
                *led_wyb = led_b;
                *led_led = TIME[led_p];
                SEGG_OFF = FALSE;
                led_p = 0;
                led_b = 1;
            }
            t0_flag = FALSE;
            t0_serv();
        }
    }
}