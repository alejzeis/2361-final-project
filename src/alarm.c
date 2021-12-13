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

#include "include/alarm.h"
#include "xc.h"

volatile unsigned int movements;
volatile unsigned long int t2_overflows;

void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void )
{
    _OC5IF = 0;
    
    // at alarm time, "RING!" for at least 5 minutes.
}

// configured for every edge, rising and falling
// 

void __attribute__((interrupt, auto_psv)) _IC5Interrupt ( void )
{
    _IC5IF = 0;
}



void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    _T2IF = 0;
    t2_overflows++;
    
    if (t2_overflows == 60)
    {
        
    }
}

void __attribute__((interrupt, auto_psv)) _T3Interrupt( void )
{
    _T3IF = 0;
}

// Timer Associated. 

void init_t2( void )
{
    T2CON = 0; 
}

void init_alarm( void )
{
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPOR4bits.RP8R = 22; // OC5 output = RP8
    __builtin_write_OSCCONL(OSCCON | 0x40);
    
    T3CON = 0; // 
    TMR3 = 0;
    
    // set RP8 as output.
    TRISBbits.TRISB8 = 0;
     
}

void init_PIR( void )
{
    // input = RP7
    
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPINR7bits.IC1R = 7;// IC5 input = RP7
    __builtin_write_OSCCONL(OSCCON | 0x40);
    
    TRISBbits.TRISB7 = 1; // RP7 = input.
    CNPU2bits.CN23PUE = 1; // enable Change Notification on RP7.
    
    IC1CON = 0;
    IC1CONbits.ICSIDL = 1; // halt in CPU idle mode.
    IC1CONbits.ICTMR = 0; // TMR3 Contents captured
    IC1CONbits.ICM = 001; // Every Rising and Falling Edge Captured
    
}

// stepper steps to hours and minutes.


void set_alarm( int h, int m )
{
    // calculate the needed IC1 timer value based on h and m.
    // there are 86,400 seconds in a day.
    
    
    t2_overflows = 
}