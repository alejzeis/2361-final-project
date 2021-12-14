/* 
 * Kevin Sann.
 * sann0045@umn.edu
 * 12-9-2021
 * 
 * (WIP) still need: _OC5Interrupt, _IC5Interrupt, 
 *                  complete init_pir();
 *                  complete init_alarm(); 
 *                  Readme.txt
 *                  _T3Interrupt in header.
 *      
 * Peripherals: Input Capture 5, Output Compare 5.
 * Timers: Timer2, Timer3.
 * Hardware: Passive Infrared Sensor 
 * 
 * (DREAM)
 * We can display calendar
 * 
 * Timer2 has two purposes:
 * (1) Keep track of time throughout the day with overflows (t2_overflows)
 *     t2_overflows is reset as soon as midnight is reached.
 * (2) Keep track of alarm time with rollovers.
 * 
 * Timer3 has one purpose:
 * (1) Increment times movement is detected.
 * 
 * APPLICATION:
 * from onset of the alarm until 5 minutes afterwards, the alarm will still
 * ring. 
 * 
 * 
 */

// Set time externally: Set the number of T2_overflows we are at, in order to
/* set the 
 * 
 * 
 */
// 

#include "alarm.h"
#include "stepper.h"
#include "xc.h"

volatile unsigned int movements;

/* PIR functions:
 * _OC5Interrupt,
 * _IC5Interrupt,
 * _
 */

void __attribute__((__interrupt__, auto_psv)) _OC5Interrupt ( void )
{
    _OC5IF = 0;
    
    // at alarm time, "RING!" for at least 5 minutes.
}

// configured for every edge, rising and falling
// @kevinsann
void __attribute__((__interrupt__, auto_psv)) _IC5Interrupt ( void )
{
    _IC5IF = 0;
}

// @kevinsann
void __attribute__((__interrupt__, auto_psv)) _T3Interrupt( void )
{
    _T3IF = 0;
}
/*
 * one position that's close to 
 */


// C:\Users\sann0045\Documents\GitHub\2361-final-project\src\alarm.c

// ALARM is set up in PWM mode.
// PWM BUZZER. 
void init_alarm( void )
{
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPOR4bits.RP8R = 22; // OC5 output = RP8
    __builtin_write_OSCCONL(OSCCON | 0x40);
    
    T3CON = 0; // 
    TMR3 = 0; // 
    PR3 = 1; // 
    
    // set RP8 as output.
    TRISBbits.TRISB8 = 0;
    
}

void init_PIR( void )
{
    // input = RP7
    
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPINR9bits.IC5R = 7;// IC5 input = RP7
    __builtin_write_OSCCONL(OSCCON | 0x40);
    
    TRISBbits.TRISB7 = 1; // RP7 = input.
    CNPU2bits.CN23PUE = 1; // enable Change Notification on RP7.
    
    IC5CON = 0;
    IC5CONbits.ICSIDL = 1; // halt in CPU idle mode.
    IC5CONbits.ICTMR = 0; // TMR3 Contents captured
    IC5CONbits.ICM = 001; // Every Rising and Falling Edge Captured
    
}

// stepper steps to hours and minutes.
/*
 * void set_alarm( int m )
 * user input won't actually be setting the time / alarm. 
 * will display the user's set time on the stepper, according to the turnpot.
 * 
 * set the alarm according to a spontaneous input from alejandro's library.
 */

void set_alarm( int m )
{
    int desired_time_in_steps = m_to_step( m );
    int steps_to_adjust;
    
    if ( get_counts()  > desired_time_in_steps ) 
    {
        
    }
    
    // calculate the needed IC1 timer value based on h and m.
    // there are 86,400 seconds in a day.
    
    /*
     * Alejandro's library;
     * 
     * will fetch hours and minutes from user input.
     * 
    */
//}
