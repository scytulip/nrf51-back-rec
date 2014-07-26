#include "adc.h"
#include "timers.h"

#include "app_timer.h"

static app_timer_id_t                   m_battery_timer_id;                         /**< Battery timer. */

/*****************************************************************************
* Initilization Functions
*****************************************************************************/

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
void timers_init(void)
{
		uint32_t err_code;
	
    // Initialize timer module, making it use the scheduler
    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_MAX_TIMERS, APP_TIMER_OP_QUEUE_SIZE, false);
	
		// Timer for supply voltage monitor
    err_code = app_timer_create(&m_battery_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                battery_level_meas_timeout_handler);
    APP_ERROR_CHECK(err_code);
}

/*****************************************************************************
* Start Functions
*****************************************************************************/

/**@brief Function for starting timers.
*/
void timers_start(void)
{
    uint32_t err_code;

    err_code = app_timer_start(m_battery_timer_id, BATTERY_LEVEL_MEAS_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code);
}
