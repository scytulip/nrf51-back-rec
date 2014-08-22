#include "gpio.h"
#include "uart.h"

#include "nordic_common.h"
#include "app_button.h"
#include "app_gpiote.h"
#include "nrf_gpio.h"

/*****************************************************************************
* Event Handlers
*****************************************************************************/
/**@brief Button handler for short button press */
static void button_evt_short(uint8_t pin_no, uint8_t button_action)
{
	DEBUG_PF( "Button %d is trigged.", pin_no );
}

/**@brief Timer handler for blinky LED signal */
void blinky_led_timeout_handler(void *p_context)
{
	UNUSED_PARAMETER(p_context);
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
		{WAKEUP_BUTTON_PIN, APP_BUTTON_ACTIVE_LOW, BUTTON_PULL, button_evt_short},
		{SENDAT_BUTTON_PIN, APP_BUTTON_ACTIVE_LOW, BUTTON_PULL, button_evt_short}
	};

    APP_BUTTON_INIT(buttons, sizeof(buttons) / sizeof(buttons[0]), BUTTON_DETECTION_DELAY, true);
	
	/** @note Important! Enable app_button before use. */
	app_button_enable();
}

