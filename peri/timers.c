#include "adc.h"
#include "timers.h"
#include "gpio.h"
#include "back_dat.h"

#include "app_timer.h"

static app_timer_id_t   m_battery_timer_id;         /**< Battery timer. */
static app_timer_id_t   m_data_report_timer_id;     /**< Data report timer. */
static app_timer_id_t   m_blinky_led_timer_id;      /**< LED control timer. */

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
    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_MAX_TIMERS, APP_TIMER_OP_QUEUE_SIZE, true);

    // Timer for supply voltage monitor (BLE)
    err_code = app_timer_create(&m_battery_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                battery_level_meas_timeout_handler);
    APP_ERROR_CHECK(err_code);

    // Timer for data report (BLE)
    err_code = app_timer_create(&m_data_report_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                data_report_timeout_handler);
    APP_ERROR_CHECK(err_code);

    // Timer for blinky LED
    err_code = app_timer_create(&m_blinky_led_timer_id,
                                APP_TIMER_MODE_REPEATED,
                                blinky_led_button_press_timeout_handler);
    APP_ERROR_CHECK(err_code);
    
    // Start LED blinky timer
    err_code = app_timer_start(m_blinky_led_timer_id, BLINKY_LED_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code);
}

/*****************************************************************************
* Start Functions
*****************************************************************************/

/**@brief Function for starting timers (used for BLE services).
*/
void ble_timers_start(void)
{
    uint32_t err_code;

    err_code = app_timer_start(m_battery_timer_id, BATTERY_LEVEL_MEAS_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for stopping timers (used for BLE services).
*/
void ble_timers_stop(void)
{
    uint32_t err_code;

    err_code = app_timer_stop(m_battery_timer_id);
    APP_ERROR_CHECK(err_code);

}

/**@brief Function for starting global timers (timers for flashing LED, data recording, etc.).
*/
void glb_timers_start(void)
{
    uint32_t err_code;

    err_code = app_timer_start(m_data_report_timer_id, DATA_REPORT_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code);
}

/**@brief Function for stoping global timers (timers for flashing LED, data recording, etc.).
*/
void glb_timers_stop(void)
{
    uint32_t err_code;

    err_code = app_timer_stop(m_data_report_timer_id);
    APP_ERROR_CHECK(err_code);

}



