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
volatile unsigned int minutes;
volatile unsigned int hours;
volatile unsigned long int t2_overflows;


/*
 * p*_counts synchronize the stepper so we know what specific position it is at.
 */
unsigned int p0_counts;
unsigned int p1_counts;
unsigned int p2_counts;
unsigned int p3_counts;

/*
 * see if an hour has passed in t2_interrupts
 * 
 * if it has, we throw a flag for I2C display to update.
 */

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

int get_counts( void )
{
    return p0_counts + p1_counts + p2_counts + p3_counts;
}

int m_to_step( int m )
{
    int steps;
    
    steps = m * 4;
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
    
    hours = 0;
    minutes = 0;
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

void round_step( void )
{
    switch (position)
    {
        // round the stepper down, if it is at the first two positions 
        case 0:
            p0_counts--;
            LATB = p3;
            delay(10);
            
            break;
        case 1:
            p0_counts--; // position 1: 30 seconds.
            p1_counts--;
            
            PORTB = p0;
            delay(10);
            PORTB = p3;
            delay(10);
            
            break;
        
        // round the stepper up, if it is at the last two positions.
        case 2:
            // position 2: 45 seconds. 
            p2_counts++;
            p3_counts++;
            
            PORTB = p3;
            delay(10);
            
            break;
        case 3:
            break;
    }
    
    position = 3;
}

void set_time( int m )
{
    int desired_time_in_steps = m_to_step( m );
    int steps_to_adjust;
    
    round_step();
    
    if ( get_counts()  > desired_time_in_steps ) 
    {
        steps_to_adjust = get_counts() - desired_time_in_steps;
        
        while ( steps_to_adjust )
        {
            dec_one_step(); 
            steps_to_adjust--;
        }
    } 
    else if ( get_counts() < desired_time_in_steps )
    {
        steps_to_adjust = desired_time_in_steps - get_counts();
        
        while ( steps_to_adjust )
        {
            reg_inc_one_step();
            steps_to_adjust--;
        }
    }
}


 // @kevinsann
void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    _T2IF = 0;
    t2_overflows++;
    
    if ( t2_overflows % 15 == 0 )
        position++;
    if ( t2_overflows % 60 == 0 )
        if ( t2_overflows % 3600 != 0 )
            minutes++;
        if ( t2_overflows % 3600 == 0)
            minutes = 0 ; hours++;
            
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
    
    if ( t2_overflows == 0 )
        minutes = 0, hours = 0;
    
    position %= 4;
}


