/*
 * File:   djolib.c
 * Author: Alejandro Zeise
 *
 * Created on November 4, 2021, 2:14 PM
 */


#include "xc.h"
#include "string.h"

#include "djolib.h"

/**
 * Delays execution for 1 millisecond
 */
void delay_1ms(void) {
    asm("repeat #15993");
    asm("nop");
}

/**
 * Delay a variable amount of milliseconds
 */
void delay(unsigned int ms) {
    int i;
    for(i = 0; i < ms; i++) {
        delay_1ms();
    }
}

/**
 * Initializes the I2C peripheral on the PIC24 for use with the specified Baud Rate macro.
 */
void I2C_init(void) {
    I2C2CONbits.I2CEN = 0; // Disable I2C2
    I2C2BRG = I2C_BAUD_RATE;
    
    _MI2C2IF = 0; // Clear interrupt flag for master events
    
    I2C2CONbits.I2CEN = 1; // Enable I2C2
}

// Waits for the interrupt flag to be set when waiting to proceed with sending I^2C data
void waitForInterruptFlag(void) {
    while(_MI2C2IF == 0);
    _MI2C2IF = 0;
}

/**
 * Sends an amount of data bytes with manually specified control bytes preceeding them to the display
 * This function can be used to send a single data byte or multiple data bytes together.
 * @param data A pointer to the data to be sent
 * @param dataAmount The amount of data bytes to send (amount of bytes in the data array)
 * @param controlByte Manual control byte to be sent before each data byte
 *                     The CO bit is automatically manipulated so no need to worry about it, (just set to 0)
 */
void lcd_cmd_multiple_data(const char data[], unsigned int dataAmount, char controlByte) {
    unsigned int i;
    
    I2C2CONbits.SEN = 1; // Enable start condition
    
    while(I2C2CONbits.SEN != 0); // Wait for SEN bit clears, signifies that we can continue
    waitForInterruptFlag(); // Wait until ready
    
    I2C2TRN = 0b01111100; // Sending slave address plus R/W bit set to write
    waitForInterruptFlag(); // Wait until slave acknowledges
    
    for(i = 0; i < dataAmount; i++) {
        if (i == dataAmount - 1) {
            // Last byte so CO bit should be set to 0
            I2C2TRN = controlByte & 0b01111111; // Control byte
        } else {
            // More data coming, CO bit should be set to 1
            I2C2TRN = controlByte | 0b10000000; // Control byte
        }
        waitForInterruptFlag();

        I2C2TRN = data[i]; // Send command
        waitForInterruptFlag();
    }
    
    I2C2CONbits.PEN = 1; // Enable stop condition
    while(I2C2CONbits.PEN != 0); // Wait for PEN bit to clear, signifies that the stop was complete
}

/**
 * Sends a single LCD command byte. The control byte used by default is all 0 bits.
 * @param command The command byte to be sent to the display
 */
void lcd_cmd(char command) {
    lcd_cmd_with_control(command, 0b00000000);
}

/**
 * Sends a single LCD command byte with a manually specified control byte preceeding it.
 * @param command The command byte to be sent
 * @param controlByte The control byte to be sent before the command
 */
void lcd_cmd_with_control(char command, char controlByte) {
    lcd_cmd_multiple_data(&command, 1, controlByte);
}

// Utility function to help convert the contrast level macro to the Contrast Set LCD command
char getContrastSetByte(void) {
    return DEFAULT_CONTRAST_SET_BYTE | (CONTRAST_LEVEL & 0b00001111);
}

// Utility function to help convert the contrast level macro to the Power ICON Contrast LCD command
char getPowerICONContrastControlByte(void) {
    return DEFAULT_POWER_ICON_CONTRAST_CONTROL_BYTE | (CONTRAST_LEVEL >> 4);
}

/**
 * Initializes the LCD display for use with the rest of the library. Must
 * be called after I2C_init();
 */
void lcd_init(void) {
    delay(50);
    lcd_cmd(0b00111000); // function set, normal instruction mode
    lcd_cmd(0b00111001); // function set, extended instruction mode
    lcd_cmd(0b00010100); // interval osc
    
    //lcd_cmd(0b01110000); // contrast C3-C0
    //lcd_cmd(0b01011110); // Ion, Bon, C5-C4
    
    lcd_cmd(getContrastSetByte());
    lcd_cmd(getPowerICONContrastControlByte());
    
    lcd_cmd(0b01101100); // follower control
    delay(200);
    lcd_cmd(0b00111000); // function set, normal instruction mode
    lcd_cmd(0b00001100); // Display On
    lcd_cmd(0b00000001); // Clear Display
    delay(2);
}


/**
 * Sets the cursor location on the display
 * @param x The x-value coordinate on the display (column)
 * @param y The y-value coordinate on the display (row). Should be 0 or 1.
 */
void lcd_setCursor(unsigned int x, unsigned int y) {
    lcd_cmd(((0x40 * y) + x) | 0b10000000);
}

/**
 * Clears the entire display of any displayed characters
 */
void lcd_clear(void) {
    lcd_cmd(0b00000001);
}

/**
 * Sends Cursor or Display Shift command to the display. Shifts
 * the contents on the screen to the left or right by 1 column.
 * @param direction 0 to shift the display left and 1 to shift the display to the right
 */
void lcd_shift(unsigned char direction) {
    unsigned char data = 0b00011000; // Shift display to the left
    if (direction > 0) {
        data |= 0b00000100; // Shift display to the right
    }
    
    lcd_cmd(data); // Send the shift command
}
/**
 * Prints a single character to the display at the current cursor location
 * @param character The character to display
 */
void lcd_printChar(char character) {
    // Needs RS in control byte to be 1
    lcd_cmd_with_control(character, 0b01000000);
}

/**
 * Prints a string of characters to the display at the current cursor location
 * @param s The string to print to the display
 */
void lcd_printStr(const char s[]) {
    lcd_cmd_multiple_data(s, strlen(s), 0b01000000);
}