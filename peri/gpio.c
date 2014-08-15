#include "gpio.h"

#include "app_button.h"
#include "app_gpiote.h"
#include "nrf_gpio.h"

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
        {WAKEUP_BUTTON_PIN, APP_BUTTON_ACTIVE_LOW, BUTTON_PULL, NULL},
        // YOUR_JOB: Add other buttons to be used:
        // {MY_BUTTON_PIN,     false, BUTTON_PULL, button_event_handler}
    };

    APP_BUTTON_INIT(buttons, sizeof(buttons) / sizeof(buttons[0]), BUTTON_DETECTION_DELAY, true);

    // Note: If the only use of buttons is to wake up, the app_button module can be omitted, and
    //       the wakeup button can be configured by
    // GPIO_WAKEUP_BUTTON_CONFIG(WAKEUP_BUTTON_PIN);
}

