#include "xc.h"
#include "lcd.h"
#include "string.h"
//CON should be between 0 and 0xFF.
#define CON 0x00

//Obligatory delay function
void delay(long n){
    for (n=n; n>0; n--) {
        asm("nop");
    }
}

void lcd_cmd(char command) {
    I2C2CONbits.SEN = 1;        //Start
        while(I2C2CONbits.SEN);
    IFS3bits.MI2C2IF=0;
    I2C2TRN= 0b01111100;        //Slave address and R/W bit
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    I2C2TRN = 0b00000000;       //Control byte
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    I2C2TRN = command;          //Data byte
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    I2C2CONbits.PEN = 1;        //Stop
        while(I2C2CONbits.PEN);
}

void lcd_init(void) {
    delay(66666);
    lcd_cmd(0b00111000); // function set, normal instruction mode
    lcd_cmd(0b00111001); // function set, extended instruction mode
    lcd_cmd(0b00010100); // interval osc
    lcd_cmd((0b0111 << 4) + CON); // contrast C3-C0
    lcd_cmd(0b01011110); // Ion, Bon, C5-C4
    lcd_cmd(0b01101100); // follower control
    delay(266665);
    lcd_cmd(0b00111000); // function set, normal instruction mode
    lcd_cmd(0b00001100); // Display On
    lcd_cmd(0b00000001); // Clear Display
    delay(2667);
}

void lcd_setCursor(char x, char y) {
    char location = 0x40 * y + x;
    lcd_cmd((1 << 7) + location);
}

void lcd_printChar(char myChar) {
    I2C2CONbits.SEN = 1;
        while(I2C2CONbits.SEN);
    IFS3bits.MI2C2IF = 0;
    I2C2TRN= 0b01111100;
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF = 0;
    I2C2TRN = 0b01000000;           //RS = 1
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF = 0;
    I2C2TRN = myChar;
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF = 0;
    I2C2CONbits.PEN = 1;
        while(I2C2CONbits.PEN);
}

void lcd_printStr(const char s[]) {
    int size = strlen(s);
    I2C2CONbits.SEN = 1;        //Start
        while(I2C2CONbits.SEN);
    IFS3bits.MI2C2IF=0;
    I2C2TRN= 0b01111100;        //Slave address and R/W bit
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    int i;
    for (i=0; i < size - 1; i++) {
        I2C2TRN = 0b11000000;       //Control byte, RS = 1
            while(!IFS3bits.MI2C2IF);
        IFS3bits.MI2C2IF=0;
        I2C2TRN = s[i];          //Data byte
            while(!IFS3bits.MI2C2IF);
        IFS3bits.MI2C2IF=0;
    }
    I2C2TRN = 0b01000000;       //Control byte, RS = 1
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    I2C2TRN = s[size-1];          //Data byte
        while(!IFS3bits.MI2C2IF);
    IFS3bits.MI2C2IF=0;
    I2C2CONbits.PEN = 1;        //Stop
        while(I2C2CONbits.PEN);
}

void left(void) {
    lcd_cmd(0b11 << 3);
}
void right(void) {
    lcd_cmd(0b111 << 2);
}
