/* Copyright (c) 2014 ResBand. All Rights Reserved. */

/** @file
 *
 * @defgroup ble_back_rec main.c
 * @{
 * @ingroup ble_back_rec
 * @brief Project main file.
 * @author Congyin Shi
 *
 * This file contains platform code of background data recording based on NordicSemi (c) nRF51822.
 */

#include <stdint.h>
#include <string.h>

#include "main.h"
#include "adc.h"
#include "timers.h"
#include "gpio.h"
#include "bluetooth.h"
#include "back_dat.h"

#include "ble_debug_assert_handler.h"
#include "softdevice_handler.h"
#include "pstorage.h"

#include "app_scheduler.h"
#include "app_error.h"
#include "boards.h"
#include "nrf_temp.h"

#define DEAD_BEEF                       0xDEADBEEF                                  /**< Value used as error code on stack dump, can be used to identify stack location on stack unwind. */
#define SCHED_MAX_EVENT_DATA_SIZE       sizeof(app_timer_event_t)                   /**< Maximum size of scheduler events. Note that scheduler BLE stack events do not contain any data, as the events are being pulled from the stack in the event handler. */
#define SCHED_QUEUE_SIZE                10                                          /**< Maximum number of events in the scheduler queue. */

/**@brief Function for error handling, which is called when an error has occurred.
 *
 * @warning This handler is an example only and does not fit a final product. You need to analyze
 *          how your product is supposed to react in case of error.
 *
 * @param[in] error_code  Error code supplied to the handler.
 * @param[in] line_num    Line number where the handler is called.
 * @param[in] p_file_name Pointer to the file name.
 */
void app_error_handler(uint32_t error_code, uint32_t line_num, const uint8_t * p_file_name)
{
    // nrf_gpio_pin_set(ASSERT_LED_PIN_NO);

    // This call can be used for debug purposes during application development.
    // @note CAUTION: Activating this code will write the stack to flash on an error.
    //                This function should NOT be used in a final product.
    //                It is intended STRICTLY for development/debugging purposes.
    //                The flash write will happen EVEN if the radio is active, thus interrupting
    //                any communication.
    //                Use with care. Un-comment the line below to use.
	
	nrf_gpio_pin_set(LED_0);
	nrf_gpio_pin_set(LED_1);
	
    ble_debug_assert_handler(error_code, line_num, p_file_name);

    // On assert, the system can only recover with a reset.
    NVIC_SystemReset();
}

/**@brief Callback function for asserts in the SoftDevice.
 *
 * @details This function will be called in case of an assert in the SoftDevice.
 *
 * @warning This handler is an example only and does not fit a final product. You need to analyze
 *          how your product is supposed to react in case of Assert.
 * @warning On assert from the SoftDevice, the system can only recover on reset.
 *
 * @param[in]   line_num   Line number of the failing ASSERT call.
 * @param[in]   file_name  File name of the failing ASSERT call.
 */
void assert_nrf_callback(uint16_t line_num, const uint8_t * p_file_name)
{
    app_error_handler(DEAD_BEEF, line_num, p_file_name);
}

/**@brief Function for the Event Scheduler initialization.
 */
static void scheduler_init(void)
{
    APP_SCHED_INIT(SCHED_MAX_EVENT_DATA_SIZE, SCHED_QUEUE_SIZE);
}

/**@brief Function for application main entry.
 */
int main(void)
{
	
	uint32_t err_code;
	
	// Initialize persistent storage module.
    err_code = pstorage_init();
    APP_ERROR_CHECK(err_code);
	
	// Scheduler
	scheduler_init();
	
    // Initialization
	leds_init();
    timers_init();
    gpiote_init();
    buttons_init();
	adc_init();

	// BLE Initialization
	ble_stack_init();
	device_manager_init();
	gap_params_init();
    advertising_init();
    services_init();	
    conn_params_init();

    // Start execution
    advertising_start();
	
    // Enter main loop
    for (;;)
    {
    	err_code = sd_app_evt_wait();
        APP_ERROR_CHECK(err_code);
		app_sched_execute();
    }
		
}
