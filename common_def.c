#include "common_def.h"
#include "nrf51.h"
#include "nrf_gpio.h"
#include "nrf51_bitfields.h"
#include "app_timer.h"
#include "app_gpiote.h"
#include "app_button.h"

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

/**@brief Function for the Timer initialization.
 *
 * @details Initializes the timer module.
 */
void timers_init(void)
{
    // Initialize timer module, making it use the scheduler
    APP_TIMER_INIT(APP_TIMER_PRESCALER, APP_TIMER_MAX_TIMERS, APP_TIMER_OP_QUEUE_SIZE, true);
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


/**@brief Function for initializing ADC operation
 */
void adc_init()
{
    // Configure ADC
    NRF_ADC->INTENSET   = ADC_INTENSET_END_Msk;
    NRF_ADC->CONFIG     = (ADC_CONFIG_RES_8bit                        << ADC_CONFIG_RES_Pos)     |
                          (ADC_CONFIG_INPSEL_SupplyOneThirdPrescaling << ADC_CONFIG_INPSEL_Pos)  |
                          (ADC_CONFIG_REFSEL_VBG                      << ADC_CONFIG_REFSEL_Pos)  |
                          (ADC_CONFIG_PSEL_Disabled                   << ADC_CONFIG_PSEL_Pos)    |
                          (ADC_CONFIG_EXTREFSEL_None                  << ADC_CONFIG_EXTREFSEL_Pos);
    NRF_ADC->EVENTS_END = 0;
    NRF_ADC->ENABLE     = ADC_ENABLE_ENABLE_Enabled;
		
    NRF_ADC->TASKS_START = 0;
}


/*****************************************************************************
* Start Functions
*****************************************************************************/

/**@brief Function for starting timers.
*/
void timers_start(void)
{
    /* YOUR_JOB: Start your timers. below is an example of how to start a timer.
    uint32_t err_code;

    err_code = app_timer_start(m_app_timer_id, TIMER_INTERVAL, NULL);
    APP_ERROR_CHECK(err_code); */
}

/*****************************************************************************
* Event Handlers & Dispatches
*****************************************************************************/

/**@brief Function for handling a button event.
 *
 * @param[in]   pin_no         Pin that had an event happen.
 * @param[in]   button_event   APP_BUTTON_PUSH or APP_BUTTON_RELEASE.
 */
/* YOUR_JOB: Uncomment this function if you need to handle button events.
static void button_event_handler(uint8_t pin_no, uint8_t button_event)
{
    if (button_action == APP_BUTTON_PUSH)
    {
        switch (pin_no)
        {
            case MY_BUTTON_PIN:
                // Code to handle MY_BUTTON keypresses
                break;

            // Handle any other buttons

            default:
                APP_ERROR_HANDLER(pin_no);
                break;
        }
    }
}
*/


