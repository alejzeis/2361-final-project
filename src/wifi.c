/*
 * Adafruit ATWINC1500 WiFi module library
 *
 * Author: Alejandro Zeise
 */

#include "app_config.h"
#include "wifi.h"
#include "djolib.h"
#include "bsp/nm_bsp.h"
#include "driver/m2m_wifi.h"

// Callback function to handle WiFi events from the WINC driver
static void wifiEventHandler(uint8_t u8MsgType, void *pvMsg) {
    
}

void wifiModulePollEvents(void) {
    // Process any events if the driver has received any
    m2m_wifi_handle_events(NULL);
}

void wifiModuleInit(void) {
    sint8 ret;
    tstrWifiInitParam param;
    
    nm_bsp_init(); // Initialize BSP for the WINC driver
    
    m2m_memset((uint8*)&param, 0, sizeof(param)); // Sets param to all zeros (default)
    param.pfAppWifiCb = wifiEventHandler;

#ifdef LCD_DEBUGGING
    lcd_clear();
    nm_bsp_sleep(1);
    lcd_printStr("drv init");
#endif
    
    // Initialize the WINC driver itself
    ret = m2m_wifi_init(&param);
#ifdef LCD_DEBUGGING
    lcd_clear();
    lcd_printStr("drv +");
#endif
    if (M2M_SUCCESS != ret){
        // TODO: Figure out something to do here besides display on the LCD
        // maybe light an error LED?
#ifdef LCD_DEBUGGING
        lcd_clear();
        lcd_printStr("drv ERR");
#endif
        while(1);
    }
}

void wifiModuleScanNetworks(wifiScanCallback_t* callback) {
    m2m_wifi_set_scan_region(NORTH_AMERICA);
}