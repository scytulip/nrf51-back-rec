#include "nordic_common.h"
#include "nrf51.h"
#include "nrf51_bitfields.h"
#include "nrf_soc.h"

#include "softdevice_handler.h"
#include "app_scheduler.h"

#include "bluetooth.h"
#include "back_dat.h"

#include <stdio.h>
#include <stdint.h>
#include "uart.h"
#include "nrf_delay.h"

/* Drivers */
#include "i2c_ds1621.h"

static uint8_t fsm_state = 0;		/**< State of the FSM, 0 - Start conversion, 1 - Report temp. */

/*****************************************************************************
* Event Handlers
*****************************************************************************/

/**@brief Function for send instant data. 
 * @details This function will be activated each time the data report timer's
 *			timeout event occurs.
 */
void data_report_timeout_handler(void *p_context)
{	

	UNUSED_PARAMETER(p_context);
	
	/**@note Use sd_temp_get(&temp) to obtain the core temperature if the softdevice is enabled.
			And the variable "temp" should be static.
	*/
	/* Core Temp. Sensor (FOR TEST) */
	// uint32_t err_code;
	// err_code = sd_temp_get(&core_temp_val);
	// APP_ERROR_CHECK(err_code);
	
	int8_t temp, temp_frac;
	
	switch(fsm_state)
	{
		case 0: 
		{	
			ds1624_start_temp_conversion();
			break;
		}
		case 1: 
		{
			ds1621_temp_read(&temp, &temp_frac);
			ble_dts_update_handler((uint16_t) temp); 
			break;
		} 
	}
	fsm_state = (fsm_state + 1) % 2;
	
}
