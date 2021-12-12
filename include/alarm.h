/* 
 * File:   alarm.h
 * Author: whitepony
 *
 * Created on December 9, 2021, 5:11 PM
 */

#include <xc.h>

#ifndef ALARM_H
#define	ALARM_H

#ifdef	__cplusplus
extern "C" {
#endif
    void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void );
    void __attribute__((interrupt, auto_psv)) _IC5Interrupt ( void );
    void __attribute__((interrupt, auto_psv)) _T2Interrupt( void );
    
    /* Timer 2, Garrett: Resetting the Time. */
    /* void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void );
     * 
     */
    
    void init_alarm( void );
    void init_PIR( void );

#ifdef	__cplusplus
}
#endif

#endif	/* ALARM_H */

