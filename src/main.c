/*
 * Main entrypoint for the Alarm Clock Program
 */

#include "app_config.h"
#include "wifi.h"
#include "djolib.h"
#include "bsp/nm_bsp.h"
#include "driver/m2m_wifi.h"
#include "common/nm_common.h"

#include <xc.h>

// CW1: FLASH CONFIGURATION WORD 1 (see PIC24 Family Reference Manual 24.1)
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

void generalSetup(void) {
    // Set to maximum clockspeed
    CLKDIVbits.RCDIV = 0; // Set RCDIV=1:1 (default is 2:1) 32 MHz or FCY/2=16M
    
    AD1PCFG = 0x9fff; //sets all pins to digital I/O

#ifdef LCD_DEBUGGING
    I2C_init();
    lcd_init();
#endif
    
    wifiModuleInit(); // Initialize and prepare for usage of the wifi module (see wifi.c)
}

int main() {
    generalSetup();
    
    // Main application loop, handle polling things and such
	while(1) {
        wifiModulePollEvents();
    }
    
	return 1;
}
