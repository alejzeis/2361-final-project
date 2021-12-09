/*
 * Header file for the WiFi module API, capable of
 * getting time from an NTP server, and sending wake-up
 * times to an external server.
 * 
 * Author: Alejandro Zeise
 */
#ifndef WIFI_H
#define WIFI_H

#include "driver/m2m_types.h"

/**
 * Represents a function pointer that is a callback function
 * for a WiFi scan (see wifiModuleScanNetworks())
 * 
 * Takes in two parameters: an array of tstrM2mWifiscanResult where each
 * is a WiFi network that was found on the scan, and an unsigned integer which
 * is the length of the array.
 */
typedef void (*wifiScanCallback_t)(tstrM2mWifiscanResult[], unsigned int);

/**
 * Initializes the WiFi module and the underlying WINC driver for use.
 * This should be called in your program's "setup" function, or at the very
 * least before any other wifi API functions are called.
 */
void wifiModuleInit(void);
/**
 * "Checkin" function to process events. This function NEEDS to be called
 * periodically to process events from the WiFi module itself. It is recommended
 * to call this in your mainloop as this is what will eventually call all the callback
 * functions that are registered through the other WiFi API functions.
 */
void wifiModulePollEvents(void);
/**
 * Begin a scan for available WiFi networks and register the
 * provided callback to handle the results when they are available. 
 * 
 * This function is non-blocking and will not return results instantly. Results
 * will be handled in the callback function that you write and provide a pointer as a parameter for.
 * @param A function pointer to a callback function that handles the results from this scan
 */
void wifiModuleScanNetworks(wifiScanCallback_t*);

#endif // WIFI_H
