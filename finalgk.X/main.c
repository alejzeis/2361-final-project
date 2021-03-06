
/*
 * File:   clockmain.c
 * Author: garrett
 *
 * Created on December 2, 2021, 12:41 PM
 */


#include "xc.h"
#include "stepper.h"
#include "wait_head.h"
#include "stdint.h"
#include <stdio.h>
#include "lcd.h"




#pragma config ICS = PGx1          // Comm Channel Select (Emulator EMUC1/EMUD1 pins are shared with PGC1/PGD1)
#pragma config FWDTEN = OFF        // Watchdog Timer Enable (Watchdog Timer is disabled)
#pragma config GWRP = OFF          // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF           // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF        // JTAG Port Enable (JTAG port is disabled)


// CW2: FLASH CONFIGURATION WORD 2 (see PIC24 Family Reference Manual 24.1)
#pragma config I2C1SEL = PRI       // I2C1 Pin Location Select (Use default SCL1/SDA1 pins)
#pragma config IOL1WAY = OFF       // IOLOCK Protection (IOLOCK may be changed via unlocking seq)
#pragma config OSCIOFNC = ON       // Primary Oscillator I/O Function (CLKO/RC15 functions as I/O pin)
#pragma config FCKSM = CSECME      // Clock Switching and Monitor (Clock switching is enabled, 
                                       // Fail-Safe Clock Monitor is enabled)
#pragma config FNOSC = FRCPLL      // Oscillator Select (Fast RC Oscillator with PLL module (FRCPLL))

/*void __attribute__((__interrupt__, __auto_psv__)) _ADC1Interrupt(void) {
    IFS0bits.AD1IF = 0;
    putVal(ADC1BUF0);
    
}*/
int displayFlag=0;
int time=0;
char hours[12] = {'1','2','3','4','5','6','7','8','9','10','11','12'};
char tempTime;

int tempTime;
int i;
/*void __attribute__((__interrupt__, __auto_psv__)) _T3Interrupt(void) {
    _T3IF = 0; TMR3 = 0;
    displayFlag=1;
}*/

int main(void)
{
   CLKDIVbits.RCDIV = 0;
   AD1PCFG = 0x9fff; //all digital inputs and outputs
   I2C2BRG = 0x9D;
    I2C2CONbits.I2CEN = 1;
    _I2CSIDL = 0;
    IFS3bits.MI2C2IF=0;
    //lcd_init();     
    
  
  CMCON = 0x07; // To turn off comparators
  //ADCON1bits = 0x06; // To turn off analog to digital converters
  TRISB = 0; // PORT B as output port
  PORTB = 0x0F;
  T2CON = 0;
  TMR2 = 0;
  T3CONbits.TCKPS = 0b10;
  PR3 = 35999;
  T3CONbits.TON = 1;
  PORTB=0x0f;
     
        //startClock();
        //if(displayFlag==1){
         //setTime(curTime-1);
            
        //}    
  
  while(1){
            
      /*while(count<15){
          for(i=0;i<13;i=i+1){
            tempTime=hours[i];
        
            delay(300000);
            lcd_setCursor(1,0);
            lcd_printChar(tempTime);
            
          }*/ 
      reverse(15);
      
      
          
          
          
    
      
     
  }   
  
}

//void setClock(int min)

