#include "alarm.h"
#include "xc.h"

void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void )
{
    _OC5IF = 0;
}

void __attribute__((interrupt, auto_psv)) _IC5Interrupt ( void )
{
    _IC5IF = 0;
}

void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
{
    _T2IF = 0;
}

// Timer Associated. 

void init_alarm( void )
{
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPOR4bits.RP8R = 22; // output = RP8
    __builtin_write_OSCCONL(OSCCON | 0x40);

    
}

void init_PIR( void )
{
    // input = RP7
    
    __builtin_write_OSCCONL(OSCCON & 0xbf);
    RPINR7bits.IC1R = 7;// input = 7
    __builtin_write_OSCCONL(OSCCON | 0x40);
}
