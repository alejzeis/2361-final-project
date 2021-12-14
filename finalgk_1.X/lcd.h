/* 
 * File:   lcd.h
 * Author: garre
 *
 * Created on November 17, 2021, 12:38 PM
 */

#ifndef LCD_H
#define	LCD_H

#ifdef	__cplusplus
extern "C" {
#endif
    void lcddelay(long n);
    void lcd_cmd(char command);
    void lcd_init(void);
    void lcd_setCursor(char x, char y);
    void lcd_printChar(char myChar);
    void lcd_printStr(const char s[]);



#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

