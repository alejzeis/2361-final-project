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
volatile unsigned long int t2_overflows;

unsigned int p0_counts;
unsigned int p1_counts;
unsigned int p2_counts;
unsigned int p3_counts;

// Garrett Welsch
void delay(int num){
    int count=0;
    for(count=0;count<num;count++){
        wait_1ms();
    }
}

void dec_one_step( void )
{   
    PORTB = p3;
    p0_counts--;
    delay(1);
    
    PORTB = p2;
    p1_counts--;
    delay(1);
    
    PORTB = p1;
    p2_counts--;
    delay(1);
    
    PORTB = p0;
    p3_counts--;
    delay(1);
}

int hm_to_step( int h, int m )
{
    int steps;
    
    steps = ( h * 60 + m ) * 4;
    return steps;
}

void inc_one_step( void )
{
    PORTB = p0;
    p0_counts++;
    delay(10);
    
    PORTB = p1;
    p1_counts++;
    delay(10);
    
    PORTB = p2;
    p2_counts++;
    delay(10);
    
    PORTB = p3;
    p3_counts++;
    delay(10);
}

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
    T2CONbits.TCKPS = 0b11;
    PR2 = 62500;
    
    _T2IF = 0;
    _T2IE = 1;
    
    T2CONbits.TON = 1;
}




 
void set_time(int h, int m)
{
    //int i; 
    int desired_time_in_steps = hm_to_step( h, m );
    
    int steps_to_adjust = p0_counts + p1_counts + p2_counts + p3_counts - desired_time_in_steps;
    
    /*
      1: Enter set time mode--IC1Interrupt
     */
    
    while (steps_to_adjust)
    {
        
    }
    /*
      2: Set the stepper to desired time with buttons.
     */
    
    /*else if ( desired_time_in_steps )
    {
        
    }
    */
    /*
      3: Turn the stepper to the set time.
     */
    
    write_0();
    t2_overflows = ((h * 60) + m ) * 6;  //number of seconds. 
}


 // @kevinsann
void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    _T2IF = 0;
    t2_overflows++;
    
    if ( t2_overflows % 15 == 0 )
        position++;

    switch (position)
    {
        case 0:
            PORTB = p0;// position 0: 15 seconds.
            p0_counts++;
            break;
        case 1:
            PORTB = p1; // position 1: 30 seconds.
            p1_counts++;
            break;
        case 2:
            PORTB = p2; // position 2: 45 seconds.
            p2_counts++;
            break;
        case 3:
            PORTB = p3; // position 3: 60 seconds.
            p3_counts++;
            break;
    }
    
    t2_overflows %= 86400;
    delay (1);
    
    position %= 4;
}

/*void startClock(void){
    full_drive(norm);
    displayFlag=0;
}*/


    
    


//use input pulses for speed??
