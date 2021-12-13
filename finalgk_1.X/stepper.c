#include "wait_head.h"
#include "xc.h"
#include "stepper.h"
#include "alarm.h"

// Speed Range 10 to 1  10 = lowest , 1 = highest
int i=0;
long globalCount=0;
int norm=16;
int timeConstant=420;

volatile unsigned int position = 0;

// Garrett Welsch
void initStepper(){
    PORTB=0x0f;
    TRISB=0;
    
}

// Garrett Welsch
void delay(int num){
    int count=0;
    for(count=0;count<num;count++){
        wait_1ms();
    }
}

/* Kevin Sann , Garrett Welsch
 * plan to migrate full_drive to t2_interrupt.
 * t2_interrupt will test when to transition between states.
 * increment position whenever t2_overflows % 15 == 0.
 */

void full_drive( void )
{
    switch (position)
    {
        case 0:
            PORTB = 0b00000011;// position 0: 15 seconds.
            break;
        case 1:
            PORTB = 0b00000110; // position 1: 30 seconds.
            break;
        case 2:
            PORTB = 0b00001100; // position 2: 45 seconds.
            break;
        case 3:
            PORTB = 0b00001001; // position 3: 60 seconds.
            break;
    }
    
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

void reverse(int time)
{
    PORTB = 0b00001001;
    delay(1);
    PORTB = 0b00001001;
    delay(1);
    PORTB = 0b00000110;
    delay(1);
    PORTB = 0b00000011;
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

/*int getTimeConstant(int time){
    
}*/

void setTime(int time){
    setZero();
    i=0;
    for(i=0;i<time;i++) {
        full_drive(1);
        
    }
    
    write_0();
    
    
}



/*void startClock(void){
    full_drive(norm);
    displayFlag=0;
}*/


    
    


//use input pulses for speed??
