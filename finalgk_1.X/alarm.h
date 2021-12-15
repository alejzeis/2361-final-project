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

/* 
 * t2_overflows
 * overflows track the alarm time.
 */

#ifdef	__cplusplus
extern "C" {
#endif
    /* 
     * void __attribute__((interrupt, auto_psv)) _OC5Interrupt ( void );
     * 
     */
    
    void __attribute__((__interrupt__, auto_psv)) _OC5Interrupt ( void );
    
    /*
     * void __attribute__((__interrupt__, auto_psv)) _IC5Interrupt ( void );
     */
    void __attribute__((__interrupt__, auto_psv)) _IC5Interrupt ( void );
    
    /*
     * void __attribute__((__interrupt__, auto_psv)) _T3Interrupt( void );
     */
    void __attribute__((__interrupt__, auto_psv)) _T3Interrupt( void );
    
    
    /*
    * void init_alarm( void )
    * 
    * 
    */
    
    void init_alarm( void );
    
    /*
     * void init_PIR( void )
     * 
     * initializes PIR with RPn, where 
     * 
     */
    void init_PIR( unsigned int n );
    
    /*
     * void set_alarm( int m )
     * 
     * user input won't actually be setting the time / alarm. 
     * will display the user's set time on the stepper, according to the turnpot.
     * 
     * set the alarm according to a spontaneous input from alejandro's library.
     * The stepper will follow the 
     */

    void set_alarm( int m );

#ifdef	__cplusplus
}
#endif
// C:\Users\sann0045\Documents\GitHub\2361-final-project\include\alarm.h
#endif	/* ALARM_H */
