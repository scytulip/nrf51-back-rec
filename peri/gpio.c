#include <stdbool.h>

#include "gpio.h"
#include "uart.h"
#include "back_dat.h"
#include "bluetooth.h"

#include "nordic_common.h"
#include "app_button.h"
#include "app_gpiote.h"
#include "nrf_gpio.h"
#include "nrf_delay.h"

static uint32_t led_count;		/**< Timer event counter for blinky pattern. */
static uint32_t button_count;	/**< Timer event counter for button function. */
static bool wakeup_pushed;		/**< Is wakeup button (function button) pushed? */

/*****************************************************************************
* Event Handlers
*****************************************************************************/
/**@brief Button handler for short button press */
static void button_evt_handler(uint8_t pin_no, uint8_t button_action)
{
	switch (pin_no)
	{
		case WAKEUP_BUTTON_PIN:
			if (button_action == APP_BUTTON_PUSH)
			{
				button_count = 0;
				wakeup_pushed = true;
			} else
			if (button_action == APP_BUTTON_RELEASE && 
				get_sys_state() == SYS_DATA_RECORDING)
			{
				if (button_count > 20) 		
				{
					glb_timers_stop();
					system_off_mode();			// Long press to shut down.
				}
				else
				{
					set_sys_state(SYS_BLE_DATA_INSTANT);
					advertising_start();		// Short press to enter instant data report mode.
				}
				button_count = 0;
				wakeup_pushed = false;
			} else
			if (button_action == APP_BUTTON_RELEASE &&
				get_sys_state() == SYS_BLE_DATA_INSTANT)
			{
				ble_connection_disconnect();						// Short press to disconnect BLE link.
				if (button_count > 20)
				{
					glb_timers_stop();
					system_off_mode();			// Long press to shutdown.
				}
				button_count = 0;
				wakeup_pushed = false;
			}
			break;
		case SENDAT_BUTTON_PIN:
			break;
	}
}

/**@brief Timer handler for blinky LED signal and button event */
void blinky_led_button_press_timeout_handler(void *p_context)
{
	
	UNUSED_PARAMETER(p_context);
	
	if (get_sys_state() == SYS_DATA_RECORDING)
		nrf_gpio_pin_write(ADVERTISING_LED_PIN_NO, !led_count);
	
	/* Turn on advertising LED for 100ms every 3s. */
	led_count = (led_count + 1) % 30;
	
	/* Count button pushed time. */
	if (wakeup_pushed)
	{
		button_count ++;
		if (button_count>20)
		{	// Turn on 2 LEDs to indicate long press.
			nrf_gpio_pin_set(ADVERTISING_LED_PIN_NO);
			nrf_gpio_pin_set(CONNECTED_LED_PIN_NO);
		}
	}
}
/*****************************************************************************
* Initilization Functions
*****************************************************************************/

/**@brief Function for the LEDs initialization.
 *
 * @details Initializes all LEDs used by the application.
 */
void leds_init(void)
{
    nrf_gpio_cfg_output(ADVERTISING_LED_PIN_NO);
    nrf_gpio_cfg_output(CONNECTED_LED_PIN_NO);
	
	led_count = 0;
}

/**@brief Function for initializing the GPIOTE handler module.
 */
void gpiote_init(void)
{
    APP_GPIOTE_INIT(APP_GPIOTE_MAX_USERS);
}

/**@brief Function for initializing the button handler module.
 */
void buttons_init(void)
{
    // Note: Array must be static because a pointer to it will be saved in the Button handler
    //       module.
	static app_button_cfg_t buttons[] =
	{
		{WAKEUP_BUTTON_PIN, APP_BUTTON_ACTIVE_LOW, BUTTON_PULL, button_evt_handler},
		{SENDAT_BUTTON_PIN, APP_BUTTON_ACTIVE_LOW, BUTTON_PULL, button_evt_handler}
	};

    APP_BUTTON_INIT(buttons, sizeof(buttons) / sizeof(buttons[0]), BUTTON_DETECTION_DELAY, true);
	
	/** @note Important! Enable app_button before use. */
	app_button_enable();
	
	wakeup_pushed = false;
}

