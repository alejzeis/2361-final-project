/*
 * Bus Wrapper Code for the ATWINC1500 Driver Module
 * 
 * Implements the functions required by the driver for SPI communication
 * that are specific to the PIC24, outlined in the header file.
 * 
 * Author: Alejandro Zeise
 */

#include "bus_wrapper/nm_bus_wrapper.h"

#include <xc.h>

#define NM_BUS_MAX_TRX_SZ	256

tstrNmBusCapabilities egstrNmBusCapabilities =
{
	NM_BUS_MAX_TRX_SZ
};

void setup_spi_pins(void) {
    // Use PPS to assign the SPI Data Out/Data In and Clock pins
    __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS
    RPOR6bits.RP13R = 7;   // SPI Data Out RP13 -> MOSI (Master Out Slave In)
    RPOR7bits.RP15R = 8;   // SPI Clock Out RP15 -> SCK
    RPINR20bits.SCK1R = 15; // SPI Clock In RP15
    RPINR20bits.SDI1R = 14; // SPI Data In RP14 <- MISO (Master In Slave Out)
    __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS
    
    TRISBbits.TRISB12 = 0; // Output on CS
    LATBbits.LATB12 = 1; // High on CS
}

void setup_spi_peripheral(void) {
    // Initialize the SPI peripheral
    SPI1CON1 = 0;
    
    SPI1CON1bits.MSTEN = 1; // Master mode
    SPI1CON1bits.MODE16 = 0; // 8bit mode
    SPI1CON1bits.CKP = 0;
    SPI1CON1bits.CKE = 0;
    SPI1CON1bits.SPRE = 0b110;
    SPI1CON1bits.PPRE = 0b11;
    
    SPI1CON2 = 0;
    SPI1STAT = 0;
    SPI1STATbits.SPIROV = 0; // Clear overflow bit
    SPI1STATbits.SPIEN = 1; // Enable SPI
    
    _SPI1IE = 0; // Disable SPI interrupt (we have no need for it)
}

/**
 * Reads/Writes a certain amount of bytes from SPI simultaneously. This function
 * is used by the nm_bus_ioctl() function which is called by the driver to send
 * or receive data over SPI.
 * 
 * Either the output or input buffer parameters can be set to a null pointer. 
 * If the output buffer is a null pointer then 0's are sent to the slave while bytes are read.
 * If the input buffer is a null pointer then bytes from the slave are ignored.
 * Both buffers can not be null pointers at the same time, otherwise this will return an error.
 * 
 * @param outputBuffer A buffer containing data to be sent out over SPI to the slave (the module).
 * @param inputBuffer A buffer to be written with data received from SPI from the slave (The module.)
 * @param size The size of the output and input buffers (amount of bytes to read/write)
 * @return 0 if successful, otherwise an error code for failure.
 */
sint8 spi_send_receive(uint8* outputBuffer, uint8* inputBuffer, uint16 size) {
    unsigned int i;
    uint8 writeByte;
    uint8 readByte;
    
    LATBbits.LATB12 = 0; // Low on CS
    
    for(i = 0; i < size; i++) {
        if(!outputBuffer) {
            writeByte = 0;
        } else {
            writeByte = outputBuffer[i];
        }
        
        SPI1BUF = writeByte;
        while(SPI1STATbits.SPIRBF == 0); // Wait for the receive buffer to fill up
        
        if(!inputBuffer) {
            readByte = SPI1BUF; // Dummy read
        } else {
            inputBuffer[i] = SPI1BUF;
        }
    }
    
    LATBbits.LATB12 = 1; // High on CS
    
    return M2M_SUCCESS;
}

/**
*	@fn		nm_bus_init
*	@brief	Initialize the bus wrapper
*	@return	ZERO in case of success and M2M_ERR_BUS_FAIL in case of failure
*/
sint8 nm_bus_init(void* p) {
    setup_spi_pins();
    setup_spi_peripheral();
    
    return 0;
}

/**
*	@fn		nm_bus_ioctl
*	@brief	send/receive from the bus
*	@param [in]	u8Cmd
*					IOCTL command for the operation
*	@param [in]	pvParameter
*					Arbitrary parameter depending on IOCTL
*	@return	ZERO in case of success and M2M_ERR_BUS_FAIL in case of failure
*	@note	For SPI only, it's important to be able to send/receive at the same time
*/
sint8 nm_bus_ioctl(uint8 u8Cmd, void* pvParameter) {
    tstrNmSpiRw *parameters;
    
    switch(u8Cmd) {
        // There are other IOCTL commands but they are I^2C/UART only.
        // We are only implementing SPI so this is all we need to process
        case NM_BUS_IOCTL_RW:
            // Reading and writing simultaneously
            parameters = (tstrNmSpiRw*) pvParameter;
            return spi_send_receive(parameters->pu8OutBuf, parameters->pu8InBuf, parameters->u16Sz);
            
        default:
            return -1; // Unimplemented IOCTL command, fail
    }
}

/**
*	@fn		nm_bus_deinit
*	@brief	De-initialize the bus wrapper
*	@return	ZERO in case of success and M2M_ERR_BUS_FAIL in case of failure
*/
sint8 nm_bus_deinit(void) {
    SPI1STATbits.SPIEN = 0; // Disable SPI
    // TODO: any other deinit stuff
    
    return 0;
}

/*
*	@fn			nm_bus_reinit
*	@brief		re-initialize the bus wrapper
*	@param [in]	void *config
*					re-init configuration data
*	@return		ZERO in case of success and M2M_ERR_BUS_FAIL in case of failure
*/
sint8 nm_bus_reinit(void * config) {
    setup_spi_peripheral();
    // TODO: any reinit stuff?
    return 0;
}