/*
 * BSP (Board Support Package) Code for the ATWINC1500 Driver Module
 * This code is specifically for the PIC24 and handles things such as initializing
 * pins and attaching interrupts.
 * 
 * Implements the functions required by the driver that are specific to the PIC24,
 * outlined in the header file.
 * 
 * Author: Alejandro Zeise
 */

#include "bsp/nm_bsp.h"

#include <xc.h>

// Function Pointer to the handler for the input capture ISR on the IRQN pin
// The HIF in the driver has it's own handler, which we call when we receive an interrupt on the pin
volatile tpfNmBspIsr hifInterruptHandler;

// Input Capture 1 ISR. This should execute when the IRQN pin goes from high to low, signal from the module
void _ISR _IC1Interrupt(void) {
    // This does call another function which is not recommended for an ISR,
    // however this is explicitly how it is intended to work per the driver docs
    // and the actual function "hifInterruptHandler()" is very short (only a couple lines)
    hifInterruptHandler();
    _IC1IF = 0; // Reset interrupt flag
}

void setup_wifi_module_pins(void) {
    // Set up wifi module pins
    // Setup IRQN to Input Capture 1 Peripheral
    __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS
    RPINR7bits.IC1R = 10;  // Use Pin RP10 = "10", connected to IRQN, for Input Capture 1 (Table 10-2)
    __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS
    
    TRISBbits.TRISB11 = 0; // Output on RB11 -> EN (enable)
    TRISBbits.TRISB9 = 0; // Output on RB9 -> RST (reset)
}

// Initializes the PIC24, in this case initialize the pins
sint8 nm_bsp_init(void) {
    setup_wifi_module_pins();
    nm_bsp_reset();
    
    // Set up input capture
    // Clear flag but disable interrupt (needs to be disabled by default per driver documentation)
    _IC1IF = 0;
    _IC1IE = 0; 
    
    // Setup timer 5 for input capture. Don't care about the timer though so these values are fine
    TMR5 = 0;
    PR5 = 1;
    T5CONbits.TON = 1;
    
    IC1CONbits.ICTMR = 5; // Use timer 5
    IC1CONbits.ICI = 0b00; // Interrupt every capture event
    IC1CONbits.ICM = 0b010; // Capture falling edge (high to low))
}

// Deinitialize the PIC24
sint8 nm_bsp_deinit(void) {
    // TODO: figure out what to do here?
}

// Resets the WINC by manipulating GPIO pins of CHIP_EN and RESET_N, going low then high
void nm_bsp_reset(void) {
    // Must be at least 5ms delay between CHIP_EN and RESET_N changing states
    // See section 7.4 in WINC datasheet for more
    
    // Set CHIP_EN (RB1) and RESET_N (RB3) to low
    LATBbits.LATB11 = 0;
    nm_bsp_sleep(5);
    LATBbits.LATB9 = 0;
    
    nm_bsp_sleep(1); // TODO: is this needed?
    
    // Set CHIP_EN (RB1) and RESET_N (RB3) high 
    LATBbits.LATB11 = 1;
    nm_bsp_sleep(5);
    LATBbits.LATB9 = 1;
}

// Sleep a certain amount of milliseconds. Can do this using NOP instructions
void nm_bsp_sleep(uint32 u32TimeMsec) {
    unsigned int i;
    for(i = 0; i < u32TimeMsec; i++) {
        // Sleeps for 1ms
        asm("repeat #15993");
        asm("nop");
    }
}

// Registers an interrupt. Once inside interrupt call pfisr function
// Understanding so far: This will pass a function that needs to be called whenever there is an interrupt
// sent from the module to the PIC over the IRQN Pin. Thus we need an ISR that activates based on an interrupt from that pin
// Arduino library uses interrupt to trigger on FALLING edge (high to low) for that pin
void nm_bsp_register_isr(tpfNmBspIsr pfIsr) {
    hifInterruptHandler = pfIsr;
    _IC1IF = 0; // Clear interrupt flag
    _IC1IE = 1; // Enable input capture interrupt
}

// Enables/Disables interrupts
// 0 to disable, 1 to enable
void nm_bsp_interrupt_ctrl(uint8 u8Enable)  {
    // Enable/Disable the ISR for the input capture on IRQN
    _IC1IE = u8Enable;
}