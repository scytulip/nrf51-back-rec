/** @file
 *
 * @defgroup ble_back_rec_timer Timers Operations
 * @{
 * @ingroup ble_back_rec
 * @brief Header for nrf51822 timers' setting, initilization and operation.
 */

#ifndef CUSTOM_TIMER_H__
#define CUSTOM_TIMER_H__

// APP TIMERS
#define APP_TIMER_PRESCALER             0                                           /**< Value of the RTC1 PRESCALER register. */
#define APP_TIMER_MAX_TIMERS            5                                           /**< Maximum number of simultaneously created timers. */
#define APP_TIMER_OP_QUEUE_SIZE         5                                           /**< Size of timer operation queues. */

// BATTERY SERVICE
#define BATTERY_LEVEL_MEAS_INTERVAL     APP_TIMER_TICKS(4000, APP_TIMER_PRESCALER)  /**< Battery level measurement interval (ticks -> 4s). */

// DATA REPORT SERVICE (HEART RATE SERVICE)
#define DATA_REPORT_INTERVAL            APP_TIMER_TICKS(1000, APP_TIMER_PRESCALER)  /**< Instant data report interval (0.5s) */

// BLINKY LED TIMER
#define BLINKY_LED_INTERVAL             APP_TIMER_TICKS(100, APP_TIMER_PRESCALER)   /**< LED event interval (100ms) */

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
void timers_init(void);

/**@brief Function for starting timers.
*/
void ble_timers_start(void);

/**@brief Function for stoppingtimers (used for BLE services).
*/
void ble_timers_stop(void);

/**@brief Function for starting global timers (timers for flashing LED, data recording, etc.).
*/
void glb_timers_start(void);

/**@brief Function for stoping global timers (timers for flashing LED, data recording, etc.).
*/
void glb_timers_stop(void);

#endif

/** @} */
