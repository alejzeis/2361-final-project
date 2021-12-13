#include "wait_head.h"
#include "xc.h"
#include "stepper.h"
#include "alarm.h"

// Speed Range 10 to 1  10 = lowest , 1 = highest

int i=0;
long globalCount=0;
int norm=16;
int timeConstant=420;

volatile unsigned int position;

unsigned int p0_counts;
unsigned int p1_counts;
unsigned int p2_counts;
unsigned int p3_counts;

// @kevinsann
void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    _T2IF = 0;
    t2_overflows++;
    
    if ( t2_overflows % 15 == 0 )
        position++;
}


// Garrett Welsch
void delay(int num){
    int count=0;
    for(count=0;count<num;count++){
        wait_1ms();
    }
}

void fast_forward()
{
    
    // the timer will go to the proper time we need it to.
    
}

void fast_reverse(int time)
{
    PORTB = p0;
    p0_counts--;
    delay(1);
    
    PORTB = p1;
    p1_counts--;
    delay(1);
    
    PORTB = p2;
    p2_counts--;
    delay(1);
    
    PORTB = p3;
    p3_counts--;
    delay(1);
}
/*
void setZero(void){
    write_0();
    i=0;
    for( i=norm; i<16 ;i++){
        full_drive(1);
     
    }
    
    write_0();
    half_drive(timeConstant);
        
}
*/


void full_drive( void )
{
    switch (position)
    {
        case 0:
            PORTB = p0;// position 0: 15 seconds.
            break;
        case 1:
            PORTB = p1; // position 1: 30 seconds.
            break;
        case 2:
            PORTB = p2; // position 2: 45 seconds.
            break;
        case 3:
            PORTB = p3; // position 3: 60 seconds.
            break;
    }
    delay (1);
    
    position %= 4;
}

// Garrett Welsch
void half_drive(int time)
{
    PORTB = 0b00000001;
    delay(time);
    PORTB = 0b00000011;
    delay(time);
    PORTB = 0b00000010;
    delay(time);
    PORTB = 0b00000110;
    delay(time);
    PORTB = 0b00000100;
    delay(time);
    PORTB = 0b00001100;
    delay(time);
    PORTB = 0b00001000;
    delay(time);
    PORTB = 0b00001001;
    delay(time);
}    



/*
 */


void initStepper( void ){
    PORTB=0x0f;
    TRISB=0;
    
    position = 0;
    
    p0_counts = 0;
    p1_counts = 0;
    p2_counts = 0;
    p3_counts = 0;
}


void init_t2( void )
{
    TMR2 = 0;
    T2CON = 0;
    T2CONbits.TCKPS = 11;
    PR2 = 62500;
    
    _T2IF = 0;
    _T2IE = 1;
    
    T2CONbits.TON = 1;
}

void pause_stepper ( void )
{
    T2CONbits.TON = 0;
}

void resume_stepper ( void )
{
    T2CONbits.TON = 1;
}


void set_time(int h, int m)
{
    setZero();
    
    int i; 
    
    for(i=0;i<time;i++) 
    {
        full_drive();    
    }
    
    write_0();
}



/*void startClock(void){
    full_drive(norm);
    displayFlag=0;
}*/


    
    


//use input pulses for speed??
