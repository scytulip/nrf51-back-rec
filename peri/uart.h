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
#include <stdio.h>
#include "app_uart.h"

#define UART_IRQ_PRIORITY                       APP_IRQ_PRIORITY_LOW

#define RX_PIN_NO       11
#define TX_PIN_NO       9
#define CTS_PIN_NO      10
#define RTS_PIN_NO      8

#define UART_DEBUG_ENABLE 1

/** @brief UART debug assert */
#ifdef UART_DEBUG_ENABLE

#define DEBUG_ASSERT(STR) printf("%s",(uint8_t *) STR);
#define DEBUG_PF(STR,...) printf(STR, __VA_ARGS__);

#else

#define DEBUG_ASSERT(STR)
#define DEBUG_PF(STR,...)

#endif

/**@brief Function for initializing UART operation */
void uart_init(void);

#endif

/** @} */

