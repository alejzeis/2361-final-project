#include "xc.h"

int curTime=0;
int temp=0;
int first=0;
int last=0;
void initDisplay(){
    TRISB = 0b0000000000000011; 
    LATB =  0b0000111111111100; 
      
}

/*int getTime(int time){
    switch(int time)
    {
        case '0':
            return 0b0000000000001100;
            
        case '1':
            return 0b0000001001111100;
            
        case '2':
            return 0b0000000010010100;
                    
        case '3': 
            return 0b0000000000110100; 
        case '4': 
            return 0b0000001001100100; 
        case '5': 
            return 0b0000000100100100; 
        case '6': 
            return 0b0000000100000100; 
        case '7': 
            return 0b0000000001111100; 
        case '8': 
            return 0b0000000000000100; 
        case '9': 
            return 0b0000000000100100;            
        
    }        
    
   
}*/

/*void setTime(int time){
    
        
    displayFlag=0;
    if(time>9){
        last=getTime(time%10);
        first=getTime(1);
        
    }
    else{
        curTime=getTime(time);
    
    }     
    
    
    
}*/




    
   

          



