#include "xc.h"
#include "stepper.h"

volatile unsigned int minutes;
volatile unsigned int hours;
volatile unsigned long int t2_overflows;
volatile unsigned int rel_position;

/*
 * pos_counts[0-3] synchronize the stepper so we know what specific minute
 * the stepper is at.
 */

unsigned int pos_counts[4];
unsigned int positions[4];

unsigned int f_tick;

void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    
    _T2IF = 0;
    t2_overflows++;
    
    if ( t2_overflows % 15 == 0 )
    {
        rel_position++;
        f_tick = 1;
    }
    if ( t2_overflows % 60 == 0 )
    {
        if ( t2_overflows % 3600 != 0 )
            minutes++;
        
        if ( t2_overflows % 3600 == 0)
            minutes = 0 ; hours++;
    }
    
    if ( t2_overflows % 86400 ) // time resets at the end of each day.
    {
        t2_overflows = 0;
        minutes = 0, hours = 0;
    }
    
    rel_position %= 4;
}

void delay( int num )
{
    int count=0;
    
    for(count=0;count<num;count++)
    {
        wait_1ms();
    }
}

void dec_one_step( void )
{   
    int i;
    
    for ( i = 3; i >= 0; i-- )
    {
        PORTB = positions[i];
        pos_counts[i]--;
        delay( 10 );
    }
}

void default_counts( void )
{
    int i;
    
    for (i = 0; i < sizeof pos_counts; i++)
        pos_counts[i] = 0;
}

unsigned int get_counts( void )
{
    int i;
    int sum = 0;
    
    for (i = 0; i < 4; i++)
        sum += pos_counts[i];
    return sum;
}

void initStepper( unsigned int ordered_positions[] )
{
    int i;
    
    unsigned int bitwise_pos = 0;
    unsigned int selected_pos = 0;
    
    for ( i = 0 ; i < 4; i++ )
    {
        selected_pos |= ordered_positions[i];
    }
    
    for (i = 0; i < 16; i++) 
    {
        LATB |= (1 << bitwise_pos); // SET INITIAL PORT STATES TO HIGH.
        TRISB &= (0 << bitwise_pos); // SET PORTS AS OUTPUTS.

        bitwise_pos++;
    }

    rel_position = 0;
    
    default_counts(); // sets the counts for all positions to 0.
    
    hours = 0;
    minutes = 0;
}

void init_t2( void )
{
    TMR2 = 0;
    T2CON = 0;
    T2CONbits.TCKPS = 0b11; // prescale 1:256
    PR2 = 62500; // 1 second period.
    
    _T2IF = 0;
    _T2IP = 6; // highest priority interrupt to increment global timer T2.
    _T2IE = 1;
    
    T2CONbits.TON = 1;
}

void reg_inc_one_step( void )
{
    int i;
    for ( i = 0; i <= 3; i++ )
    {
        PORTB = positions[ i ];
        pos_counts[ i ]++;
        delay( 10 );
    }
}

void round_step( void )
{
    switch (rel_position)
    {
        // round the stepper down, if it is at the first two positions 
        case 0:
            pos_counts[0]--;
            
            PORTB = positions[3];
            delay(10);
            
            break;
        case 1:
            pos_counts[0]--; // position 1: 30 seconds.
            pos_counts[1]--;
            
            PORTB = positions[0];
            delay(10);
            PORTB = positions[3];
            delay(10);
            
            break;
        
        case 2: // round the stepper up, if it is at the second to last relative 
                // position.
            // position 2: 45 seconds. 
            pos_counts[2]++;
            pos_counts[3]++;
            
            PORTB = positions[3];
            delay(10);
            
            break;
        case 3: // if the stepper is at the last position, don't round.
            break;
    }
    
    rel_position = 3;
}

void set_time( int m )
{
    int desired_time_in_steps = m; // it is desired to set the minutes for the 
                                   // stepper.
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
    
    else if ( desired_time_in_steps < get_counts() )
    {
        steps_to_adjust = desired_time_in_steps - get_counts();
        
        while ( steps_to_adjust )
        {
            reg_inc_one_step();
            steps_to_adjust--;
        }
    }
}

void set_time_t2( int h , int m ) 
{
    t2_overflows = ( h * 3600 ) + ( m * 60 );  //number of seconds.
    hours = h;
    minutes = m;
}

void tick ( void )
{
    if ( f_tick )
    {
        switch (rel_position) 
        {
            case 0:
                PORTB = positions[0]; // rel_position 0: 15 seconds.
                break;
            case 1:
                PORTB = positions[1]; // rel_position 1: 30 seconds.
                break;
            case 2:
                PORTB = positions[2]; // rel_position 2: 45 seconds.
                break;
            case 3:
                PORTB = positions[3]; // rel_position 3: 60 seconds.
                break;
        }
        delay(10);

        pos_counts[rel_position]++; // increments the number of counts
                                    // tracked for the current relative position.
        f_tick = 0;
    }
}