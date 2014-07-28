#include "nordic_common.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"
#include "nrf_soc.h"

#include "softdevice_handler.h"
#include "app_scheduler.h"

#include "bluetooth.h"
#include "back_dat.h"

// For test
#include "nrf_temp.h"

static uint16_t m_instant_data = 0;

// static uint16_t data1[1024];
// static uint16_t data2[1024];

/*****************************************************************************
* Event Handlers
*****************************************************************************/

/**@brief Function for send instant data. 
 * @details This function will be activated each time the data report timer's
 *			timeout event occurs.
 */
void data_report_timeout_handler(void *p_context)
{
	// uint32_t err_code;
	// int32_t temp_result;
	
    UNUSED_PARAMETER(p_context);
	
	m_instant_data = (m_instant_data + 1) % 100;
	
	ble_dts_update_handler(m_instant_data);
	
	//NRF_TEMP->EVENTS_DATARDY = 0;
	/*
	NRF_TEMP->TASKS_START = 1;
	
	while (!NRF_TEMP->EVENTS_DATARDY);
	
	NRF_TEMP->EVENTS_DATARDY = 0;
	NRF_TEMP->TASKS_STOP = 1;
	
	temp_result	= nrf_temp_read()/4;
	temp_result += 100;
	
	ble_dts_update_handler((uint16_t) temp_result);
	*/
	

	/* Enable Temp. measurement interrupt
    err_code = sd_nvic_ClearPendingIRQ(TEMP_IRQn);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_SetPriority(TEMP_IRQn, NRF_APP_PRIORITY_HIGH);
    APP_ERROR_CHECK(err_code);

    err_code = sd_nvic_EnableIRQ(TEMP_IRQn);
    APP_ERROR_CHECK(err_code);
	
	
	NRF_TEMP->TASKS_START = 1; */
}

/*****************************************************************************
* Temperature Measurement for Test Purpose
*****************************************************************************/

void temp_init(void)
{
	nrf_temp_init();
	//NRF_TEMP->INTENSET			= 0; //TEMP_INTENSET_DATARDY_Msk;
	//NRF_TEMP->EVENTS_DATARDY	= 0;
    //NRF_TEMP->TASKS_STOP		= 1;
}

/*static void TEMP_IRQ_event_handler(void *p_event_data, uint16_t event_size)
{	
	int32_t     temp_result;
	
	temp_result = *(int32_t *) p_event_data;
	temp_result += 100;

	ble_dts_update_handler((uint16_t) temp_result);
}*/

void TEMP_IRQHandler(void)
{
	/*
	uint32_t err_code;
	int32_t temp_result;
	
	if (NRF_TEMP->EVENTS_DATARDY != 0)
	{
		// Fetch ADC result & Stop interruption
		NRF_TEMP->EVENTS_DATARDY	= 0;	// REMEMBER TO CLEAR IRQ!
		temp_result					= nrf_temp_read()/4;
		NRF_TEMP->TASKS_STOP		= 1;
		
		// Schedule ADC event
		err_code = app_sched_event_put(&temp_result, sizeof(int32_t), TEMP_IRQ_event_handler);
		APP_ERROR_CHECK(err_code);
	}
	*/
}

