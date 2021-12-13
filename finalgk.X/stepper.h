

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef STEPPER_H
#define	STEPPER_H

#include <xc.h> // include processor files - each processor file is guarded.  


#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */
    void full_drive(void);
    void half_drive(int time);
    void setTime(int time);
    void setZero(void);    
    void initStepper(void);
    void delay(int num);
    void reverse(int num);
    

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* XC_HEADER_TEMPLATE_H */

