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
#include <stdio.h>

#include "ble_debug_assert_handler.h"
#include "softdevice_handler.h"
#include "pstorage.h"

#include "nrf51_bitfields.h"
#include "app_scheduler.h"
#include "app_error.h"
#include "boards.h"
#include "nrf_delay.h"

#include "main.h"
#include "adc.h"
#include "timers.h"
#include "gpio.h"
#include "bluetooth.h"
#include "back_dat.h"
#include "uart.h"

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
	
	//DEBUG_PF("Error Code: %d\r\nError Line #: %d\r\nError File: %s\r\n", 
	//		error_code, line_num, p_file_name);

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
	uint32_t rst_reas;	/**< Power reset reason */
	
	//Initialize LEDS
	leds_init();
	nrf_gpio_pin_set(ADVERTISING_LED_PIN_NO); // INIT indicator
	nrf_gpio_pin_set(CONNECTED_LED_PIN_NO);
	
	// Scheduler
	scheduler_init();
	
	/** @note Register softdevice system event handler before 
	any pstorage operation to avoid deadlock. */
	
	// Register softdevice system event handler
	sys_evt_init();
	
	// Initialize the SoftDevice handler module.
    SOFTDEVICE_HANDLER_INIT(NRF_CLOCK_LFCLKSRC_XTAL_20_PPM, true); // Use scheduler
	
	/** @note In the very first power cycle (reset or battery change),
	system will go into off mode directly and set input sense on a button.
	This button is used to toggle system on/off (virtual power switch). */
	
	/** @note Unless cleared, NRF_POWER->RESETREAS is cumulative. 
	A field is cleared by writing '1' to it. If none of the reset sources are 
	flagged, it indicates that the chip was reset from the on-chip reset generator. */
	
	sd_power_reset_reason_get(&rst_reas);
	
	// Enable UART debug ability
	uart_init();

	// Initialize persistent storage modules.
	/** @note In `pstorage_init()`, swap area is erased. */
	err_code = pstorage_init();	
	APP_ERROR_CHECK(err_code);
	
	device_manager_init();
	back_data_init();

	if (!(rst_reas & POWER_RESETREAS_SREQ_Msk)) { // For Debug interface
	if (!rst_reas || (rst_reas & POWER_RESETREAS_RESETPIN_Msk))
    {
		/* Important! Clear reset reason register */
		sd_power_reset_reason_clr(
			POWER_RESETREAS_RESETPIN_Msk
		);

		/* Clear all data. */
		back_data_clear_storage();
		
		/* Shut down */
		system_off_mode();
		
    } }

	/* Peripherals Initialization */
	ble_stack_init();			// Enable BLE stack
	
	DEBUG_ASSERT("Initializing peripherals...\r\n");
	timers_init();
	gpiote_init();
	buttons_init();
	adc_init();
	ds1621_init();

	/* BLE Initialization */
	DEBUG_ASSERT("Initializing BLE...\r\n");
	gap_params_init();
	services_init();
	advertising_init();
	conn_params_init();
	
	/* Indicate the end of initialization */
	nrf_gpio_pin_clear(ADVERTISING_LED_PIN_NO);
	nrf_gpio_pin_clear(CONNECTED_LED_PIN_NO);
	glb_timers_start();
	
	/* Enter main loop */
	for (;;)
	{
		err_code = sd_app_evt_wait();
		APP_ERROR_CHECK(err_code);
		app_sched_execute();
	}

}
//NRF_SUCCESS
