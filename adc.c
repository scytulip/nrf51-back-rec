#ifndef CUSTOM_ADC_C__
#define CUSTOM_ADC_C__

#include "nrf51.h"
#include "nrf51_bitfields.h"

#include "ble_conn_params.h"
#include "softdevice_handler.h"
#include "app_scheduler.h"

#include "adc.h"
#include "bluetooth.h"

// static uint8_t testv = 0; /**< For Test */

/*****************************************************************************
* Event Handler
*****************************************************************************/

/**@brief Function for handling the ADC event.
 * @details  This function will fetch the conversion result from the ADC, convert the value into
 *           percentage and send it to peer.
 */
static void ADC_IRQ_handler(void *p_event_data, uint16_t event_size)
{	
	uint8_t     adc_result;
	uint16_t    batt_lvl_in_milli_volts;
	uint8_t     percentage_batt_lvl;
	uint32_t    err_code;
	
	adc_result = *(uint8_t *) p_event_data;
	batt_lvl_in_milli_volts = ADC_RESULT_IN_MILLI_VOLTS(adc_result) +
														DIODE_FWD_VOLT_DROP_MILLIVOLTS;
	percentage_batt_lvl     = battery_level_in_percent(batt_lvl_in_milli_volts);
	//percentage_batt_lvl = (testv++) % 100;

	ble_bas_battery_level_update_handler(percentage_batt_lvl);

	if (
			(err_code != NRF_SUCCESS)
			&&
			(err_code != NRF_ERROR_INVALID_STATE)
			&&
			(err_code != BLE_ERROR_NO_TX_BUFFERS)
			&&
			(err_code != BLE_ERROR_GATTS_SYS_ATTR_MISSING)
	)
	{
			APP_ERROR_HANDLER(err_code);
	}

	NRF_ADC->ENABLE     = ADC_ENABLE_ENABLE_Disabled;
}

/**@brief Function for activate one battery level measurement. 
 * @details This function will be activated each time the battery level measurement timer's
 *					timeout event occurs. When triggered, it enables the ADC to execute one conversion.
 */
void battery_level_meas_timeout_handler(void * p_context)
{
	uint32_t err_code;
	
    UNUSED_PARAMETER(p_context);
	  
    NRF_ADC->ENABLE     = ADC_ENABLE_ENABLE_Enabled;
	
    // Enable ADC interrupt
    err_code = sd_nvic_ClearPendingIRQ(ADC_IRQn);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_SetPriority(ADC_IRQn, NRF_APP_PRIORITY_LOW);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_EnableIRQ(ADC_IRQn);
    APP_ERROR_CHECK(err_code);

    NRF_ADC->EVENTS_END  = 0;    // Stop any running conversions.
    NRF_ADC->TASKS_START = 1;
}

/*****************************************************************************
* Initialization Function
*****************************************************************************/

/**@brief Function for initializing ADC operation
 */
void adc_init(void)
{
    // Configure ADC
    NRF_ADC->INTENSET   = ADC_INTENSET_END_Msk;
    NRF_ADC->CONFIG     = (ADC_CONFIG_RES_8bit                        << ADC_CONFIG_RES_Pos)     |
                          (ADC_CONFIG_INPSEL_SupplyOneThirdPrescaling << ADC_CONFIG_INPSEL_Pos)  |
                          (ADC_CONFIG_REFSEL_VBG                      << ADC_CONFIG_REFSEL_Pos)  |
                          (ADC_CONFIG_PSEL_Disabled                   << ADC_CONFIG_PSEL_Pos)    |
                          (ADC_CONFIG_EXTREFSEL_None                  << ADC_CONFIG_EXTREFSEL_Pos);
    NRF_ADC->EVENTS_END = 0;
    NRF_ADC->ENABLE     = ADC_ENABLE_ENABLE_Disabled;
		
    NRF_ADC->TASKS_STOP = 1;
}


/*****************************************************************************
* Interruption Handler
*****************************************************************************/

/**@brief Function for handling the ADC interrupt.
 * @details  This function will configure the scheduler to process ADC interruptions.
 */
void ADC_IRQHandler(void)
{
    uint32_t err_code;
	uint8_t adc_result;
	
	if (NRF_ADC->EVENTS_END != 0)
	{
		// Fetch ADC result & Stop interruption
		NRF_ADC->EVENTS_END     = 0;	// REMEMBER TO CLEAR IRQ!
		adc_result              = NRF_ADC->RESULT;
		NRF_ADC->TASKS_STOP     = 1;
		
		// Schedule ADC event
		err_code = app_sched_event_put(&adc_result, sizeof(uint8_t), ADC_IRQ_handler);
		APP_ERROR_CHECK(err_code);
	}
}

#endif

