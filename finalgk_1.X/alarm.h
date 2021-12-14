/* 
 * File:   alarm.h
 * Author: whitepony
 *
 * Created on December 9, 2021, 5:11 PM
 */

#include <xc.h>

#ifndef ALARM_H
#define	ALARM_H

/*
 * movements
 * track the number of detected movements after alarm onset:
 */ 
extern volatile unsigned int position; 

/* 
 * t2_overflows
 * overflows track the alarm time.
 */
extern volatile unsigned long t2_overflows;

#ifdef	__cplusplus
extern "C" {
#endif
    void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void );
    void __attribute__((interrupt, auto_psv)) _IC5Interrupt ( void );
    void __attribute__((interrupt, auto_psv)) _T3Interrupt( void );
    
    
    /* Timer 2, Garrett: Resetting the Time. */
    /* void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void );
     * 
     */
    
    void init_alarm( void );
    void init_PIR( void );
    void set_alarm( int h , int m );

#ifdef	__cplusplus
}
#endif
// C:\Users\sann0045\Documents\GitHub\2361-final-project\include\alarm.h
#endif	/* ALARM_H */
