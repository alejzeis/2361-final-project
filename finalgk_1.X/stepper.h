// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef STEPPER_H
#define	STEPPER_H

#include <xc.h> // include processor files - each processor file is guarded.  

#define p0 0b0011000000000000
#define p1 0b0110000000000000
#define p2 0b1100000000000000
#define p3 0b1001000000000000

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
    
    /*
     * void delay(int num)
     * 
     * used for various stepper functions, will 
     */
    void delay(int num);
    
    /*
     */
    unsigned int getHour(void);
    int get_counts( void );
    
    /*
     *void hm_to_step( int h , int m );
     */
    int m_to_step( int m );
    
    
    /*
    * void inc_one_step( void )
    * 
    * Intent: Make a step on the stepper every 60 seconds.
    * 
    * will keep running inside main--poll for the position,
    * as the position is updated every 15 seconds.
     * 
     * During regular operation, this will be called every 
    * 
    * 
    */
    void reg_inc_one_step(void);
    
    
    /*
     * void init_t2( void );
     * 
     * initializes the timer associated with the display and alarm.
     * Will overflow every second.
     * 
     * 
     * We can enter modes of changing alarm times and regular time
     */
    void init_t2( void );
    
    /*
     * void initStepper ( void );
     * 
     * initializes the stepper--the analog component of the alarm clock.
     * initializes PORTB, TRISB for the stepper.
     * 
     * volatile unsigned int position is also initialized.
     * 
     */
    void initStepper(void);
    
    /* void round_step( void );
     * 
     * will round the stepper to the nearest minute position.
     */
    
    void round_step( void );
    
    /*
     * void set_time (int h, int m);
     * 
     * Will change t2_overflows, will change p*_count.
     * 
     * tracking the initial number of counts associated with each time,
     * drive the stepper, according to the difference between the desired
     * (int h, int m) -- translated to a specific number of counts.
     * 
     * Depending on whether the current time is > / < the desired time,
     * the stepper will be driven:   fast_reverse / fast_forward
     * 
     * Whenever the stepper is driven like this, the number of counts
     * on each stepper position will be de/incremented according to direction.
     * 
     * In either direction, the stepper will be driven as fast as possible
     * to stay up to speed with user input. This means there will be only
     * a small delay between stepper pulses.
     * 
     * Will exit by resuming alarm clock operation at the new time. 
     * 
     */
    
    void set_time ( int h , int m );
    
    
    /* Kevin Sann , Garrett Welsch
    * 
    * void __attribute__((interrupt, auto_psv)) _T2Interrupt( void )
    * t2_interrupt will test when to transition between states.
    * increment position whenever t2_overflows % 15 == 0.
    */
    void __attribute__(( __interrupt__, auto_psv)) _T2Interrupt( void );
    
    
    

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

