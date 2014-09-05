/** @file
 *
 * @defgroup ble_back_rec_gpio IO Operation
 * @{
 * @ingroup ble_back_rec
 * @brief Header for IO Operation
 *
 * This file contains functions for operating GPIOs, including buttons, LEDs, UART, etc.
 */

#ifndef CUSTOM_GPIO_H__
#define CUSTOM_GPIO_H__

#include "app_timer.h"
#include "boards.h"
#include "timers.h"

// BUTTONS & LEDS
#define WAKEUP_BUTTON_PIN               BUTTON_0                                    /**< Button used to 1. wake up the application, 2. sending instant data. */
#define SENDAT_BUTTON_PIN               BUTTON_1                                    /**< Button used to send saved data. */

#define ADVERTISING_LED_PIN_NO          LED_0                                       /**< Is blinky when device is recording data in background. 
Is on when device is advertising. */
#define CONNECTED_LED_PIN_NO            LED_1                                       /**< Is blinky when device memory is full. 
Is on when device has connected. */

#define BUTTON_DETECTION_DELAY          APP_TIMER_TICKS(50, APP_TIMER_PRESCALER)    /**< Delay from a GPIOTE event until a button is reported as pushed (in number of timer ticks). */
#define BUTTON_LONGPRESS_DELAY          APP_TIMER_TICKS(2000, APP_TIMER_PRESCALER)    /**< Delay from a GPIOTE event until a button is reported as pushed (in number of timer ticks). */
#define APP_GPIOTE_MAX_USERS            1                                           /**< Maximum number of users of the GPIOTE handler. */


/**@brief Timer handler for blinky LED signal and button event */
void blinky_led_button_press_timeout_handler(void *p_context);

/**@brief Function for the LEDs initialization.
 *
 * @details Initializes all LEDs used by the application.
 */
void leds_init(void);

/**@brief Function for initializing the GPIOTE handler module.
 */
void gpiote_init(void);

/**@brief Function for initializing the button handler module.
 */
void buttons_init(void);

#endif

/** @} */

