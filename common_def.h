/** @file
 *
 * @defgroup proj_ble_common Public Resource Management
 * @{
 * @ingroup proj_ble
 * @brief File for public macros, structs, functions
 *
 * This file contains the source code for a group of public definitions for the project.
 * Most system resouces, such as ADC, timers, etc., are shared among different blocks.
 * Hence, this file also contains the source code for resource management.
 */

#ifndef CUSTOM_DEF_H__
#define CUSTOM_DEF_H__

#include "boards.h"

#define IS_SRVC_CHANGED_CHARACT_PRESENT 0                                           /**< Include or not the service_changed characteristic. if not enabled, the server's database cannot be changed for the lifetime of the device*/

#define WAKEUP_BUTTON_PIN               BUTTON_0                                    /**< Button used to wake up the application. */
#define ADVERTISING_LED_PIN_NO          LED_0                                       /**< Is on when device is advertising. */
#define CONNECTED_LED_PIN_NO            LED_1                                       /**< Is on when device has connected. */

#define APP_TIMER_PRESCALER             0                                           /**< Value of the RTC1 PRESCALER register. */
#define APP_TIMER_MAX_TIMERS            2                                           /**< Maximum number of simultaneously created timers. */
#define APP_TIMER_OP_QUEUE_SIZE         4                                           /**< Size of timer operation queues. */

#define APP_GPIOTE_MAX_USERS            1                                           /**< Maximum number of users of the GPIOTE handler. */

#define BUTTON_DETECTION_DELAY          APP_TIMER_TICKS(50, APP_TIMER_PRESCALER)    /**< Delay from a GPIOTE event until a button is reported as pushed (in number of timer ticks). */

/**@brief Function for the LEDs initialization.
 *
 * @details Initializes all LEDs used by the application.
 */
void leds_init(void);

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
void timers_init(void);

/**@brief Function for initializing the GPIOTE handler module.
 */
void gpiote_init(void);

/**@brief Function for initializing the button handler module.
 */
void buttons_init(void);

/**@brief Function for initializing ADC operation
 */
void adc_init(void);

/**@brief Function for starting timers.
*/
void timers_start(void);

#endif
