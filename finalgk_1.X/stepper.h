#ifndef STEPPER_H
#define	STEPPER_H

#include <xc.h> // include processor files - each processor file is guarded.  

#include "wait_head.h"
#include "alarm.h"

/*
 * CONSTRAINTS.
 * 
 * 1. This library is limited to use with TMR2.
 * 2. 
 */

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
    
    /* @kevinsann @garrettwelsch
     * 
     * void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
     * t2_interrupt increments the 
     * 
     * sends a flag to increment the relative position whenever 
     * t2_overflows % 15 == 0.
     */
    void __attribute__(( __interrupt__, auto_psv)) _T2Interrupt( void ); // PUBLIC
    
    /* @garrettwelsch
     * void delay( int num )
     * 
     * Will send asm NOP for int num milliseconds.
     */
    void delay(int num); // PRIVATE
    
    /* @kevinsann
     * void dec_one_step( void )
     * 
     * Assumes the stepper is currently at relative position
     * p3--that the stepper is at a specific minute.
     * 
     * Will decrement the stepper by "bit-banging."
     * This will send a series of PORTB writes 
     * that commands the stepper to decrement / move counterclockwise
     * by 1 minute, ending again at P3.
     * 
     * 
     */
    void dec_one_step( void ); // PRIVATE
    
    /* @kevinsann
     * void default_counts( void )
     * 
     * Will default the number of counts at all positions to 0.
     */
    void default_counts( void ); // PRIVATE
    
    /* @kevinsann
     * unsigned int get_counts(  )
     * 
     * To be invoked inside: void initStepper ( void )
     * 
     * Will obtain the number of counts the stepper has currently
     * gone through to get to its current position.
     * This is calculated by summing the number of counts at each relative 
     * position.
     * 
     */
    unsigned int get_counts( void ); // PRIVATE
    
    /* @kevinsann
     * void initStepper ( unsigned int ordered_positions[] );
     * 
     * This function is to be invoked before the use of the rest of the library.
     * 
     * initializes the stepper--the analog component of the alarm clock.
     * initializes PORTB, TRISB for the stepper according to the
     * positions assigned by the user.
     * 
     * Also initializes relative position of the stepper,
     * while it is at a position between minutes.
     * 
     * in the future:
     * 
     * raise an exception, should the user attempt to initialize
     * with less than 4 positions assigned, or two of the same positions.
     */
    void initStepper( unsigned int ordered_positions[] ); // PUBLIC
    
    /* @kevinsann
     * void init_t2( void );
     * 
     * initializes the timer associated with the display and alarm.
     * Setup to overflow every second.
     */
    void init_t2( void ); // PUBLIC
   
    /* @kevinsann
    * void reg_inc_one_step( void )
    * 
    * Make a step on the stepper every 60 seconds.
    * 
    * will keep running inside main--poll for the position,
    * as the position is updated every 15 seconds.
     * 
     * During regular operation, this will be called every minute.
    */
    void reg_inc_one_step( void ); // PRIVATE
    
    /* @kevinsann
     * void round_step( void );
     * 
     * This will round the stepper to the nearest minute position.
     * Tracking the relative position of the stepper:
     * 
     *  If this is at 0 or 1, the stepper will round down to the lower minute.
     *  If this is at 2, the stepper will round up to the higher minute.
     *  If the relative position is 3, the stepper will not move.
     * 
     * With the stepper having been set to an exact minute,
     * the relative position is always returned to 3 by the end of this routine.
     */
    void round_step( void ); // PRIVATE
    
    /* @kevinsann
     * void set_time ( int m );
     * 
     * This function will change pos_count[0-3] to match instantaneous
     * user input. 
     * 
     * tracking the initial number of counts associated with each time,
     * this function will drive the stepper, according to the difference 
     * between the desired number of minutes m and that already "displayed"
     * by the stepper.
     * 
     * Depending on whether the current time is > / < the desired time,
     * the stepper will be driven:        reverse / forward
     * 
     * Whenever the stepper is driven like this, the number of counts
     * on each stepper position will be de/incremented according to direction.
     * 
     * In either direction, this function should be invoked every time
     * there is a change in the number of minutes desired by the user.
     * This is to stay up to speed with user input.
     * 
     * The routine exit by resuming alarm clock operation at the new time. 
     * 
     */
    void set_time ( int m ); // PUBLIC
    
    /* @kevinsann
     * void set_time_t2( int h , int m );
     * 
     * int h, int m: dependent on user input from user input library.
     * Alters t2_overflows.
     */
    void set_time_t2 ( int h , int m ); // PUBLIC

    /* @kevinsann
     * void tick ( void );
     * to be called within the forever loop of the main routine 
     * for each application. 
     * is to poll for the interrupt flag.
     * 
     */
    void tick ( void ); // PUBLIC
    
    

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */