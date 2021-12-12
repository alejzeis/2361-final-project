#include "wait_head.h"
#include "xc.h"
#include "stepper.h"

// Speed Range 10 to 1  10 = lowest , 1 = highest
int i=0;
long globalCount=0;
int norm=16;
int timeConstant=420;
void initStepper(){
    PORTB=0x0f;
    TRISB=0;
    
}

void delay(int num){
    int count=0;
    for(count=0;count<num;count++){
        wait_1ms();
    }
}

void full_drive(int time){
  
    PORTB = 0b00000011;
    delay(time);
    PORTB = 0b00000110;
    delay(time);
    PORTB = 0b00001100;
    delay(time);
    PORTB = 0b00001001;
    delay(time);
       

   
}

void half_drive(int time){
    
    PORTB = 0b00000001;
    delay(time);
    PORTB = 0b00000011;
    delay(time);
    PORTB = 0b00000010;
    delay(time);
    PORTB = 0b00000110;
    delay(time);
    PORTB = 0b00000100;
    delay(time);
    PORTB = 0b00001100;
    delay(time);
    PORTB = 0b00001000;
    delay(time);
    PORTB = 0b00001001;
    delay(time);
    
}    

void reverse(int time){
    PORTB = 0b00001001;
    delay(1);
    PORTB = 0b00001001;
    delay(1);
    PORTB = 0b00000110;
    delay(1);
    PORTB = 0b00000011;
    delay(1);
    
}

void setZero(void){
    write_0();
    i=0;
    for( i=norm; i<16 ;i++){
        full_drive(1);
     
    }
    
    write_0();
    half_drive(timeConstant);
        
}

/*int getTimeConstant(int time){
    
}*/

void setTime(int time){
    setZero();
    i=0;
    for(i=0;i<time;i++) {
        full_drive(1);
        
    }
    
    write_0();
    
    
}



/*void startClock(void){
    full_drive(norm);
    displayFlag=0;
}*/


    
    


//use input pulses for speed??
