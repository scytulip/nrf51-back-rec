#ifndef CUSTOM_TIMER_H__
#define CUSTOM_TIMER_H__

// APP TIMERS
#define APP_TIMER_PRESCALER             0                                           /**< Value of the RTC1 PRESCALER register. */
#define APP_TIMER_MAX_TIMERS            3                                           /**< Maximum number of simultaneously created timers. */
#define APP_TIMER_OP_QUEUE_SIZE         4                                           /**< Size of timer operation queues. */

// BATTERY SERVICE
#define BATTERY_LEVEL_MEAS_INTERVAL     APP_TIMER_TICKS(2000, APP_TIMER_PRESCALER)  /**< Battery level measurement interval (ticks -> 2s). */

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
void timers_init(void);

/**@brief Function for starting timers.
*/
void timers_start(void);

#endif
