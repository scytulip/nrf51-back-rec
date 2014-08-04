/** @file
 *
 * @defgroup ble_back_rec_uart UART Operations
 * @{
 * @ingroup ble_back_rec
 * @brief UART debug library
 *
 * This file contains functions for UART operations. It works mainly for debug purpose.
 * The UART interruption handle implements scheduler.
 */
 
#ifndef CUSTOM_UART_H__
#define CUSTOM_UART_H__
#include <stdint.h>

#define RX_PIN_NO  		11
#define TX_PIN_NO  		9
#define CTS_PIN_NO 		10
#define RTS_PIN_NO 		8
#define HW_FLOWCTRL		true
	
/** @brief Print a string to UART terminal */
void uart_putstr(const uint8_t *str);

/**@brief Function for initializing UART operation */
void uart_init(void);

/** @brief UART debug assert */
#ifdef UART_DEBUG_ENABLE
	#define DEBUG_ASSERT(STR) uart_putstr((uint8_t *) STR);
#else
	#define DEBUG_ASSERT(STR)
#endif

#endif

/** @} */

