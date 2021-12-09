/* 
 * File: djolib.h
 * Author: Alejandro Zeise
 * Comments:
 * Revision history: 
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef DJOLIB_H
#define	DJOLIB_H

#include <xc.h> // include processor files - each processor file is guarded.  

// From Table 16-1 (in Family Data sheet). 100kHz FSCL and 16MHz FCY
#define I2C_BAUD_RATE 157

// Must be between 0-63
#define CONTRAST_LEVEL 35

// Default values for the two commands used in initializing the display. These
// are manipulated with the CONTRAST_LEVEL macro value in lcd_init())
#define DEFAULT_CONTRAST_SET_BYTE 0b01110000
#define DEFAULT_POWER_ICON_CONTRAST_CONTROL_BYTE 0b1011100

#ifdef	__cplusplus
extern "C" {
#endif /* __cplusplus */

void delay_1ms(void);    
void delay(unsigned int ms);


void I2C_init(void);
void lcd_cmd(char cmd);
void lcd_cmd_with_control(char cmd, char controlByte);
void lcd_init(void);
void lcd_setCursor(unsigned int x, unsigned int y);
void lcd_clear(void);
void lcd_shift(unsigned char direction);
void lcd_printChar(char character);
void lcd_printStr(const char s[]);

#ifdef	__cplusplus
}
#endif /* __cplusplus */

#endif	/* DJOLIB_H */

